
	reset
	#set term x11 font "Helvetica,12"
	set logscale y
	set format y "10^{%L}"
	set grid
	set xrange[0:3]
	set yrange[1E10:*]
	set key left bottom

	plot file.".dat" u ($1/100):24 w lp 
	replot file.".dat" u ($1/100):47 w lp 
	replot file.".dat" u ($1/100):70 w lp 
	replot file.".dat" u ($1/100):93 w lp 
	replot file.".dat" u ($1/100):116 w lp 
	replot file.".dat" u ($1/100):139 w lp 
	replot file.".dat" u ($1/100):162 w lp 
	replot file.".dat" u ($1/100):185 w lp 
	replot file.".dat" u ($1/100):208 w lp 
	replot file.".dat" u ($1/100):217 w lp 
	replot file.".dat" u ($1/100):220 w lp 
	replot file.".dat" u ($1/100):221 w lp 
	replot file.".dat" u ($1/100):225 w lp 
	replot file.".dat" u ($1/100):229 w lp 

	
