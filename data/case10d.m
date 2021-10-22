function mpc = case10
%%AUTHORS:Meisam Mahdavi, Hassan Haes Alhelou, Paul Cuffe
%%PAPER TITLE:"Test Systems for Reconfiguration and Operation of Electric Power Distribution Networks"
%CASE10:TEST SYSTEM 10: "70-BUS DISTRIBUTION NETWORK"
%
%  DATA from our paper: "Test Systems for Reconfiguration and Operation of Electric Power Distribution Networks" 
%      
% 
%  02/02/2021       70-BUS DISTRIBUTION NETWORK    By H.H. Alhelou & P.Cuffe

%   MATPOWER


%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 0.1;
%% system MVA base
Vnom  = 11;	%Nominal line voltage (kV)
Vbase = 11;	%Base line voltage (kV)
Sbase = 100;	%3-Phase base power (kVA)

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ %% (Pd and Qd are specified in kW & kVAr here, converted to MW & MVAr below)
		1	3		0		0  0	0	1	1	0	11	1	1	1;
		2	1		100		90 0	0	1	1	0	11	1	1.1	0.9;
		3	1		60		40 0	0	1	1	0	11	1	1.1	0.9;
		4	1		150		130 0	0	1	1	0	11	1	1.1	0.9;
		5	1		75		50 0	0	1	1	0	11	1	1.1	0.9;
		6	1		15		9 0	0	1	1	0	11	1	1.1	0.9;
		7	1		18		14 0	0	1	1	0	11	1	1.1	0.9;
		8	1		13		10 0	0	1	1	0	11	1	1.1	0.9;
		9	1		16		11 0	0	1	1	0	11	1	1.1	0.9;
		10	1		20		10 0	0	1	1	0	11	1	1.1	0.9;
		11	1		16		9 0	0	1	1	0	11	1	1.1	0.9;
		12	1		50		40 0	0	1	1	0	11	1	1.1	0.9;
		13	1		105		90 0	0	1	1	0	11	1	1.1	0.9;
		14	1		25		15 0	0	1	1	0	11	1	1.1	0.9;
		15	1		40		25 0	0	1	1	0	11	1	1.1	0.9;
		16	1		60		30 0	0	1	1	0	11	1	1.1	0.9;
		17	1		40		25 0	0	1	1	0	11	1	1.1	0.9;
		18	1		15		9 0	0	1	1	0	11	1	1.1	0.9;
		19	1		13		7 0	0	1	1	0	11	1	1.1	0.9;
		20	1		30		20 0	0	1	1	0	11	1	1.1	0.9;
		21	1		90		50 0	0	1	1	0	11	1	1.1	0.9;
		22	1		50		30 0	0	1	1	0	11	1	1.1	0.9;
		23	1		60		40 0	0	1	1	0	11	1	1.1	0.9;
		24	1		100		80 0	0	1	1	0	11	1	1.1	0.9;
		25	1		80		65 0	0	1	1	0	11	1	1.1	0.9;
		26	1		100		60 0	0	1	1	0	11	1	1.1	0.9;
		27	1		100		55 0	0	1	1	0	11	1	1.1	0.9;
		28	1		120		70 0	0	1	1	0	11	1	1.1	0.9;
		29	1		105		70 0	0	1	1	0	11	1	1.1	0.9;
		30	1		80		50 0	0	1	1	0	11	1	1.1	0.9;
		31	1		60		40 0	0	1	1	0	11	1	1.1	0.9;
		32	1		13		8 0	0	1	1	0	11	1	1.1	0.9;
		33	1		16		9 0	0	1	1	0	11	1	1.1	0.9;
		34	1		50		30 0	0	1	1	0	11	1	1.1	0.9;
		35	1		40		28 0	0	1	1	0	11	1	1.1	0.9;
		36	1		60		40 0	0	1	1	0	11	1	1.1	0.9;
		37	1		40		30 0	0	1	1	0	11	1	1.1	0.9;
		38	1		30		25 0	0	1	1	0	11	1	1.1	0.9;
		39	1		150		100 0	0	1	1	0	11	1	1.1	0.9;
		40	1		60		35 0	0	1	1	0	11	1	1.1	0.9;
		41	1		120		70 0	0	1	1	0	11	1	1.1	0.9;
		42	1		90		60 0	0	1	1	0	11	1	1.1	0.9;
		43	1		18		10 0	0	1	1	0	11	1	1.1	0.9;
		44	1		16		10 0	0	1	1	0	11	1	1.1	0.9;
		45	1		100		50 0	0	1	1	0	11	1	1.1	0.9;
		46	1		60		40 0	0	1	1	0	11	1	1.1	0.9;
		47	1		90		70 0	0	1	1	0	11	1	1.1	0.9;
		48	1		85		55 0	0	1	1	0	11	1	1.1	0.9;
		49	1		100		70 0	0	1	1	0	11	1	1.1	0.9;
		50	1		140		90 0	0	1	1	0	11	1	1.1	0.9;
		51	1		60		40 0	0	1	1	0	11	1	1.1	0.9;
		52	1		20		11 0	0	1	1	0	11	1	1.1	0.9;
		53	1		40		30 0	0	1	1	0	11	1	1.1	0.9;
		54	1		36		24 0	0	1	1	0	11	1	1.1	0.9;
		55	1		30		20 0	0	1	1	0	11	1	1.1	0.9;
		56	1		43		30 0	0	1	1	0	11	1	1.1	0.9;
		57	1		80		50 0	0	1	1	0	11	1	1.1	0.9;
		58	1		240		120 0	0	1	1	0	11	1	1.1	0.9;
		59	1		125		110 0	0	1	1	0	11	1	1.1	0.9;
		60	1		25		10 0	0	1	1	0	11	1	1.1	0.9;
		61	1		10		5 0	0	1	1	0	11	1	1.1	0.9;
		62	1		150		130 0	0	1	1	0	11	1	1.1	0.9;
		63	1		50		30 0	0	1	1	0	11	1	1.1	0.9;
		64	1		30		20 0	0	1	1	0	11	1	1.1	0.9;
		65	1		130		120 0	0	1	1	0	11	1	1.1	0.9;
		66	1		150		130 0	0	1	1	0	11	1	1.1	0.9;
		67	1		25		15 0	0	1	1	0	11	1	1.1	0.9;
		68	1		100		60 0	0	1	1	0	11	1	1.1	0.9;
		69	1		40		30 0	0	1	1	0	11	1	1.1	0.9;
		70	3		0		0 0	0	1	1	0	11	1	1	1;
];


