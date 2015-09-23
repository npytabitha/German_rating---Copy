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

array {
sound { wavefile { filename = "Neutral_TKH.wav"; }; };
sound { wavefile { filename = "Neutral_LS.wav"; }; };
sound { wavefile { filename = "Neutral_Edward.wav"; }; };
sound { wavefile { filename = "Neutral_NXR.wav"; }; };
sound { wavefile { filename = "Neutral_46.wav"; }; };
sound { wavefile { filename = "Neutral_SG.wav"; }; };
sound { wavefile { filename = "Neutral_Joyce.wav"; }; };
sound { wavefile { filename = "Neutral_58.wav"; }; };
sound { wavefile { filename = "Neutral_ML.wav"; }; };
sound { wavefile { filename = "Neutral_Elizabeth.wav"; }; };
sound { wavefile { filename = "Neutral_CW.wav"; }; };
sound { wavefile { filename = "Neutral_SH.wav"; }; };
sound { wavefile { filename = "Neutral_Daryl.wav"; }; };
sound { wavefile { filename = "Neutral_Janvin.wav"; }; };
sound { wavefile { filename = "Surprise_Ernest_rot.wav"; }; };
sound { wavefile { filename = "Surprise_TKH_rot.wav"; }; };
sound { wavefile { filename = "Surprise_55_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Madeline_rot.wav"; }; };
sound { wavefile { filename = "Surprise_CKH_rot.wav"; }; };
sound { wavefile { filename = "Surprise_60_rot.wav"; }; };
sound { wavefile { filename = "Surprise_GZ_rot.wav"; }; };
sound { wavefile { filename = "Surprise_GC_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Edward_rot.wav"; }; };
sound { wavefile { filename = "Surprise_MY_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Elizabeth_rot.wav"; }; };
sound { wavefile { filename = "Surprise_NXR_rot.wav"; }; };
sound { wavefile { filename = "Surprise_MSC_rot.wav"; }; };
sound { wavefile { filename = "Surprise_45.wav"; }; };
sound { wavefile { filename = "Surprise_59.wav"; }; };
sound { wavefile { filename = "Surprise_6.wav"; }; };
sound { wavefile { filename = "Surprise_CC.wav"; }; };
sound { wavefile { filename = "Surprise_CW.wav"; }; };
sound { wavefile { filename = "Surprise_Daryl.wav"; }; };
sound { wavefile { filename = "Surprise_Janvin.wav"; }; };
sound { wavefile { filename = "Surprise_Joyce.wav"; }; };
sound { wavefile { filename = "Surprise_LS.wav"; }; };
sound { wavefile { filename = "Surprise_ML.wav"; }; };
sound { wavefile { filename = "Surprise_Rena.wav"; }; };
sound { wavefile { filename = "Surprise_SG.wav"; }; };
sound { wavefile { filename = "Surprise_SH.wav"; }; };
sound { wavefile { filename = "Surprise_TLSM.wav"; }; };
sound { wavefile { filename = "Neutral_42_rot.wav"; }; };
sound { wavefile { filename = "Neutral_55_rot.wav"; }; };
sound { wavefile { filename = "Neutral_59_rot.wav"; }; };
sound { wavefile { filename = "Neutral_CC_rot.wav"; }; };
sound { wavefile { filename = "Neutral_CKH_rot.wav"; }; };
sound { wavefile { filename = "Neutral_DK_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Ernest_rot.wav"; }; };
sound { wavefile { filename = "Neutral_GC_rot.wav"; }; };
sound { wavefile { filename = "Neutral_GZ_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Madeline_rot.wav"; }; };
sound { wavefile { filename = "Neutral_MSC_rot.wav"; }; };
sound { wavefile { filename = "Neutral_MY_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Rena_rot.wav"; }; };
sound { wavefile { filename = "Neutral_ML_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Elizabeth_rot.wav"; }; };
sound { wavefile { filename = "Neutral_SH_rot.wav"; }; };
sound { wavefile { filename = "Neutral_NXR_rot.wav"; }; };
sound { wavefile { filename = "Neutral_TKH_rot.wav"; }; };
sound { wavefile { filename = "Neutral_GZ_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Janvin_rot.wav"; }; };
sound { wavefile { filename = "Neutral_58_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Edward_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Daryl_rot.wav"; }; };
sound { wavefile { filename = "Neutral_LS_rot.wav"; }; };
sound { wavefile { filename = "Neutral_46_rot.wav"; }; };
sound { wavefile { filename = "Neutral_SG_rot.wav"; }; };
sound { wavefile { filename = "Neutral_Joyce_rot.wav"; }; };
sound { wavefile { filename = "Neutral_42.wav"; }; };
sound { wavefile { filename = "Neutral_55.wav"; }; };
sound { wavefile { filename = "Neutral_59.wav"; }; };
sound { wavefile { filename = "Neutral_CC.wav"; }; };
sound { wavefile { filename = "Neutral_CKH.wav"; }; };
sound { wavefile { filename = "Neutral_DK.wav"; }; };
sound { wavefile { filename = "Neutral_Ernest.wav"; }; };
sound { wavefile { filename = "Neutral_GC.wav"; }; };
sound { wavefile { filename = "Neutral_GZ.wav"; }; };
sound { wavefile { filename = "Neutral_Madeline.wav"; }; };
sound { wavefile { filename = "Neutral_MSC.wav"; }; };
sound { wavefile { filename = "Neutral_MY.wav"; }; };
sound { wavefile { filename = "Neutral_Rena.wav"; }; };
sound { wavefile { filename = "Surprise_45_rot.wav"; }; };
sound { wavefile { filename = "Surprise_59_rot.wav"; }; };
sound { wavefile { filename = "Surprise_6_rot.wav"; }; };
sound { wavefile { filename = "Surprise_CC_rot.wav"; }; };
sound { wavefile { filename = "Surprise_CW_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Daryl_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Janvin_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Joyce_rot.wav"; }; };
sound { wavefile { filename = "Surprise_LS_rot.wav"; }; };
sound { wavefile { filename = "Surprise_ML_rot.wav"; }; };
sound { wavefile { filename = "Surprise_Rena_rot.wav"; }; };
sound { wavefile { filename = "Surprise_SG_rot.wav"; }; };
sound { wavefile { filename = "Surprise_SH_rot.wav"; }; };
sound { wavefile { filename = "Surprise_TLSM_rot.wav"; }; };
sound { wavefile { filename = "Surprise_CKH.wav"; }; };
sound { wavefile { filename = "Surprise_Ernest.wav"; }; };
sound { wavefile { filename = "Surprise_GZ.wav"; }; };
sound { wavefile { filename = "Surprise_60.wav"; }; };
sound { wavefile { filename = "Surprise_Elizabeth.wav"; }; };
sound { wavefile { filename = "Surprise_Madeline.wav"; }; };
sound { wavefile { filename = "Surprise_GC.wav"; }; };
sound { wavefile { filename = "Surprise_MY.wav"; }; };
sound { wavefile { filename = "Surprise_Edward.wav"; }; };
sound { wavefile { filename = "Surprise_55.wav"; }; };
sound { wavefile { filename = "Surprise_NXR.wav"; }; };
sound { wavefile { filename = "Surprise_MSC.wav"; }; };
sound { wavefile { filename = "Surprise_TKH.wav"; }; };
} soundList;

