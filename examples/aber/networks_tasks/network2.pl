in_compartment(Experiment,Metabolite,Compartment,Day) :-
  start_compound(Metabolite,Compartment).

in_compartment(Experiment,Metabolite,Compartment,Day) :-
  additional_nutrient(Experiment,Metabolite,Compartment).

in_compartment(Experiment,M1,Compartment,Day) :-
  additional_nutrient(Experiment,M2,Compartment),
  contaminated(M2,M1).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(41),
  Day >= 1,
  in_compartment(Experiment,"C00011",medium,Day),
  catalyst(41,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",medium,Day) :-
  not exclude(42),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  catalyst(42,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(371),
  Day >= 1,
  in_compartment(Experiment,"C00014",medium,Day),
  catalyst(371,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",medium,Day) :-
  not exclude(372),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  catalyst(372,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",cytosol,Day) :-
  not exclude(781),
  Day >= 1,
  in_compartment(Experiment,"C00065",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(781,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00065",medium,Day) :-
  not exclude(782),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(782),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  catalyst(782,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(801),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00082",medium,Day),
  catalyst(801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(802),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",medium,Day) :-
  not exclude(802),
  Day >= 1,
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(811),
  Day >= 1,
  in_compartment(Experiment,"C00078",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(811,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",medium,Day) :-
  not exclude(812),
  Day >= 1,
  in_compartment(Experiment,"C00078",cytosol,Day),
  catalyst(812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(812),
  Day >= 1,
  in_compartment(Experiment,"C00078",cytosol,Day),
  catalyst(812,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(831),
  Day >= 1,
  in_compartment(Experiment,"C00079",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(831,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",medium,Day) :-
  not exclude(832),
  Day >= 1,
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(832),
  Day >= 1,
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(832,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",cytosol,Day) :-
  not exclude(881),
  Day >= 1,
  in_compartment(Experiment,"C00064",medium,Day),
  in_compartment(Experiment,"C00080",medium,Day),
  catalyst(881,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00064",medium,Day) :-
  not exclude(882),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(882),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  catalyst(882,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",cytosol,Day) :-
  not exclude(901),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"C00097",medium,Day),
  catalyst(901,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",medium,Day) :-
  not exclude(902),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00097",medium,Day) :-
  not exclude(902),
  Day >= 1,
  in_compartment(Experiment,"C00097",cytosol,Day),
  catalyst(902,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"NAG",cytosol,Day) :-
  not exclude(990),
  Day >= 1,
  in_compartment(Experiment,"C00080",medium,Day),
  in_compartment(Experiment,"NAG",medium,Day),
  catalyst(990,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(1191),
  Day >= 1,
  in_compartment(Experiment,"C00025",medium,Day),
  catalyst(1191,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",medium,Day) :-
  not exclude(1192),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  catalyst(1192,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(2190),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(2190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(2190),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(2190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01185",cytosol,Day) :-
  not exclude(2190),
  Day >= 1,
  in_compartment(Experiment,"C00119",cytosol,Day),
  in_compartment(Experiment,"C03722",cytosol,Day),
  catalyst(2190,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01419",cytosol,Day) :-
  not exclude(3120),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  catalyst(3120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05729",cytosol,Day) :-
  not exclude(3120),
  Day >= 1,
  in_compartment(Experiment,"C00041",cytosol,Day),
  in_compartment(Experiment,"C00051",cytosol,Day),
  catalyst(3120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01165",cytosol,Day) :-
  not exclude(3290),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C03734",cytosol,Day),
  catalyst(3290,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00041",cytosol,Day) :-
  not exclude(3500),
  Day >= 1,
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(3500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(3500),
  Day >= 1,
  in_compartment(Experiment,"C00328",cytosol,Day),
  catalyst(3500,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00058",cytosol,Day) :-
  not exclude(3510),
  Day >= 1,
  in_compartment(Experiment,"C02700",cytosol,Day),
  catalyst(3510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00328",cytosol,Day) :-
  not exclude(3510),
  Day >= 1,
  in_compartment(Experiment,"C02700",cytosol,Day),
  catalyst(3510,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02700",cytosol,Day) :-
  not exclude(3520),
  Day >= 1,
  in_compartment(Experiment,"C00007",cytosol,Day),
  in_compartment(Experiment,"C00078",cytosol,Day),
  catalyst(3520,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(3571),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00082",cytosol,Day) :-
  not exclude(3571),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C01179",cytosol,Day),
  catalyst(3571,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3572),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(3572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(3572),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00082",cytosol,Day),
  catalyst(3572,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  not exclude(3590),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(3590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00118",cytosol,Day) :-
  not exclude(3590),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(3590,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3600),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(3600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03506",cytosol,Day) :-
  not exclude(3600),
  Day >= 1,
  in_compartment(Experiment,"C01302",cytosol,Day),
  catalyst(3600,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01302",cytosol,Day) :-
  not exclude(3610),
  Day >= 1,
  in_compartment(Experiment,"C04302",cytosol,Day),
  catalyst(3610,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00013",cytosol,Day) :-
  not exclude(3620),
  Day >= 1,
  in_compartment(Experiment,"C00108",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(3620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04302",cytosol,Day) :-
  not exclude(3620),
  Day >= 1,
  in_compartment(Experiment,"C00108",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(3620,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00022",cytosol,Day) :-
  not exclude(3630),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3630),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(3630),
  Day >= 1,
  in_compartment(Experiment,"C00064",cytosol,Day),
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3630,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(3660),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3660),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(3660),
  Day >= 1,
  in_compartment(Experiment,"C00006",cytosol,Day),
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3660,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00026",cytosol,Day) :-
  not exclude(3671),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00166",cytosol,Day),
  catalyst(3671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00079",cytosol,Day) :-
  not exclude(3671),
  Day >= 1,
  in_compartment(Experiment,"C00025",cytosol,Day),
  in_compartment(Experiment,"C00166",cytosol,Day),
  catalyst(3671,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00025",cytosol,Day) :-
  not exclude(3672),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(3672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(3672),
  Day >= 1,
  in_compartment(Experiment,"C00026",cytosol,Day),
  in_compartment(Experiment,"C00079",cytosol,Day),
  catalyst(3672,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3680),
  Day >= 1,
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(3680),
  Day >= 1,
  in_compartment(Experiment,"C00254",cytosol,Day),
  catalyst(3680,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00254",cytosol,Day) :-
  not exclude(3690),
  Day >= 1,
  in_compartment(Experiment,"C00251",cytosol,Day),
  catalyst(3690,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3700),
  Day >= 1,
  in_compartment(Experiment,"C01269",cytosol,Day),
  catalyst(3700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00251",cytosol,Day) :-
  not exclude(3700),
  Day >= 1,
  in_compartment(Experiment,"C01269",cytosol,Day),
  catalyst(3700,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3710),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C03175",cytosol,Day),
  catalyst(3710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01269",cytosol,Day) :-
  not exclude(3710),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C03175",cytosol,Day),
  catalyst(3710,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(3720),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00493",cytosol,Day),
  catalyst(3720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C03175",cytosol,Day) :-
  not exclude(3720),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00493",cytosol,Day),
  catalyst(3720,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(3730),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02637",cytosol,Day),
  catalyst(3730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00493",cytosol,Day) :-
  not exclude(3730),
  Day >= 1,
  in_compartment(Experiment,"C00005",cytosol,Day),
  in_compartment(Experiment,"C02637",cytosol,Day),
  catalyst(3730,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C02637",cytosol,Day) :-
  not exclude(3740),
  Day >= 1,
  in_compartment(Experiment,"C00944",cytosol,Day),
  catalyst(3740,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3750),
  Day >= 1,
  in_compartment(Experiment,"C04691",cytosol,Day),
  catalyst(3750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00944",cytosol,Day) :-
  not exclude(3750),
  Day >= 1,
  in_compartment(Experiment,"C04691",cytosol,Day),
  catalyst(3750,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00009",cytosol,Day) :-
  not exclude(3760),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00279",cytosol,Day),
  catalyst(3760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C04691",cytosol,Day) :-
  not exclude(3760),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  in_compartment(Experiment,"C00279",cytosol,Day),
  catalyst(3760,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(3950),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(3950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00134",cytosol,Day) :-
  not exclude(3950),
  Day >= 1,
  in_compartment(Experiment,"C00077",cytosol,Day),
  catalyst(3950,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00014",cytosol,Day) :-
  not exclude(5691),
  Day >= 1,
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00365",cytosol,Day) :-
  not exclude(5691),
  Day >= 1,
  in_compartment(Experiment,"C00239",cytosol,Day),
  catalyst(5691,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00239",cytosol,Day) :-
  not exclude(5692),
  Day >= 1,
  in_compartment(Experiment,"C00014",cytosol,Day),
  in_compartment(Experiment,"C00365",cytosol,Day),
  catalyst(5692,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(6181),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00362",cytosol,Day),
  catalyst(6181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00361",cytosol,Day) :-
  not exclude(6181),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00362",cytosol,Day),
  catalyst(6181,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6182),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(6182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00362",cytosol,Day) :-
  not exclude(6182),
  Day >= 1,
  in_compartment(Experiment,"C00008",cytosol,Day),
  in_compartment(Experiment,"C00361",cytosol,Day),
  catalyst(6182,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(6241),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(6241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  not exclude(6241),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(6241,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(6242),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(6242),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00119",cytosol,Day),
  catalyst(6242,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(7430),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00390",mitochondrion,Day) :-
  not exclude(7430),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C01967",mitochondrion,Day),
  catalyst(7430,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(7880),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00121",cytosol,Day),
  catalyst(7880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(7880),
  Day >= 1,
  in_compartment(Experiment,"C00002",cytosol,Day),
  in_compartment(Experiment,"C00121",cytosol,Day),
  catalyst(7880,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(7921),
  Day >= 1,
  in_compartment(Experiment,"C00199",cytosol,Day),
  catalyst(7921,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00199",cytosol,Day) :-
  not exclude(7922),
  Day >= 1,
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(7922,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(8231),
  Day >= 1,
  in_compartment(Experiment,"C00631",cytosol,Day),
  catalyst(8231,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00631",cytosol,Day) :-
  not exclude(8232),
  Day >= 1,
  in_compartment(Experiment,"C00074",cytosol,Day),
  catalyst(8232,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00011",cytosol,Day) :-
  not exclude(8801),
  Day >= 1,
  in_compartment(Experiment,"C00161",cytosol,Day),
  catalyst(8801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00071",cytosol,Day) :-
  not exclude(8801),
  Day >= 1,
  in_compartment(Experiment,"C00161",cytosol,Day),
  catalyst(8801,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00161",cytosol,Day) :-
  not exclude(8802),
  Day >= 1,
  in_compartment(Experiment,"C00011",cytosol,Day),
  in_compartment(Experiment,"C00071",cytosol,Day),
  catalyst(8802,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00020",cytosol,Day) :-
  not exclude(8821),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00301",cytosol,Day),
  catalyst(8821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00117",cytosol,Day) :-
  not exclude(8821),
  Day >= 1,
  in_compartment(Experiment,"C00001",cytosol,Day),
  in_compartment(Experiment,"C00301",cytosol,Day),
  catalyst(8821,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(8822),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(8822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00301",cytosol,Day) :-
  not exclude(8822),
  Day >= 1,
  in_compartment(Experiment,"C00020",cytosol,Day),
  in_compartment(Experiment,"C00117",cytosol,Day),
  catalyst(8822,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(10321),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00735",cytosol,Day),
  catalyst(10321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C05489",cytosol,Day) :-
  not exclude(10321),
  Day >= 1,
  in_compartment(Experiment,"C00004",cytosol,Day),
  in_compartment(Experiment,"C00080",cytosol,Day),
  in_compartment(Experiment,"C00735",cytosol,Day),
  catalyst(10321,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(10322),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05489",cytosol,Day),
  catalyst(10322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00080",cytosol,Day) :-
  not exclude(10322),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05489",cytosol,Day),
  catalyst(10322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00735",cytosol,Day) :-
  not exclude(10322),
  Day >= 1,
  in_compartment(Experiment,"C00003",cytosol,Day),
  in_compartment(Experiment,"C05489",cytosol,Day),
  catalyst(10322,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00463",cytosol,Day) :-
  include(10900),
  Day >= 1,
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(10900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00661",cytosol,Day) :-
  include(10900),
  Day >= 1,
  in_compartment(Experiment,"C03506",cytosol,Day),
  catalyst(10900,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  include(10910),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(10910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00078",cytosol,Day) :-
  include(10910),
  Day >= 1,
  in_compartment(Experiment,"C00065",cytosol,Day),
  in_compartment(Experiment,"C00463",cytosol,Day),
  catalyst(10910,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00463",cytosol,Day) :-
  not exclude(10920),
  Day >= 1,
  in_compartment(Experiment,"C00463",medium,Day),
  catalyst(10920,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00074",cytosol,Day) :-
  not exclude(30010),
  Day >= 1,
  in_compartment(Experiment,"C00074",medium,Day),
  catalyst(30010,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00108",cytosol,Day) :-
  not exclude(30020),
  Day >= 1,
  in_compartment(Experiment,"C00108",medium,Day),
  catalyst(30020,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00166",cytosol,Day) :-
  not exclude(30030),
  Day >= 1,
  in_compartment(Experiment,"C00166",medium,Day),
  catalyst(30030,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00493",cytosol,Day) :-
  not exclude(30040),
  Day >= 1,
  in_compartment(Experiment,"C00493",medium,Day),
  catalyst(30040,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C01179",cytosol,Day) :-
  not exclude(30050),
  Day >= 1,
  in_compartment(Experiment,"C01179",medium,Day),
  catalyst(30050,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00279",cytosol,Day) :-
  not exclude(30060),
  Day >= 1,
  in_compartment(Experiment,"C00279",medium,Day),
  catalyst(30060,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00631",cytosol,Day) :-
  not exclude(30070),
  Day >= 1,
  in_compartment(Experiment,"C00631",medium,Day),
  catalyst(30070,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00001",cytosol,Day) :-
  not exclude(30080),
  Day >= 1,
  in_compartment(Experiment,"C00001",medium,Day),
  catalyst(30080,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00002",cytosol,Day) :-
  not exclude(30090),
  Day >= 1,
  in_compartment(Experiment,"C00002",medium,Day),
  catalyst(30090,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00003",cytosol,Day) :-
  not exclude(30100),
  Day >= 1,
  in_compartment(Experiment,"C00003",medium,Day),
  catalyst(30100,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00004",cytosol,Day) :-
  not exclude(30110),
  Day >= 1,
  in_compartment(Experiment,"C00004",medium,Day),
  catalyst(30110,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00005",cytosol,Day) :-
  not exclude(30120),
  Day >= 1,
  in_compartment(Experiment,"C00005",medium,Day),
  catalyst(30120,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00006",cytosol,Day) :-
  not exclude(30130),
  Day >= 1,
  in_compartment(Experiment,"C00006",medium,Day),
  catalyst(30130,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00007",cytosol,Day) :-
  not exclude(30140),
  Day >= 1,
  in_compartment(Experiment,"C00007",medium,Day),
  catalyst(30140,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00008",cytosol,Day) :-
  not exclude(30150),
  Day >= 1,
  in_compartment(Experiment,"C00008",medium,Day),
  catalyst(30150,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

in_compartment(Experiment,"C00119",cytosol,Day) :-
  not exclude(30160),
  Day >= 1,
  in_compartment(Experiment,"C00119",medium,Day),
  catalyst(30160,Complex),
  not inhibited(Experiment,Complex,Day),
  not deleted(Experiment,Complex).

assertable_reaction(10900).
assertable_reaction(10910).

retractable_reaction(41).
retractable_reaction(42).
retractable_reaction(371).
retractable_reaction(372).
retractable_reaction(781).
retractable_reaction(782).
retractable_reaction(801).
retractable_reaction(802).
retractable_reaction(811).
retractable_reaction(812).
retractable_reaction(831).
retractable_reaction(832).
retractable_reaction(881).
retractable_reaction(882).
retractable_reaction(901).
retractable_reaction(902).
retractable_reaction(990).
retractable_reaction(1191).
retractable_reaction(1192).
retractable_reaction(2190).
retractable_reaction(3120).
retractable_reaction(3290).
retractable_reaction(3500).
retractable_reaction(3510).
retractable_reaction(3520).
retractable_reaction(3571).
retractable_reaction(3572).
retractable_reaction(3590).
retractable_reaction(3600).
retractable_reaction(3610).
retractable_reaction(3620).
retractable_reaction(3630).
retractable_reaction(3660).
retractable_reaction(3671).
retractable_reaction(3672).
retractable_reaction(3680).
retractable_reaction(3690).
retractable_reaction(3700).
retractable_reaction(3710).
retractable_reaction(3720).
retractable_reaction(3730).
retractable_reaction(3740).
retractable_reaction(3750).
retractable_reaction(3760).
retractable_reaction(3950).
retractable_reaction(5691).
retractable_reaction(5692).
retractable_reaction(6181).
retractable_reaction(6182).
retractable_reaction(6241).
retractable_reaction(6242).
retractable_reaction(7430).
retractable_reaction(7880).
retractable_reaction(7921).
retractable_reaction(7922).
retractable_reaction(8231).
retractable_reaction(8232).
retractable_reaction(8801).
retractable_reaction(8802).
retractable_reaction(8821).
retractable_reaction(8822).
retractable_reaction(10321).
retractable_reaction(10322).
retractable_reaction(10920).
retractable_reaction(30010).
retractable_reaction(30020).
retractable_reaction(30030).
retractable_reaction(30040).
retractable_reaction(30050).
retractable_reaction(30060).
retractable_reaction(30070).
retractable_reaction(30080).
retractable_reaction(30090).
retractable_reaction(30100).
retractable_reaction(30110).
retractable_reaction(30120).
retractable_reaction(30130).
retractable_reaction(30140).
retractable_reaction(30150).
retractable_reaction(30160).


reactionID(E) :- assertable_reaction(E).
reactionID(E) :- retractable_reaction(E).
reactionID(E) :- certain_reaction(E).

enzyme_info(Reaction) :- catalyst(Reaction,Complex), Complex!=unknown.
catalyst(Reaction,unknown) :- not enzyme_info(Reaction).

component("YGL001C",48).
component("YDR127W",34).
component("YJR078W",57).
component("YOR323C",74).
component("YBR166C",25).
component("YMR145C",67).
component("YDL085W",30).
component("YLR299W",66).
component("YDR354W",39).
component("YFR047C",47).
component("YDR127W",35).
component("YDR035W",32).
component("YBR249C",26).
component("YHR137W",54).
component("YLR027C",64).
component("YKL106W",58).
component("YCR036W",28).
component("YDR127W",36).
component("YDR454C",41).
component("YOL061W",72).
component("YKL181W",59).
component("YHL011C",53).
component("YER099C",45).
component("YBL068W",21).
component("U53_",20).
component("YHR144C",55).
component("YBR111C",24).
component("YLR231C",65).
component("YDR380W",40).
component("YDL080C",29).
component("YKL184W",60).
component("YKL211C",61).
component("YKL211C",62).
component("YER090W",44).
component("YDR127W",37).
component("YPL281C",77).
component("YOR393W",75).
component("YMR323W",68).
component("YHR174W",56).
component("YGR254W",52).
component("YGL026C",49).
component("YNL316C",70).
component("YDR127W",38).
component("YGL148W",50).
component("YDR007W",31).
component("YOR095C",73).
component("YPR060C",78).
component("YPR138C",79).
component("YPL265W",76).
component("YOL020W",71).
component("YNL142W",69).
component("YKR039W",63).
component("YGR121C",51).
component("YFL055W",46).
component("YDR536W",43).
component("YDR508C",42).
component("YDR046C",33).
component("YCL025C",27).
component("YBR069C",23).
component("YBR068C",22).
component("U228_",19).
component("U165_",18).
component("I01179",17).
component("I00631",16).
component("I00493",15).
component("I00463",14).
component("I00279",13).
component("I00166",12).
component("I00119",11).
component("I00108",10).
component("I00074",9).
component("I00008",8).
component("I00007",7).
component("I00006",6).
component("I00005",5).
component("I00004",4).
component("I00003",3).
component("I00002",2).
component("I00001",1).


catalyst(10321,48).
catalyst(10322,48).
catalyst(3730,34).
catalyst(3520,57).
catalyst(3290,74).
catalyst(3660,25).
catalyst(7430,67).
catalyst(7430,30).
catalyst(3120,66).
catalyst(3620,39).
catalyst(2190,47).
catalyst(3710,35).
catalyst(3760,32).
catalyst(3760,26).
catalyst(3671,54).
catalyst(3672,54).
catalyst(3571,64).
catalyst(3572,64).
catalyst(3571,58).
catalyst(3572,58).
catalyst(7880,28).
catalyst(3720,36).
catalyst(6181,41).
catalyst(6182,41).
catalyst(6241,72).
catalyst(6242,72).
catalyst(6241,59).
catalyst(6242,59).
catalyst(6241,53).
catalyst(6242,53).
catalyst(6241,45).
catalyst(6242,45).
catalyst(6241,21).
catalyst(6242,21).
catalyst(3510,20).
catalyst(5691,55).
catalyst(5692,55).
catalyst(8821,24).
catalyst(8822,24).
catalyst(3500,65).
catalyst(8801,40).
catalyst(8802,40).
catalyst(8801,29).
catalyst(8802,29).
catalyst(3950,60).
catalyst(3600,61).
catalyst(3630,62).
catalyst(3630,44).
catalyst(3740,37).
catalyst(8231,77).
catalyst(8232,77).
catalyst(8231,75).
catalyst(8232,75).
catalyst(8231,68).
catalyst(8232,68).
catalyst(8231,56).
catalyst(8232,56).
catalyst(8231,52).
catalyst(8232,52).
catalyst(3590,49).
catalyst(3680,70).
catalyst(3750,38).
catalyst(3700,50).
catalyst(3610,31).
catalyst(7921,73).
catalyst(7922,73).
catalyst(3690,78).
catalyst(371,79).
catalyst(372,79).
catalyst(781,76).
catalyst(782,76).
catalyst(881,76).
catalyst(882,76).
catalyst(1191,76).
catalyst(1192,76).
catalyst(801,71).
catalyst(802,71).
catalyst(811,71).
catalyst(812,71).
catalyst(831,71).
catalyst(832,71).
catalyst(901,71).
catalyst(902,71).
catalyst(371,69).
catalyst(372,69).
catalyst(781,63).
catalyst(782,63).
catalyst(801,63).
catalyst(802,63).
catalyst(811,63).
catalyst(812,63).
catalyst(831,63).
catalyst(832,63).
catalyst(881,63).
catalyst(882,63).
catalyst(901,63).
catalyst(902,63).
catalyst(1191,63).
catalyst(1192,63).
catalyst(371,51).
catalyst(372,51).
catalyst(781,46).
catalyst(782,46).
catalyst(1191,46).
catalyst(1192,46).
catalyst(1191,43).
catalyst(1192,43).
catalyst(781,42).
catalyst(782,42).
catalyst(881,42).
catalyst(882,42).
catalyst(901,42).
catalyst(902,42).
catalyst(801,33).
catalyst(802,33).
catalyst(811,33).
catalyst(812,33).
catalyst(831,33).
catalyst(832,33).
catalyst(901,33).
catalyst(902,33).
catalyst(781,27).
catalyst(782,27).
catalyst(801,27).
catalyst(802,27).
catalyst(831,27).
catalyst(832,27).
catalyst(881,27).
catalyst(882,27).
catalyst(1191,27).
catalyst(1192,27).
catalyst(801,23).
catalyst(802,23).
catalyst(811,23).
catalyst(812,23).
catalyst(901,23).
catalyst(902,23).
catalyst(801,22).
catalyst(802,22).
catalyst(811,22).
catalyst(812,22).
catalyst(831,22).
catalyst(832,22).
catalyst(901,22).
catalyst(902,22).
catalyst(41,19).
catalyst(42,19).
catalyst(990,18).
catalyst(30050,17).
catalyst(30070,16).
catalyst(30040,15).
catalyst(10920,14).
catalyst(30060,13).
catalyst(30030,12).
catalyst(30160,11).
catalyst(30020,10).
catalyst(30010,9).
catalyst(30150,8).
catalyst(30140,7).
catalyst(30130,6).
catalyst(30120,5).
catalyst(30110,4).
catalyst(30100,3).
catalyst(30090,2).
catalyst(30080,1).

unknown_enzyme(unknown).


certain_enzyme(48).
certain_enzyme(34).
certain_enzyme(57).
certain_enzyme(74).
certain_enzyme(25).
certain_enzyme(67).
certain_enzyme(30).
certain_enzyme(66).
certain_enzyme(39).
certain_enzyme(47).
certain_enzyme(35).
certain_enzyme(32).
certain_enzyme(26).
certain_enzyme(54).
certain_enzyme(64).
certain_enzyme(58).
certain_enzyme(28).
certain_enzyme(36).
certain_enzyme(41).
certain_enzyme(72).
certain_enzyme(59).
certain_enzyme(53).
certain_enzyme(45).
certain_enzyme(21).
certain_enzyme(20).
certain_enzyme(55).
certain_enzyme(24).
certain_enzyme(65).
certain_enzyme(40).
certain_enzyme(29).
certain_enzyme(60).
certain_enzyme(61).
certain_enzyme(62).
certain_enzyme(44).
certain_enzyme(37).
certain_enzyme(77).
certain_enzyme(75).
certain_enzyme(68).
certain_enzyme(56).
certain_enzyme(52).
certain_enzyme(49).
certain_enzyme(70).
certain_enzyme(38).
certain_enzyme(50).
certain_enzyme(31).
certain_enzyme(73).
certain_enzyme(78).
certain_enzyme(79).
certain_enzyme(76).
certain_enzyme(71).
certain_enzyme(69).
certain_enzyme(63).
certain_enzyme(51).
certain_enzyme(46).
certain_enzyme(43).
certain_enzyme(42).
certain_enzyme(33).
certain_enzyme(27).
certain_enzyme(23).
certain_enzyme(22).
certain_enzyme(19).
certain_enzyme(18).
certain_enzyme(17).
certain_enzyme(16).
certain_enzyme(15).
certain_enzyme(14).
certain_enzyme(13).
certain_enzyme(12).
certain_enzyme(11).
certain_enzyme(10).
certain_enzyme(9).
certain_enzyme(8).
certain_enzyme(7).
certain_enzyme(6).
certain_enzyme(5).
certain_enzyme(4).
certain_enzyme(3).
certain_enzyme(2).
certain_enzyme(1).


enzymeID(E) :- unknown_enzyme(E).
enzymeID(E) :- modifiable_enzyme(E).
enzymeID(E) :- certain_enzyme(E).

metabolite("C00001").
metabolite("C00002").
metabolite("C00003").
metabolite("C00004").
metabolite("C00005").
metabolite("C00006").
metabolite("C00007").
metabolite("C00008").
metabolite("C00009").
metabolite("C00011").
metabolite("C00013").
metabolite("C00014").
metabolite("C00020").
metabolite("C00022").
metabolite("C00025").
metabolite("C00026").
metabolite("C00041").
metabolite("C00051").
metabolite("C00058").
metabolite("C00064").
metabolite("C00065").
metabolite("C00071").
metabolite("C00074").
metabolite("C00077").
metabolite("C00078").
metabolite("C00079").
metabolite("C00080").
metabolite("C00082").
metabolite("C00097").
metabolite("C00108").
metabolite("C00117").
metabolite("C00118").
metabolite("C00119").
metabolite("C00121").
metabolite("C00134").
metabolite("C00161").
metabolite("C00166").
metabolite("C00199").
metabolite("C00239").
metabolite("C00251").
metabolite("C00254").
metabolite("C00279").
metabolite("C00301").
metabolite("C00328").
metabolite("C00361").
metabolite("C00362").
metabolite("C00365").
metabolite("C00390").
metabolite("C00463").
metabolite("C00493").
metabolite("C00631").
metabolite("C00661").
metabolite("C00735").
metabolite("C00944").
metabolite("C01165").
metabolite("C01179").
metabolite("C01185").
metabolite("C01269").
metabolite("C01302").
metabolite("C01419").
metabolite("C01967").
metabolite("C02637").
metabolite("C02700").
metabolite("C03175").
metabolite("C03506").
metabolite("C03722").
metabolite("C03734").
metabolite("C04302").
metabolite("C04691").
metabolite("C05489").
metabolite("C05729").
metabolite("NAG").

orf("I00001").
orf("I00002").
orf("I00003").
orf("I00004").
orf("I00005").
orf("I00006").
orf("I00007").
orf("I00008").
orf("I00074").
orf("I00108").
orf("I00119").
orf("I00166").
orf("I00279").
orf("I00463").
orf("I00493").
orf("I00631").
orf("I01179").
orf("U165_").
orf("U228_").
orf("U53_").
orf("YBL068W").
orf("YBR068C").
orf("YBR069C").
orf("YBR111C").
orf("YBR166C").
orf("YBR249C").
orf("YCL025C").
orf("YCR036W").
orf("YDL080C").
orf("YDL085W").
orf("YDR007W").
orf("YDR035W").
orf("YDR046C").
orf("YDR127W").
orf("YDR354W").
orf("YDR380W").
orf("YDR454C").
orf("YDR508C").
orf("YDR536W").
orf("YER090W").
orf("YER099C").
orf("YFL055W").
orf("YFR047C").
orf("YGL001C").
orf("YGL026C").
orf("YGL148W").
orf("YGR121C").
orf("YGR254W").
orf("YHL011C").
orf("YHR137W").
orf("YHR144C").
orf("YHR174W").
orf("YJR078W").
orf("YKL106W").
orf("YKL181W").
orf("YKL184W").
orf("YKL211C").
orf("YKR039W").
orf("YLR027C").
orf("YLR231C").
orf("YLR299W").
orf("YMR145C").
orf("YMR323W").
orf("YNL142W").
orf("YNL316C").
orf("YOL020W").
orf("YOL061W").
orf("YOR095C").
orf("YOR323C").
orf("YOR393W").
orf("YPL265W").
orf("YPL281C").
orf("YPR060C").
orf("YPR138C").

compartment(cytosol).
compartment(medium).
compartment(mitochondrion).

day(1).

