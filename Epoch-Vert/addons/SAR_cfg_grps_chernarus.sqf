
/// !!! http://snuletek.org/arma2coordcalc/


// =========================================================================================================
//  SAR_AI - DayZ AI library
//  Version: 1.5.0 
//  Author: Sarge (sarge@krumeich.ch) 
//
//		Wiki: to come
//		Forum: to come
//		
// ---------------------------------------------------------------------------------------------------------
//  Required:
//  UPSMon  
//  SHK_pos 
//  
// ---------------------------------------------------------------------------------------------------------
//   area, group & spawn  cfg file for Chernarus
//   last modified: 28.5.2013
// ---------------------------------------------------------------------------------------------------------

/* reconfiguring the properties of the grid (keep in mind the grid has default settings, but these you should overwrite where needed.

IMPORTANT: The grid squares are named like : SAR_area_0_0

where the first 0 is the x counter, and the second 0 the y counter.

So to adress the bottom left square in the grid, you use SAR_area_0_0.
The square above that one would be: SAR_area_0_1
the square one to the right of the bottom left square is SAR_area_1_0

You want to change the number arrays in the below lines:

The order for these numbers is always [BANDIT, SURVIVOR, SOLDIER]

Lets take an example for Chernarus
 
// Kamenka, 0 bandit groups, 1 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
_check = [["max_grps","rnd_grps","max_p_grp"],[[0,1,2],[0,75,100],[0,4,3]],"SAR_area_0_0"] call SAR_AI_mon_upd; 
  
 [[0,1,2],[0,75,100],[0,4,3]]

the first set of numbers : 0,1,2
stands for
0 bandit groups
1 soldier group
2 surivors groups
thats the max that can spawn in this grid

the second set of numbers : 0,75,100
that means: 
0% probability to spawn bandit groups
75% for soldiers
100% for survivors

the last set of numbers : 0,4,3
thats the maximum number of ppl in the group (including the leader)
0 bandits
max 4  soldiers
max 3  survivors
this number is randomized

 
 */
// 
// grid definition for the automatic spawn system
//

