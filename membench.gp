######################################################################
## $Id: membench.gp,v 1.4 1998/02/24 23:59:20 dmartin Exp $
######################################################################

set logscale x 2
set xtics (4,16,64,256,"1K" 1024,"4K" 4096,"16K" 16384,"64K" 65536,"256K" 262144,"1M" 1048576, \
           "2M" 2097152, "4M" 4194304, "8M" 8388608, "16M" 16777216, "32M" 33554432, "64M" 67108864, \
           "128M" 134217728) rotate by 45 offset -0.8,-1.2
set ylabel "Time (nsec)"
set xlabel "Stride (bytes)"
set title ""
set yrange [0:10]
# set term postscript color
set term png size 800,600
plot "< awk '{if ($2 == 4096) print $4,$6}' membench.out" title "4KB" with linespoints, \
     "< awk '{if ($2 == 8192) print $4,$6}' membench.out" title "8KB" with linespoints, \
     "< awk '{if ($2 == 16384) print $4,$6}' membench.out" title "16KB" with linespoints, \
     "< awk '{if ($2 == 32768) print $4,$6}' membench.out" title "32KB" with linespoints, \
     "< awk '{if ($2 == 65536) print $4,$6}' membench.out" title "64KB" with linespoints, \
     "< awk '{if ($2 == 131072) print $4,$6}' membench.out" title "128KB" with linespoints, \
     "< awk '{if ($2 == 262144) print $4,$6}' membench.out" title "256KB" with linespoints, \
     "< awk '{if ($2 == 524288) print $4,$6}' membench.out" title "512KB" with linespoints, \
     "< awk '{if ($2 == 1048576) print $4,$6}' membench.out" title "1MB" with linespoints, \
     "< awk '{if ($2 == 2097152) print $4,$6}' membench.out" title "2MB" with linespoints, \
     "< awk '{if ($2 == 4194304) print $4,$6}' membench.out" title "4MB" with linespoints, \
     "< awk '{if ($2 == 8388608) print $4,$6}' membench.out" title "8MB" with linespoints, \
     "< awk '{if ($2 == 16777216) print $4,$6}' membench.out" title "16MB" with linespoints, \
     "< awk '{if ($2 == 33554432) print $4,$6}' membench.out" title "32MB" with linespoints, \
     "< awk '{if ($2 == 67108864) print $4,$6}' membench.out" title "64MB" with linespoints, \
     "< awk '{if ($2 == 134217728) print $4,$6}' membench.out" title "128MB" with linespoints, \
     "< awk '{if ($2 == 268435456) print $4,$6}' membench.out" title "256MB" with linespoints

######################################################################
## $Log: membench.gp,v $
## Revision 1.4  1998/02/24 23:59:20  dmartin
## color postscript
##
## Revision 1.3  1998/02/05 22:07:39  dmartin
## generate full-page ps instead of little eps
##
## Revision 1.2  1998/02/05 21:44:24  dmartin
## added plot labels
##
## Revision 1.1  1998/01/19 00:47:39  dmartin
## Initial revision
##
######################################################################

