s.boot

//patch for pop up May 2023



(//my synth
SynthDef(\synthOne,
	{arg
		out=0, freq=440,dTune1=0,dTune2=0,dTune3=0,dTune4=0, amp1=0, amp2=0, amp3=0, amp4=0, amp5=0, wid=0.5, cut=16000, rez=0.1,  atk=0.1, sus=0.1,rel=0.1,pan=0, vol=0.5;

		var osc1,osc2,osc3,osc4, noise, filt, verb, env;
		osc1 = LFSaw.ar(freq+dTune1, 0, amp1);
		osc2 = LFPulse.ar(freq+dTune2, 0, wid, amp2);
		osc3 = SinOsc.ar(freq+dTune3, 0, amp3);
		osc4 = LFTri.ar(freq+dTune4, 0, amp4);
		noise = WhiteNoise.ar(amp5);
		filt = RLPF.ar(osc1+osc2+osc3+osc4+noise,cut,rez);
		env = EnvGen.kr(Env.linen(atk,sus,rel),doneAction:2);
		Out.ar(out, Pan2.ar(filt*env,pan, vol))
}).add;

)





(
(

~block01a=Pbind(\instrument, \synthOne,
	\dur, Pseq([2],8),
	\note, Pxrand([ 7, 10, 14, 17 ],8),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 0.01,
	\sus, 0.01,
	\rel, 3,
	\pan, 0,
	\vol,0.08 );

~block02a=Pbind(\instrument, \synthOne,
	\dur, Pseq([4],4),
	\note, Pxrand([ 7, 10, 14, 17 ]-12,4),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 2,
	\sus, 0.01,
	\rel, 3,
	\pan, [-1,0,1],
	\vol,0.08 );

~block022a=Pbind(\instrument, \synthOne,
	\dur, Pseq([8],1),
	\note, Pxrand([ [7-24, 10-12, 14+12, 17+24 ]],1),
	\cut, 700,
	\rez, 0.6,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 0.1,
	\amp3, 0.2,
	\dTune3, 0.1,
	\amp4, 0.1,
	\dTune4, 2,
	\rez, 0.1,
	\atk, 4,
	\sus, 3,
	\rel, 10,
	\pan, [-1,1],
	\vol,0.08 );


~block03a=Pbind(\instrument, \synthOne,
	\dur, Pseq([2],8),
	\note, Pxrand([ 2, 5,  9,  12 ],8),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 0.01,
	\sus, 0.01,
	\rel, 3,
	\pan, 0,
	\vol,0.08 );

~block04a=Pbind(\instrument, \synthOne,
	\dur, Pseq([4],4),
	\note, Pxrand([ 2, 5,  9,  12 ]-12,4),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 2,
	\sus, 0.01,
	\rel, 3,
	\pan, [-1,0,1],
	\vol,0.08 );

~block044a=Pbind(\instrument, \synthOne,
	\dur, Pseq([8],1),
	\note, Pxrand([ [ 2-24, 5-12,  9+12,  12+24 ]],1),
	\cut, 700,
	\rez, 0.6,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 0.1,
	\amp3, 0.2,
	\dTune3, 0.1,
	\amp4, 0.1,
	\dTune4, 2,
	\rez, 0.1,
	\atk, 4,
	\sus, 3,
	\rel, 10,
	\pan, [-1,1],
	\vol,0.08 );



~block05a=Pbind(\instrument, \synthOne,
	\dur, Pseq([2],8),
	\note, Pxrand( [5, 9,  12, 15 ],8),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 0.01,
	\sus, 0.01,
	\rel, 3,
	\pan, 0,
	\vol,0.08 );

~block06a=Pbind(\instrument, \synthOne,
	\dur, Pseq([4],4),
	\note, Pxrand([5, 9,  12, 15 ]-12,4),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 2,
	\sus, 0.01,
	\rel, 3,
	\pan, [-1,0,1],
	\vol,0.08 );

~block066a=Pbind(\instrument, \synthOne,
	\dur, Pseq([8],1),
	\note, Pxrand([ [5-24, 9-12,  12+12, 15+24 ]],1),
	\cut, 700,
	\rez, 0.6,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 0.1,
	\amp3, 0.2,
	\dTune3, 0.1,
	\amp4, 0.1,
	\dTune4, 2,
	\rez, 0.1,
	\atk, 4,
	\sus, 3,
	\rel, 10,
	\pan, [-1,1],
	\vol,0.08 );


~block07a=Pbind(\instrument, \synthOne,
	\dur, Pseq([2],8),
	\note, Pxrand([0, 3,  7,  10 ],8),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 0.01,
	\sus, 0.01,
	\rel, 3,
	\pan, 0,
	\vol,0.08 );

~block08a=Pbind(\instrument, \synthOne,
	\dur, Pseq([4],4),
	\note, Pxrand([0, 3,  7,  10 ]-12,4),
	\cut, 400,
	\rez, 0.2,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 3,
	\amp3, 0.2,
	\dTune3, 1,
	\amp4, 0.1,
	\dTune4, 5,
	\rez, 0.1,
	\atk, 2,
	\sus, 0.01,
	\rel, 3,
	\pan, [-1,0,1],
	\vol,0.08 );

~block088a=Pbind(\instrument, \synthOne,
	\dur, Pseq([8],1),
	\note, Pxrand([ [0-24, 3-12,  7+12,  10+24 ]],1),
	\cut, 700,
	\rez, 0.6,
	\amp1, 0.2,
	\amp2, 0.1,
	\dTune2, 0.1,
	\amp3, 0.2,
	\dTune3, 0.1,
	\amp4, 0.1,
	\dTune4, 2,
	\rez, 0.1,
	\atk, 4,
	\sus, 3,
	\rel, 10,
	\pan, [-1,1],
	\vol,0.08 );

////////////////////////////////////////////////
////////////////////////////////////////////////
////////////////////////////////////////////////

/////////////////////////////////////////

(







~blockb=Pbind(\instrument, \synthOne,
	\dur, Pseq([Rest(0.5), 0.5, Rest(0.5), 0.5],4),
	\degree, 6+12,
	\cut, 1400,
	\rez, 0.9,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0,
	\amp4, 0.2,
	\rez, 0.1,
	\atk, 0.01,
	\sus, 0.1,
	\rel, 1,
	\pan, 0,
	\vol,0.3 );

//
// Pseq([[0,2,4,6]],1),
// Pseq([[1,3,5,7]],1),
// Pseq([[2,4,6,8]],1),
// Pseq([[3,5,7,9]],1),
// Pseq([[4,6,8,10]],1),
// Pseq([[5,7,9,11]],1),
// Pseq([[6,8,10,12]],1),
// Pseq([[7,9,11,13]],1),





~key_Vb=Pbind(\instrument, \synthOne,
	\dur, Pseq([2,4,1,1]),

	\degree, Pseq([
		Pseq([[0,2,4,6]],),

		Pseq([[5,7,9,11]],),

		Pseq([[3,5,7,9]],),
		Pseq([[4,6,8,10]],),

	], ),


	\cut, 1400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.2,
	\amp4, 0.2,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 1,
	\rel, Pseq([1,1,0.4,0.4]*2),
	\pan, [-1,1],
	\vol,0.3 );

~key_Bb=Pbind(\instrument, \synthOne,
	\dur, 2,

	\degree, Pseq([
		Pseq([[2,4,6,8]],1),
		Pseq([[3,5,7,9]],1),
		Pseq([[4,6,8,10]],1),
		Pseq([[5,7,9,11]],1),

	], ),


	\cut, 1400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.2,
	\amp4, 0.2,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 1,
	\rel, 0.2,
	\pan, [-1,1],
	\vol,0.3 );

~key_B2b=Pbind(\instrument, \synthOne,
	\dur, 2,

	\degree, Pseq([
		Pseq([[2,4,6,8]],1),
		Pseq([[3,5,7,9]],1),
		Pseq([[4,6,8,10]],1),
		Pseq([[5,7,9,11]],1),

	].reverse, ),


	\cut, 1400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.2,
	\amp4, 0.2,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 1,
	\rel, 0.2,
	\pan, [-1,1],
	\vol,0.3 );



~key_Chorob=Pbind(\instrument, \synthOne,
	\dur, 2,

	\degree, Pseq([
		Pseq([[6,8,10,12]],1),
		Pseq([[7,9,11,13]],1),
		Pseq([[4,6,8,10]],1),
		Pseq([[5,7,9,11]],1),
		Pseq([[6,8,10,12]],1),
		Pseq([[7,9,11,13]],1),
		Pseq([[4,6,8,10]],1),
		Pseq([[3,5,7,9]],1),

	], ),


	\cut, 1400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.2,
	\amp4, 0.2,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 1,
	\rel, 0.2,
	\pan, [-1,1],
	\vol,0.3 );


~bassVb=Pbind(\instrument, \synthOne,
	\dur, Pseq([2,4,1,0.5,0.5]),
	\degree, Pseq([0,5,3,4,1]-12, ),
	\cut, 400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.6,
	\amp4, 0,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 1,
	\rel, 0.5,
	\pan, 0,
	\vol,0.3 );


~bassBb=Pbind(\instrument, \synthOne,
	\dur, 1,
	\degree, Pseq([2,4,3,5,4,6,5,7]-12, ),
	\cut, 400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.6,
	\amp4, 0,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 0.5,
	\rel, 0.5,
	\pan, 0,
	\vol,0.3 );

~bassB2b=Pbind(\instrument, \synthOne,
	\dur, 1,
	\degree, Pseq([2,4,3,5,4,6,5,7].reverse-12, ),
	\cut, 400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.6,
	\amp4, 0,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 0.5,
	\rel, 0.5,
	\pan, 0,
	\vol,0.3 );

~bassChb=Pbind(\instrument, \synthOne,
	\dur, 1,
	\degree, Pseq([6,8,7,6,4,6,5,7,6,5,7,6,4,6,3,5]-12, ),
	\cut, 400,
	\rez, 0.1,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.6,
	\amp4, 0,
	\rez, 0.1,
	\atk, 0.1,
	\sus, 0.5,
	\rel, 0.5,
	\pan, 0,
	\vol,0.3 );



);
/////////////////////////////////////////

(

~blockc=Pbind(\instrument, \synthOne,
	\dur, 1,
	\root, 0,
	\degree, Pseq([
		Pseq([6,2],4),
		Pseq([6,2]+2,3),
		Pseq([2,6]-3,1),

	]),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 1,
	\pan, [-1,1],
	\vol,0.3 );


~pad_01c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, 0,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-12),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );

~pad_011c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, 0,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-7),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );


