
reset
set xrange [2:6]
set yrange [0:]
set xlabel 'server depth'
set ylabel 'time (s)'

set boxwidth 0.5
set style fill solid border -1

set terminal x11 size 750,300

plot 'val_profondeur.txt' with boxes notitle lc rgb "grey"

