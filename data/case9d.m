function mpc = case9
%%AUTHORS:Meisam Mahdavi, Hassan Haes Alhelou, Paul Cuffe
%%PAPER TITLE:"Test Systems for Reconfiguration and Operation of Electric Power Distribution Networks"
%CASE9:TEST SYSTEM 9: "69-BUS DISTRIBUTION NETWORK"
%
%  DATA from our paper: "Test Systems for Reconfiguration and Operation of Electric Power Distribution Networks" 
%      
% 
%  02/02/2021       69-BUS DISTRIBUTION NETWORK    By H.H. Alhelou & P.Cuffe

%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';


%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1; %%mpc.baseMVA = 10;
%% system MVA base
Vnom  = 12.66;	%Nominal line voltage (kV)
Vbase = 12.66;	%Base line voltage (kV)
Sbase = 1000;	%3-Phase base power (MVA)

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ %% (Pd and Qd are specified in kW & kVAr here, converted to MW & MVAr below)
	1	3	0	0	0	0	1	1	0	12.66	1	1	1;
	2	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	3	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	4	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	5	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	6	1	2.6	2.2	0	0	1	1	0	12.66	1	1.1	0.9;
	7	1	40.4 30	0	0	1	1	0	12.66	1	1.1	0.9;
	8	1	75	54	0	0	1	1	0	12.66	1	1.1	0.9;
	9	1	30	22	0	0	1	1	0	12.66	1	1.1	0.9;
	10	1	28	19	0	0	1	1	0	12.66	1	1.1	0.9;
	11	1	145	104	0	0	1	1	0	12.66	1	1.1	0.9;
	12	1	145	104	0	0	1	1	0	12.66	1	1.1	0.9;
	13	1	8	5.5	0	0	1	1	0	12.66	1	1.1	0.9;
	14	1	8	5.5	0	0	1	1	0	12.66	1	1.1	0.9;
	15	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	16	1	45.5	30	0	0	1	1	0	12.66	1	1.1	0.9;
	17	1	60	35	0	0	1	1	0	12.66	1	1.1	0.9;
	18	1	60	35	0	0	1	1	0	12.66	1	1.1	0.9;
	19	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	20	1	1	0.6	0	0	1	1	0	12.66	1	1.1	0.9;
	21	1	114	81	0	0	1	1	0	12.66	1	1.1	0.9;
	22	1	5.3	3.5	0	0	1	1	0	12.66	1	1.1	0.9;
	23	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	24	1	28	20	0	0	1	1	0	12.66	1	1.1	0.9;
	25	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	26	1	14	10	0	0	1	1	0	12.66	1	1.1	0.9;
	27	1	14	10	0	0	1	1	0	12.66	1	1.1	0.9;
	28	1	26	18.6	0	0	1	1	0	12.66	1	1.1	0.9;
	29	1	26	18.6	0	0	1	1	0	12.66	1	1.1	0.9;
	30	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	31	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	32	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	33	1	14	10	0	0	1	1	0	12.66	1	1.1	0.9;
	34	1	19.5	14	0	0	1	1	0	12.66	1	1.1	0.9;
	35	1	6	4	0	0	1	1	0	12.66	1	1.1	0.9;
	36	1	26	18.6	0	0	1	1	0	12.66	1	1.1	0.9;
	37	1	26	18.6	0	0	1	1	0	12.66	1	1.1	0.9;
	38	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	39	1	24	17	0	0	1	1	0	12.66	1	1.1	0.9;
	40	1	24	17	0	0	1	1	0	12.66	1	1.1	0.9;
	41	1	1.2	1	0	0	1	1	0	12.66	1	1.1	0.9;
	42	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	43	1	6	4.3	0	0	1	1	0	12.66	1	1.1	0.9;
	44	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	45	1	39.2	26.3	0	0	1	1	0	12.66	1	1.1	0.9;
	46	1	39.2	26.3	0	0	1	1	0	12.66	1	1.1	0.9;
	47	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	48	1	79	56.4	0	0	1	1	0	12.66	1	1.1	0.9;
	49	1	384.7	274.5	0	0	1	1	0	12.66	1	1.1	0.9;
	50	1	384.7	274.5	0	0	1	1	0	12.66	1	1.1	0.9;
	51	1	40.5	28.3	0	0	1	1	0	12.66	1	1.1	0.9;
	52	1	3.6	2.7	0	0	1	1	0	12.66	1	1.1	0.9;
	53	1	4.3	3.5	0	0	1	1	0	12.66	1	1.1	0.9;
	54	1	26.4	19	0	0	1	1	0	12.66	1	1.1	0.9;
	55	1	24	17.2	0	0	1	1	0	12.66	1	1.1	0.9;
	56	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	57	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	58	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	59	1	100	72	0	0	1	1	0	12.66	1	1.1	0.9;
	60	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	61	1	1244	888	0	0	1	1	0	12.66	1	1.1	0.9;
	62	1	32	23	0	0	1	1	0	12.66	1	1.1	0.9;
	63	1	0	0	0	0	1	1	0	12.66	1	1.1	0.9;
	64	1	227	162	0	0	1	1	0	12.66	1	1.1	0.9;
	65	1	59	42	0	0	1	1	0	12.66	1	1.1	0.9;
	66	1	18	13	0	0	1	1	0	12.66	1	1.1	0.9;
	67	1	18	13	0	0	1	1	0	12.66	1	1.1	0.9;
	68	1	28	20	0	0	1	1	0	12.66	1	1.1	0.9;
	69	1	28	20	0	0	1	1	0	12.66	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0;
];


