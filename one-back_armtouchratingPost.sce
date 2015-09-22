active_buttons = 3;
button_codes = 1, 2, 3;
response_matching = simple_matching;
no_logfile = true;

begin;

#    picture that shows the craving scale with highlighted number
picture {
	 text { caption = " 0 "; font_size = 36; } rate1;
        x = -320; y = -260; 
	 text { caption = " 1 "; font_size = 36; } rate2;
        x = 0; y = -260; 
	 text { caption = " 2 "; font_size = 36; } rate3;
        x = 320; y = -260;   
	 text { caption = "^"; font_size = 32; font_color = 255, 255, 255; } textScaleLabel;            
        x = 0; y = -380;   
	 text { caption = "nicht menschlich"; font_size = 26; } textscale1;
        x = -320; y = -300;  
	 text { caption = "etwas menschlich"; font_size = 26; } textscale2;
        x = 0; y = -300;  
	 text { caption = "menschlich"; font_size = 26; } textscale3;
        x = 320; y = -300; 
    text { caption = "Bitte benutze die links/rechts Tasten (kleine Pfeilspitzen) um Dich auf der Skala zu bewegen. 
Druecke die 'Enter' Taste um Deine Auswahl zu bestaetigen."; font_size = 24; text_align = align_center; width=50; } textScaleLabelCenter;
        x = 0; y = -450;
    text { caption = "0"; font_size = 36; font_color = 255, 0, 0; } textRating;
        x = 0; y = -150;
        text { 
caption = "Wie menschlich war der Klang?"; 
font = "Arial";
font_color = 255,255,255; #white
font_size = 32;
} textFixation; 
x = 0; y = 0;    
    
} picUserRatingScale;


picture {
	text {caption = "Ueberraschung"; font_size = 36;} rate1_2;
		x = -200; y = -300;
	text {caption = "Neutral"; font_size = 36;} rate2_2;
		x = 200; y = -300;  
	text {caption = "^"; font_size = 32; font_color = 255, 255, 255;} textScaleLabel2;            
		x = -200; y = -380;    
   text {caption = "Bitte benutze die links/rechts Tasten (kleine Pfeilspitzen) um Dich auf der Skala zu bewegen. 
Druecke die 'Enter' Taste um Deine Auswahl zu bestaetigen."; font_size = 24; text_align = align_center; width=50;} textScaleLabelCenter2;
      x = 0; y = -450;
   text {caption = "0"; font_size = 36; font_color = 255, 0, 0;} textRating2;
      x = 0; y = -150;
	text { 
		caption = "Was war die Klangemotion?"; 
		font = "Arial";
		font_color = 255,255,255; #white
		font_size = 32;
	} textFixation2; 
		x = 0; y = 0;    
    
} picUserRatingScale2;

picture {

	 text { caption = " 1 "; font_size = 36; } rate1_3;
        x = -320; y = -260; 
	 text { caption = " 2 "; font_size = 36; } rate2_3;
        x = -160; y = -260; 
	 text { caption = " 3 "; font_size = 36; } rate3_3;
        x = 0; y = -260; 
	 text { caption = " 4 "; font_size = 36; } rate4_3;
        x = 160; y = -260; 
  	 text { caption = " 5 "; font_size = 36; } rate5_3;
        x = 320; y = -260;   
    text { caption = "^"; font_size = 32; font_color = 255, 255, 255; } textScaleLabel3;            
        x = 0; y = -380;    
    text { caption = "ganz entspannt"; font_size = 26; } text_scale1;
        x = -320; y = -300;  
	 text { caption = "etwas erregt"; font_size = 26; } text_scale2;
        x = 0; y = -300;  
	 text { caption = "sehr erregt"; font_size = 26; } text_scale3;
        x = 320; y = -300; 
	 text { caption = "Bitte benutze die links/rechts Tasten (kleine Pfeilspitzen) um Dich auf der Skala zu bewegen. 
Druecke die 'Enter' Taste um Deine Auswahl zu bestaetigen."; font_size = 24; text_align = align_center; width=50; } textScaleLabelCenter3;
        x = 0; y = -450;
    text { caption = "0"; font_size = 36; font_color = 255, 0, 0; } textRating3;
        x = 0; y = -150;
        text { 
caption = "Wie erregt war der Klang?"; 
font = "Arial";
font_color = 255,255,255; #white
font_size = 32;
} textFixation3; 
x = 0; y = 0;    
    
} picUserRatingScale3;


begin_pcl;

# Constant Values #
int INC_BUTTON = 2;
int DEC_BUTTON = 1;
int RATING_BUTTON = 3;
array<int> x_coords1[3] = {-320, 0, 320};
array<int> x_coords2[2] = {-200, 200};
array<int> x_coords3[5] = {-320, -160, 0, 160, 320};
array<string> question2Choice[2] = {"Ueberraschung", "Neutral"};

# --- sub get_rating

sub
    int get_rating( int starting_val )
begin
    
   # Set the starting position of the rating
   int curr_pos = starting_val;
	
   # Now run the loop until we run out of time
   loop 
   until
		response_manager.response_count(3) == 1
   begin
      # Set the x coordinate of the rating and update the caption
      int captionNum = curr_pos - 1;
		picUserRatingScale.set_part_x(4, x_coords1[curr_pos]);
      textRating.set_caption( string(captionNum), true );
        
      # Present the picture
      picUserRatingScale.present();

		system_keyboard.set_max_length(1);
		string input = system_keyboard.get_input();
		
		if(input == "1") then
			curr_pos = curr_pos - 1;
			if(curr_pos < 1) then
				curr_pos = 1;
			end
		elseif(input == "2") then
			curr_pos = curr_pos + 1;
			if(curr_pos > 3) then
				curr_pos = 3;
			end;
		end;
				
   end;
   return curr_pos - 1;
end;

int rating1 = get_rating(2);

sub
   string get_rating2( int starting_val )
begin
    
    # Set the starting position of the rating
    int curr_pos = starting_val;

    # Now run the loop until we run out of time
    loop 
    until
        response_manager.response_count(3) == 2
    begin
      # Set the x coordinate of the rating and update the caption
      picUserRatingScale2.set_part_x(3, x_coords2[curr_pos]);
      textRating2.set_caption(question2Choice[curr_pos], true );
        
      # Present the picture
      picUserRatingScale2.present();
      
		system_keyboard.set_max_length(1);
		string input = system_keyboard.get_input();
		
		if(input == "1") then
			curr_pos = curr_pos - 1;
			if(curr_pos < 1) then
				curr_pos = 1;
			end
		elseif(input == "2") then
			curr_pos = curr_pos + 1;
			if(curr_pos > 2) then
				curr_pos = 2;
			end;
		end;
			
    end;
    return question2Choice[curr_pos];
end;

string rating2 = get_rating2(1);



sub
    int get_rating3( int starting_val )
begin
    
    # Set the starting position of the rating
    int curr_pos = starting_val;

    # Now run the loop until we run out of time
    loop 
    until
        response_manager.response_count(3) == 3
    begin
      # Set the x coordinate of the rating and update the caption
      picUserRatingScale3.set_part_x( 6, x_coords3[curr_pos] );
      textRating3.set_caption( string(curr_pos), true );
        
      # Present the picture
      picUserRatingScale3.present();

		system_keyboard.set_max_length(1);
		string input = system_keyboard.get_input();
		
		if(input == "1") then
			curr_pos = curr_pos - 1;
			if(curr_pos < 1) then
				curr_pos = 1;
			end
		elseif(input == "2") then
			curr_pos = curr_pos + 1;
			if(curr_pos > 5) then
				curr_pos = 5;
			end;
		end; 
				
    end;
    return curr_pos;
end;

int rating3 = get_rating3(3);

output_file rating = new output_file;
string filename = logfile.subject() + "-rating.txt";
rating.open_append( filename );
rating.print( "\nArm_touch_ratingPost: " );
rating.print( "\nRating 1: " );
rating.print( rating1 );
rating.print( "\nRating 2: " );
rating.print( rating2 );
rating.print( "\nRating 3: " );
rating.print( rating3 );
rating.close();
