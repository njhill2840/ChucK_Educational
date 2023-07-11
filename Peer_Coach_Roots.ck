//turn on the sine waves and declare up to 4 notes for students to use
SinOsc s => dac;
SinOsc s2 => dac;
SinOsc s3 => dac;
SinOsc s4 => dac;
//set volume for first 2 notes
.8 => float gainOn => s.gain;
0. => float gainOff => s2.gain;
//turn 3rd and 4th notes off--to be used if students desire
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

120 => float tempo; //student can change for tempo
(1/tempo)::minute => dur beat;

.8 => s.gain; //tells the sound how loud to be

re => s.freq; //tells the sound what note to play
1::beat => now; //tells the sound how long to play