////////////////////////////////////////////




~block_02c=Pbind(\instrument, \synthOne,
	\dur, 1,
	\root, -3,
	\degree, Pseq([
		Pseq([6,2],4),
		Pseq([6,2]+2,3),
		Pseq([2,6]-3,1),

	]),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 1,
	\pan, [-1,1],
	\vol,0.3 );


~pad_02c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, -3,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-12),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );

~pad_022c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, -3,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-7),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );


////////////////////////////////////////////




~block_03c=Pbind(\instrument, \synthOne,
	\dur, 1,
	\root, 2,
	\degree, Pseq([
		Pseq([6,2],4),
		Pseq([6,2]+2,3),
		Pseq([2,6]-3,1),

	]),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 1,
	\pan, [-1,1],
	\vol,0.3 );


~pad_03c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, 2,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-12),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );


~pad_033c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, 2,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-7),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );

////////////////////////////////////////////




~block_04c=Pbind(\instrument, \synthOne,
	\dur, 1,
	\root, -1,
	\degree, Pseq([
		Pseq([6,2],4),
		Pseq([6,2]+2,3),
		Pseq([2,6]-3,1),

	]),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 1,
	\pan, [-1,1],
	\vol,0.3 );


~pad_04c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, -1,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-12),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );

~pad_044c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, -1,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-7),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );

