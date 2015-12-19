set terminal pdf
set output 'pi-poly-u.pdf'

set logscale x 2
set format x ""
set xtics ( "2^3" 8., "2^6" 64., "2^9" 512., "2^{12}" 4096., \
           "2^{15}" 32768., "2^{18}" 262144., "2^{21}" 2097152., \
           "2^{24}" 16777216., "2^{27}" 134217728.)

set logscale y 10
set format y ""
set ytics ( "10^{-14}" 1e-14, "10^{-12}" 1e-12, "10^{-10}" 1e-10, "10^{-8}" 1.e-8, "10^{-6}" 1e-6, \
            "10^{-4}" 1.e-4, "10^{-2}" 1e-2, "10^{-0}" 1)

set mxtics
set mytics

set title 'Absolute Error in Calculating Pi via Polygon Geometry'
set xlabel 'n'
#set ylabel '$\left| p_n - \pi \right|$' offset 5,0


unset key

#p [2:] [1e-13:2] "pi-poly-u.res" u ($2):(abs($5)) w lp pt 3, \
#              "pi-poly-s.res" u ($2):(abs($5)) w lp pt 4, \
#             (x>8?(x<100000.?0.1/(x*x):1/0):1/0) w l

p [2:] [1e-13:2] "pi-poly-u.res" u ($2):(abs($5)) w lp pt 3, \
             (x>8?(x<100000.?0.1/(x*x):1/0):1/0) w l


