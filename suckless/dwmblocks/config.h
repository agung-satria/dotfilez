//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",   "sb-fakesystray",	          1,		4},
	{"",   "sb-emojipicker",	       0,		25},
	{"",   "sb-screenshot",	       0,		17},
	{"",   "sb-screenrecord",	       0,		24},
	{"",   "sb-diskusage2",	        3,		8},
	{"",   "sb-battery2",	          5,		3},
	{"",   "sb-internet2",	            5,		22},
	{"",   "sb-volarch3",	        0,		1},
	{"",   "sb-clock2",	            60,		10},
	{"",   "sb-notification",	            0,		14},
	{"",   "sb-showdesktop",	            0,		19},

};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