%% branch data
%param :   Br:           R           X        I :=   Number#
%     from  to         (?)         (?)       (A)
mpc.branch = [
		1	2		0.0005		0.0012	0	0	0	0	0	0	1	-360	360;
		2	3		0.0005		0.0012	0	0	0	0	0	0	1	-360	360;
		3	4		0.0015		0.0036	0	0	0	0	0	0	1	-360	360;
		4	5		0.0251		0.0294	0	0	0	0	0	0	1	-360	360;
		5	6		0.3660		0.1864	0	0	0	0	0	0	1	-360	360;
		6	7		0.381		0.1941	0	0	0	0	0	0	1	-360	360;
		7	8		0.0922		0.0470	0	0	0	0	0	0	1	-360	360;
		8	9		0.0493		0.0251	0	0	0	0	0	0	1	-360	360;
		9	10		0.8190		0.2707	0	0	0	0	0	0	1	-360	360;
		10	11		0.1872		0.0691	0	0	0	0	0	0	1	-360	360;
		11	12		0.7114		0.2351	0	0	0	0	0	0	1	-360	360;
		12	13		1.0300		0.3400	0	0	0	0	0	0	1	-360	360;
		13	14		1.0440		0.3450	0	0	0	0	0	0	1	-360	360;
		14	15		1.0580		0.3496	0	0	0	0	0	0	1	-360	360;
		15	16		0.1966		0.0650	0	0	0	0	0	0	1	-360	360;
		16	17		0.3744		0.1238	0	0	0	0	0	0	1	-360	360;
		17	18		0.0047		0.0016	0	0	0	0	0	0	1	-360	360;
		18	19		0.3276		0.1083	0	0	0	0	0	0	1	-360	360;
		19	20		0.2106		0.0690	0	0	0	0	0	0	1	-360	360;
		20	21		0.3416		0.1129	0	0	0	0	0	0	1	-360	360;
		21	22		0.0140		0.0046	0	0	0	0	0	0	1	-360	360;
		22	23		0.1591		0.0526	0	0	0	0	0	0	1	-360	360;
		23	24		0.3463		0.1145	0	0	0	0	0	0	1	-360	360;
		24	25		0.7488		0.2475	0	0	0	0	0	0	1	-360	360;
		25	26		0.3089		0.1021	0	0	0	0	0	0	1	-360	360;
		26	27		0.1732		0.0572	0	0	0	0	0	0	1	-360	360;
		3	28		0.0044		0.0108	0	0	0	0	0	0	1	-360	360;
		28	29		0.0640		0.1565	0	0	0	0	0	0	1	-360	360;
		29	30		0.3978		0.1315	0	0	0	0	0	0	1	-360	360;
		30	31		0.0702		0.0232	0	0	0	0	0	0	1	-360	360;
		31	32		0.3510		0.1160	0	0	0	0	0	0	1	-360	360;
		32	33		0.8390		0.2816	0	0	0	0	0	0	1	-360	360;
		33	34		1.7080		0.5646	0	0	0	0	0	0	1	-360	360;
		34	35		1.4740		0.4873	0	0	0	0	0	0	1	-360	360;
		3	36		0.0044		0.0108	0	0	0	0	0	0	1	-360	360;
		36	37		0.0640		0.1565	0	0	0	0	0	0	1	-360	360;
		37	38		0.1053		0.1230	0	0	0	0	0	0	1	-360	360;
		38	39		0.0304		0.0355	0	0	0	0	0	0	1	-360	360;
		39	40		0.0018		0.0021	0	0	0	0	0	0	1	-360	360;
		40	41		0.7283		0.8509	0	0	0	0	0	0	1	-360	360;
		41	42		0.3100		0.3623	0	0	0	0	0	0	1	-360	360;
		42	43		0.0410		0.0478	0	0	0	0	0	0	1	-360	360;
		43	44		0.0092		0.0116	0	0	0	0	0	0	1	-360	360;
		44	45		0.1089		0.1373	0	0	0	0	0	0	1	-360	360;
		45	46		0.0009		0.0012	0	0	0	0	0	0	1	-360	360;
		4	47		0.0034		0.0084	0	0	0	0	0	0	1	-360	360;
		47	48		0.0851		0.2083	0	0	0	0	0	0	1	-360	360;
		48	49		0.2898		0.7091	0	0	0	0	0	0	1	-360	360;
		49	50		0.0822		0.2011	0	0	0	0	0	0	1	-360	360;
		8	51		0.0928		0.0473	0	0	0	0	0	0	1	-360	360;
		51	52		0.3319		0.1114	0	0	0	0	0	0	1	-360	360;
		9	53		0.1740		0.0886	0	0	0	0	0	0	1	-360	360;
		53	54		0.2030		0.1034	0	0	0	0	0	0	1	-360	360;
		54	55		0.2842		0.1447	0	0	0	0	0	0	1	-360	360;
		55	56		0.2813		0.1433	0	0	0	0	0	0	1	-360	360;
		56	57		1.5900		0.5337	0	0	0	0	0	0	1	-360	360;
		57	58		0.7837		0.2630	0	0	0	0	0	0	1	-360	360;
		58	59		0.3042		0.1006	0	0	0	0	0	0	1	-360	360;
		59	60		0.3861		0.1172	0	0	0	0	0	0	1	-360	360;
		60	61		0.5075		0.2585	0	0	0	0	0	0	1	-360	360;
		61	62		0.0974		0.0496	0	0	0	0	0	0	1	-360	360;
		62	63		0.1450		0.0738	0	0	0	0	0	0	1	-360	360;
		63	64		0.7105		0.3619	0	0	0	0	0	0	1	-360	360;
		64	65		1.0410		0.5302	0	0	0	0	0	0	1	-360	360;
		11	66		0.2012		0.0611	0	0	0	0	0	0	1	-360	360;
		66	67		0.0047		0.0014	0	0	0	0	0	0	1	-360	360;
		12	68		0.7394		0.2444	0	0	0	0	0	0	1	-360	360;
		68	69		0.0047		0.0016	0	0	0	0	0	0	1	-360	360;
		11	43		0.5000		0.5000	0	0	0	0	0	0	0	-360	360;
		13	21		0.5000		0.5000	0	0	0	0	0	0	0	-360	360;
		15	46		1.0000		0.5000	0	0	0	0	0	0	0	-360	360;
		50	59		2.0000		1.0000	0	0	0	0	0	0	0	-360	360;
		27	65		1.0000		0.5000	0	0	0	0	0	0	0	-360	360;
];


%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
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



