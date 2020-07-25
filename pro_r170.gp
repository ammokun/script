
	reset
	#set term x11 font "Helvetica,12"
	set logscale y
	set format y "10^{%L}"
	set grid
	set xrange[1.8:2.5]
	set yrange[1E10:*]
	set key outside
	set size square

	plot file.".dat" u ($1/100):43 w l title "R170"
	replot file.".dat" u ($1/100):($754+$755+$756+$757+$758+$759+$760+$761) w l title "R88" 
	replot file.".dat" u ($1/100):1526 w l title "R23"  

	
