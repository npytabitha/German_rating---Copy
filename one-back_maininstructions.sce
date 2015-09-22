scenario = "One-Back"; # This name is recorded in the log file
scenario_type = trials;
response_matching = simple_matching;
no_logfile = true;

active_buttons = 3;
button_codes = 1, 2, 3; # These values will be used to code participant responses 

default_font_size = 56;
default_font = "Arial";
default_background_color = 0,0,0; #Black#
default_text_color = 255,255,255; #White#
default_text_align = align_left;

begin;

#Instructions at the beginning of experiment
trial{
trial_duration=forever;
trial_type=specific_response;
terminator_button = 3;

picture{
text{font_size = 20; caption = "Im folgenden werden Dir Klaenge presentiert und Du sollst jeden Klang hinsichtlich seiner Eigenschaften bewerten:

1) Menschlichkeit: War der Klang von einer menschlichen Stimme?

2) Emotion: Drueckt der Klang Ueberraschung oder Neutralitaet aus?

3) Erregung: War der Klang erregt oder ruhig?

Bitte druecke eine Taste um zu beginnen."; max_text_width = 1000; max_text_height = 500;
};
x = 0; y = 0;
};

time = 0;
}instructions_pt1;

begin_pcl;
instructions_pt1.present();