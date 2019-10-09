#!/bin/bash

head -n 79 Alex_Loop.sh | tail -71 > /users/PAS0654/machtay1/work/setup2.txt

:<<'EOF'

///////////////////
NFOUR=1024
EXPONENT=21
NNU=10000 // number of neutrino events
NNU_PASSED=5 // number of neutrino events that are allowed to pass the trigger
ONLY_PASSED_EVENTS=0 // 0 (default): AraSim throws NNU events whether or not they pass; 1: AraSim throws events until the number of events that pass the trigger is equal to NNU_PASSED (WARNING: may cause long run times if reasonable values are not chosen)
NOISE_WAVEFORM_GENERATE_MODE=0 // generate new noise waveforms for each events
NOISE_EVENTS=16 // number of pure noise waveforms
TRIG_ANALYSIS_MODE=1 // 0 = signal + noise, 1 = signal only, 2 = noise only
DETECTOR=1 // ARA stations 1 to 7
ANTENNA_MODE=0
NOFZ=1
core_x=10000
core_y=10000
TIMESTEP=5.E-10 // value for 2GHz actual station value
TRIG_WINDOW=1.E-7 // 100ns which is actual testbed trig window
POWERTHRESHOLD=-6.06 // 100Hz global trig rate for 3 out of 16 ARA stations
//DATA_BIN_SIZE=8192
POSNU_RADIUS=3000
V_MIMIC_MODE=0 // 0 : global trig is located center of readout windows
DATA_SAVE_MODE=0 // 2 : don't save any waveform informations at all
DATA_LIKE_OUTPUT=0 // 0 : don't save any waveform information to eventTree
BORE_HOLE_ANTENNA_LAYOUT=0
SECONDARIES=0
// below settings are available for only TestBed mode (DETECTOR=3 case)
TRIG_ONLY_BH_ON=0
CALPULSER_ON=0
USE_MANUAL_GAINOFFSET=0
USE_TESTBED_RFCM_ON=0
NOISE_TEMP_MODE=0
TRIG_THRES_MODE=0
READGEOM=0 // reads geometry information from the sqlite file or not (0 : don't read)
// new variables
//INTERACTION_MODE=0 // pickunbiased mode!
//taumodes=1
//BH_ANT_SEP_DIST_ON=0 // default 0 : use constant borehole antenna distance. 1 : use separate antenna distance. use z_btw01, z_btw12, ... in ARA_N_info.txt or ARA37_info.txt
TRIG_MODE=0 // use vpol, hpol separated trigger mode. by default N_TRIG_V=3, N_TRIG_H=3. You can change this values
//N_TRIG_V=4
//N_TRIG_H=4
number_of_stations=1
core_x=10000
core_y=10000
///////////////////
//DATA_SAVE_MODE=2
// Settings for Arbitrary event generation
//EVENT_TYPE=10 // arbitrary event type
//INTERACTION_MODE=2 // pick exact location using settings below
//POSNU_THETA=1.7 // interaction location elevation angle in radians
//POSNU_THETA=-0.5 // interaction location elevation angle in radians
//POSNU_PHI=0 // interaction location azimuthal angle in radians
//POSNU_R=1000 // interaction location radius in meters
//INTERACTION_MODE=4 // pick interaction location within cylindrical volume above the ice
//PICK_ABOVE_HEIGHT=3000.
// Settings for Station A2-like simulation
//DETECTOR=4
//DETECTOR_STATION=2
//DATA_LIKE_OUTPUT=1
///////////////////////// Other Alternate Settings //////////////////
//POSNU_RADIUS=5000
//RAYSOL_RANGE=7000
//SELECT_FLAVOR=1
//NU_NUBAR_SELECT_MODE=1
//SELECT_CURRENT=1 //default 2: get from ratios in Ghandi etal paper, 0: nc, 1: cc
//NNU_THIS_THETA=1
//NNU_THETA=0.785
//NNU_D_THETA=0.0873
//NNU_D_THETA=0.0
//NOISE_EVENTS=16
//NOISE_EVENTS=1
//NOISE=0
//NOISE_TEMP_MODE=1
//APPLY_NOISE_FIGURE=1
//ALL_ANT_V_ON=1

EOF