begin_pcl;

# Constant Values #
int INC_BUTTON = 2;
int DEC_BUTTON = 1;
int RATING_BUTTON = 3;
array<int> x_coords1[3] = {-320, 0, 320};
array<int> x_coords2[2] = {-200, 200};
array<int> x_coords3[5] = {-320, -160, 0, 160, 320};
array<string> question2Choice[2] = {"Ueberraschung", "Neutral"};

array<string> soundFileNames[] = {"Sound File List"}; 
array<string> firstAnswer[] = {"First Answer"};
array<string> secondAnswer[] = {"Second Answer"};
array<string> thirdAnswer[] = {"Third Answer"};

# --- sub get_rating

sub
    int get_rating( int starting_val )
begin
    
   # Set the starting position of the rating
   int curr_pos = starting_val;
	bool exit = false;
	
   # Now run the loop until we run out of time
   loop 
   until
		exit == true
   begin
      # Set the x coordinate of the rating and update the caption
      int captionNum = curr_pos - 1;
		picUserRatingScale.set_part_x(4, x_coords1[curr_pos]);
      textRating.set_caption( string(captionNum), true );
        
      # Present the picture
      picUserRatingScale.present();

		system_keyboard.set_max_length(1);
		string input = system_keyboard.get_input();
		term.print_line(input);
		
		if(input == "1") then
			curr_pos = curr_pos - 1;
			if(curr_pos < 1) then
				curr_pos = 1;
			end;
		elseif(input == "2") then
			curr_pos = curr_pos + 1;
			if(curr_pos > 3) then
				curr_pos = 3;
			end;
		elseif(input == "") then
			exit = true;
		end;
				
   end;
   return curr_pos - 1;