////////////////////////////////////////////




~block_05c=Pbind(\instrument, \synthOne,
	\dur, 1,
	\root, 3,
	\degree, Pseq([
		Pseq([6,2],4),
		Pseq([6,2]+2,3),
		Pseq([2,6]-3,1),

	]),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 1,
	\pan, [-1,1],
	\vol,0.3 );


~pad_05c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, 3,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-12),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );


~pad_055c=Pbind(\instrument, \synthOne,
	\dur, Pseq([8, 6, 2 ]),
	\root, 3,
	\degree, Pseq([
		Pseq([4],),
		Pseq([4]+2,),
		Pseq([4]-3,),

	]-7),
	\cut, 400,
	\rez, 0.5,
	\amp1, 0.1,
	\amp2, 0.1,
	\amp3, 0.3,
	\amp4, 0.2,
	\noise, 0.1,
	\wid, 0.2,
	\atk, 1,
	\sus, 0.4,
	\rel, Pseq([6, 4, 2]),
	\pan, [-1,1],
	\vol,0.3 );

////////////////////////////////////////////
(

~block_01=Pbind(\instrument, \synthOne,
	\dur,Pseq([1,1,1,1, Rest(4)],5),
	\scale, Pseq([Scale.major],5),
	\root, 0,
	\degree,Pseq([ 0, 4, 8 , 12, 12,],5),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);

~block_02=Pbind(\instrument, \synthOne,
	\dur,Pseq([1,1,1,1, Rest(4)],5),
	\scale, Pseq([Scale.atharKurd],5),
	\root, 0,
	\degree, Pseq([ 0, 4, 8 , 12, 12],5),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);

~block_03=Pbind(\instrument, \synthOne,
	\dur,Pseq([1,1,1,1, Rest(4)],5),
	\scale, Pseq([Scale.egyptian],5),
	\root, 0,
	\degree, Pseq([ 0, 4, 8 , 12, 12],5),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\sus, 0.4,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);

~block_04=Pbind(\instrument, \synthOne,
	\dur,Pseq([1,1,1,1, Rest(4)],5),
	\scale, Pseq([Scale.gong],5),
	\root, 0,
	\degree, Pseq([ 0, 4, 8 , 12, 12],5),
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 0.01,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);


////////////////////////////////////

~blocker_01d=Pbind(\instrument, \synthOne,
	\dur, Pseq([8]),
	\scale, Scale.major,
	\root, 0,
	\degree,[0, 4, 8 , 12,]-12,
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 6,
	\sus, 0.4,
	\rel, 0.1,
	\pan, [-1,1],
	\vol,0.1);

~blocker_02d=Pbind(\instrument, \synthOne,
	\dur, Pseq([8]),
	\scale,Scale.atharKurd,
	\root, 0,
	\degree,[ 0, 4, 8 , 12,]-12,
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 6,
	\sus, 0.4,
	\rel, 0.1,
	\pan, [-1,1],
	\vol,0.1);

~blocker_03d=Pbind(\instrument, \synthOne,
	\dur, Pseq([8]),
	\scale, Scale.egyptian,
	\root, 0,
	\degree,[ 0, 4, 8 , 12,]-12,
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\amp4, 0.2,
	\atk, 6,
	\sus, 0.4,
	\rel, 0.1,
	\pan, [-1,1],
	\vol,0.1);

~blocker_04d=Pbind(\instrument, \synthOne,
	\dur, Pseq([8]),
	\scale, Scale.gong,
	\root, 0,
	\degree,[ 0, 4, 8 , 12,]-12,
	\cut, 5400,
	\rez, 0.5,
	\amp1, 0,
	\amp2, 0,
	\amp3, 0.3,
	\atk, 6,
	\sus, 0.4,
	\rel, 0.1,
	\pan, [-1,1],
	\vol,0.1);
//////////////////////////////////////

~pad_01d=Pbind(\instrument, \synthOne,
	\dur,4,
	\scale, Pseq([Scale.major],),
	\root, 0,
	\degree,[ 0, 4, 8 , 12, ],
	\cut, 200,
	\rez, 0.5,
	\amp1, 0.3,
	\amp2, 0.1,
	\amp3, 0.1,
	\amp4, 0.1,
	\atk, 2,
	\sus, 3,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);

~pad_02d=Pbind(\instrument, \synthOne,
	\dur,4,
	\scale, Pseq([Scale.atharKurd],),
	\root, 0,
	\degree, [ 0, 4, 8 , 12, ],
	\cut, 200,
	\rez, 0.5,
	\amp1, 0.3,
	\amp2, 0.1,
	\amp3, 0.1,
	\amp4, 0.1,
	\atk, 2,
	\sus, 3,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);

~pad_03d=Pbind(\instrument, \synthOne,
	\dur,4,
	\scale, Pseq([Scale.egyptian],),
	\root, 0,
	\degree, [ 0, 4, 8 , 12, ],
	\cut, 200,
	\rez, 0.5,
	\amp1, 0.3,
	\amp2, 0.1,
	\amp3, 0.1,
	\amp4, 0.1,
	\atk, 2,
	\sus, 3,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);

~pad_04d=Pbind(\instrument, \synthOne,
	\dur,4,
	\scale, Pseq([Scale.gong],),
	\root, 0,
	\degree, [ 0, 4, 8 , 12, ] ,
	\cut, 200,
	\rez, 0.5,
	\amp1, 0.3,
	\amp2, 0.1,
	\amp3, 0.1,
	\amp4, 0.1,
	\atk, 2,
	\sus, 3,
	\rel, 4,
	\pan, [-1,1],
	\vol,0.1);
);
///////////////////////