%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0;
	70	0	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [  %% (r and x specified in ohms here, converted to p.u. below)
		1	2		1.097		1.074	0	0	0	0	0	0	1	-360	360;
		2	3		1.463		1.432	0	0	0	0	0	0	1	-360	360;
		3	4		0.731		0.716	0	0	0	0	0	0	1	-360	360;
		4	5		0.366		0.358	0	0	0	0	0	0	1	-360	360;
		5	6		1.828		1.790	0	0	0	0	0	0	1	-360	360;
		6	7		1.097		1.074	0	0	0	0	0	0	1	-360	360;
		7	8		0.731		0.716	0	0	0	0	0	0	1	-360	360;
		8	9		0.731		0.716	0	0	0	0	0	0	1	-360	360;
		4	10		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		10	11		1.620		1.101	0	0	0	0	0	0	1	-360	360;
		11	12		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		12	13		1.350		0.917	0	0	0	0	0	0	1	-360	360;
		13	14		0.810		0.550	0	0	0	0	0	0	1	-360	360;
		14	15		1.944		1.321	0	0	0	0	0	0	1	-360	360;
		7	68		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		68	69		1.620		1.101	0	0	0	0	0	0	1	-360	360;
		1	16		1.097		1.074	0	0	0	0	0	0	1	-360	360;
		16	17		0.366		0.358	0	0	0	0	0	0	1	-360	360;
		17	18		1.463		1.432	0	0	0	0	0	0	1	-360	360;
		18	19		0.914		0.895	0	0	0	0	0	0	1	-360	360;
		19	20		0.804		0.787	0	0	0	0	0	0	1	-360	360;
		20	21		1.133		1.110	0	0	0	0	0	0	1	-360	360;
		21	22		0.475		0.465	0	0	0	0	0	0	1	-360	360;
		17	23		2.214		1.505	0	0	0	0	0	0	1	-360	360;
		23	24		1.620		1.110	0	0	0	0	0	0	1	-360	360;
		24	25		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		25	26		0.540		0.367	0	0	0	0	0	0	1	-360	360;
		26	27		0.540		0.367	0	0	0	0	0	0	1	-360	360;
		27	28		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		28	29		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		70	30		0.366		0.358	0	0	0	0	0	0	1	-360	360;
		30	31		0.731		0.716	0	0	0	0	0	0	1	-360	360;
		31	32		0.731		0.716	0	0	0	0	0	0	1	-360	360;
		32	33		0.804		0.787	0	0	0	0	0	0	1	-360	360;
		33	34		1.170		1.145	0	0	0	0	0	0	1	-360	360;
		34	35		0.768		0.752	0	0	0	0	0	0	1	-360	360;
		35	36		0.731		0.716	0	0	0	0	0	0	1	-360	360;
		36	37		1.097		1.074	0	0	0	0	0	0	1	-360	360;
		37	38		1.463		1.432	0	0	0	0	0	0	1	-360	360;
		32	39		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		39	40		0.540		0.367	0	0	0	0	0	0	1	-360	360;
		40	41		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		41	42		1.836		1.248	0	0	0	0	0	0	1	-360	360;
		42	43		1.296		0.881	0	0	0	0	0	0	1	-360	360;
		40	44		1.188		0.807	0	0	0	0	0	0	1	-360	360;
		44	45		0.540		0.367	0	0	0	0	0	0	1	-360	360;
		42	46		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		35	47		0.540		0.367	0	0	0	0	0	0	1	-360	360;
		47	48		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		48	49		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		49	50		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		70	51		0.366		0.358	0	0	0	0	0	0	1	-360	360;
		51	52		1.463		1.432	0	0	0	0	0	0	1	-360	360;
		52	53		1.463		1.432	0	0	0	0	0	0	1	-360	360;
		53	54		0.914		0.895	0	0	0	0	0	0	1	-360	360;
		54	55		1.097		1.074	0	0	0	0	0	0	1	-360	360;
		55	56		1.097		1.074	0	0	0	0	0	0	1	-360	360;
		52	57		0.270		0.183	0	0	0	0	0	0	1	-360	360;
		57	58		0.270		0.183	0	0	0	0	0	0	1	-360	360;
		58	59		0.810		0.550	0	0	0	0	0	0	1	-360	360;
		59	60		1.296		0.881	0	0	0	0	0	0	1	-360	360;
		55	61		1.188		0.807	0	0	0	0	0	0	1	-360	360;
		61	62		1.188		0.807	0	0	0	0	0	0	1	-360	360;
		62	63		0.810		0.550	0	0	0	0	0	0	1	-360	360;
		63	64		1.620		1.101	0	0	0	0	0	0	1	-360	360;
		62	65		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		65	66		0.540		0.367	0	0	0	0	0	0	1	-360	360;
		66	67		1.080		0.734	0	0	0	0	0	0	1	-360	360;
		9	50		0.908		0.726	0	0	0	0	0	0	0	-360	360;
		9	38		0.381		0.244	0	0	0	0	0	0	0	-360	360;
		15	46		0.681		0.544	0	0	0	0	0	0	0	-360	360;
		22	67		0.254		0.203	0	0	0	0	0	0	0	-360	360;
		29	64		0.254		0.203	0	0	0	0	0	0	0	-360	360;
		45	60		0.254		0.203	0	0	0	0	0	0	0	-360	360;
		43	38		0.454		0.363	0	0	0	0	0	0	0	-360	360;
		39	59		0.454		0.363	0	0	0	0	0	0	0	-360	360;
		21	27		0.454		0.363	0	0	0	0	0	0	0	-360	360;
		15	9		0.681		0.544	0	0	0	0	0	0	0	-360	360;
		67	15		0.454		0.363	0	0	0	0	0	0	0	-360	360;
];


%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	20	0;
	2	0	0	3	0	20	0;
];


%% convert branch impedances from Ohms to p.u.
[PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
    VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
[F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
    TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
    ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
Vbase = mpc.bus(1, BASE_KV) * 1e3;      %% in Volts
Sbase = mpc.baseMVA * 1e6;              %% in VA
mpc.branch(:, [BR_R BR_X]) = mpc.branch(:, [BR_R BR_X]) / (Vbase^2 / Sbase);

%% convert loads from kW to MW
mpc.bus(:, [PD, QD]) = mpc.bus(:, [PD, QD]) / 1e3;



