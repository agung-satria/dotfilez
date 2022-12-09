//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",   "sb-mpdsong",	       1,		16},
	// {"",   "sb-music",	       1,		17},
	{"",   "sb-nettraf",	          1,		4},
	{"",   "sb-battery",	          5,		3},
	{"",   "sb-hasheadphone",	     1,		18},
	{"",   "sb-volarch2",	        0,		1},
	{"",   "sb-brightperc",        0,		2},
	{"",   "sb-pacpackages",	      5,		7},
	{"",   "sb-cpuusage",          5,		5},
	{"",   "sb-memory",	          5,		6},
	{"",  "sb-cputemp",	          3,		9},
	{"",   "sb-diskusage",	        3,		8},
	{"",   "sb-clock",	            60,		10},
	{"",   "sb-internet",	            5,		22},
	{"",   "sb-launcher",	            0,		14},
	// {"",   "sb-help-icon",	    0,		15},

};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