/////////////////////////////////////////



///////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
////////////////////////////////////////////////
////////////SECTIONS///////////////////////////
///////////////////////////////////////////////
(
(
~harm01a = Ppar([~block01a,~block02a,~block022a]);
~harm02a = Ppar([~block03a,~block04a,~block044a]);
~harm03a = Ppar([~block05a,~block06a,~block066a]);
~harm04a = Ppar([~block07a,~block08a,~block088a]);
);

/////////
(
~introb = Ppar([~blockb]);
~verse_01b = Ppar([~blockb,~key_Vb,~bassVb ],4);
~bridge_01b = Ppar([~blockb, ~key_Bb,~bassBb ],2);
~bridge_02b = Ppar([~blockb, ~key_B2b,~bassB2b ],2);
~chorob = Ppar([Pseq([~blockb],2), ~key_Chorob,~bassChb ],2);

);
////////

(
~introc = Ppar([~blockc],);
~part_01c = Ppar([~blockc,~pad_01c,~pad_011c ]);
~part_02c = Ppar([~block_02c,~pad_02c,~pad_022c ]);
~part_03c = Ppar([~block_03c,~pad_03c,~pad_033c ]);
~part_04c = Ppar([~block_04c,~pad_04c,~pad_044c ]);
~part_05c = Ppar([~block_05c,~pad_05c, ~pad_055c ]);

);
//////////
(
~part_ad = Ppar([Pseq([~block_01d,~block_02d,~block_03d,~block_04d,])]);
~part_bd = Ppar([~block_01d, ~blocker_01d, ~pad_01d]);
~part_cd = Ppar([~block_02d, ~blocker_02d, ~pad_02d]);
~part_dd = Ppar([~block_03d, ~blocker_03d, ~pad_03d]);
~part_ed = Ppar([~block_04d, ~blocker_04d, ~pad_04d]);

);
/////////////


);
);
///////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
////////////////////////////////////////////////
////////////PLAY///////////////////////////
///////////////////////////////////////////////


