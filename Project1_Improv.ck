//Student-altered file to create the melody of the collaborative project. Altered from Peer_Coach_Roots
SinOsc s => dac;
SinOsc s2 => dac;
SinOsc s3 => dac;
SinOsc s4 => dac;
.05 => float gainOn => s.gain;
0. => float gainOff => s2.gain;
gainOff => s3.gain;
gainOff => s4.gain;

//notes you can pick are below
220 => float doh;
493.88/2 => float re;
554.37/2 => float mi;
587.33/2 => float fa;
220*1.5 => float sol;
739.99/2 => float la;
830.61/2 => float ti;
doh*2 => float highDoh;
//end of notes :)

/* MIDI note values
doh: 57
re: 59
mi: 61
fa: 62
sol: 64
la: 66
ti: 68
highDoh: 69 */

120 => float tempo; //student can change for tempo
(1/tempo)::minute => dur beat;

.8 => s.gain; //tells the sound how loud to be 

int a[5];
57 => a[0];
59 => a[1];
61 => a[2];
64 => a[3];
66 => a[4];
<<< a[0], a[1], a[2], a[3], a[4] >>>;

int e[5];
64 => e[0];
66 => e[1];
68 => e[2];
59 => e[3];
61 => e[4];
<<< e[0], e[1], e[2], e[3], e[4] >>>;

int f[5];
66 => f[0];
68 => f[1];
57 => f[2];
61 => f[3];
62 => f[4];
<<< f[0], f[1], f[2], f[3], f[4] >>>;

int d[5];
62 => d[0];
64 => d[1];
66 => d[2];
57 => d[3];
59 => d[4];
<<< d[0], d[1], d[2], d[3], d[4] >>>;

for (0 => int i; i<1;i++)
{
    Std.mtof(a[2]) => s.freq;
    1::beat => now;
    Std.mtof(a[0]) => s.freq;
    1::beat => now;
    Std.mtof(a[4]) => s.freq;
    .5::beat => now;
    Std.mtof(a[1]) => s.freq;
    .5::beat => now;
    Std.mtof(a[3]) => s.freq;
    1::beat => now;}


for (0 => int i; i<1;i++)
{
    Std.mtof(e[2]) => s.freq;
    1::beat => now;
    Std.mtof(e[0]) => s.freq;
    1::beat => now;
    Std.mtof(e[4]) => s.freq;
    .5::beat => now;
    Std.mtof(e[1]) => s.freq;
    .5::beat => now;
    Std.mtof(e[3]) => s.freq;
    1::beat => now;}
    
for (0 => int i; i<1;i++)
{
    Std.mtof(f[2]) => s.freq;
    1::beat => now;
    Std.mtof(f[0]) => s.freq;
    1::beat => now;
    Std.mtof(f[4]) => s.freq;
    .5::beat => now;
    Std.mtof(f[1]) => s.freq;
    .5::beat => now;
    Std.mtof(f[3]) => s.freq;
    1::beat => now;}
    
for (0 => int i; i<1;i++)
{
    Std.mtof(d[2]) => s.freq;
    1::beat => now;
    Std.mtof(d[0]) => s.freq;
    1::beat => now;
    Std.mtof(d[4]) => s.freq;
    .5::beat => now;
    Std.mtof(d[1]) => s.freq;
    .5::beat => now;
    Std.mtof(d[3]) => s.freq;
    1::beat => now;}
    
for (0 => int i; i<1;i++)
{
    Std.mtof(e[2]) => s.freq;
    .5::beat => now;
    Std.mtof(e[0]) => s.freq;
    .5::beat => now;
    Std.mtof(e[4]) => s.freq;
    .5::beat => now;
    Std.mtof(e[1]) => s.freq;
    .5::beat => now;}
    
for (0 => int i; i<1;i++)
{
    Std.mtof(d[2]) => s.freq;
    .6::beat => now;
    Std.mtof(d[0]) => s.freq;
    .5::beat => now;
    Std.mtof(d[1]) => s.freq;
    .5::beat => now;
    Std.mtof(d[3]) => s.freq;
    .4::beat => now;}
    
for (0 => int i; i<1;i++)
{
    Std.mtof(f[2]) => s.freq;
    1::beat => now;
    Std.mtof(f[4]) => s.freq;
    .5::beat => now;
    Std.mtof(f[1]) => s.freq;
    .5::beat => now;}
    
for (0 => int i; i<1;i++)
{
    Std.mtof(a[2]) => s.freq;
    1::beat => now;
    Std.mtof(a[0]) => s.freq;
    1::beat => now;
    Std.mtof(a[4]) => s.freq;
    .5::beat => now;
    Std.mtof(a[1]) => s.freq;
    .5::beat => now;
    Std.mtof(a[3]) => s.freq;
    1::beat => now;}
    
    
    
    
0 => float iT; //improvTime(for melody)

0 => int chordA;
1 => int chordD;
2 => int chordE;
3 => int chordF;

Math.srandom(1);
while (iT<24)
{
   Math.random2(0,3) => int chord;
    
   if (chord==chordA)
   {
      Math.random2(0,4) => int iS;//improvSolo 
      Std.mtof(a[iS]) => s.freq;
   }
   
   if (chord==chordD)
   {
      Math.random2(0,4) => int iS;//improvSolo 
      Std.mtof(d[iS]) => s.freq;
   }
   
   if (chord==chordE)
   {
      Math.random2(0,4) => int iS;//improvSolo 
      Std.mtof(e[iS]) => s.freq;
   }
   
   if (chord==chordF)
   {
      Math.random2(0,4) => int iS;//improvSolo 
      Std.mtof(f[iS]) => s.freq;
   }
   
   
   Math.random2f(.25,1.5) => float improvBeat;
   improvBeat::beat => now;
   iT + improvBeat => iT;
}
   
   
   
   