if (SAR_dynamic_spawning) then {

    

    diag_log format["SAR_AI: Dynamic spawning definition / adjustments started"];
     
     // Kamenka, 1 bandit groups, 1 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,2],[75,100,100],[2,2,1]],"SAR_area_0_0"] call SAR_AI_mon_upd; 

	// Zeleno1, 2 bandit groups, 0 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[2,0,2],[75,0,100],[2,0,1]],"SAR_area_0_1"] call SAR_AI_mon_upd; 
	
	// Zeleno2, 1 bandit groups, 0 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,2],[75,0,100],[2,0,1]],"SAR_area_1_1"] call SAR_AI_mon_upd;	
	
	// Gorka, 1 bandit groups, 1 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,2],[75,75,100],[2,2,1]],"SAR_area_4_3"] call SAR_AI_mon_upd;	
	
    // Balota, 1 bandit groups, 0 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,2],[80,0,80],[2,0,3]],"SAR_area_1_0"] call SAR_AI_mon_upd; 

    // Cherno, 1 bandit groups, 1 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,3],[75,50,75],[4,4,4]],"SAR_area_2_0"] call SAR_AI_mon_upd; 

    // Prido, 1 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,3],[50,0,50],[4,0,2]],"SAR_area_3_0"] call SAR_AI_mon_upd; 

    // Elektro, 1 bandit groups, 1 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,3],[75,50,50],[4,4,4]],"SAR_area_4_0"] call SAR_AI_mon_upd; 

    // Kamyshovo, 0 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,0,1],[0,0,80],[0,0,3]],"SAR_area_5_0"] call SAR_AI_mon_upd; 

    // Tulga, 1 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[75,0,80],[2,0,3]],"SAR_area_5_1"] call SAR_AI_mon_upd; 

	// SCrappo, 1 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[75,0,80],[2,0,3]],"SAR_area_4_1"] call SAR_AI_mon_upd;
	
    // Solni, 1 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[50,0,75],[2,0,3]],"SAR_area_5_2"] call SAR_AI_mon_upd; 

    // Berezino, 1 bandit groups, 1 soldier groups, 2 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,2],[50,75,75],[3,2,3]],"SAR_area_5_3"] call SAR_AI_mon_upd; 

    // Khelm, 1 bandit groups, 2 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,2,1],[75,100,75],[3,3,3]],"SAR_area_5_4"] call SAR_AI_mon_upd; 

	// Vybor, 2 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[2,0,1],[75,0,75],[3,0,3]],"SAR_area_1_3"] call SAR_AI_mon_upd;
	
	// Gulgo, 1 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,1],[75,0,75],[3,0,3]],"SAR_area_3_2"] call SAR_AI_mon_upd;
	
	// Rogovo, 1 bandit groups, 0 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,3],[75,0,75],[3,0,3]],"SAR_area_2_1"] call SAR_AI_mon_upd;
	
    // NEAF, 0 bandit groups, 3 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[0,3,1],[0,100,75],[0,4,4]],"SAR_area_5_5"] call SAR_AI_mon_upd; 

    // NWAF, 4 bandit groups, 0 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[4,0,1],[100,0,75],[0,4,4]],"SAR_area_1_4"] call SAR_AI_mon_upd; 

	// Stary2, 3 bandit groups, 1 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[3,1,3],[75,75,50],[3,2,3]],"SAR_area_2_3"] call SAR_AI_mon_upd;
	
    // Stary, 3 bandit groups, 1 soldier groups, 3 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[3,1,3],[75,75,50],[3,2,3]],"SAR_area_2_2"] call SAR_AI_mon_upd; 

    // Devils Castle, 4 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[4,0,0],[100,0,0],[4,0,0]],"SAR_area_2_4"] call SAR_AI_mon_upd; 

    // Skalka, 1 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,0],[75,0,0],[3,0,0]],"SAR_area_0_5"] call SAR_AI_mon_upd; 

    // Petrovka1, 1 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[2,0,0],[75,0,0],[3,0,0]],"SAR_area_1_5"] call SAR_AI_mon_upd; 

    // Petrovka2, 2 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[2,0,0],[75,0,0],[3,0,0]],"SAR_area_2_5"] call SAR_AI_mon_upd; 

    // Pobeda, 1 bandit groups, 1 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,0],[75,75,0],[3,3,0]],"SAR_area_3_5"] call SAR_AI_mon_upd; 

    // Krasno, 1 bandit groups, 1 soldier groups, 1 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,1,1],[50,75,75],[2,4,2]],"SAR_area_4_5"] call SAR_AI_mon_upd; 

    // test south of lopatino, 1 bandit groups, 0 soldier groups, 0 survivor groups - spawn probability ba,so,su - maximum group members ba,so,su
    [["max_grps","rnd_grps","max_p_grp"],[[1,0,0],[100,0,0],[6,0,0]],"SAR_area_0_3"] call SAR_AI_mon_upd;  

    diag_log format["SAR_AI: Dynamic spawning definition / adjustments finished"];

    
    
};
//
// Definition of area markers for static spawns
//

diag_log format["SAR_AI: Static spawning area definition started"];

// soutcoast, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_southcoast", [7997.2837, 2687.6707]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [6500, 1200];
SAR_marker_helipatrol_southcoast = _this;

