#!/usr/bin/env bash
#
# Plot psxy basic single-parameter geometric symbols for use on man page

gmt begin GMT_base_symbols1
cat << EOF > tmp.txt
# All the basic geometric psxy symbols
1	2	1c	a
2	2	1c	c
3	2	1c	d
4	2	1c	g
5	2	1c	h
6	2	1c	i
7	2	1c	n
1	1	1c	p
2	1	1c	s
3	1	1c	t
4	1	1c	x
5	1	1c	y
6   1   1c  -
7   1   1c  +
EOF
    gmt plot tmp.txt -R0.6/7.4/0.6/2.4 -B0g1 -B+n -Jx1.5c -Sc1c -W0.25p --PROJ_LENGTH_UNIT=cm -i0,1 --MAP_GRID_PEN_PRIMARY=default,dashed
    gmt plot tmp.txt -S -Glightblue -W1p --PROJ_LENGTH_UNIT=cm
    $AWK '{if ($2 == 1) print $1, $2, $NF}' tmp.txt | gmt text -N -F+f10p,Helvetica-Bold+jTC -Dj0/0.75c
    $AWK '{if ($2 == 2) print $1, $2, $NF}' tmp.txt | gmt text -N -F+f10p,Helvetica-Bold+jBC -Dj0/0.75c
gmt end show
