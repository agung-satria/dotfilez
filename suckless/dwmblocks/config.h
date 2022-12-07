//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"",   "sb-mpdsong",	       1,		16},
	{"",   "sb-nettraf",	          1,		4},
	{"",   "sb-battery",	          1,		3},
	{"",   "sb-volarch2",	        0,		1},
	{"",   "sb-brightperc",        0,		2},
	// {"",   "sb-cpuusage",          2,		5},
	{"",   "sb-memory",	          3,		6},
	/* {"",  "sb-cputemp",	          5,		7}, */
	{"",   "sb-diskusage",	        3,		8},
	{"",   "sb-clock",	            60,		10},
	// {"",   "sb-wifi",	            3,		11},
	// {"",   "sb-help-icon",	    0,		15},

};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = " ";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
