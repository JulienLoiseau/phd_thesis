
reset
set xrange [1.5:7.5]
set yrange [200:]
set xlabel 'streams number'
set ylabel 'time (s)'

set boxwidth 0.5
set style fill solid border -1

#set terminal x11 size 750,300
set terminal jpeg size 750,300
set output "streams.jpeg"

set xtics 1

set grid ytics

set xtics font "LiberationSans-Bold, 14" 
set ytics font "LiberationSans-Bold, 14" 

set xlabel font "LiberationSans-Bold, 14" 
set ylabel font "LiberationSans-Bold, 14" 

plot 'val_streams.txt' with boxes notitle lc rgb "grey"