end;

sub
   string get_rating2( int starting_val )
begin
    
   # Set the starting position of the rating
   int curr_pos = starting_val;
	bool exit = false;

   # Now run the loop until we run out of time
   loop 
   until
		exit == true
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
		elseif(input == "") then
			exit = true;
		end;
			
    end;
    return question2Choice[curr_pos];
end;

sub
    int get_rating3( int starting_val )
begin
    
   # Set the starting position of the rating
   int curr_pos = starting_val;
	bool exit = false;
	
   # Now run the loop until we run out of time
   loop 
   until
		exit == true
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
		elseif(input == "") then
			exit = true;
		end;
				
    end;
    return curr_pos;
end;

sub
	int playSoundLoop
begin
	
	int size = soundList.count();
	soundList.shuffle();
	int i = 1;
	
	loop until i > soundList.count()
	
	begin
		
		# clear screen
		picture default_pic = new picture();
		default_pic.present();
		
		if(i > 1) then 
			wait_interval(500);
		end;
		
		# present sound
		sound soundToBePlayed = soundList[i];
		soundToBePlayed.present();
		string soundFileName  = soundToBePlayed.get_wavefile().filename();
		
		# delay
		wait_interval(2000);
		
		# present questions
		int firstResponse = get_rating(2);
		string secondResponse = get_rating2(1);
		int thirdResponse = get_rating3(3);
		
		# append values to storage
		soundFileNames.add(soundFileName);
		firstAnswer.add(string(firstResponse));
		secondAnswer.add(secondResponse);
		thirdAnswer.add(string(thirdResponse));
		
		i = i + 1;
	end;
	
	# dummy return integer
	return 1;
end;

sub
	int saveToFile
begin
	output_file rating = new output_file;
	string fileName = logfile.subject() + "-soundrating.csv";
	rating.open_append(fileName);
	
	int numberOfResults = soundFileNames.count();
	int i = 1;
	
	loop until i > numberOfResults
	begin
		string soundFileName = soundFileNames[i];
		string firstResponse = firstAnswer[i];
		string secondResponse = secondAnswer[i];
		string thirdResponse = thirdAnswer[i];
		
		rating.print(soundFileName);
		rating.print(",");
		rating.print(firstResponse);
		rating.print(",");
		rating.print(secondResponse);
		rating.print(",");
		rating.print(thirdResponse);
		rating.print("\n");
		
		i = i + 1;
	end;
	
	rating.close();
	
	# return dummy
	return 1;
end;

playSoundLoop();
saveToFile();

#int rating1 = get_rating(2);
#string rating2 = get_rating2(1);
#int rating3 = get_rating3(3);

# output_file rating = new output_file;
# string filename = logfile.subject() + "-soundrating.txt";
# rating.open_append( filename );
#rating.print( "\nSoundfile: " );
#rating.print( "\nRating 1: " );
#rating.print( rating1 );
#rating.print( "\nRating 2: " );
#rating.print( rating2 );
#rating.print( "\nRating 3: " );
#rating.print( rating3 );
#rating.close();