(
Ppar([
	Pseq([


		p.clock=TempoClock.default.tempo_(52/60);

		~harm01a,
		~harm02a,
		~harm03a,
		~harm04a,

		~harm02a,
		~harm03a,
		~harm04a,
		~harm01a,

		~harm03a,
		~harm04a,
		~harm01a,
		~harm02a,

		~harm04a,
		~harm01a,
		~harm02a,
		~harm03a,

		~harm01a,
		~harm02a,
		~harm03a,
		~harm04a,

		/////////


		~introb,
		~verse_01b,
		~bridge_01b,
		~verse_01b,
		~bridge_02b,
		~chorob,
		~verse_01b,
		~bridge_01b,
		~bridge_02b,
		~chorob,
		~chorob,
		~verse_01b,
		~verse_01b,
		~verse_01b,
		~introb,




		//////////////////////////



		~part_01c,
		~part_01c,
		~part_02c,
		~part_02c,
		~part_03c,
		~part_03c,
		~part_04c,
		~part_04c,
		~part_05c,
		~part_05c,
		~part_01c,
		~part_01c,
		//////////////////
		~part_ad,
		~part_bd,
		~part_cd,
		~part_dd,
		~part_ed,
		~part_ad,
		~part_cd,
		~part_dd,
		~part_ed,
		~part_ad,
		~part_dd,
		~part_ed,
		~part_ad,
		~part_ed,
		~part_ad,



	],inf);

]).play;
);
)