// southcoast, mil.veh patrol area
_this = createMarker ["SAR_marker_veh_milsouth", [4138.2783, 2772.626]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [4000, 700];
SAR_marker_veh_milsouth = _this;

// southcoast, surv.veh patrol area
_this = createMarker ["SAR_marker_veh_endurance", [8479.7021, 2592.4033]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [6000, 700];
SAR_marker_veh_endurance = _this;

// eastcoast, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_eastcoast", [13304.196, 8220.9795]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1200, 6000];
SAR_marker_helipatrol_eastcoast = _this;

//MilNorth Vehicle Patrol
_this = createMarker ["SAR_marker_veh_milnorth", [12601.175, 8510.0527]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [500, 4000];
SAR_marker_veh_milnorth = _this;

// NWAF, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_nwaf", [4525.3335, 10292.299]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1500, 500];
_this setMarkerDir 59.354115;
SAR_marker_helipatrol_nwaf = _this;

//NWAF1, vehicle patrol
_this = createMarker ["SAR_marker_veh_nwaf1", [4402.835, 10505.754]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [750, 300];
_this setMarkerDir 59.354115;
SAR_marker_veh_nwaf1 = _this;

//NWAF2, vehicle patrol
_this = createMarker ["SAR_marker_veh_nwaf2", [4639.1455, 10100.637]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [750, 300];
_this setMarkerDir 59.354115;
SAR_marker_veh_nwaf2 = _this;

//NWAF3, vehicle patrol
_this = createMarker ["SAR_marker_veh_nwaf3", [4525.3335, 10292.299]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1500, 500];
_this setMarkerDir 59.354115;
SAR_marker_veh_nwaf3 = _this;

// NEAF, heli patrol area
_this = createMarker ["SAR_marker_helipatrol_neaf", [12034.16, 12725.376, 0]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1000, 600];
SAR_marker_helipatrol_neaf = _this;

//NEAF, vehicle patrol area
this = createMarker ["SAR_marker_veh_neaf", [12034.16, 12725.376, 0]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [600, 600];
SAR_marker_veh_neaf = _this;

//NEAF, soldier patrol
this = createMarker ["SAR_marker_traffiq_neaf", [12034.16, 12725.376, 0]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [200, 200];
SAR_marker_traffiq_neaf = _this;

_this = createMarker ["SAR_marker_DEBUG_veh", [1951.4304, 11905.569]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [1000, 1000];
_this setMarkerDir -19.085985;
SAR_marker_DEBUG_veh = _this;

_this = createMarker ["SAR_marker_DEBUG_devilscastle", [6913.47,11437.2,0.001]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [10, 10];
SAR_marker_DEBUG_devilscastle = _this;

// Devil's Castle Heli Patrol
_this = createMarker ["SAR_marker_helipatrol_devilscastle", [6913.47,11437.2,0]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [700, 700];
SAR_marker_helipatrol_devilscastle = _this;

_this = createMarker ["SAR_marker_traffiq_factorynearPolana", [11400,7560,0.001]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [10, 10];
SAR_marker_traffiq_factorynearPolana = _this;

//Camp Endurance Squad
_this = createMarker ["SAR_marker_traffiq_endurance", [8479.7021, 2592.4033]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [15, 15];
SAR_marker_traffiq_endurance = _this;

//Milsouth Squad
_this = createMarker ["SAR_marker_traffiq_milsouth", [4138.2783, 2772.626]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [10, 10];
SAR_marker_traffiq_milsouth = _this;

//Milnorth Squad
_this = createMarker ["SAR_marker_traffiq_milnorth", [12601.175, 8510.0527]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [10, 10];
SAR_marker_traffiq_milnorth = _this;

//NWairfield Patrol1
_this = createMarker ["SAR_marker_traffiq_nwAirfield1", [4402.835, 10505.754,0.001]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_marker_traffiq_nwAirfield1 = _this;

//NWairfield Patrol2
_this = createMarker ["SAR_marker_traffiq_nwAirfield2", [4639.1455, 10100.637,0.001]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [50, 50];
SAR_marker_traffiq_nwAirfield2 = _this;

//NWairfield Patrol3
_this = createMarker ["SAR_marker_traffiq_nwAirfield3", [4705.9155, 10305.58,0.001]];
_this setMarkerShape "RECTANGLE";
_this setMarkeralpha 0;
_this setMarkerType "Flag";
_this setMarkerBrush "Solid";
_this setMarkerSize [300, 150];
SAR_marker_traffiq_nwAirfield3 = _this;

diag_log format["SAR_AI: Static spawning area definition finished"];

// ----------------------------------------------------------------------------------------
// End of area marker definition section
// ----------------------------------------------------------------------------------------


//---------------------------------------------------------------------------------
// Static, predefined heli patrol areas with configurable units
//---------------------------------------------------------------------------------
//
//      format: [areamarker,type_of_group,(respawn),(respawntime)] call SAR_AI;
//
//      areamarker          : Name of an area, as defined in your area definitions (MUST NOT BE similar to SAR_area_ ! THIS IS IMPORTANT!)
//      type_of_group       : 1 = military, 2 = survivors, 3 = bandits
//
//      respawn             : true or false (optional)
//      respawntime         : time in secs until group respawns (optional)
//      air_vehicle_type    : classnema of the air vehicle you want to use
//
//
//      Note: The crew will be automatically seized to man any available gun in the airplane / heli.
//
//      Examples:
//
//              A) military air group patrolling, respawning, respawn time = default configured time, using default randomized vehicles  
//
//                      [SAR_marker_DEBUG,1,true] call SAR_AI_heli; 
//
//              B) bandit air group patrolling, not respawning, 
//
//                      [SAR_marker_DEBUG,3] call SAR_AI_heli; 
//
//              C) survivor air group patrolling, respawning, respawn time = 120 seconds  
//
//                      [SAR_marker_DEBUG,true,120] call SAR_AI_heli; 
//
//---------------------------------------------------------------------------------
diag_log format["SAR_AI: Static Spawning for Helicopter patrols started"];

//
// define your static air patrols here
//

 //Heli Patrol NWAF
[SAR_marker_helipatrol_nwaf,3,true] call SAR_AI_heli;
[SAR_marker_helipatrol_nwaf,3,true] call SAR_AI_heli;

//Heli Patrol NEAF
[SAR_marker_helipatrol_neaf,1,true] call SAR_AI_heli;

// Heli patrol south coast
[SAR_marker_helipatrol_southcoast,3,true] call SAR_AI_heli;
[SAR_marker_helipatrol_southcoast,3,true] call SAR_AI_heli;

// Heli Patrol Devil's Castle
[SAR_marker_helipatrol_devilscastle,3,true] call SAR_AI_heli;

// heli patrol east coast
[SAR_marker_helipatrol_eastcoast,1,true] call SAR_AI_heli;
[SAR_marker_helipatrol_eastcoast,1,true] call SAR_AI_heli;


// example war scenario in the northwest. Comment OUT after having had a look at it!
[SAR_marker_DEBUG_veh,3,true,30] call SAR_AI_heli;
//[SAR_marker_DEBUG_veh,1,true,30] call SAR_AI_heli;


diag_log format["SAR_AI: Static Spawning for Helicopter patrols finished"];

//---------------------------------------------------------------------------------
// Static, predefined infantry patrols in defined areas with configurable units
//---------------------------------------------------------------------------------
// 
//      format: [areamarker,type_of_group,number_of_snipers,number_of_riflemen,action_to_do,(respawn),(respawntime)] call SAR_AI;
//
//      areamarker          : Name of an area, as defined in your area definitions (MUST NOT BE similar to SAR_area_ ! THIS IS IMPORTANT!)
//      type_of_group       : 1 = military, 2 = survivors, 3 = bandits
//      number_of_snipers   : amount of snipers in the group
//      number_of_riflemen  : amount of riflemen in the group
//
//      action_to_do        : groupaction (optional, default is "patrol")
//                            possible values: 
//                               "fortify" -> the group will search for nearby buildings and move in them. They will stay there until an enemy spotted, then they will chase him.
//                               "ambush"  -> the group will look for a nearby road, and setup an ambush. They will not move until an enemy was spotted. 
//                               "patrol"  -> the group will patrol random waypoints in the area, and engage any enemy they see.
//
//      respawn         : true or false (optional)
//      respawntime     : time in secs until group respawns (optional)
//
//      Examples:
//
//              A) military group patrolling, with 1 leader and 1 rifleman, respawning, respawn time = default configured time  
//
//                      [SAR_marker_DEBUG,1,0,1,"patrol",true] call SAR_AI; 
//
//              B) bandit group patrolling, with 1 leader, 2 snipers and 1 rifleman, respawning, respawn time = 30 seconds  
//
//                      [SAR_marker_DEBUG,3,2,1,"patrol",true,30] call SAR_AI; 
//
//              C) survivor group fortifying, with 1 leader, 1 sniper and 3 riflemen, not respawning
//
//                      [SAR_marker_DEBUG,2,1,3,"fortify",false] call SAR_AI; 
//
//---------------------------------------------------------------------------------

diag_log format["SAR_AI: Static Spawning for infantry patrols started"];

//
// define your static infantry patrols here
//

[SAR_marker_DEBUG_devilscastle,3,1,6,"fortify",true,600] call SAR_AI;
[SAR_marker_traffiq_factorynearPolana,3,1,3,"ambush",true,300] call SAR_AI;
[SAR_marker_traffiq_nwAirfield1,3,2,6,"fortify",true,600] call SAR_AI;
[SAR_marker_traffiq_nwAirfield2,3,2,6,"fortify",true,600] call SAR_AI;
[SAR_marker_traffiq_nwAirfield3,3,2,6,"patrol",true,600] call SAR_AI;
[SAR_marker_traffiq_neaf,1,2,6,"fortify",true,600] call SAR_AI;
[SAR_marker_traffiq_milnorth,1,1,3,"fortify",true,600] call SAR_AI;
[SAR_marker_traffiq_milsouth,1,2,3,"fortify",true,600] call SAR_AI;
[SAR_marker_traffiq_endurance,2,2,6,"fortify",true,300] call SAR_AI;


// example war scenario in the northwest. Comment OUT after having had a look at it!
//[SAR_marker_DEBUG_veh,1,0,9,"patrol",true] call SAR_AI;
//[SAR_marker_DEBUG_veh,2,0,9,"patrol",true] call SAR_AI;
[SAR_marker_DEBUG_veh,3,0,9,"patrol",true] call SAR_AI;
[SAR_marker_DEBUG_veh,3,0,9,"patrol",true] call SAR_AI;
 

diag_log format["SAR_AI: Static Spawning for infantry patrols finished"];

// -------------------------------------------------------------------------------------
//
//  Static spawns for vehicle groups
//
//      format: [areamarker,type_of_group,vehicle array,crew array,(respawn),(respawntime)] call SAR_AI_land;
//
//
//      areamarker      : Name of an area, as defined in your area definitions
//      type_of_group   : 1 = military, 2 = survivors, 3 = bandits
//      vehicle array   : e.g. ["car1"], MUST be enclosed by [], and MUST be valid vehicle classnames. multiple vehicles are possible, like this: ["car1","car1","car1"]
//      crew array      : e.g. [[1,2,3]] -> the first entry in the array element sets if the leader travels in that vehicle, the second is the number of snipers in the vehicle, the third is the number of riflemen. 
//                        must match to the number of defined vehicles, so for the above example, you need: [[1,2,3],[0,1,2],[0,1,1]]
//                          
//
//      respawn         : true or false (optional)
//      respawntime     : time in secs until group respawns (optional)
//
//
//
//      Examples:
//
//      A) This will spawn an AI group with 1 vehicle(UAZ), and 3 AI in it
/*
        [
            SAR_marker_DEBUG_veh_1,             // Name of the area that the vehicle patrol will spawn in
            1,                                  // type of group
            ["UAZ_Unarmed_TK_EP1"],             // used vehicles
            [[1,1,1]],                          // Vehicle initial crew
            false                               // if this group should respawn or not
        ] call SAR_AI_land;
*/
// 
//      B) This will spawn an AI group with 1 vehicle, 3 AI in the UAZ, and this group will respawn after 60 seconds
/*
        [
            SAR_marker_DEBUG_veh_1,             // Name of the area that the vehicle patrol will spawn in
            1,                                  // type of group
            ["UAZ_Unarmed_TK_EP1"],             // used vehicle
            [[1,1,1]],                          // Vehicle initial crews
            true,                               // if this group should respawn or not
            60                                  // waittime until this group will respawn            
        ] call SAR_AI_land;
*/
//
// -------------------------------------------------------------------------------------
diag_log format["SAR_AI: Static Spawning for vehicle patrols started"];

//
// define your static vehicle patrols here
//

// example war scenario in the northwest. Comment OUT after having had a look at it!

[
    SAR_marker_DEBUG_veh,                           				// Name of the area that the vehicle patrol will spawn in
    3,                                              				// type of group
    ["LandRover_MG_TK_INS_EP1","TT650_Ins","TT650_Gue"],        // used vehicle
    [[1,1,1],[0,1,1],[0,1,1],[0,1,1]],                              // Vehicle initial crew
    true,                                           				// if this group should respawn or not
    60
] call SAR_AI_land;

[
    SAR_marker_veh_nwaf3,                           				// Name of the area that the vehicle patrol will spawn in
    3,                                              				// type of group
    ["Pickup_PK_INS","TT650_Gue","TT650_TK_CIV_EP1"],        						// used vehicle
    [[1,1,1],[0,1,1],[0,1,1]],                              		// Vehicle initial crew
    true,                                           				// if this group should respawn or not
    1800
] call SAR_AI_land;

[
    SAR_marker_veh_nwaf1,                           				// Name of the area that the vehicle patrol will spawn in
    3,                                              				// type of group
    ["LandRover_MG_TK_INS_EP1","TT650_Gue","TT650_TK_CIV_EP1"],        						// used vehicle
    [[1,1,1],[0,1,1],[0,1,1]],                              		// Vehicle initial crew
    true,                                           				// if this group should respawn or not
    1800
] call SAR_AI_land;

[
    SAR_marker_veh_nwaf2,                           				// Name of the area that the vehicle patrol will spawn in
    3,                                              				// type of group
    ["UAZ_MG_TK_EP1","TT650_Gue","TT650_TK_CIV_EP1"],        						// used vehicle
    [[1,1,1],[0,1,1],[0,1,1]],                              		// Vehicle initial crew
    true,                                           				// if this group should respawn or not
    1800
] call SAR_AI_land;

[
    SAR_marker_veh_neaf,               // Name of the area that the vehicle patrol will spawn in
    1,                                  // type of group
    ["HMMWV_Armored"],                  // used vehicle
    [[1,1,1]],                          // Vehicle initial crew
    true,                               // if this group should respawn or not
    600                                  // waittime until this group will respawn
] call SAR_AI_land; 

[
    SAR_marker_veh_milnorth,               // Name of the area that the vehicle patrol will spawn in
    1,                                  // type of group
    ["HMMWV_Armored"],                  // used vehicle
    [[1,1,1]],                          // Vehicle initial crew
    true,                               // if this group should respawn or not
    60                                  // waittime until this group will respawn
] call SAR_AI_land;

[
    SAR_marker_veh_endurance,               // Name of the area that the vehicle patrol will spawn in
    2,                                  // type of group
    ["LandRover_Special_CZ_EP1","M1030"],                  // used vehicle
    [[1,1,1],[0,1,1]],                          // Vehicle initial crew
    true,                               // if this group should respawn or not
    60                                  // waittime until this group will respawn
] call SAR_AI_land; 

[
    SAR_marker_veh_milsouth,               // Name of the area that the vehicle patrol will spawn in
    1,                                  // type of group
    ["HMMWV_Armored"],                  // used vehicle
    [[1,1,1]],                          // Vehicle initial crew
    true,                               // if this group should respawn or not
    60                                  // waittime until this group will respawn
] call SAR_AI_land;

diag_log format["SAR_AI: Static Spawning for vehicle patrols finished"];
// ---- end of configuration area ----

