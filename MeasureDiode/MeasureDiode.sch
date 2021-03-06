v 20130925 2
C 49700 42700 0 0 0 title-A4.sym
C 58300 50200 1 270 0 diode-1.sym
{
T 58900 49800 5 10 0 0 270 0 1
device=DIODE
T 58300 50200 5 10 0 0 0 0 1
footprint=D_200
T 58800 49900 5 10 1 1 270 0 1
refdes=RD1
}
C 58400 49300 1 270 0 resistor-1.sym
{
T 58800 49000 5 10 0 0 270 0 1
device=RESISTOR
T 58400 49300 5 10 0 0 0 0 1
footprint=R_200
T 58700 49100 5 10 1 1 270 0 1
refdes=R1
}
C 58300 48400 1 270 0 diode-1.sym
{
T 58900 48000 5 10 0 0 270 0 1
device=DIODE
T 58300 48400 5 10 0 0 0 0 1
footprint=D_200
T 58800 48100 5 10 1 1 270 0 1
refdes=D1
}
C 58300 47500 1 270 0 diode-1.sym
{
T 58900 47100 5 10 0 0 270 0 1
device=DIODE
T 58300 47500 5 10 0 0 0 0 1
footprint=D_200
T 58800 47200 5 10 1 1 270 0 1
refdes=RD2
}
C 58400 46600 1 270 0 resistor-1.sym
{
T 58800 46300 5 10 0 0 270 0 1
device=RESISTOR
T 58400 46600 5 10 0 0 0 0 1
footprint=R_200
T 58700 46400 5 10 1 1 270 0 1
refdes=R2
}
C 58300 45700 1 270 0 diode-1.sym
{
T 58900 45300 5 10 0 0 270 0 1
device=DIODE
T 58300 45700 5 10 0 0 0 0 1
footprint=D_200
T 58800 45400 5 10 1 1 270 0 1
refdes=D2
}
C 58500 50100 1 0 1 io-1.sym
{
T 57600 50300 5 10 0 0 0 6 1
net=IO:IO1
T 58300 50700 5 10 0 0 0 6 1
device=none
T 57600 50200 5 10 1 1 0 7 1
value=IO1
}
C 58500 50100 1 0 0 output-1.sym
{
T 58600 50400 5 10 0 0 0 0 1
device=OUTPUT
T 59400 50300 5 10 0 0 0 0 1
net=A1
T 59400 50100 5 10 1 1 0 0 1
netname=Analog1
}
C 58500 47400 1 0 1 io-1.sym
{
T 57600 47600 5 10 0 0 0 6 1
net=IO:IO2
T 58300 48000 5 10 0 0 0 6 1
device=none
T 57600 47500 5 10 1 1 0 7 1
value=IO2
}
C 58500 44700 1 0 1 io-1.sym
{
T 57600 44900 5 10 0 0 0 6 1
net=IO:IO3
T 58300 45300 5 10 0 0 0 6 1
device=none
T 57600 44800 5 10 1 1 0 7 1
value=IO3
}
C 58500 44700 1 0 0 output-1.sym
{
T 58600 45000 5 10 0 0 0 0 1
device=OUTPUT
T 59400 44900 5 10 0 0 0 0 1
net=A3
T 59400 44700 5 10 1 1 0 0 1
netname=Analog3
}
C 51900 46700 1 0 0 XIAO.sym
{
T 42800 42000 5 10 0 0 0 0 1
device=Seeeduino XIAO m0
T 52300 49300 5 10 1 1 0 0 1
refdes=U1
T 53900 49600 5 10 0 1 0 0 1
footprint=DIP14W
}
C 55000 47700 1 0 0 io-1.sym
{
T 55900 47900 5 10 0 0 0 0 1
net=IO:IO1
T 55200 48300 5 10 0 0 0 0 1
device=none
T 55900 47800 5 10 1 1 0 1 1
value=IO1
}
C 55000 47400 1 0 0 io-1.sym
{
T 55900 47600 5 10 0 0 0 0 1
net=IO:IO2
T 55200 48000 5 10 0 0 0 0 1
device=none
T 55900 47500 5 10 1 1 0 1 1
value=IO2
}
C 55000 47100 1 0 0 io-1.sym
{
T 55900 47300 5 10 0 0 0 0 1
net=IO:IO3
T 55200 47700 5 10 0 0 0 0 1
device=none
T 55900 47200 5 10 1 1 0 1 1
value=IO3
}
C 51100 47700 1 0 0 input-1.sym
{
T 51100 48000 5 10 0 0 0 0 1
device=INPUT
T 51100 47700 5 10 1 1 0 6 1
netname=Analog1
T 51100 47900 5 10 0 1 0 6 1
net=A1
}
C 51100 47100 1 0 0 input-1.sym
{
T 51100 47400 5 10 0 0 0 0 1
device=INPUT
T 51100 47100 5 10 1 1 0 6 1
netname=Analog3
T 51100 47300 5 10 0 1 0 6 1
net=A3
}
C 51100 47400 1 0 0 input-1.sym
{
T 51100 47700 5 10 0 0 0 0 1
device=INPUT
T 51100 47400 5 10 1 1 0 6 1
netname=Analog2
T 51100 47600 5 10 0 1 0 6 1
net=A2
}
C 58500 47400 1 0 0 output-1.sym
{
T 58600 47700 5 10 0 0 0 0 1
device=OUTPUT
T 59400 47600 5 10 0 0 0 0 1
net=A2
T 59400 47400 5 10 1 1 0 0 1
netname=Analog2
}
