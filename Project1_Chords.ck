//Student-altered file to create the chords of the collaborative project. Altered from Peer_Coach_Roots
SinOsc s => dac;
SinOsc s2 => dac;
SinOsc s3 => dac;
SinOsc s4 => dac;
.1 => float gainOn => s.gain;
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
dih:57
re:59
mi: 61
fa:62
sol:64
la:66
ti:68
highDoh:69*/

120=> float tempo; //student can change for tempo
(1/tempo)::minute => dur beat;
.3 => float onGain;
.3 => s.gain; //tells the sound how loud to be
.3 => s2.gain;
.3 => s3.gain;

doh => s.freq;
mi => s2.freq;
sol => s3.freq;
3.75::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;
.25::beat=> now;


.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
sol => s.freq;
ti => s2.freq;
re => s3.freq;
3.75::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;
.25::beat=> now;

.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
la => s.freq;
highDoh => s2.freq;
mi => s3.freq;
3.75::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;
.25::beat=> now;

.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
fa => s.freq;
la => s2.freq;
doh => s3.freq;
3.75::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;
.25::beat=> now;

.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
sol => s.freq;
ti => s2.freq;
re => s3.freq;
1.75::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;
.25::beat=> now;

.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
fa => s.freq;
la => s2.freq;
doh => s3.freq;
1.75::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;
.25::beat=> now;

.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
la => s.freq;
highDoh => s2.freq;
mi => s3.freq;
2::beat=> now;
0 => s.gain;
0 => s2.gain;
0 => s3.gain;


.3 => s.gain;
onGain => s2.gain;
onGain => s3.gain;
highDoh => s.freq;
mi => s2.freq;
sol => s3.freq;
4::beat=> now;























0 => int timing;

0 => int chordA;
1 => int chordD;
2 => int chordE;
3 => int chordF;

Math.srandom(1);
while (timing<24)
{
    Math.random2(0,3) => int chord;
    
    if (chord==chordA)
    {
        doh => s.freq;
        mi => s2.freq;
        sol => s3.freq;
    }
    
    if (chord==chordD)
    {
        fa => s.freq;
        la => s2.freq;
        doh => s3.freq;
    }
    
    if (chord==chordE)
    {
        sol => s.freq;
        ti => s2.freq;
        re => s3.freq;
    }
    
    if (chord==chordF)
    {
        la => s.freq;
        highDoh => s2.freq;
        mi => s3.freq;
    }
    
    Math.random2(1,8) => int improvBeat;
    improvBeat::beat => now;
    timing + improvBeat => timing;
} 
    

    
    
    
    
    
    
    
