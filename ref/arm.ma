//Maya ASCII 2023 scene
//Name: arm.ma
//Last modified: Mon, Jan 08, 2024 10:54:22 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.1.1";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202211021031-847a9f9623";
fileInfo "osv" "Windows 11 Home Single Language v2009 (Build: 22631)";
fileInfo "UUID" "02CA9236-4A33-DE37-AC08-88AA024A20E5";
createNode transform -s -n "persp";
	rename -uid "6C044EFB-4A2A-D8C2-2CAD-D1AECF01B0B5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.8340184095570697 14.340936362080875 26.16913080406712 ;
	setAttr ".r" -type "double3" -11.138352729532821 -370.59999999984126 4.0447150011108519e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BDBADA90-4733-EF19-4B6E-15BC0546A150";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 26.062760859526779;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "60219CD4-43E0-B0A9-3FBC-FEB353024E51";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2B63D76B-43D9-CA3B-28B1-83BF4FEF83B9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "2B3B4FDA-4FD5-649C-0AF2-3289CEC512EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.363322207757324 22.528965979393256 1000.1898550612024 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "19278592-4CBE-2F8C-FCF1-84A0E7F23353";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.81142127560543;
	setAttr ".ow" 11.318262060377862;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 13.363322207757323 22.528965979393256 0.37843378559697655 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A266D7C4-4ED6-452A-8E2A-A39C9E5CD415";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "361C0619-465B-1EF1-5908-4C90DFA2BDC8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "main";
	rename -uid "309FA565-4A63-F394-E20A-66AA144F4227";
createNode transform -n "geo_grp" -p "main";
	rename -uid "EFBCC8E3-45C2-BF0C-EC76-76BFB823E484";
	setAttr ".ove" yes;
createNode transform -n "rig_grp" -p "main";
	rename -uid "EF9F1677-4727-19C9-0AB8-E88336C52363";
createNode transform -n "global_ctrl_grp" -p "rig_grp";
	rename -uid "A222AAA5-4264-FF0E-3499-60BE4C36A113";
createNode transform -n "global_ctrl_off_grp" -p "global_ctrl_grp";
	rename -uid "42F01EE4-4DE9-2F4E-398C-EBA3AAD1587B";
createNode transform -n "global_ctrl" -p "global_ctrl_off_grp";
	rename -uid "B3C97FC9-4397-05A8-82B7-C69A7ADC3360";
	addAttr -ci true -k true -sn "rig_scale" -ln "rig_scale" -dv 1 -at "double";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".rig_scale";
createNode nurbsCurve -n "global_ctrlShape" -p "global_ctrl";
	rename -uid "B0804695-49E7-29C0-FD31-1CA22F6456EE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-2.001501540839854 0 2.001501540839854
		0 0 -2.001501540839854
		2.001501540839854 0 2.001501540839854
		-2.001501540839854 0 2.001501540839854
		;
createNode transform -n "global_sub_01_ctrl_grp" -p "global_ctrl";
	rename -uid "0C254C93-4B4D-196C-7039-4BB750FF0909";
createNode transform -n "global_sub_01_ctrl_off_grp" -p "global_sub_01_ctrl_grp";
	rename -uid "6EEBC9CD-4387-8A33-30A2-3C9E49739CB7";
createNode transform -n "global_sub_01_ctrl" -p "global_sub_01_ctrl_off_grp";
	rename -uid "2025E7DC-4D45-9F06-7924-B195C062DF95";
createNode nurbsCurve -n "global_sub_01_ctrlShape" -p "global_sub_01_ctrl";
	rename -uid "4DD688CC-4F5D-CEAF-6C9A-68B53F7DF89D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		-1.5011261556298905 0 1.5011261556298905
		0 0 -1.5011261556298905
		1.5011261556298905 0 1.5011261556298905
		-1.5011261556298905 0 1.5011261556298905
		;
createNode transform -n "rig_settings_ctrl_grp" -p "global_sub_01_ctrl";
	rename -uid "B35344BB-4FF0-ECCD-F7D4-14A861675262";
createNode transform -n "rig_settings_ctrl_off_grp" -p "rig_settings_ctrl_grp";
	rename -uid "659F0479-46C2-C244-4654-9CAD264CC468";
createNode transform -n "rig_settings_ctrl" -p "rig_settings_ctrl_off_grp";
	rename -uid "D0A33363-445A-F9F9-1E38-3F920734EC24";
	addAttr -ci true -sn "geo_visibility" -ln "geo_visibility" -min 0 -max 1 -en "off:on" 
		-at "enum";
	addAttr -ci true -sn "geo_selection" -ln "geo_selection" -min 0 -max 2 -en "normal:ref:temp" 
		-at "enum";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -cb on ".geo_visibility";
	setAttr -cb on ".geo_selection";
createNode nurbsCurve -n "rig_settings_ctrlShape" -p "rig_settings_ctrl";
	rename -uid "346D6003-4E74-D387-3025-629046C06337";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		0 0 -1.000750770419927
		0.40030030816797085 0 -0.60045046225195631
		0.20015015408398543 0 -0.60045046225195631
		0.20015015408398543 0 -0.20015015408398543
		0.60045046225195631 0 -0.20015015408398543
		0.60045046225195631 0 -0.40030030816797085
		1.000750770419927 0 0
		0.60045046225195631 0 0.40030030816797085
		0.60045046225195631 0 0.20015015408398543
		0.20015015408398543 0 0.20015015408398543
		0.20015015408398543 0 0.60045046225195631
		0.40030030816797085 0 0.60045046225195631
		0 0 1.000750770419927
		-0.40030030816797085 0 0.60045046225195631
		-0.20015015408398543 0 0.60045046225195631
		-0.20015015408398543 0 0.20015015408398543
		-0.60045046225195631 0 0.20015015408398543
		-0.60045046225195631 0 0.40030030816797085
		-1.000750770419927 0 0
		-0.60045046225195631 0 -0.40030030816797085
		-0.60045046225195631 0 -0.20015015408398543
		-0.20015015408398543 0 -0.20015015408398543
		-0.20015015408398543 0 -0.60045046225195631
		-0.40030030816797085 0 -0.60045046225195631
		0 0 -1.000750770419927
		;
createNode transform -n "c_arm_03_grp" -p "global_sub_01_ctrl";
	rename -uid "FCD86C34-42D4-4F14-931E-F882C3068950";
createNode transform -n "c_arm_03_bnd_jnt_grp" -p "c_arm_03_grp";
	rename -uid "857386CD-4B1C-287B-25FD-8D8621264730";
createNode joint -n "c_arm_03_ik_01" -p "c_arm_03_bnd_jnt_grp";
	rename -uid "FDF19714-4437-48D8-840C-D79F768AC350";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 13.551014275453568 0 ;
	setAttr ".r" -type "double3" -8.5296105694117505e-07 -2.7720323521236496e-16 -3.724108401029273e-08 ;
	setAttr ".jo" -type "double3" 0 0 -26.596388042986987 ;
createNode joint -n "c_arm_03_ik_02" -p "c_arm_03_ik_01";
	rename -uid "A2363678-46DA-202E-C742-73AEE86EB59D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 -1.7763568394002505e-15 0 ;
	setAttr ".jo" -type "double3" 0 -4.9999999999999956 0 ;
createNode joint -n "c_arm_03_ik_03" -p "c_arm_03_ik_02";
	rename -uid "6C30A101-4EDB-5F0C-1D7E-A7BAB447CABC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4 -1.7763568394002505e-15 1.6653345369377348e-16 ;
	setAttr ".jo" -type "double3" 3.9756933518293969e-16 0 -3.4650450701561741e-17 ;
createNode ikEffector -n "effector1" -p "c_arm_03_ik_02";
	rename -uid "6A1204EC-40F8-97EC-3139-478F44EA6DC1";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "c_arm_03_fk_01" -p "c_arm_03_bnd_jnt_grp";
	rename -uid "73B260BF-4D10-D08E-78E4-BABAD95C898B";
	setAttr ".v" no;
	setAttr ".jo" -type "double3" 0 0 -26.596388042986987 ;
createNode joint -n "c_arm_03_fk_02" -p "c_arm_03_fk_01";
	rename -uid "A22BE721-492B-B8F5-1C73-489E7B7BD033";
	setAttr ".v" no;
	setAttr ".jo" -type "double3" 0 -4.9999999999999956 0 ;
createNode joint -n "c_arm_03_fk_03" -p "c_arm_03_fk_02";
	rename -uid "32868D56-4B7B-0A1F-C9D4-09A4960736FE";
	setAttr ".v" no;
	setAttr ".jo" -type "double3" 3.9756933518293969e-16 0 -3.4650450701561741e-17 ;
createNode parentConstraint -n "c_arm_03_fk_03_parentConstraint1" -p "c_arm_03_fk_03";
	rename -uid "CAC678AB-433F-66BE-C005-65A8964D417E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_fk_03_ctrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 4.0000000000000027 -3.5527136788005009e-15 3.1918911957973251e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "c_arm_03_fk_02_parentConstraint1" -p "c_arm_03_fk_02";
	rename -uid "134CAC47-4DB7-6A6F-7295-1098A0E5D9E1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_fk_02_ctrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".rst" -type "double3" 3.9999999999999991 -3.5527136788005009e-15 0 ;
	setAttr ".rsrr" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "c_arm_03_fk_01_parentConstraint1" -p "c_arm_03_fk_01";
	rename -uid "332A5CE1-421A-D6FE-7776-6E99463C4476";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_fk_01_ctrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1 13.551014275453568 0 ;
	setAttr -k on ".w0";
createNode joint -n "c_arm_03_driven_01" -p "c_arm_03_bnd_jnt_grp";
	rename -uid "164B78F0-4C3A-857C-53B8-55B436B05B3E";
	setAttr ".jo" -type "double3" 0 0 -26.596388042986987 ;
createNode joint -n "c_arm_03_driven_02" -p "c_arm_03_driven_01";
	rename -uid "EC2271CC-4957-DCC7-EF99-F4921D2BE912";
	setAttr ".jo" -type "double3" 0 -4.9999999999999956 0 ;
createNode joint -n "c_arm_03_driven_03" -p "c_arm_03_driven_02";
	rename -uid "883393ED-4076-9697-5E03-299B496CED60";
	setAttr ".jo" -type "double3" 3.9756933518293969e-16 0 -3.4650450701561741e-17 ;
createNode joint -n "c_arm_03_def_01" -p "c_arm_03_bnd_jnt_grp";
	rename -uid "140055A0-40D3-F213-CC86-F89BA8342FA4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1 13.551014275453568 0 ;
	setAttr ".jo" -type "double3" 0 0 -26.596388042986987 ;
createNode joint -n "c_arm_03_def_02" -p "c_arm_03_def_01";
	rename -uid "04B6868E-4356-D4C0-BE7F-E198417BD470";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.9999999999999991 -1.7763568394002505e-15 0 ;
	setAttr ".jo" -type "double3" 0 -4.9999999999999956 0 ;
createNode joint -n "c_arm_03_def_03" -p "c_arm_03_def_02";
	rename -uid "FE61D18A-48E9-2EAE-915A-3890B34544E7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0000000000000036 -1.7763568394002505e-15 1.6653345369377348e-16 ;
	setAttr ".jo" -type "double3" 3.9756933518293969e-16 0 -3.4650450701561741e-17 ;
createNode transform -n "c_arm_03_ctrl_grp" -p "c_arm_03_grp";
	rename -uid "B4609869-4BB1-D5F4-C8E8-AEA235768396";
createNode transform -n "c_arm_03_fk_ctrl_grp" -p "c_arm_03_ctrl_grp";
	rename -uid "CDFEA382-4C20-BC84-909E-78A9D6A1B932";
createNode transform -n "c_arm_03_fk_01_ctrl_grp" -p "c_arm_03_fk_ctrl_grp";
	rename -uid "1722ED30-4BE6-F82A-0155-72A42CF99071";
	setAttr ".t" -type "double3" 1 13.551014275453568 0 ;
	setAttr ".r" -type "double3" 0 0 -26.596388042986984 ;
createNode transform -n "c_arm_03_fk_01_ctrl_off_grp" -p "c_arm_03_fk_01_ctrl_grp";
	rename -uid "F30CA62A-4BED-5572-1C9B-37AA3AB489A2";
createNode transform -n "c_arm_03_fk_01_ctrl" -p "c_arm_03_fk_01_ctrl_off_grp";
	rename -uid "57517B21-4196-DA56-E287-57ADB2435488";
createNode nurbsCurve -n "c_arm_03_fk_01_ctrlShape" -p "c_arm_03_fk_01_ctrl";
	rename -uid "960C98D4-45E8-A204-CA6F-B5A33FD48C1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0 1.1754174373368367 -1.1754174373368369
		-1.0178598484666371e-16 1.0178598484666374e-16 -1.6622912813315815
		-1.1102230246251565e-16 -1.1754174373368365 -1.1754174373368365
		5.5511151231257827e-17 -1.6622912813315824 -8.617347356287245e-17
		0 -1.1754174373368367 1.1754174373368367
		1.0178598484666376e-16 -1.6651285454404838e-16 1.6622912813315827
		1.1102230246251565e-16 1.1754174373368365 1.1754174373368365
		-5.5511151231257827e-17 1.6622912813315824 2.2668607511699385e-16
		0 1.1754174373368367 -1.1754174373368369
		-1.0178598484666371e-16 1.0178598484666374e-16 -1.6622912813315815
		-1.1102230246251565e-16 -1.1754174373368365 -1.1754174373368365
		;
createNode transform -n "c_arm_03_fk_02_ctrl_grp" -p "c_arm_03_fk_01_ctrl";
	rename -uid "97162C95-48F0-E0DF-9DD3-EB91C4B35069";
	setAttr ".t" -type "double3" 3.9999999999999991 -3.5527136788005009e-15 0 ;
	setAttr ".r" -type "double3" 0 -4.9999999999999956 0 ;
createNode transform -n "c_arm_03_fk_02_ctrl_off_grp" -p "c_arm_03_fk_02_ctrl_grp";
	rename -uid "C475D9E7-4BB7-C435-6DF8-C49F914F40BA";
createNode transform -n "c_arm_03_fk_02_ctrl" -p "c_arm_03_fk_02_ctrl_off_grp";
	rename -uid "B09C1DC9-4209-F477-3057-A8A2C7D9B36B";
createNode nurbsCurve -n "c_arm_03_fk_02_ctrlShape" -p "c_arm_03_fk_02_ctrl";
	rename -uid "7BDACDDA-404A-0DE1-635F-EA833896F67F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-1.2142131388531421e-15 1.1754174373368345 -1.1754174373368369
		-1.2120090094718201e-15 -2.3407046693286805e-15 -1.6622912813315815
		-1.4362577437781734e-15 -1.1754174373368391 -1.1754174373368365
		-1.1587019876218842e-15 -1.6622912813315847 -8.617347356287245e-17
		-1.4362577437781734e-15 -1.1754174373368391 1.1754174373368367
		-1.0084370397784924e-15 -2.6090035087193929e-15 1.6622912813315827
		-1.2142131388531421e-15 1.1754174373368345 1.1754174373368365
		-8.8114623146559501e-16 1.66229128133158 2.2668607511699385e-16
		-1.2142131388531421e-15 1.1754174373368345 -1.1754174373368369
		-1.2120090094718201e-15 -2.3407046693286805e-15 -1.6622912813315815
		-1.4362577437781734e-15 -1.1754174373368391 -1.1754174373368365
		;
createNode transform -n "c_arm_03_fk_03_ctrl_grp" -p "c_arm_03_fk_02_ctrl";
	rename -uid "B4A208C0-4445-5412-E142-9AAF030771A2";
	setAttr ".t" -type "double3" 4.0000000000000036 -5.3290705182007514e-15 2.7755575615628914e-16 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "c_arm_03_fk_03_ctrl_off_grp" -p "c_arm_03_fk_03_ctrl_grp";
	rename -uid "9AAA191D-4956-D987-0084-E9B59311EB8B";
createNode transform -n "c_arm_03_fk_03_ctrl" -p "c_arm_03_fk_03_ctrl_off_grp";
	rename -uid "06720814-42A1-C39C-C064-8FA719918CAA";
createNode nurbsCurve -n "c_arm_03_fk_03_ctrlShape" -p "c_arm_03_fk_03_ctrl";
	rename -uid "82C090AC-4F97-1118-C380-30BC6C386724";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		1.2304816447035243e-15 2.322232034096977e-15 -1.6622912813315815
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		8.8871221790538575e-16 -1.66229128133158 -8.617347356287245e-17
		1.2217791252929327e-15 -1.1754174373368345 1.1754174373368367
		1.4340536143968516e-15 2.0539331947062645e-15 1.6622912813315827
		1.443823730217964e-15 1.1754174373368391 1.1754174373368365
		1.1662679740616749e-15 1.6622912813315847 2.2668607511699385e-16
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		1.2304816447035243e-15 2.322232034096977e-15 -1.6622912813315815
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		;
createNode transform -n "c_arm_03_ik_ctrl_grp" -p "c_arm_03_ctrl_grp";
	rename -uid "7680914C-487C-2981-C9E2-C1B95F33118F";
createNode transform -n "c_arm_03_ik_01_ctrl_grp" -p "c_arm_03_ik_ctrl_grp";
	rename -uid "A4B6BD5D-4593-60B0-D0E4-7DA152000608";
	setAttr ".t" -type "double3" 1 13.551013946533203 0 ;
	setAttr ".r" -type "double3" 0 0 -26.596388042986984 ;
createNode transform -n "c_arm_03_ik_01_ctrl_off_grp" -p "c_arm_03_ik_01_ctrl_grp";
	rename -uid "A1ACD3A7-4167-FD77-C72A-4FAAA58C854E";
createNode transform -n "c_arm_03_ik_01_ctrl" -p "c_arm_03_ik_01_ctrl_off_grp";
	rename -uid "CE1E03A8-4D90-7766-9D15-8D8AF9AEEC8B";
createNode nurbsCurve -n "c_arm_03_ik_01_ctrlShape" -p "c_arm_03_ik_01_ctrl";
	rename -uid "44B8CBEF-4CF6-BE60-99C3-10B614CC0AB4";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.26565576295107074 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 -0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 -0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 -0.26565576295107124 -0.26565576295106996
		0.2656557629510693 0.26565576295106891 -0.26565576295106996
		0.2656557629510693 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 -0.26565576295106996
		0.2656557629510693 0.26565576295106891 -0.26565576295106996
		0.2656557629510693 -0.26565576295107124 -0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 -0.26565576295106996
		;
createNode transform -n "c_arm_03_ik_02_ctrl_grp" -p "c_arm_03_ik_ctrl_grp";
	rename -uid "97F527AE-4657-9D3A-797B-C6A91E7F3696";
	setAttr ".t" -type "double3" 4.888759377648868 11.603975252939239 -7.9923857726548642 ;
createNode transform -n "c_arm_03_ik_02_ctrl_off_grp" -p "c_arm_03_ik_02_ctrl_grp";
	rename -uid "B1818938-4934-C975-A97A-DEB251B12DE3";
createNode transform -n "c_arm_03_ik_02_ctrl" -p "c_arm_03_ik_02_ctrl_off_grp";
	rename -uid "8A889100-4F94-F4CB-9F45-3EAC1EAA0857";
	addAttr -ci true -sn "lock" -ln "lock" -min 0 -max 1 -at "double";
	setAttr -k on ".lock";
createNode nurbsCurve -n "c_arm_03_ik_02_ctrlShape" -p "c_arm_03_ik_02_ctrl";
	rename -uid "F9A5F936-4CC0-8FBA-B321-C8BD78169400";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 1 2 3 4 5 6 7 8 9 10 11 12
		13
		0 -0.50551551291447272 -6.1907797722673611e-17
		-0.33701029507242813 4.1271857714625092e-17 -0.33701029507242813
		0 0.50551551291447272 0
		0.33701029507242813 -4.1271857714625092e-17 0.33701029507242813
		0 -0.50551551291447272 -6.1907797722673611e-17
		0.33701029507242813 4.1271857714625092e-17 -0.33701029507242813
		0 0.50551551291447272 0
		-0.33701029507242813 -4.1271857714625092e-17 0.33701029507242813
		0.33701029507242813 -4.1271857714625092e-17 0.33701029507242813
		0.33701029507242813 4.1271857714625092e-17 -0.33701029507242813
		-0.33701029507242813 0 -0.33701029507242813
		-0.33701029507242813 0 0.33701029507242813
		0 -0.50551551291447272 -6.1907797722673611e-17
		;
createNode transform -n "c_arm_03_ik_03_ctrl_grp" -p "c_arm_03_ik_ctrl_grp";
	rename -uid "9FF4E7F5-4E6B-F47B-BFF2-4487D9335ED4";
	setAttr ".t" -type "double3" 8.1398491593902378 9.9762070996484074 0.34862297099063283 ;
	setAttr ".r" -type "double3" 1.9954399272777753e-16 -4.9999999999999956 -26.596388042986984 ;
createNode transform -n "c_arm_03_ik_03_ctrl_off_grp" -p "c_arm_03_ik_03_ctrl_grp";
	rename -uid "9A23A0E5-40C4-CABB-BADC-8581D6009104";
createNode transform -n "c_arm_03_ik_03_ctrl" -p "c_arm_03_ik_03_ctrl_off_grp";
	rename -uid "850197C9-4AA8-AC5E-5D73-7183A34782D6";
	addAttr -ci true -sn "streatchy" -ln "streatchy" -min 0 -max 1 -at "double";
	setAttr -k on ".streatchy";
createNode nurbsCurve -n "c_arm_03_ik_03_ctrlShape" -p "c_arm_03_ik_03_ctrl";
	rename -uid "6B903D1D-4A03-F91C-A402-A39C0F4CF084";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.26565576295107074 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 -0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 -0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 -0.26565576295107124 0.26565576295106996
		0.2656557629510693 -0.26565576295107124 -0.26565576295106996
		0.2656557629510693 0.26565576295106891 -0.26565576295106996
		0.2656557629510693 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 0.26565576295106996
		-0.26565576295107074 0.26565576295106891 -0.26565576295106996
		0.2656557629510693 0.26565576295106891 -0.26565576295106996
		0.2656557629510693 -0.26565576295107124 -0.26565576295106996
		-0.26565576295107074 -0.26565576295107124 -0.26565576295106996
		;
createNode ikHandle -n "c_arm_03_ikHandle_01" -p "c_arm_03_ik_03_ctrl";
	rename -uid "C9803CF4-4E3A-6AD1-6FFE-CB8FD4D81788";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3322676295501878e-15 -1.7763568394002505e-15 8.3266726846886741e-17 ;
	setAttr ".r" -type "double3" 2.2430667385172067 4.469772205557148 26.68393694041599 ;
	setAttr ".s" -type "double3" 0.99999999999999978 0.99999999999999967 0.99999999999999978 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "c_arm_03_ikHandle_01_poleVectorConstraint1" -p
		 "c_arm_03_ikHandle_01";
	rename -uid "730DCCC1-45DE-31AA-9DE9-EFB9D2553A7B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_ik_02_ctrlW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 3.6358236934442836 -1.9539925233402755e-14 -8.3410087436454941 ;
	setAttr -k on ".w0";
createNode transform -n "c_arm_03_switch_ctrl_grp" -p "c_arm_03_ctrl_grp";
	rename -uid "CFC132CB-4F0F-7DBC-9A90-80B978BD97D3";
createNode transform -n "c_arm_03_switch_ctrl_off_grp" -p "c_arm_03_switch_ctrl_grp";
	rename -uid "6DAC757F-428E-FA89-554A-B581F985DE70";
createNode transform -n "c_arm_03_switch_ctrl" -p "c_arm_03_switch_ctrl_off_grp";
	rename -uid "1B3BD91D-4315-7FA0-90BE-5F818C1284A0";
	addAttr -ci true -k true -sn "switch" -ln "switch" -min 0 -max 1 -at "float";
	setAttr -k on ".switch" 1;
createNode nurbsCurve -n "c_arm_03_switch_ctrlShape" -p "c_arm_03_switch_ctrl";
	rename -uid "DD0D62E8-4CD4-E324-5F5F-14B0F3D86A2C";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		1 41 0 no 3
		42 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41
		42
		-2.8024457190358927e-07 -2.0761844491908662e-07 -0.88754017802483398
		-0.04628091482120554 -2.0761844502853408e-07 -0.89118253514455581
		-0.091421953890392718 -2.0761844506501671e-07 -0.9020199384445905
		-0.13431190587177488 -2.0761844495556907e-07 -0.91978553507560856
		-0.17389463179809272 -2.0761844488260401e-07 -0.94404186481914254
		-0.20919552715408446 -2.0761844495556907e-07 -0.97419166962941983
		-0.23934533196435981 -2.0761844488260401e-07 -1.0094925473515741
		-0.26360167934173173 -2.0761844491908662e-07 -1.0490752732778921
		-0.2813672759727513 -2.0761844495556907e-07 -1.0919652164423572
		-0.29220467927278532 -2.0761844499205157e-07 -1.13710627314538
		-0.29584703639250659 -2.0761844488260401e-07 -1.1833868636374232
		-0.29220467927278532 -2.0761844491908662e-07 -1.2296674541294645
		-0.2813672759727513 -2.0761844502853408e-07 -1.2748085108324885
		-0.26360167934173173 -2.0761844473667397e-07 -1.3176984539969514
		-0.23934533196435981 -2.0761844488260401e-07 -1.3572811799232687
		-0.20919552715408446 -2.0761844473667397e-07 -1.392582057645424
		-0.17389463179809272 -2.0761844495556907e-07 -1.4227318624557004
		-0.13431190587177488 -2.0761844495556907e-07 -1.4469881921992347
		-0.091421953890392718 -2.0761844488260401e-07 -1.4647537888302553
		-0.04628091482120554 -2.0761844495556907e-07 -1.4755911921302882
		-2.8024457190358927e-07 -2.0761844473667397e-07 -1.479233549250011
		0.046280341106684143 -2.0761844495556907e-07 -1.4755911921302882
		0.091421375767412355 -2.0761844488260401e-07 -1.4647537888302553
		0.13431131011495781 -2.0761844495556907e-07 -1.4469881921992347
		0.17389403604127582 -2.0761844495556907e-07 -1.4227318624557004
		0.20919491376343108 -2.0761844473667397e-07 -1.392582057645424
		0.23934471857370695 -2.0761844488260401e-07 -1.3572811799232687
		0.26360104831724213 -2.0761844473667397e-07 -1.3176984539969514
		0.28136664494826163 -2.0761844502853408e-07 -1.2748085108324885
		0.2922040482482956 -2.0761844491908662e-07 -1.2296674541294645
		0.2958464053680176 -2.0761844488260401e-07 -1.1833868636374232
		0.2922040482482956 -2.0761844499205157e-07 -1.13710627314538
		0.28136664494826163 -2.0761844495556907e-07 -1.0919652164423572
		0.26360104831724213 -2.0761844491908662e-07 -1.0490752732778921
		0.23934471857370695 -2.0761844488260401e-07 -1.0094925473515741
		0.20919491376343108 -2.0761844495556907e-07 -0.97419166962941983
		0.17389403604127582 -2.0761844488260401e-07 -0.94404186481914254
		0.13431131011495781 -2.0761844495556907e-07 -0.91978553507560856
		0.091421375767412355 -2.0761844506501671e-07 -0.9020199384445905
		0.046280341106684143 -2.0761844502853408e-07 -0.89118253514455581
		-2.8024457190358927e-07 -2.0761844491908662e-07 -0.88754017802483398
		-2.8024457190358927e-07 -2.0761844498347656e-07 -1.2118706730443043e-07
		;
createNode parentConstraint -n "c_arm_03_switch_ctrl_grp_parentConstraint1" -p "c_arm_03_switch_ctrl_grp";
	rename -uid "531D7C42-4603-0161-447D-1DBF0352F7EF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_03W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -4.9999999999999947 -26.596388042986984 ;
	setAttr ".rst" -type "double3" 8.1398491593902378 9.9762070996484074 0.34862297099063283 ;
	setAttr ".rsrr" -type "double3" 1.9954399272777753e-16 -4.9999999999999956 -26.596388042986984 ;
	setAttr -k on ".w0";
createNode transform -n "arm_03_guide_grp" -p "c_arm_03_grp";
	rename -uid "F74E91A6-41BA-83BB-A368-7A8DFE324A4B";
	addAttr -ci true -sn "module_name" -ln "module_name" -dt "string";
	addAttr -ci true -sn "module_type" -ln "module_type" -dt "string";
	addAttr -ci true -sn "side" -ln "side" -min 0 -max 2 -en "c:l:r" -at "enum";
	addAttr -ci true -sn "bendy" -ln "bendy" -min 0 -max 1 -en "no:yes" -at "enum";
	setAttr ".v" no;
	setAttr ".module_name" -type "string" "arm_03";
	setAttr ".module_type" -type "string" "arm";
	setAttr ".side" 1;
createNode joint -n "arm_03_guide_01" -p "arm_03_guide_grp";
	rename -uid "161329AD-4C26-9DAC-EC1E-4182C9503BDA";
	setAttr ".t" -type "double3" 1 13.551014275453568 0 ;
	setAttr ".jo" -type "double3" 0 0 -26.596388042986984 ;
createNode joint -n "arm_03_guide_02" -p "arm_03_guide_01";
	rename -uid "6ADD1C5E-4920-0B56-A8B2-8BABE2D2F87E";
	setAttr ".t" -type "double3" 4 0 0 ;
	setAttr ".jo" -type "double3" 0 -5 0 ;
createNode joint -n "arm_03_guide_03" -p "arm_03_guide_02";
	rename -uid "084C4DFD-4CEE-BB3E-550D-B4BA3CA8EBE2";
	setAttr ".t" -type "double3" 4.0000000000000018 0 -1.5265566588595902e-16 ;
createNode transform -n "c_arm_03_don_not_touch_grp" -p "c_arm_03_grp";
	rename -uid "3CE1100D-4FC3-4A63-5563-98B2AC966510";
createNode joint -n "lower_arm_twist_up_02" -p "c_arm_03_don_not_touch_grp";
	rename -uid "6B4B010C-4722-DA48-E813-4E919F7BCFE3";
	setAttr ".jo" -type "double3" 0 -4.9999999999999929 -26.596388042986984 ;
createNode parentConstraint -n "lower_arm_twist_up_02_parentConstraint1" -p "lower_arm_twist_up_02";
	rename -uid "7B7E21F4-4A01-36A1-3B03-ED8FAB911260";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_03W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 8.8817841970012523e-16 0 -5.5511151231257827e-17 ;
	setAttr ".tg[0].tor" -type "double3" 9.9316690228243146e-16 2.3854160110976376e-15 
		3.1805546814635168e-15 ;
	setAttr ".lr" -type "double3" -1.987846675914698e-16 -1.6896696745274934e-15 6.2120208622334343e-18 ;
	setAttr ".rst" -type "double3" 8.1398491593902325 9.9762067707280355 0.34862297099063244 ;
	setAttr ".rsrr" -type "double3" -3.9756933518293955e-16 -1.6896696745274934e-15 
		-3.1743426606012833e-15 ;
	setAttr -k on ".w0";
createNode transform -n "bendy_crv" -p "c_arm_03_don_not_touch_grp";
	rename -uid "C7637DFD-47B7-88F4-CF66-01AE528EFE79";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".it" no;
createNode nurbsCurve -n "bendy_crvShape" -p "bendy_crv";
	rename -uid "A0E17E57-4D57-A49D-1F21-FEB0F0A3A75C";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode nurbsCurve -n "bendy_crvShapeOrig" -p "bendy_crv";
	rename -uid "AE16AD76-4CA8-B4CB-631B-878EA2BA572F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		2 3 0 no 3
		6 0 0 1 2 3 3
		5
		4.5767297744750977 11.76020336151123 4.40619762898109e-16
		5.4675097465515137 11.314204216003418 0.087155744433403015
		6.3582892417907715 10.868205070495605 0.17431148886680603
		7.2490692138671875 10.422205924987793 0.26146721839904785
		8.1398487091064453 9.9762067794799805 0.34862297773361206
		;
createNode transform -n "bendy_jnts" -p "c_arm_03_don_not_touch_grp";
	rename -uid "5EC372DA-4FE3-035B-ED02-B69A62BAD76E";
	setAttr ".it" no;
createNode joint -n "lower_arm_bendy_01" -p "bendy_jnts";
	rename -uid "F1B99E2F-4131-8A0B-7821-918D18053D78";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0.89077984645998054 -0.44599903977831562 0.087155732212826242 0
		 0.44599903000606594 0.89479730308253647 0.020558492889012063 0 -0.087155782220009387 0.020558280887266182 0.99598254337743219 0
		 9.6111326811220632 24.696426448278658 2.886579864025407e-15 1;
createNode joint -n "lower_arm_bendy_02" -p "bendy_jnts";
	rename -uid "30132577-41A4-195B-AC4C-5A9B31A9393A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0.89077982585830529 -0.4459990786513644 0.087155743849625392 0
		 0.44599906896217661 0.89479728357784194 0.020558496700558117 0 -0.087155793431757042 0.020558286500807165 0.99598254228045169 0
		 11.481803088950102 23.759812034445545 0.18303025191885597 1;
createNode joint -n "lower_arm_bendy_03" -p "bendy_jnts";
	rename -uid "5D1C3AAC-463D-0C43-F7DB-6E9196CA7227";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0.89077982780920573 -0.44599907497023439 0.087155742747664716 0
		 0.44599906527318089 0.89479728542486248 0.020558496339619134 0 -0.087155792370047114 0.02055828596922616 0.99598254238433148 0
		 13.352407861489151 22.823230358307246 0.36605411659392356 1;
createNode joint -n "lower_arm_bendy_04" -p "bendy_jnts";
	rename -uid "58BA39D8-4077-F014-3E2F-C9B8DDBA9015";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".bps" -type "matrix" 0.89077982976014458 -0.44599907128903182 0.087155741645682294 0
		 0.44599906158411262 0.89479728727191943 0.020558495978673055 0 -0.087155791308316244 0.020558285437634653 0.9959825424882135 0
		 15.223012869524887 21.886648712472287 0.54907796317286328 1;
createNode joint -n "lower_arm_bendy_05" -p "bendy_jnts";
	rename -uid "6E788EAA-4C57-16E5-01FE-56996F2B1C6F";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" 1.9954399272777753e-16 0 0 ;
	setAttr ".bps" -type "matrix" 0.89077980915845467 -0.44599911016210425 0.087155753282489729 0
		 0.44599910054024683 0.89479726776721114 0.02055849979022235 0 -0.087155802520071934 0.020558291051179688 0.99598254139123199 0
		 17.093683234719503 20.950034218528895 0.73210823908032685 1;
createNode joint -n "lower_arm_twist_up_01" -p "c_arm_03_don_not_touch_grp";
	rename -uid "1C521F13-4C05-ABE0-D73D-1F8F2A6C61D6";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 7.9513867036587919e-16 0 ;
	setAttr ".jo" -type "double3" 0 -4.9999999999999956 -26.596388042986987 ;
createNode parentConstraint -n "c_arm_03_driven_02_parentConstraint1" -p "lower_arm_twist_up_01";
	rename -uid "4255B0EF-46E0-D78F-0C65-11AD5EEB891C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_03W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.0000000000000009 5.3290705182007514e-15 
		-2.6367796834847468e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.975693351829396e-16 -7.9513867036587919e-16 
		-9.5416640443905503e-15 ;
	setAttr ".lr" -type "double3" 2.2069531490250793e-32 7.9513867036587919e-16 3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 4.5767298481533611 11.760203070608881 0 ;
	setAttr ".rsrr" -type "double3" 2.2069531490250793e-32 7.9513867036587919e-16 3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode transform -n "lower_arm_bendy_driver_jnt" -p "c_arm_03_don_not_touch_grp";
	rename -uid "F85417AE-45AD-2F41-3076-CFA68A712A29";
	setAttr ".t" -type "double3" -3.6708137373929706 1.4431711582151951 -1.7614095138547621 ;
	setAttr ".r" -type "double3" -87.322952490468765 -69.254494196702638 50.10480403878303 ;
	setAttr ".s" -type "double3" 0.99999999999999978 1 0.99999999999999978 ;
createNode transform -n "c_arm_03_lower_twist_03_ctrl_grp" -p "lower_arm_bendy_driver_jnt";
	rename -uid "55801607-4952-3BF1-043E-F5BC15920ECD";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "c_arm_03_lower_twist_03_ctrl_grp" -p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp";
	rename -uid "68B72D30-4CF8-2887-8889-D0A4745DECB9";
createNode transform -n "c_arm_03_lower_twist_03_ctrl" -p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp|c_arm_03_lower_twist_03_ctrl_grp";
	rename -uid "EE42B6CF-44DE-6F1B-0082-12AF32D2DDD9";
createNode nurbsCurve -n "c_arm_03_lower_twist_03_ctrlShape" -p "c_arm_03_lower_twist_03_ctrl";
	rename -uid "868B73D8-42F4-DAAA-7065-0AA65EFFC1C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		4.4919472450329496e-16 4.0999650853886473e-16 -0.88673351252432309
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		2.6688106642083578e-16 -0.88673351252432242 -5.2443235446199546e-17
		1.2217791252929327e-15 -1.1754174373368345 1.1754174373368367
		5.5778826028425464e-16 2.6687503823400339e-16 0.88673351252432364
		1.443823730217964e-15 1.1754174373368391 1.1754174373368365
		4.1494055114643592e-16 0.88673351252432409 1.1444872244546533e-16
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		4.4919472450329496e-16 4.0999650853886473e-16 -0.88673351252432309
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		;
createNode joint -n "lower_arm_bendy_bnd_jnt_03" -p "c_arm_03_lower_twist_03_ctrl";
	rename -uid "78DB1434-466B-6A6A-E8B5-038EFB626AA1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.466981713882376e-07 -2.9411481961005848e-07 -1.283442714605787e-08 ;
	setAttr ".r" -type "double3" 61.404946287632079 77.684913373561415 40.296864816911345 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -74.465942410297956 -67.593519249997854 64.737042420168223 ;
	setAttr ".bps" -type "matrix" 0.89077972981829601 -0.44599926295781123 0.087155782286275948 0
		 0.44599925331837131 0.89479719127364721 0.020558514738359762 0 -0.08715583161383296 0.020558305617956039 0.99598253854463725 0
		 8.1398487091064453 9.9762067794799805 0.34862297773361206 1;
createNode parentConstraint -n "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1" 
		-p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp";
	rename -uid "8B90E884-467B-314F-5E4D-B785F89A6FD3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_03W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4669817449686207e-07 2.9411482138641531e-07 
		1.2834427423613626e-08 ;
	setAttr ".tg[0].tor" -type "double3" -6.5598940305185035e-15 -1.8288189418415224e-14 
		-9.5416640443905519e-15 ;
	setAttr ".lr" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911345 ;
	setAttr ".rst" -type "double3" 6.9754483370822573 12.277662681104587 -4.1663913776856587 ;
	setAttr ".rsrr" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911345 ;
	setAttr -k on ".w0";
createNode transform -n "c_arm_03_lower_twist_02_ctrl_grp" -p "lower_arm_bendy_driver_jnt";
	rename -uid "F2819E57-4E10-EB5D-3044-22B9C682BC2B";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "c_arm_03_lower_twist_02_ctrl_grp" -p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp";
	rename -uid "9459A006-45C6-0218-7D56-6C9040AE1353";
createNode transform -n "c_arm_03_lower_twist_02_ctrl" -p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp|c_arm_03_lower_twist_02_ctrl_grp";
	rename -uid "23C5B055-4A72-8BF6-97D8-5DB24DC6C454";
createNode nurbsCurve -n "c_arm_03_lower_twist_02_ctrlShape" -p "c_arm_03_lower_twist_02_ctrl";
	rename -uid "74D884AD-4238-9A5C-EF73-5BB6906DA7EF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		9.6717981022605293e-16 1.2387726456952775e-15 -0.88673351252432309
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		7.8486615214359449e-16 -0.88673351252432242 -5.2443235446199546e-17
		1.2217791252929327e-15 -1.1754174373368345 1.1754174373368367
		1.0757733460070128e-15 1.0956511753904171e-15 0.88673351252432364
		1.443823730217964e-15 1.1754174373368391 1.1754174373368365
		9.3292563686919423e-16 0.88673351252432409 1.1444872244546533e-16
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		9.6717981022605293e-16 1.2387726456952775e-15 -0.88673351252432309
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		;
createNode joint -n "lower_arm_bendy_bnd_jnt_02" -p "c_arm_03_lower_twist_02_ctrl";
	rename -uid "B1D72BF0-4687-2D68-B72D-BF9C156CB974";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.4669817693935272e-07 -2.9411481961005848e-07 -1.2834426535435206e-08 ;
	setAttr ".r" -type "double3" 61.404946287632079 77.6849133735614 40.296864816911352 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -74.465942410297956 -67.593519249997854 64.737042420168223 ;
	setAttr ".bps" -type "matrix" 0.89077978078976905 -0.44599916910603776 0.087155741594314787 0
		 0.44599915900708675 0.89479723849380322 0.020558505510738793 0 -0.087155793273323776 0.020558286421482216 0.99598254229595307 0
		 6.3582892070934207 10.868205117711103 0.17431147777745803 1;
createNode parentConstraint -n "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1" 
		-p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp";
	rename -uid "911791F1-4DD4-8FC4-24CC-9CBB2F692C00";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_03W0" -dv 1 -min 
		0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "c_arm_03_driven_02W1" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".tg[0].tot" -type "double3" -2.0000001466981789 2.9411482493912899e-07 
		1.2834427562391504e-08 ;
	setAttr ".tg[0].tor" -type "double3" -6.5598940305185035e-15 -1.8288189418415224e-14 
		-9.5416640443905519e-15 ;
	setAttr ".tg[1].tot" -type "double3" 1.9999998533018211 2.9411482138641531e-07 1.2834427992602926e-08 ;
	setAttr ".tg[1].tor" -type "double3" -2.1866313435061684e-15 -2.7829853462805777e-14 
		-1.4312496066585827e-14 ;
	setAttr ".lr" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911345 ;
	setAttr ".rst" -type "double3" 6.6500977747876817 12.001775944537799 -2.2124124831729368 ;
	setAttr ".rsrr" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911345 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "c_arm_03_lower_twist_01_ctrl_grp" -p "lower_arm_bendy_driver_jnt";
	rename -uid "8456F83F-4FE8-C662-906F-F0B27A719BF3";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "c_arm_03_lower_twist_01_ctrl_grp" -p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp";
	rename -uid "37F28D00-4458-62B8-425B-468F35870AAA";
createNode transform -n "c_arm_03_lower_twist_01_ctrl" -p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp|c_arm_03_lower_twist_01_ctrl_grp";
	rename -uid "403794AD-493C-2DEB-45A4-4EB76F8D4DC1";
createNode nurbsCurve -n "c_arm_03_lower_twist_01_ctrlShape" -p "c_arm_03_lower_twist_01_ctrl";
	rename -uid "4E1B787B-48A7-0015-3FDF-4B9E4C194907";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 18;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		4.4919472450329496e-16 2.0675487828516892e-15 -0.88673351252432309
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		2.6688106642083578e-16 -0.88673351252432242 -7.1867676160803001e-17
		1.2217791252929327e-15 -1.1754174373368345 1.1754174373368367
		5.5778826028425464e-16 1.9244273125468296e-15 0.88673351252432364
		1.443823730217964e-15 1.1754174373368391 1.1754174373368365
		4.1494055114643592e-16 0.88673351252432409 9.5024281730861931e-17
		1.443823730217964e-15 1.1754174373368391 -1.1754174373368369
		4.4919472450329496e-16 2.0675487828516892e-15 -0.88673351252432309
		1.2217791252929327e-15 -1.1754174373368345 -1.1754174373368365
		;
createNode joint -n "lower_arm_bendy_bnd_jnt_01" -p "c_arm_03_lower_twist_01_ctrl";
	rename -uid "8B5C19D7-40B6-F099-D315-BAAAD158BC97";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.4669817760548653e-07 -2.9411482316277215e-07 -1.2834426632579721e-08 ;
	setAttr ".r" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911352 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".dla" yes;
	setAttr ".jo" -type "double3" -74.465942410297956 -67.593519249997854 64.737042420168223 ;
	setAttr ".bps" -type "matrix" 0.89077982944747802 -0.4459990740958068 0.087155730478293975 0
		 0.44599906415002916 0.89479728598720643 0.020558496229727632 0 -0.087155781373470548 0.020558280463417882 0.99598254346025927 0
		 4.5767297744750977 11.76020336151123 4.40619762898109e-16 1;
createNode parentConstraint -n "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1" 
		-p "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp";
	rename -uid "ABBB5F86-4F76-53A0-7068-DD99A548B778";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_02W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.466981804920664e-07 2.9411482493912899e-07 
		1.2834429574670736e-08 ;
	setAttr ".tg[0].tor" -type "double3" -2.1866313435061684e-15 -2.7829853462805777e-14 
		-1.4312496066585827e-14 ;
	setAttr ".lr" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911352 ;
	setAttr ".rst" -type "double3" 6.3247472124931097 11.725889207971015 -0.25843358866021893 ;
	setAttr ".rsrr" -type "double3" 61.40494628763205 77.6849133735614 40.296864816911352 ;
	setAttr -k on ".w0";
createNode transform -n "lower_arm_twist_jnts_grp" -p "c_arm_03_don_not_touch_grp";
	rename -uid "22AEEDEC-4580-D369-ABF7-B4B84AE3128D";
createNode parentConstraint -n "lower_arm_twist_jnts_grp_parentConstraint1" -p "lower_arm_twist_jnts_grp";
	rename -uid "0FB6E295-4A91-1F0C-A022-F3AB9EBD4253";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "c_arm_03_driven_02W0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -8.8817841970012523e-16 1.7763568394002505e-14 
		1.5265566588595902e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.1824984628389781 -1.5902773407317584e-15 
		9.5416640443905503e-15 ;
	setAttr ".lr" -type "double3" 1.1824984628389781 -4.9999999999999956 -26.596388042986984 ;
	setAttr ".rst" -type "double3" 4.5767298481533683 11.760203070608897 7.4664915127851702e-17 ;
	setAttr ".rsrr" -type "double3" 1.1824984628389779 -4.9999999999999956 -26.596388042986984 ;
	setAttr -k on ".w0";
createNode joint -n "lower_arm_twist_01" -p "lower_arm_twist_jnts_grp";
	rename -uid "BCE53AB5-4B7F-F30E-C1F6-DE9BAEAD978E";
	setAttr ".t" -type "double3" 1.3322676295501878e-15 1.7763568394002505e-15 1.6653345369377348e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.46603692348709e-15 ;
createNode joint -n "lower_arm_twist_02" -p "lower_arm_twist_jnts_grp";
	rename -uid "2605FDA1-4A7B-296C-A97B-61A72691C9DD";
	setAttr ".t" -type "double3" 0.99999989889515462 -4.8441863853554423e-08 1.0537712424874002e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.46603692348709e-15 ;
createNode joint -n "lower_arm_twist_03" -p "lower_arm_twist_jnts_grp";
	rename -uid "B9F47256-4C59-46FA-042D-9F92EA6BDA72";
	setAttr ".t" -type "double3" 1.9999997977903081 -9.6713238306733729e-08 2.1831353363976902e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.975693351829396e-16 -7.9513867036587919e-16 1.7269417997008938e-15 ;
createNode joint -n "lower_arm_twist_04" -p "lower_arm_twist_jnts_grp";
	rename -uid "8B6129E1-4B45-FBB5-139A-D79F0F34B9B0";
	setAttr ".t" -type "double3" 2.999999696685463 -1.447082453864823e-07 3.4247536528919653e-08 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.975693351829396e-16 -7.9513867036587919e-16 1.7269417997008938e-15 ;
createNode joint -n "lower_arm_twist_05" -p "lower_arm_twist_jnts_grp";
	rename -uid "6B878BD6-43C1-19E9-DFB6-00BC505C73D0";
	setAttr ".t" -type "double3" 3.9999995955806158 -1.9240558302158206e-07 4.7762444943533211e-08 ;
	setAttr ".r" -type "double3" -1.987846675914698e-16 3.975693351829396e-16 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -3.975693351829396e-16 -7.9513867036587919e-16 1.7269417997008938e-15 ;
createNode transform -n "pCylinder1";
	rename -uid "831F36CA-47CB-5C25-F973-63AEC429881F";
	setAttr ".t" -type "double3" 13.352407957920779 22.823230333403774 0.3660541195401642 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -4.9999985205611361 -0.0038512408969447196 63.359592067733622 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "1DA7F0C2-4F50-C377-C35D-DF835A9FBAF5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999988079071045 0.59375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	rename -uid "CF52C8C3-4E64-00B8-FFAD-928D16464AC4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[240:259]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[0:19]" "vtx[260]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:259]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[240:259]" "vtx[261]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[240:259]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:239]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[260:279]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[240:259]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 315 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.64860266 0.10796607 0.62640899
		 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08 0.45171607
		 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661 0.34374997
		 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893 0.4517161
		 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893 0.24809146
		 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998 0.3125
		 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.34375 0.38749999
		 0.34375 0.39999998 0.34375 0.41249996 0.34375 0.42499995 0.34375 0.43749994 0.34375
		 0.44999993 0.34375 0.46249992 0.34375 0.4749999 0.34375 0.48749989 0.34375 0.49999988
		 0.34375 0.51249987 0.34375 0.52499986 0.34375 0.53749985 0.34375 0.54999983 0.34375
		 0.56249982 0.34375 0.57499981 0.34375 0.5874998 0.34375 0.59999979 0.34375 0.61249977
		 0.34375 0.62499976 0.34375 0.375 0.375 0.38749999 0.375 0.39999998 0.375 0.41249996
		 0.375 0.42499995 0.375 0.43749994 0.375 0.44999993 0.375 0.46249992 0.375 0.4749999
		 0.375 0.48749989 0.375 0.49999988 0.375 0.51249987 0.375 0.52499986 0.375 0.53749985
		 0.375 0.54999983 0.375 0.56249982 0.375 0.57499981 0.375 0.5874998 0.375 0.59999979
		 0.375 0.61249977 0.375 0.62499976 0.375 0.375 0.40625 0.38749999 0.40625 0.39999998
		 0.40625 0.41249996 0.40625 0.42499995 0.40625 0.43749994 0.40625 0.44999993 0.40625
		 0.46249992 0.40625 0.4749999 0.40625 0.48749989 0.40625 0.49999988 0.40625 0.51249987
		 0.40625 0.52499986 0.40625 0.53749985 0.40625 0.54999983 0.40625 0.56249982 0.40625
		 0.57499981 0.40625 0.5874998 0.40625 0.59999979 0.40625 0.61249977 0.40625 0.62499976
		 0.40625 0.375 0.4375 0.38749999 0.4375 0.39999998 0.4375 0.41249996 0.4375 0.42499995
		 0.4375 0.43749994 0.4375 0.44999993 0.4375 0.46249992 0.4375 0.4749999 0.4375 0.48749989
		 0.4375 0.49999988 0.4375 0.51249987 0.4375 0.52499986 0.4375 0.53749985 0.4375 0.54999983
		 0.4375 0.56249982 0.4375 0.57499981 0.4375 0.5874998 0.4375 0.59999979 0.4375 0.61249977
		 0.4375 0.62499976 0.4375 0.375 0.46875 0.38749999 0.46875 0.39999998 0.46875 0.41249996
		 0.46875 0.42499995 0.46875 0.43749994 0.46875 0.44999993 0.46875 0.46249992 0.46875
		 0.4749999 0.46875 0.48749989 0.46875 0.49999988 0.46875 0.51249987 0.46875 0.52499986
		 0.46875 0.53749985 0.46875 0.54999983 0.46875 0.56249982 0.46875 0.57499981 0.46875
		 0.5874998 0.46875 0.59999979 0.46875 0.61249977 0.46875 0.62499976 0.46875 0.375
		 0.5 0.38749999 0.5 0.39999998 0.5 0.41249996 0.5 0.42499995 0.5 0.43749994 0.5 0.44999993
		 0.5 0.46249992 0.5 0.4749999 0.5 0.48749989 0.5 0.49999988 0.5 0.51249987 0.5 0.52499986
		 0.5 0.53749985 0.5 0.54999983 0.5 0.56249982 0.5 0.57499981 0.5 0.5874998 0.5 0.59999979
		 0.5 0.61249977 0.5 0.62499976 0.5 0.375 0.53125 0.38749999 0.53125 0.39999998 0.53125
		 0.41249996 0.53125 0.42499995 0.53125 0.43749994 0.53125 0.44999993 0.53125 0.46249992
		 0.53125 0.4749999 0.53125 0.48749989 0.53125 0.49999988 0.53125 0.51249987 0.53125
		 0.52499986 0.53125 0.53749985 0.53125 0.54999983 0.53125 0.56249982 0.53125 0.57499981
		 0.53125 0.5874998 0.53125 0.59999979 0.53125 0.61249977 0.53125 0.62499976 0.53125
		 0.375 0.5625 0.38749999 0.5625 0.39999998 0.5625 0.41249996 0.5625 0.42499995 0.5625
		 0.43749994 0.5625 0.44999993 0.5625 0.46249992 0.5625 0.4749999 0.5625 0.48749989
		 0.5625 0.49999988 0.5625 0.51249987 0.5625 0.52499986 0.5625 0.53749985 0.5625 0.54999983
		 0.5625 0.56249982 0.5625 0.57499981 0.5625 0.5874998 0.5625 0.59999979 0.5625 0.61249977
		 0.5625 0.62499976 0.5625 0.375 0.59375 0.38749999 0.59375 0.39999998 0.59375 0.41249996
		 0.59375 0.42499995 0.59375 0.43749994 0.59375 0.44999993 0.59375 0.46249992 0.59375
		 0.4749999 0.59375 0.48749989 0.59375 0.49999988 0.59375 0.51249987 0.59375 0.52499986
		 0.59375 0.53749985 0.59375 0.54999983 0.59375 0.56249982 0.59375 0.57499981 0.59375
		 0.5874998 0.59375 0.59999979 0.59375 0.61249977 0.59375 0.62499976 0.59375 0.375
		 0.625 0.38749999 0.625 0.39999998 0.625 0.41249996 0.625 0.42499995 0.625 0.43749994
		 0.625 0.44999993 0.625 0.46249992 0.625 0.4749999 0.625 0.48749989 0.625 0.49999988
		 0.625 0.51249987 0.625 0.52499986 0.625 0.53749985 0.625 0.54999983 0.625 0.56249982
		 0.625 0.57499981 0.625 0.5874998 0.625 0.59999979 0.625 0.61249977 0.625;
	setAttr ".uvst[0].uvsp[250:314]" 0.62499976 0.625 0.375 0.65625 0.38749999
		 0.65625 0.39999998 0.65625 0.41249996 0.65625 0.42499995 0.65625 0.43749994 0.65625
		 0.44999993 0.65625 0.46249992 0.65625 0.4749999 0.65625 0.48749989 0.65625 0.49999988
		 0.65625 0.51249987 0.65625 0.52499986 0.65625 0.53749985 0.65625 0.54999983 0.65625
		 0.56249982 0.65625 0.57499981 0.65625 0.5874998 0.65625 0.59999979 0.65625 0.61249977
		 0.65625 0.62499976 0.65625 0.375 0.6875 0.38749999 0.6875 0.39999998 0.6875 0.41249996
		 0.6875 0.42499995 0.6875 0.43749994 0.6875 0.44999993 0.6875 0.46249992 0.6875 0.4749999
		 0.6875 0.48749989 0.6875 0.49999988 0.6875 0.51249987 0.6875 0.52499986 0.6875 0.53749985
		 0.6875 0.54999983 0.6875 0.56249982 0.6875 0.57499981 0.6875 0.5874998 0.6875 0.59999979
		 0.6875 0.61249977 0.6875 0.62499976 0.6875 0.64860266 0.79546607 0.62640899 0.75190848
		 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994 0.45171607 0.69514734
		 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607 0.34374997 0.84375
		 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893 0.4517161 0.9923526
		 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146 0.6486026
		 0.89203393 0.65625 0.84375 0.5 0.15625 0.5 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 262 ".vt";
	setAttr ".vt[0:165]"  0.95105714 -4.23500013 -0.30901718 0.80901754 -4.23500013 -0.5877856
		 0.5877856 -4.23500013 -0.80901748 0.30901715 -4.23500013 -0.95105702 0 -4.23500013 -1.000000476837
		 -0.30901715 -4.23500013 -0.95105696 -0.58778548 -4.23500013 -0.8090173 -0.80901724 -4.23500013 -0.58778542
		 -0.95105678 -4.23500013 -0.30901706 -1.000000238419 -4.23500013 0 -0.95105678 -4.23500013 0.30901706
		 -0.80901718 -4.23500013 0.58778536 -0.58778536 -4.23500013 0.80901712 -0.30901706 -4.23500013 0.95105666
		 -2.9802322e-08 -4.23500013 1.000000119209 0.30901697 -4.23500013 0.9510566 0.58778524 -4.23500013 0.80901706
		 0.809017 -4.23500013 0.5877853 0.95105654 -4.23500013 0.309017 1 -4.23500013 0 0.95105714 -3.5291667 -0.30901718
		 0.80901754 -3.5291667 -0.5877856 0.5877856 -3.5291667 -0.80901748 0.30901715 -3.5291667 -0.95105702
		 0 -3.5291667 -1.000000476837 -0.30901715 -3.5291667 -0.95105696 -0.58778548 -3.5291667 -0.8090173
		 -0.80901724 -3.5291667 -0.58778542 -0.95105678 -3.5291667 -0.30901706 -1.000000238419 -3.5291667 0
		 -0.95105678 -3.5291667 0.30901706 -0.80901718 -3.5291667 0.58778536 -0.58778536 -3.5291667 0.80901712
		 -0.30901706 -3.5291667 0.95105666 -2.9802322e-08 -3.5291667 1.000000119209 0.30901697 -3.5291667 0.9510566
		 0.58778524 -3.5291667 0.80901706 0.809017 -3.5291667 0.5877853 0.95105654 -3.5291667 0.309017
		 1 -3.5291667 0 0.95105714 -2.82333326 -0.30901718 0.80901754 -2.82333326 -0.5877856
		 0.5877856 -2.82333326 -0.80901748 0.30901715 -2.82333326 -0.95105702 0 -2.82333326 -1.000000476837
		 -0.30901715 -2.82333326 -0.95105696 -0.58778548 -2.82333326 -0.8090173 -0.80901724 -2.82333326 -0.58778542
		 -0.95105678 -2.82333326 -0.30901706 -1.000000238419 -2.82333326 0 -0.95105678 -2.82333326 0.30901706
		 -0.80901718 -2.82333326 0.58778536 -0.58778536 -2.82333326 0.80901712 -0.30901706 -2.82333326 0.95105666
		 -2.9802322e-08 -2.82333326 1.000000119209 0.30901697 -2.82333326 0.9510566 0.58778524 -2.82333326 0.80901706
		 0.809017 -2.82333326 0.5877853 0.95105654 -2.82333326 0.309017 1 -2.82333326 0 0.95105714 -2.11749983 -0.30901718
		 0.80901754 -2.11749983 -0.5877856 0.5877856 -2.11749983 -0.80901748 0.30901715 -2.11749983 -0.95105702
		 0 -2.11749983 -1.000000476837 -0.30901715 -2.11749983 -0.95105696 -0.58778548 -2.11749983 -0.8090173
		 -0.80901724 -2.11749983 -0.58778542 -0.95105678 -2.11749983 -0.30901706 -1.000000238419 -2.11749983 0
		 -0.95105678 -2.11749983 0.30901706 -0.80901718 -2.11749983 0.58778536 -0.58778536 -2.11749983 0.80901712
		 -0.30901706 -2.11749983 0.95105666 -2.9802322e-08 -2.11749983 1.000000119209 0.30901697 -2.11749983 0.9510566
		 0.58778524 -2.11749983 0.80901706 0.809017 -2.11749983 0.5877853 0.95105654 -2.11749983 0.309017
		 1 -2.11749983 0 0.95105714 -1.41166639 -0.30901718 0.80901754 -1.41166639 -0.5877856
		 0.5877856 -1.41166639 -0.80901748 0.30901715 -1.41166639 -0.95105702 0 -1.41166639 -1.000000476837
		 -0.30901715 -1.41166639 -0.95105696 -0.58778548 -1.41166639 -0.8090173 -0.80901724 -1.41166639 -0.58778542
		 -0.95105678 -1.41166639 -0.30901706 -1.000000238419 -1.41166639 0 -0.95105678 -1.41166639 0.30901706
		 -0.80901718 -1.41166639 0.58778536 -0.58778536 -1.41166639 0.80901712 -0.30901706 -1.41166639 0.95105666
		 -2.9802322e-08 -1.41166639 1.000000119209 0.30901697 -1.41166639 0.9510566 0.58778524 -1.41166639 0.80901706
		 0.809017 -1.41166639 0.5877853 0.95105654 -1.41166639 0.309017 1 -1.41166639 0 0.95105714 -0.70583302 -0.30901718
		 0.80901754 -0.70583302 -0.5877856 0.5877856 -0.70583302 -0.80901748 0.30901715 -0.70583302 -0.95105702
		 0 -0.70583302 -1.000000476837 -0.30901715 -0.70583302 -0.95105696 -0.58778548 -0.70583302 -0.8090173
		 -0.80901724 -0.70583302 -0.58778542 -0.95105678 -0.70583302 -0.30901706 -1.000000238419 -0.70583302 0
		 -0.95105678 -0.70583302 0.30901706 -0.80901718 -0.70583302 0.58778536 -0.58778536 -0.70583302 0.80901712
		 -0.30901706 -0.70583302 0.95105666 -2.9802322e-08 -0.70583302 1.000000119209 0.30901697 -0.70583302 0.9510566
		 0.58778524 -0.70583302 0.80901706 0.809017 -0.70583302 0.5877853 0.95105654 -0.70583302 0.309017
		 1 -0.70583302 0 0.95105714 3.5762787e-07 -0.30901718 0.80901754 3.5762787e-07 -0.5877856
		 0.5877856 3.5762787e-07 -0.80901748 0.30901715 3.5762787e-07 -0.95105702 0 3.5762787e-07 -1.000000476837
		 -0.30901715 3.5762787e-07 -0.95105696 -0.58778548 3.5762787e-07 -0.8090173 -0.80901724 3.5762787e-07 -0.58778542
		 -0.95105678 3.5762787e-07 -0.30901706 -1.000000238419 3.5762787e-07 0 -0.95105678 3.5762787e-07 0.30901706
		 -0.80901718 3.5762787e-07 0.58778536 -0.58778536 3.5762787e-07 0.80901712 -0.30901706 3.5762787e-07 0.95105666
		 -2.9802322e-08 3.5762787e-07 1.000000119209 0.30901697 3.5762787e-07 0.9510566 0.58778524 3.5762787e-07 0.80901706
		 0.809017 3.5762787e-07 0.5877853 0.95105654 3.5762787e-07 0.309017 1 3.5762787e-07 0
		 0.95105714 0.70583373 -0.30901718 0.80901754 0.70583373 -0.5877856 0.5877856 0.70583373 -0.80901748
		 0.30901715 0.70583373 -0.95105702 0 0.70583373 -1.000000476837 -0.30901715 0.70583373 -0.95105696
		 -0.58778548 0.70583373 -0.8090173 -0.80901724 0.70583373 -0.58778542 -0.95105678 0.70583373 -0.30901706
		 -1.000000238419 0.70583373 0 -0.95105678 0.70583373 0.30901706 -0.80901718 0.70583373 0.58778536
		 -0.58778536 0.70583373 0.80901712 -0.30901706 0.70583373 0.95105666 -2.9802322e-08 0.70583373 1.000000119209
		 0.30901697 0.70583373 0.9510566 0.58778524 0.70583373 0.80901706 0.809017 0.70583373 0.5877853
		 0.95105654 0.70583373 0.309017 1 0.70583373 0 0.95105714 1.41166711 -0.30901718 0.80901754 1.41166711 -0.5877856
		 0.5877856 1.41166711 -0.80901748 0.30901715 1.41166711 -0.95105702 0 1.41166711 -1.000000476837
		 -0.30901715 1.41166711 -0.95105696;
	setAttr ".vt[166:261]" -0.58778548 1.41166711 -0.8090173 -0.80901724 1.41166711 -0.58778542
		 -0.95105678 1.41166711 -0.30901706 -1.000000238419 1.41166711 0 -0.95105678 1.41166711 0.30901706
		 -0.80901718 1.41166711 0.58778536 -0.58778536 1.41166711 0.80901712 -0.30901706 1.41166711 0.95105666
		 -2.9802322e-08 1.41166711 1.000000119209 0.30901697 1.41166711 0.9510566 0.58778524 1.41166711 0.80901706
		 0.809017 1.41166711 0.5877853 0.95105654 1.41166711 0.309017 1 1.41166711 0 0.95105714 2.11750054 -0.30901718
		 0.80901754 2.11750054 -0.5877856 0.5877856 2.11750054 -0.80901748 0.30901715 2.11750054 -0.95105702
		 0 2.11750054 -1.000000476837 -0.30901715 2.11750054 -0.95105696 -0.58778548 2.11750054 -0.8090173
		 -0.80901724 2.11750054 -0.58778542 -0.95105678 2.11750054 -0.30901706 -1.000000238419 2.11750054 0
		 -0.95105678 2.11750054 0.30901706 -0.80901718 2.11750054 0.58778536 -0.58778536 2.11750054 0.80901712
		 -0.30901706 2.11750054 0.95105666 -2.9802322e-08 2.11750054 1.000000119209 0.30901697 2.11750054 0.9510566
		 0.58778524 2.11750054 0.80901706 0.809017 2.11750054 0.5877853 0.95105654 2.11750054 0.309017
		 1 2.11750054 0 0.95105714 2.82333398 -0.30901718 0.80901754 2.82333398 -0.5877856
		 0.5877856 2.82333398 -0.80901748 0.30901715 2.82333398 -0.95105702 0 2.82333398 -1.000000476837
		 -0.30901715 2.82333398 -0.95105696 -0.58778548 2.82333398 -0.8090173 -0.80901724 2.82333398 -0.58778542
		 -0.95105678 2.82333398 -0.30901706 -1.000000238419 2.82333398 0 -0.95105678 2.82333398 0.30901706
		 -0.80901718 2.82333398 0.58778536 -0.58778536 2.82333398 0.80901712 -0.30901706 2.82333398 0.95105666
		 -2.9802322e-08 2.82333398 1.000000119209 0.30901697 2.82333398 0.9510566 0.58778524 2.82333398 0.80901706
		 0.809017 2.82333398 0.5877853 0.95105654 2.82333398 0.309017 1 2.82333398 0 0.95105714 3.52916741 -0.30901718
		 0.80901754 3.52916741 -0.5877856 0.5877856 3.52916741 -0.80901748 0.30901715 3.52916741 -0.95105702
		 0 3.52916741 -1.000000476837 -0.30901715 3.52916741 -0.95105696 -0.58778548 3.52916741 -0.8090173
		 -0.80901724 3.52916741 -0.58778542 -0.95105678 3.52916741 -0.30901706 -1.000000238419 3.52916741 0
		 -0.95105678 3.52916741 0.30901706 -0.80901718 3.52916741 0.58778536 -0.58778536 3.52916741 0.80901712
		 -0.30901706 3.52916741 0.95105666 -2.9802322e-08 3.52916741 1.000000119209 0.30901697 3.52916741 0.9510566
		 0.58778524 3.52916741 0.80901706 0.809017 3.52916741 0.5877853 0.95105654 3.52916741 0.309017
		 1 3.52916741 0 0.95105714 4.23500013 -0.30901718 0.80901754 4.23500013 -0.5877856
		 0.5877856 4.23500013 -0.80901748 0.30901715 4.23500013 -0.95105702 0 4.23500013 -1.000000476837
		 -0.30901715 4.23500013 -0.95105696 -0.58778548 4.23500013 -0.8090173 -0.80901724 4.23500013 -0.58778542
		 -0.95105678 4.23500013 -0.30901706 -1.000000238419 4.23500013 0 -0.95105678 4.23500013 0.30901706
		 -0.80901718 4.23500013 0.58778536 -0.58778536 4.23500013 0.80901712 -0.30901706 4.23500013 0.95105666
		 -2.9802322e-08 4.23500013 1.000000119209 0.30901697 4.23500013 0.9510566 0.58778524 4.23500013 0.80901706
		 0.809017 4.23500013 0.5877853 0.95105654 4.23500013 0.309017 1 4.23500013 0 0 -4.23500013 0
		 0 4.23500013 0;
	setAttr -s 540 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 20 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 40 1 60 61 1 61 62 1 62 63 1 63 64 1
		 64 65 1 65 66 1 66 67 1 67 68 1 68 69 1 69 70 1 70 71 1 71 72 1 72 73 1 73 74 1 74 75 1
		 75 76 1 76 77 1 77 78 1 78 79 1 79 60 1 80 81 1 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1
		 86 87 1 87 88 1 88 89 1 89 90 1 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1 95 96 1 96 97 1
		 97 98 1 98 99 1 99 80 1 100 101 1 101 102 1 102 103 1 103 104 1 104 105 1 105 106 1
		 106 107 1 107 108 1 108 109 1 109 110 1 110 111 1 111 112 1 112 113 1 113 114 1 114 115 1
		 115 116 1 116 117 1 117 118 1 118 119 1 119 100 1 120 121 1 121 122 1 122 123 1 123 124 1
		 124 125 1 125 126 1 126 127 1 127 128 1 128 129 1 129 130 1 130 131 1 131 132 1 132 133 1
		 133 134 1 134 135 1 135 136 1 136 137 1 137 138 1 138 139 1 139 120 1 140 141 1 141 142 1
		 142 143 1 143 144 1 144 145 1 145 146 1 146 147 1 147 148 1 148 149 1 149 150 1 150 151 1
		 151 152 1 152 153 1 153 154 1 154 155 1 155 156 1 156 157 1 157 158 1 158 159 1 159 140 1
		 160 161 1 161 162 1 162 163 1 163 164 1 164 165 1 165 166 1;
	setAttr ".ed[166:331]" 166 167 1 167 168 1 168 169 1 169 170 1 170 171 1 171 172 1
		 172 173 1 173 174 1 174 175 1 175 176 1 176 177 1 177 178 1 178 179 1 179 160 1 180 181 1
		 181 182 1 182 183 1 183 184 1 184 185 1 185 186 1 186 187 1 187 188 1 188 189 1 189 190 1
		 190 191 1 191 192 1 192 193 1 193 194 1 194 195 1 195 196 1 196 197 1 197 198 1 198 199 1
		 199 180 1 200 201 1 201 202 1 202 203 1 203 204 1 204 205 1 205 206 1 206 207 1 207 208 1
		 208 209 1 209 210 1 210 211 1 211 212 1 212 213 1 213 214 1 214 215 1 215 216 1 216 217 1
		 217 218 1 218 219 1 219 200 1 220 221 1 221 222 1 222 223 1 223 224 1 224 225 1 225 226 1
		 226 227 1 227 228 1 228 229 1 229 230 1 230 231 1 231 232 1 232 233 1 233 234 1 234 235 1
		 235 236 1 236 237 1 237 238 1 238 239 1 239 220 1 240 241 0 241 242 0 242 243 0 243 244 0
		 244 245 0 245 246 0 246 247 0 247 248 0 248 249 0 249 250 0 250 251 0 251 252 0 252 253 0
		 253 254 0 254 255 0 255 256 0 256 257 0 257 258 0 258 259 0 259 240 0 0 20 1 1 21 1
		 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1 12 32 1 13 33 1
		 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 20 40 1 21 41 1 22 42 1 23 43 1 24 44 1
		 25 45 1 26 46 1 27 47 1 28 48 1 29 49 1 30 50 1 31 51 1 32 52 1 33 53 1 34 54 1 35 55 1
		 36 56 1 37 57 1 38 58 1 39 59 1 40 60 1 41 61 1 42 62 1 43 63 1 44 64 1 45 65 1 46 66 1
		 47 67 1 48 68 1 49 69 1 50 70 1 51 71 1 52 72 1 53 73 1 54 74 1 55 75 1 56 76 1 57 77 1
		 58 78 1 59 79 1 60 80 1 61 81 1 62 82 1 63 83 1 64 84 1 65 85 1 66 86 1 67 87 1 68 88 1
		 69 89 1 70 90 1 71 91 1;
	setAttr ".ed[332:497]" 72 92 1 73 93 1 74 94 1 75 95 1 76 96 1 77 97 1 78 98 1
		 79 99 1 80 100 1 81 101 1 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1
		 89 109 1 90 110 1 91 111 1 92 112 1 93 113 1 94 114 1 95 115 1 96 116 1 97 117 1
		 98 118 1 99 119 1 100 120 1 101 121 1 102 122 1 103 123 1 104 124 1 105 125 1 106 126 1
		 107 127 1 108 128 1 109 129 1 110 130 1 111 131 1 112 132 1 113 133 1 114 134 1 115 135 1
		 116 136 1 117 137 1 118 138 1 119 139 1 120 140 1 121 141 1 122 142 1 123 143 1 124 144 1
		 125 145 1 126 146 1 127 147 1 128 148 1 129 149 1 130 150 1 131 151 1 132 152 1 133 153 1
		 134 154 1 135 155 1 136 156 1 137 157 1 138 158 1 139 159 1 140 160 1 141 161 1 142 162 1
		 143 163 1 144 164 1 145 165 1 146 166 1 147 167 1 148 168 1 149 169 1 150 170 1 151 171 1
		 152 172 1 153 173 1 154 174 1 155 175 1 156 176 1 157 177 1 158 178 1 159 179 1 160 180 1
		 161 181 1 162 182 1 163 183 1 164 184 1 165 185 1 166 186 1 167 187 1 168 188 1 169 189 1
		 170 190 1 171 191 1 172 192 1 173 193 1 174 194 1 175 195 1 176 196 1 177 197 1 178 198 1
		 179 199 1 180 200 1 181 201 1 182 202 1 183 203 1 184 204 1 185 205 1 186 206 1 187 207 1
		 188 208 1 189 209 1 190 210 1 191 211 1 192 212 1 193 213 1 194 214 1 195 215 1 196 216 1
		 197 217 1 198 218 1 199 219 1 200 220 1 201 221 1 202 222 1 203 223 1 204 224 1 205 225 1
		 206 226 1 207 227 1 208 228 1 209 229 1 210 230 1 211 231 1 212 232 1 213 233 1 214 234 1
		 215 235 1 216 236 1 217 237 1 218 238 1 219 239 1 220 240 1 221 241 1 222 242 1 223 243 1
		 224 244 1 225 245 1 226 246 1 227 247 1 228 248 1 229 249 1 230 250 1 231 251 1 232 252 1
		 233 253 1 234 254 1 235 255 1 236 256 1 237 257 1;
	setAttr ".ed[498:539]" 238 258 1 239 259 1 260 0 1 260 1 1 260 2 1 260 3 1
		 260 4 1 260 5 1 260 6 1 260 7 1 260 8 1 260 9 1 260 10 1 260 11 1 260 12 1 260 13 1
		 260 14 1 260 15 1 260 16 1 260 17 1 260 18 1 260 19 1 240 261 1 241 261 1 242 261 1
		 243 261 1 244 261 1 245 261 1 246 261 1 247 261 1 248 261 1 249 261 1 250 261 1 251 261 1
		 252 261 1 253 261 1 254 261 1 255 261 1 256 261 1 257 261 1 258 261 1 259 261 1;
	setAttr -s 280 -ch 1080 ".fc[0:279]" -type "polyFaces" 
		f 4 0 261 -21 -261
		mu 0 4 20 21 42 41
		f 4 1 262 -22 -262
		mu 0 4 21 22 43 42
		f 4 2 263 -23 -263
		mu 0 4 22 23 44 43
		f 4 3 264 -24 -264
		mu 0 4 23 24 45 44
		f 4 4 265 -25 -265
		mu 0 4 24 25 46 45
		f 4 5 266 -26 -266
		mu 0 4 25 26 47 46
		f 4 6 267 -27 -267
		mu 0 4 26 27 48 47
		f 4 7 268 -28 -268
		mu 0 4 27 28 49 48
		f 4 8 269 -29 -269
		mu 0 4 28 29 50 49
		f 4 9 270 -30 -270
		mu 0 4 29 30 51 50
		f 4 10 271 -31 -271
		mu 0 4 30 31 52 51
		f 4 11 272 -32 -272
		mu 0 4 31 32 53 52
		f 4 12 273 -33 -273
		mu 0 4 32 33 54 53
		f 4 13 274 -34 -274
		mu 0 4 33 34 55 54
		f 4 14 275 -35 -275
		mu 0 4 34 35 56 55
		f 4 15 276 -36 -276
		mu 0 4 35 36 57 56
		f 4 16 277 -37 -277
		mu 0 4 36 37 58 57
		f 4 17 278 -38 -278
		mu 0 4 37 38 59 58
		f 4 18 279 -39 -279
		mu 0 4 38 39 60 59
		f 4 19 260 -40 -280
		mu 0 4 39 40 61 60
		f 4 20 281 -41 -281
		mu 0 4 41 42 63 62
		f 4 21 282 -42 -282
		mu 0 4 42 43 64 63
		f 4 22 283 -43 -283
		mu 0 4 43 44 65 64
		f 4 23 284 -44 -284
		mu 0 4 44 45 66 65
		f 4 24 285 -45 -285
		mu 0 4 45 46 67 66
		f 4 25 286 -46 -286
		mu 0 4 46 47 68 67
		f 4 26 287 -47 -287
		mu 0 4 47 48 69 68
		f 4 27 288 -48 -288
		mu 0 4 48 49 70 69
		f 4 28 289 -49 -289
		mu 0 4 49 50 71 70
		f 4 29 290 -50 -290
		mu 0 4 50 51 72 71
		f 4 30 291 -51 -291
		mu 0 4 51 52 73 72
		f 4 31 292 -52 -292
		mu 0 4 52 53 74 73
		f 4 32 293 -53 -293
		mu 0 4 53 54 75 74
		f 4 33 294 -54 -294
		mu 0 4 54 55 76 75
		f 4 34 295 -55 -295
		mu 0 4 55 56 77 76
		f 4 35 296 -56 -296
		mu 0 4 56 57 78 77
		f 4 36 297 -57 -297
		mu 0 4 57 58 79 78
		f 4 37 298 -58 -298
		mu 0 4 58 59 80 79
		f 4 38 299 -59 -299
		mu 0 4 59 60 81 80
		f 4 39 280 -60 -300
		mu 0 4 60 61 82 81
		f 4 40 301 -61 -301
		mu 0 4 62 63 84 83
		f 4 41 302 -62 -302
		mu 0 4 63 64 85 84
		f 4 42 303 -63 -303
		mu 0 4 64 65 86 85
		f 4 43 304 -64 -304
		mu 0 4 65 66 87 86
		f 4 44 305 -65 -305
		mu 0 4 66 67 88 87
		f 4 45 306 -66 -306
		mu 0 4 67 68 89 88
		f 4 46 307 -67 -307
		mu 0 4 68 69 90 89
		f 4 47 308 -68 -308
		mu 0 4 69 70 91 90
		f 4 48 309 -69 -309
		mu 0 4 70 71 92 91
		f 4 49 310 -70 -310
		mu 0 4 71 72 93 92
		f 4 50 311 -71 -311
		mu 0 4 72 73 94 93
		f 4 51 312 -72 -312
		mu 0 4 73 74 95 94
		f 4 52 313 -73 -313
		mu 0 4 74 75 96 95
		f 4 53 314 -74 -314
		mu 0 4 75 76 97 96
		f 4 54 315 -75 -315
		mu 0 4 76 77 98 97
		f 4 55 316 -76 -316
		mu 0 4 77 78 99 98
		f 4 56 317 -77 -317
		mu 0 4 78 79 100 99
		f 4 57 318 -78 -318
		mu 0 4 79 80 101 100
		f 4 58 319 -79 -319
		mu 0 4 80 81 102 101
		f 4 59 300 -80 -320
		mu 0 4 81 82 103 102
		f 4 60 321 -81 -321
		mu 0 4 83 84 105 104
		f 4 61 322 -82 -322
		mu 0 4 84 85 106 105
		f 4 62 323 -83 -323
		mu 0 4 85 86 107 106
		f 4 63 324 -84 -324
		mu 0 4 86 87 108 107
		f 4 64 325 -85 -325
		mu 0 4 87 88 109 108
		f 4 65 326 -86 -326
		mu 0 4 88 89 110 109
		f 4 66 327 -87 -327
		mu 0 4 89 90 111 110
		f 4 67 328 -88 -328
		mu 0 4 90 91 112 111
		f 4 68 329 -89 -329
		mu 0 4 91 92 113 112
		f 4 69 330 -90 -330
		mu 0 4 92 93 114 113
		f 4 70 331 -91 -331
		mu 0 4 93 94 115 114
		f 4 71 332 -92 -332
		mu 0 4 94 95 116 115
		f 4 72 333 -93 -333
		mu 0 4 95 96 117 116
		f 4 73 334 -94 -334
		mu 0 4 96 97 118 117
		f 4 74 335 -95 -335
		mu 0 4 97 98 119 118
		f 4 75 336 -96 -336
		mu 0 4 98 99 120 119
		f 4 76 337 -97 -337
		mu 0 4 99 100 121 120
		f 4 77 338 -98 -338
		mu 0 4 100 101 122 121
		f 4 78 339 -99 -339
		mu 0 4 101 102 123 122
		f 4 79 320 -100 -340
		mu 0 4 102 103 124 123
		f 4 80 341 -101 -341
		mu 0 4 104 105 126 125
		f 4 81 342 -102 -342
		mu 0 4 105 106 127 126
		f 4 82 343 -103 -343
		mu 0 4 106 107 128 127
		f 4 83 344 -104 -344
		mu 0 4 107 108 129 128
		f 4 84 345 -105 -345
		mu 0 4 108 109 130 129
		f 4 85 346 -106 -346
		mu 0 4 109 110 131 130
		f 4 86 347 -107 -347
		mu 0 4 110 111 132 131
		f 4 87 348 -108 -348
		mu 0 4 111 112 133 132
		f 4 88 349 -109 -349
		mu 0 4 112 113 134 133
		f 4 89 350 -110 -350
		mu 0 4 113 114 135 134
		f 4 90 351 -111 -351
		mu 0 4 114 115 136 135
		f 4 91 352 -112 -352
		mu 0 4 115 116 137 136
		f 4 92 353 -113 -353
		mu 0 4 116 117 138 137
		f 4 93 354 -114 -354
		mu 0 4 117 118 139 138
		f 4 94 355 -115 -355
		mu 0 4 118 119 140 139
		f 4 95 356 -116 -356
		mu 0 4 119 120 141 140
		f 4 96 357 -117 -357
		mu 0 4 120 121 142 141
		f 4 97 358 -118 -358
		mu 0 4 121 122 143 142
		f 4 98 359 -119 -359
		mu 0 4 122 123 144 143
		f 4 99 340 -120 -360
		mu 0 4 123 124 145 144
		f 4 100 361 -121 -361
		mu 0 4 125 126 147 146
		f 4 101 362 -122 -362
		mu 0 4 126 127 148 147
		f 4 102 363 -123 -363
		mu 0 4 127 128 149 148
		f 4 103 364 -124 -364
		mu 0 4 128 129 150 149
		f 4 104 365 -125 -365
		mu 0 4 129 130 151 150
		f 4 105 366 -126 -366
		mu 0 4 130 131 152 151
		f 4 106 367 -127 -367
		mu 0 4 131 132 153 152
		f 4 107 368 -128 -368
		mu 0 4 132 133 154 153
		f 4 108 369 -129 -369
		mu 0 4 133 134 155 154
		f 4 109 370 -130 -370
		mu 0 4 134 135 156 155
		f 4 110 371 -131 -371
		mu 0 4 135 136 157 156
		f 4 111 372 -132 -372
		mu 0 4 136 137 158 157
		f 4 112 373 -133 -373
		mu 0 4 137 138 159 158
		f 4 113 374 -134 -374
		mu 0 4 138 139 160 159
		f 4 114 375 -135 -375
		mu 0 4 139 140 161 160
		f 4 115 376 -136 -376
		mu 0 4 140 141 162 161
		f 4 116 377 -137 -377
		mu 0 4 141 142 163 162
		f 4 117 378 -138 -378
		mu 0 4 142 143 164 163
		f 4 118 379 -139 -379
		mu 0 4 143 144 165 164
		f 4 119 360 -140 -380
		mu 0 4 144 145 166 165
		f 4 120 381 -141 -381
		mu 0 4 146 147 168 167
		f 4 121 382 -142 -382
		mu 0 4 147 148 169 168
		f 4 122 383 -143 -383
		mu 0 4 148 149 170 169
		f 4 123 384 -144 -384
		mu 0 4 149 150 171 170
		f 4 124 385 -145 -385
		mu 0 4 150 151 172 171
		f 4 125 386 -146 -386
		mu 0 4 151 152 173 172
		f 4 126 387 -147 -387
		mu 0 4 152 153 174 173
		f 4 127 388 -148 -388
		mu 0 4 153 154 175 174
		f 4 128 389 -149 -389
		mu 0 4 154 155 176 175
		f 4 129 390 -150 -390
		mu 0 4 155 156 177 176
		f 4 130 391 -151 -391
		mu 0 4 156 157 178 177
		f 4 131 392 -152 -392
		mu 0 4 157 158 179 178
		f 4 132 393 -153 -393
		mu 0 4 158 159 180 179
		f 4 133 394 -154 -394
		mu 0 4 159 160 181 180
		f 4 134 395 -155 -395
		mu 0 4 160 161 182 181
		f 4 135 396 -156 -396
		mu 0 4 161 162 183 182
		f 4 136 397 -157 -397
		mu 0 4 162 163 184 183
		f 4 137 398 -158 -398
		mu 0 4 163 164 185 184
		f 4 138 399 -159 -399
		mu 0 4 164 165 186 185
		f 4 139 380 -160 -400
		mu 0 4 165 166 187 186
		f 4 140 401 -161 -401
		mu 0 4 167 168 189 188
		f 4 141 402 -162 -402
		mu 0 4 168 169 190 189
		f 4 142 403 -163 -403
		mu 0 4 169 170 191 190
		f 4 143 404 -164 -404
		mu 0 4 170 171 192 191
		f 4 144 405 -165 -405
		mu 0 4 171 172 193 192
		f 4 145 406 -166 -406
		mu 0 4 172 173 194 193
		f 4 146 407 -167 -407
		mu 0 4 173 174 195 194
		f 4 147 408 -168 -408
		mu 0 4 174 175 196 195
		f 4 148 409 -169 -409
		mu 0 4 175 176 197 196
		f 4 149 410 -170 -410
		mu 0 4 176 177 198 197
		f 4 150 411 -171 -411
		mu 0 4 177 178 199 198
		f 4 151 412 -172 -412
		mu 0 4 178 179 200 199
		f 4 152 413 -173 -413
		mu 0 4 179 180 201 200
		f 4 153 414 -174 -414
		mu 0 4 180 181 202 201
		f 4 154 415 -175 -415
		mu 0 4 181 182 203 202
		f 4 155 416 -176 -416
		mu 0 4 182 183 204 203
		f 4 156 417 -177 -417
		mu 0 4 183 184 205 204
		f 4 157 418 -178 -418
		mu 0 4 184 185 206 205
		f 4 158 419 -179 -419
		mu 0 4 185 186 207 206
		f 4 159 400 -180 -420
		mu 0 4 186 187 208 207
		f 4 160 421 -181 -421
		mu 0 4 188 189 210 209
		f 4 161 422 -182 -422
		mu 0 4 189 190 211 210
		f 4 162 423 -183 -423
		mu 0 4 190 191 212 211
		f 4 163 424 -184 -424
		mu 0 4 191 192 213 212
		f 4 164 425 -185 -425
		mu 0 4 192 193 214 213
		f 4 165 426 -186 -426
		mu 0 4 193 194 215 214
		f 4 166 427 -187 -427
		mu 0 4 194 195 216 215
		f 4 167 428 -188 -428
		mu 0 4 195 196 217 216
		f 4 168 429 -189 -429
		mu 0 4 196 197 218 217
		f 4 169 430 -190 -430
		mu 0 4 197 198 219 218
		f 4 170 431 -191 -431
		mu 0 4 198 199 220 219
		f 4 171 432 -192 -432
		mu 0 4 199 200 221 220
		f 4 172 433 -193 -433
		mu 0 4 200 201 222 221
		f 4 173 434 -194 -434
		mu 0 4 201 202 223 222
		f 4 174 435 -195 -435
		mu 0 4 202 203 224 223
		f 4 175 436 -196 -436
		mu 0 4 203 204 225 224
		f 4 176 437 -197 -437
		mu 0 4 204 205 226 225
		f 4 177 438 -198 -438
		mu 0 4 205 206 227 226
		f 4 178 439 -199 -439
		mu 0 4 206 207 228 227
		f 4 179 420 -200 -440
		mu 0 4 207 208 229 228
		f 4 180 441 -201 -441
		mu 0 4 209 210 231 230
		f 4 181 442 -202 -442
		mu 0 4 210 211 232 231
		f 4 182 443 -203 -443
		mu 0 4 211 212 233 232
		f 4 183 444 -204 -444
		mu 0 4 212 213 234 233
		f 4 184 445 -205 -445
		mu 0 4 213 214 235 234
		f 4 185 446 -206 -446
		mu 0 4 214 215 236 235
		f 4 186 447 -207 -447
		mu 0 4 215 216 237 236
		f 4 187 448 -208 -448
		mu 0 4 216 217 238 237
		f 4 188 449 -209 -449
		mu 0 4 217 218 239 238
		f 4 189 450 -210 -450
		mu 0 4 218 219 240 239
		f 4 190 451 -211 -451
		mu 0 4 219 220 241 240
		f 4 191 452 -212 -452
		mu 0 4 220 221 242 241
		f 4 192 453 -213 -453
		mu 0 4 221 222 243 242
		f 4 193 454 -214 -454
		mu 0 4 222 223 244 243
		f 4 194 455 -215 -455
		mu 0 4 223 224 245 244
		f 4 195 456 -216 -456
		mu 0 4 224 225 246 245
		f 4 196 457 -217 -457
		mu 0 4 225 226 247 246
		f 4 197 458 -218 -458
		mu 0 4 226 227 248 247
		f 4 198 459 -219 -459
		mu 0 4 227 228 249 248
		f 4 199 440 -220 -460
		mu 0 4 228 229 250 249
		f 4 200 461 -221 -461
		mu 0 4 230 231 252 251
		f 4 201 462 -222 -462
		mu 0 4 231 232 253 252
		f 4 202 463 -223 -463
		mu 0 4 232 233 254 253
		f 4 203 464 -224 -464
		mu 0 4 233 234 255 254
		f 4 204 465 -225 -465
		mu 0 4 234 235 256 255
		f 4 205 466 -226 -466
		mu 0 4 235 236 257 256
		f 4 206 467 -227 -467
		mu 0 4 236 237 258 257
		f 4 207 468 -228 -468
		mu 0 4 237 238 259 258
		f 4 208 469 -229 -469
		mu 0 4 238 239 260 259
		f 4 209 470 -230 -470
		mu 0 4 239 240 261 260
		f 4 210 471 -231 -471
		mu 0 4 240 241 262 261
		f 4 211 472 -232 -472
		mu 0 4 241 242 263 262
		f 4 212 473 -233 -473
		mu 0 4 242 243 264 263
		f 4 213 474 -234 -474
		mu 0 4 243 244 265 264
		f 4 214 475 -235 -475
		mu 0 4 244 245 266 265
		f 4 215 476 -236 -476
		mu 0 4 245 246 267 266
		f 4 216 477 -237 -477
		mu 0 4 246 247 268 267
		f 4 217 478 -238 -478
		mu 0 4 247 248 269 268
		f 4 218 479 -239 -479
		mu 0 4 248 249 270 269
		f 4 219 460 -240 -480
		mu 0 4 249 250 271 270
		f 4 220 481 -241 -481
		mu 0 4 251 252 273 272
		f 4 221 482 -242 -482
		mu 0 4 252 253 274 273
		f 4 222 483 -243 -483
		mu 0 4 253 254 275 274
		f 4 223 484 -244 -484
		mu 0 4 254 255 276 275
		f 4 224 485 -245 -485
		mu 0 4 255 256 277 276
		f 4 225 486 -246 -486
		mu 0 4 256 257 278 277
		f 4 226 487 -247 -487
		mu 0 4 257 258 279 278
		f 4 227 488 -248 -488
		mu 0 4 258 259 280 279
		f 4 228 489 -249 -489
		mu 0 4 259 260 281 280
		f 4 229 490 -250 -490
		mu 0 4 260 261 282 281
		f 4 230 491 -251 -491
		mu 0 4 261 262 283 282
		f 4 231 492 -252 -492
		mu 0 4 262 263 284 283
		f 4 232 493 -253 -493
		mu 0 4 263 264 285 284
		f 4 233 494 -254 -494
		mu 0 4 264 265 286 285
		f 4 234 495 -255 -495
		mu 0 4 265 266 287 286
		f 4 235 496 -256 -496
		mu 0 4 266 267 288 287
		f 4 236 497 -257 -497
		mu 0 4 267 268 289 288
		f 4 237 498 -258 -498
		mu 0 4 268 269 290 289
		f 4 238 499 -259 -499
		mu 0 4 269 270 291 290
		f 4 239 480 -260 -500
		mu 0 4 270 271 292 291
		f 3 -1 -501 501
		mu 0 3 1 0 313
		f 3 -2 -502 502
		mu 0 3 2 1 313
		f 3 -3 -503 503
		mu 0 3 3 2 313
		f 3 -4 -504 504
		mu 0 3 4 3 313
		f 3 -5 -505 505
		mu 0 3 5 4 313
		f 3 -6 -506 506
		mu 0 3 6 5 313
		f 3 -7 -507 507
		mu 0 3 7 6 313
		f 3 -8 -508 508
		mu 0 3 8 7 313
		f 3 -9 -509 509
		mu 0 3 9 8 313
		f 3 -10 -510 510
		mu 0 3 10 9 313
		f 3 -11 -511 511
		mu 0 3 11 10 313
		f 3 -12 -512 512
		mu 0 3 12 11 313
		f 3 -13 -513 513
		mu 0 3 13 12 313
		f 3 -14 -514 514
		mu 0 3 14 13 313
		f 3 -15 -515 515
		mu 0 3 15 14 313
		f 3 -16 -516 516
		mu 0 3 16 15 313
		f 3 -17 -517 517
		mu 0 3 17 16 313
		f 3 -18 -518 518
		mu 0 3 18 17 313
		f 3 -19 -519 519
		mu 0 3 19 18 313
		f 3 -20 -520 500
		mu 0 3 0 19 313
		f 3 240 521 -521
		mu 0 3 311 310 314
		f 3 241 522 -522
		mu 0 3 310 309 314
		f 3 242 523 -523
		mu 0 3 309 308 314
		f 3 243 524 -524
		mu 0 3 308 307 314
		f 3 244 525 -525
		mu 0 3 307 306 314
		f 3 245 526 -526
		mu 0 3 306 305 314
		f 3 246 527 -527
		mu 0 3 305 304 314
		f 3 247 528 -528
		mu 0 3 304 303 314
		f 3 248 529 -529
		mu 0 3 303 302 314
		f 3 249 530 -530
		mu 0 3 302 301 314
		f 3 250 531 -531
		mu 0 3 301 300 314
		f 3 251 532 -532
		mu 0 3 300 299 314
		f 3 252 533 -533
		mu 0 3 299 298 314
		f 3 253 534 -534
		mu 0 3 298 297 314
		f 3 254 535 -535
		mu 0 3 297 296 314
		f 3 255 536 -536
		mu 0 3 296 295 314
		f 3 256 537 -537
		mu 0 3 295 294 314
		f 3 257 538 -538
		mu 0 3 294 293 314
		f 3 258 539 -539
		mu 0 3 293 312 314
		f 3 259 520 -540
		mu 0 3 312 311 314;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3496E7F9-4455-F24E-18F8-A69CE8D65705";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4F4A8360-4FA2-B1E8-DCDA-AAAA6D3419B5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C0901452-422F-9BE8-686B-B6BFBF22ADA4";
createNode displayLayerManager -n "layerManager";
	rename -uid "57B4433A-4761-AE16-2AA3-8BA4BC1EDA1B";
createNode displayLayer -n "defaultLayer";
	rename -uid "022D803A-4D0F-F86E-EC51-878062318966";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6DB576E2-4CC2-FFAF-09A5-EFA5CF450268";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8C50425D-4F54-9ABD-96DC-DDAAB13E098E";
	setAttr ".g" yes;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "FB33472D-4CDB-A57C-D2D9-CB8DB1C8D6EA";
createNode blendColors -n "c_arm_03_01_translate_bc";
	rename -uid "4CD447D0-44BF-FAD2-DA95-0A8590D9DE3F";
createNode blendColors -n "c_arm_03_01_rotate_bc";
	rename -uid "9A70A7F9-492B-3B03-34D8-B09082D6CE76";
createNode unitConversion -n "unitConversion1";
	rename -uid "A9F64F45-4A69-F002-1514-DC94FF7A17EA";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion2";
	rename -uid "FF5250B5-4DAC-8BA8-E317-03BEF3362533";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion3";
	rename -uid "291D908B-478B-34D3-900F-1C88740647AE";
	setAttr ".cf" 0.017453292519943295;
createNode blendColors -n "c_arm_03_01_scale_bc";
	rename -uid "17FCAE1C-4581-5727-8D59-9E93DC1AD350";
createNode blendColors -n "c_arm_03_02_translate_bc";
	rename -uid "3B075F2F-4C72-43EE-E3EB-4AAB1298E20A";
createNode blendColors -n "c_arm_03_02_rotate_bc";
	rename -uid "FCA221BE-4CB7-7EDB-B11E-5D811D19CA3A";
createNode unitConversion -n "unitConversion4";
	rename -uid "02996F8C-43D0-550D-BA22-2CB3885267E3";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion5";
	rename -uid "E7A1A8CE-4F8C-27BB-8260-E592D2958B92";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion6";
	rename -uid "F83424C7-40E9-4EF6-9892-138BDAED5D1B";
	setAttr ".cf" 0.017453292519943295;
createNode blendColors -n "c_arm_03_02_scale_bc";
	rename -uid "FC3BE4CF-49C8-83DE-48A3-FFA7A9B7DB19";
createNode blendColors -n "c_arm_03_03_translate_bc";
	rename -uid "F6A06A00-46A1-5F5F-13EF-0DBEFB5AC9F0";
createNode blendColors -n "c_arm_03_03_rotate_bc";
	rename -uid "FE815F50-4D93-D51B-D439-E182CC62C1E9";
createNode unitConversion -n "unitConversion7";
	rename -uid "1F0F2545-4905-5D3B-AF74-32AA1E5ECB23";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	rename -uid "094AB99F-4F48-36F5-0606-D9805C7540A3";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion9";
	rename -uid "1ECAAC3B-4152-E4E2-779B-1EB942924169";
	setAttr ".cf" 0.017453292519943295;
createNode blendColors -n "c_arm_03_03_scale_bc";
	rename -uid "BD3753AF-4BE3-693D-3752-31BC6514B2CD";
createNode reverse -n "c_arm_03_switch_reverse_Value_RV";
	rename -uid "E10E920F-4CB1-3496-DC94-E1B427143114";
createNode distanceBetween -n "arm_def_start_to_mid_DB";
	rename -uid "A12A9BDF-4270-AF0D-3E3C-6DA0F19C250E";
createNode distanceBetween -n "arm_def_mid_to_end_DB";
	rename -uid "B2C1B509-4C1D-3454-4843-CEB6E5E78809";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "92C9D369-4F89-3055-5B4F-3BA75C0B3F21";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 791\n            -height 660\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n"
		+ "            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n"
		+ "            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 791\\n    -height 660\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 791\\n    -height 660\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "356EF826-4DF3-AEE5-E739-1382C3AB8651";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode distanceBetween -n "arm_start_to_end_DB";
	rename -uid "BD1631F7-4F76-0849-6EF6-3FAF8609FCCA";
createNode distanceBetween -n "arm_start_to_mid_DB";
	rename -uid "BC8BCEFF-42F1-924A-D8CE-FB8053E57A5E";
createNode distanceBetween -n "arm_mid_to_end_DB";
	rename -uid "36A8DF8E-4349-40B8-7FBF-3E85EC669B03";
createNode addDoubleLinear -n "arm_def_start_to_end_ADL";
	rename -uid "AF8AB286-4019-9D45-8FFC-1E8D365AEF6A";
	setAttr ".ihi" 2;
createNode multiplyDivide -n "multiplyDivide1";
	rename -uid "38146A17-48FE-C1F0-F0D5-B18429CC6ACE";
	setAttr ".op" 2;
createNode condition -n "condition1";
	rename -uid "9A22E0C2-42DE-0031-3AB6-F3976B53AF94";
	setAttr ".op" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "010F5EEB-4DE3-B106-77CB-CDA4788871BB";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -615.47616601936511 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
createNode blendTwoAttr -n "blendTwoAttr1";
	rename -uid "0D6D8379-4498-06FE-29E0-178E67F9A1E0";
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multDoubleLinear -n "multDoubleLinear1";
	rename -uid "7B629F01-4115-C232-89BB-98AAE005FEED";
	setAttr ".i2" 4;
createNode multDoubleLinear -n "multDoubleLinear2";
	rename -uid "CFC248C4-44F2-B968-D147-ACB0721C26DD";
	setAttr ".i2" 4;
createNode multiplyDivide -n "multiplyDivide2";
	rename -uid "F38FCB0C-4CBC-8A39-5E37-0D93CA1A2DFE";
	setAttr ".op" 2;
createNode blendTwoAttr -n "blendTwoAttr2";
	rename -uid "147F281B-4749-81B0-85D6-75A6BC9BB945";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "blendTwoAttr3";
	rename -uid "F3823DC9-42DE-C9E3-2F7A-FC8ED95A82DE";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "1376C23E-4517-5F38-D9E0-38BC3B8DDEBF";
	setAttr ".version" -type "string" "5.2.1.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "40CBF008-4AB2-E578-6415-6DB561FC666B";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4C5A8509-4AA1-4FA0-20BD-018C84F1ACA1";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "C64B4EA9-4E90-EDC7-D434-B2A3F400A3A6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode blendTwoAttr -n "blendTwoAttr4";
	rename -uid "E06D6E41-4D81-BFE4-4DF0-15BFF9CCE0C1";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode blendTwoAttr -n "blendTwoAttr5";
	rename -uid "29794B89-4197-4C32-1A29-FFAF413EDF3F";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.25;
createNode blendTwoAttr -n "blendTwoAttr6";
	rename -uid "35004245-4432-4FA6-B57A-B89F517CBB1F";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.5;
createNode blendTwoAttr -n "blendTwoAttr7";
	rename -uid "DDAFD475-42A4-F44A-EBE7-6FB1DB640E15";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 0.75;
createNode blendTwoAttr -n "blendTwoAttr8";
	rename -uid "3970B535-4ABD-D2DD-3C6F-75B9524F3E64";
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
	setAttr ".ab" 1;
createNode unitConversion -n "unitConversion25";
	rename -uid "73E47D20-475D-5989-076B-6E879F15FC9E";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion26";
	rename -uid "56E0D380-4355-7FF2-1C22-E39237B65BF7";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion27";
	rename -uid "D3A157F6-44F6-E1C0-61E9-42AEF98781E3";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion28";
	rename -uid "BD386554-4CAF-D578-EBDD-9891D024E9C1";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion29";
	rename -uid "E82FD5A9-4219-9B8C-D463-928787D10CF9";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion30";
	rename -uid "DE736FB9-4573-C133-041C-3FB251141951";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion31";
	rename -uid "C09B3608-4926-9B13-3CA3-70A08CEABD0A";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion32";
	rename -uid "682DB026-4324-1FA5-166F-77AC03F9BF15";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion33";
	rename -uid "AD15D849-49A7-6EA6-5C4F-B480196E0E03";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion34";
	rename -uid "345B7ABA-4FEF-B325-6F39-2EAF447706DB";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion35";
	rename -uid "6C584B9E-423C-0039-9981-F5A304E85DA7";
	setAttr ".cf" 57.295779513082323;
createNode motionPath -n "motionPath1";
	rename -uid "E4D43712-45DE-6C9E-5759-7BA256899B3B";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "motionPath2";
	rename -uid "9AF29419-498B-0CBC-ED63-AF86FABA0BA6";
	setAttr ".u" 0.25;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "motionPath3";
	rename -uid "03E60224-402B-019B-1059-CF988ABB9E1A";
	setAttr ".u" 0.5;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "motionPath4";
	rename -uid "ABA8C6DD-4656-0D17-BB34-53944BEA40B3";
	setAttr ".u" 0.75;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode motionPath -n "motionPath5";
	rename -uid "360243ED-4774-AB4A-A347-27A1E4F14139";
	setAttr ".u" 1;
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".wut" 2;
	setAttr ".fm" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "3BA005DD-41D2-853A-F97B-BAB07FA8E416";
	setAttr -s 5 ".wl";
	setAttr ".wl[0:4].w"
		1 2 1
		2 1 0.5 2 0.5
		1 1 1
		2 0 0.50000047509173728 1 0.49999952490826277
		1 0 1;
	setAttr -s 3 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.89077972981829601 0.44599925331837131 -0.08715583161383296 0
		 -0.44599926295781117 0.8947971912736471 0.020558305617956036 0 0.087155782286275948 0.020558514738359766 0.99598253854463736 0
		 -2.8318158714441988 -12.564215422855655 0.1571189772143691 1;
	setAttr ".pm[1]" -type "matrix" 0.89077978078976905 0.44599915900708681 -0.087155793273323776 0
		 -0.44599916910603771 0.89479723849380322 0.020558286421482205 0 0.087155741594314773 0.020558505510738786 0.99598254229595296 0
		 -0.83181726003358814 -12.564215149276089 0.15711887721995921 1;
	setAttr ".pm[2]" -type "matrix" 0.89077982944747802 0.4459990641500291 -0.087155781373470548 0
		 -0.4459990740958068 0.89479728598720643 0.020558280463417889 0 0.087155730478293975 0.020558496229727625 0.99598254346025927 0
		 1.168181242478282 -12.564215246821339 0.15711890061682668 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 3 ".ma";
	setAttr -s 3 ".dpf[0:2]"  4 4 4;
	setAttr -s 3 ".lw";
	setAttr -s 3 ".lw";
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 3 ".ifcl";
	setAttr -s 3 ".ifcl";
createNode dagPose -n "bindPose1";
	rename -uid "C6C4C916-407E-D46D-F035-E187C9A94C1B";
	setAttr -s 3 ".wm";
	setAttr -s 3 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0.020638510120944607 -0.087266502289365416
		 -0.46419475326386939 0 8.1398487091064453 9.9762067794799805 0.34862297773361206 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0.020638500782336516 -0.087266461441967522
		 -0.4641946461154598 0 6.3582892070934207 10.868205117711103 0.17431147777745803 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0.020638491443737892 -0.0872664502834853
		 -0.46419453896705681 0 4.5767297744750977 11.76020336151123 4.40619762898109e-16 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 3 ".m";
	setAttr -s 3 ".p";
	setAttr ".bp" yes;
createNode unitConversion -n "unitConversion36";
	rename -uid "BE528D2D-4592-91D3-88F3-298FFC26CE6F";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion37";
	rename -uid "53BB3F3B-4B4A-0FC7-B1A7-2DBE1A921022";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion38";
	rename -uid "8B965433-4BCA-4F50-4A00-6B970E48D185";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion39";
	rename -uid "A3A90D10-4D85-5463-0DB4-3BB81A7D218B";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion40";
	rename -uid "9994DBEC-45B6-30EE-C260-6794BA5FDF77";
	setAttr ".cf" 57.295779513082323;
createNode dagPose -n "bindPose2";
	rename -uid "84F1E505-465E-A82E-222B-219813DC85B8";
	setAttr -s 16 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[4]" -type "matrix" 2.1000000000000001 0 0 0 0 2.1000000000000001 0 0
		 0 0 2.1000000000000001 0 0 0 0 1;
	setAttr ".wm[5]" -type "matrix" 2.1000000000000001 0 0 0 0 2.1000000000000001 0 0
		 0 0 2.1000000000000001 0 0 0 0 1;
	setAttr ".wm[6]" -type "matrix" 2.1000000000000001 0 0 0 0 2.1000000000000001 0 0
		 0 0 2.1000000000000001 0 0 0 0 1;
	setAttr ".wm[7]" -type "matrix" 2.1000000000000001 0 0 0 0 2.1000000000000001 0 0
		 0 0 2.1000000000000001 0 0 0 0 1;
	setAttr ".wm[8]" -type "matrix" 2.1000000000000001 0 0 0 0 2.1000000000000001 0 0
		 0 0 2.1000000000000001 0 0 0 0 1;
	setAttr ".wm[9]" -type "matrix" 2.1000000000000001 0 0 0 0 2.1000000000000001 0 0
		 0 0 2.1000000000000001 0 0 0 0 1;
	setAttr ".wm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 16 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 2.1000000000000001 2.1000000000000001 2.1000000000000001 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0.020638495059933631 -0.087266473174789375
		 -0.46419458045824485 0 17.093683234719503 20.950034218528895 0.73210823908032685 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0.020638491211914748 -0.087266461493531206
		 -0.46419453630718449 0 15.223012869524887 21.886648712472287 0.54907796317286328 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0.020638491576314429 -0.087266462599723038
		 -0.46419454048820197 0 13.352407861489151 22.823230358307246 0.36605411659392356 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0.020638491940706938 -0.087266463705893027
		 -0.46419454466913701 0 11.481803088950102 23.759812034445545 0.18303025191885597 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0.020638488092691351 -0.087266452024643212
		 -0.46419450051810474 0 9.6111326811220632 24.696426448278658 2.886579864025407e-15 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 16 ".m";
	setAttr -s 16 ".p";
	setAttr -s 16 ".g[0:15]" yes yes yes yes yes yes yes yes yes yes yes 
		no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	rename -uid "07352693-4C42-4B01-1A9E-4FACED3E8E10";
	setAttr -s 262 ".wl";
	setAttr ".wl[0:99].w"
		5 0 0.67482048273086548 1 0.31764925235129116 2 0.005582087653543847 
		3 0.00166940799825416 4 0.00027876926604537941
		5 0 0.67480593919754028 1 0.31765764003940367 2 0.0055872419521707474 
		3 0.0016701274417850011 4 0.00027905136910030348
		5 0 0.67478334903717041 1 0.31767064222337571 2 0.0055952703441562654 
		3 0.0016712475748295477 4 0.00027949082046809664
		5 0 0.674754798412323 1 0.31768710077199169 2 0.0056053957734427499 
		3 0.0016726599500913734 4 0.00028004509215119437
		5 0 0.67472320795059204 1 0.31770527676131555 2 0.0056166290486252234 
		3 0.0016742261105154239 4 0.00028066012895177191
		5 0 0.67469161748886108 1 0.31772343948674164 2 0.0056278736487819147 
		3 0.0016757934779031635 4 0.00028127589771219033
		5 0 0.67466306686401367 1 0.31773986634318219 2 0.0056380265102190978 
		3 0.0016772082941869492 4 0.00028183198839808199
		5 0 0.67464041709899902 1 0.31775288880964264 2 0.0056460889885425912 
		3 0.0016783314572000822 4 0.00028227364561565386
		5 0 0.67462587356567383 1 0.31776124728075456 2 0.0056512688869985233 
		3 0.0016790528704555619 4 0.00028255739611753283
		5 0 0.6746208667755127 1 0.31776412210332017 2 0.0056530543116153978 
		3 0.0016793016026542089 4 0.00028265520689751793
		5 0 0.67462587356567383 1 0.31776124740089107 2 0.0056512688900140903 
		3 0.0016790527471534054 4 0.00028255739626757476
		5 0 0.67464041709899902 1 0.31775289022500469 2 0.0056460880268657306 
		3 0.0016783310948801993 4 0.00028227355425034575
		5 0 0.67466306686401367 1 0.31773986984182145 2 0.0056380237693680153 
		3 0.0016772076981232096 4 0.00028183182667368558
		5 0 0.67469155788421631 1 0.31772350194701388 2 0.0056278713593448521 
		3 0.0016757930633728893 4 0.00028127574605207178
		5 0 0.67472320795059204 1 0.31770528166946826 2 0.0056166251848437359 
		3 0.0016742252773460323 4 0.00028065991774995621
		5 0 0.674754798412323 1 0.31768710633975095 2 0.0056053914306947441 
		3 0.0016726589975695596 4 0.00028004481966177028
		5 0 0.67478328943252563 1 0.31767070824347465 2 0.0055952652535495315 
		3 0.0016712465721843918 4 0.00027949049826578445
		5 0 0.67480593919754028 1 0.31765764871231528 2 0.0055872348607469797 
		3 0.0016701262636431289 4 0.0002790509657543731
		5 0 0.67482048273086548 1 0.31764925860010629 2 0.0055820824041338916 
		3 0.0016694072925312142 4 0.00027876897236312652
		5 0 0.67482548952102661 1 0.31764636917401851 2 0.005580309343226693 
		3 0.0016691599987953215 4 0.00027867196293292944
		5 0 0.57059520483016968 1 0.40331884830553633 2 0.020987979341268188 
		3 0.0044363158594896753 4 0.00066165166353616218
		5 0 0.57057195901870728 1 0.40332809317045459 2 0.021000319171364926 
		3 0.0044374802185756677 4 0.00066214842089756939
		5 0 0.57053571939468384 1 0.4033425271300517 2 0.021019536239161134 
		3 0.0044392950696379467 4 0.00066292216646532745
		5 0 0.57049012184143066 1 0.4033606354330494 2 0.021043760768440341 
		3 0.0044415841944081789 4 0.00066389776267144812
		5 0 0.57043945789337158 1 0.40338080035202517 2 0.021070634893875312 
		3 0.0044441266065552536 4 0.00066498025417264324
		5 0 0.57038891315460205 1 0.40340083695339146 2 0.021097515224219064 
		3 0.0044466713250368908 4 0.00066606334275054338
		5 0 0.5703432559967041 1 0.40341895392360955 2 0.021121778041255625 
		3 0.0044489708649620126 4 0.00066704117346871709
		5 0 0.57030695676803589 1 0.40343338283155633 2 0.021141043915187126 
		3 0.0044507987124975555 4 0.00066781777272312986
		5 0 0.57028371095657349 1 0.40344258681511797 2 0.021153413695165695 
		3 0.0044519720233424298 4 0.00066831650980041571
		5 0 0.57027566432952881 1 0.40344579204580905 2 0.021157677712965516 
		3 0.0044523774814483911 4 0.00066848843024825799
		5 0 0.57028371095657349 1 0.40344258860520649 2 0.021153411865962965 
		3 0.0044519720574678866 4 0.00066831651478915018
		5 0 0.57030695676803589 1 0.40343339049394156 2 0.021141037848711033 
		3 0.0044507973033079485 4 0.00066781758600361436
		5 0 0.57034319639205933 1 0.40341901754788989 2 0.021121774966189236 
		3 0.0044489700745116573 4 0.00066704101934987072
		5 0 0.57038885354995728 1 0.40340090470314061 2 0.021097508539159489 
		3 0.0044466701278493446 4 0.00066606307989331868
		5 0 0.57043945789337158 1 0.40338081219222627 2 0.021070625339431565 
		3 0.0044441247959417984 4 0.00066497977902880783
		5 0 0.57049006223678589 1 0.40336070239289212 2 0.02104375487807502 
		3 0.0044415830875001823 4 0.00066389740474677612
		5 0 0.57053571939468384 1 0.40334253956228405 2 0.021019525586648099 
		3 0.0044392938561826478 4 0.00066292160020135261
		5 0 0.57057195901870728 1 0.40332810701840616 2 0.021000306708952986 
		3 0.004437479515555641 4 0.00066214773837795966
		5 0 0.57059520483016968 1 0.40331886061386168 2 0.020987967976735435 
		3 0.0044363155093029346 4 0.00066165106993029677
		5 0 0.57060319185256958 1 0.40331568631806081 2 0.020983724996522641 
		3 0.0044359165659637878 4 0.00066148026688319674
		5 0 0.41059929132461548 1 0.49719432504229755 2 0.075537904381030946 
		3 0.015171479162978407 4 0.0014970000890775677
		5 0 0.41057556867599487 1 0.49719320491643276 2 0.075562599584825266 
		3 0.015170940159972035 4 0.0014976866627750252
		5 0 0.41053858399391174 1 0.49719147717148837 2 0.075601068430307339 
		3 0.015170114574112308 4 0.0014987558301802699
		5 0 0.41049200296401978 1 0.49718927213933634 2 0.075649540428937914 
		3 0.015169081270778897 4 0.001500103196927112
		5 0 0.4104403555393219 1 0.49718681375924256 2 0.075703281672447872 
		3 0.015167951465783109 4 0.0015015975632045688
		5 0 0.41038870811462402 1 0.49718434072589618 2 0.07575702316671605 
		3 0.015166835587134523 4 0.0015030924056292638
		5 0 0.41034209728240967 1 0.49718211173145732 2 0.075805506480393497 
		3 0.015165843244265431 4 0.0015044412614741327
		5 0 0.41030508279800415 1 0.49718035662992111 2 0.075843984170452627 
		3 0.015165064275151836 4 0.0015055121264701849
		5 0 0.41028133034706116 1 0.49717921575125784 2 0.075868686796023738 
		3 0.015164567367634014 4 0.0015061997380232421
		5 0 0.41027313470840454 1 0.49717882810220176 2 0.075877203635645499 
		3 0.015164396805127749 4 0.001506436748620447
		5 0 0.41028133034706116 1 0.49717921643473384 2 0.07586868703268336 
		3 0.015164566442522065 4 0.0015061997429996208
		5 0 0.41030508279800415 1 0.49718036726741893 2 0.075843977181841993 
		3 0.015165060888898041 4 0.0015055118638368013
		5 0 0.41034206748008728 1 0.49718215338765742 2 0.075805497193960014 
		3 0.015165841062545076 4 0.0015044408757503463
		5 0 0.41038867831230164 1 0.49718438078698657 2 0.07575701373487044 
		3 0.01516683527851706 4 0.0015030918873243872
		5 0 0.4104403555393219 1 0.49718683553664966 2 0.075703263187326883 
		3 0.015167948959805239 4 0.0015015967768963654
		5 0 0.41049200296401978 1 0.49718928830465564 2 0.075649524827164 
		3 0.015169081423740261 4 0.0015001024804202894
		5 0 0.41053858399391174 1 0.49719149717002359 2 0.075601049162531422 
		3 0.015170114884878766 4 0.0014987547886544574
		5 0 0.41057553887367249 1 0.49719324396413084 2 0.075562585431433654 
		3 0.015170945980650385 4 0.0014976857501126676
		5 0 0.41059929132461548 1 0.49719433282674785 2 0.075537892698134171 
		3 0.015171483730510518 4 0.0014969994199920415
		5 0 0.41060745716094971 1 0.49719472617315114 2 0.075529384938080937 
		3 0.015171668556063377 4 0.001496763171754824
		5 0 0.24139097332954407 1 0.52680206673962748 2 0.19729792913331315 
		3 0.032091413262331184 4 0.0024176175351841036
		5 0 0.2413737028837204 1 0.52678719836534671 2 0.19733319479208583 
		3 0.032087576338821977 4 0.0024183276200250613
		5 0 0.2413468211889267 1 0.52676403420308082 2 0.19738809664250412 
		3 0.032081615191296577 4 0.0024194327741917736
		5 0 0.24131293594837189 1 0.52673480438994591 2 0.19745730232606876 
		3 0.03207413140293839 4 0.0024208259326751517
		5 0 0.241275355219841 1 0.52670246335993209 2 0.19753395664937556 
		3 0.032065854912306971 4 0.0024223698585443755
		5 0 0.24123777449131012 1 0.52667012433487059 2 0.19761058477349563 
		3 0.032057602620463498 4 0.0024239137798601693
		5 0 0.24120387434959412 1 0.52664088930828312 2 0.19767973637252395 
		3 0.032050192760384108 4 0.0024253072092146719
		5 0 0.24117694795131683 1 0.52661772473769619 2 0.19773458683155443 
		3 0.032044327484782364 4 0.0024264129946501931
		5 0 0.24115966260433197 1 0.52660285090123449 2 0.19776979888798349 
		3 0.032040564753376022 4 0.0024271228530740518
		5 0 0.24115371704101562 1 0.52659770873063905 2 0.19778193489497495 
		3 0.032039271863267105 4 0.0024273674701031618
		5 0 0.24115966260433197 1 0.52660285822203357 2 0.19776979149878965 
		3 0.032040564914914769 4 0.0024271227599299491
		5 0 0.24117694795131683 1 0.52661773093545927 2 0.19773458500779342 
		3 0.032044323471232497 4 0.0024264126341979417
		5 0 0.24120385944843292 1 0.52664089548764792 2 0.19767974579357475 
		3 0.032050192413939069 4 0.0024253068564053662
		5 0 0.24123775959014893 1 0.52667013453986933 2 0.19761058938914719 
		3 0.032057603459527809 4 0.0024239130213066949
		5 0 0.24127534031867981 1 0.5267024743755272 2 0.19753396085791231 
		3 0.032065855508511057 4 0.0024223689393696049
		5 0 0.24131292104721069 1 0.52673485182117041 2 0.19745727221143911 
		3 0.032074130424354051 4 0.002420824495825669
		5 0 0.2413468062877655 1 0.52676404253928455 2 0.19738809846139679 
		3 0.032081621225323882 4 0.0024194314862292696
		5 0 0.2413736879825592 1 0.52678720110741351 2 0.19733319998380916 
		3 0.03208758477963719 4 0.0024183261465808856
		5 0 0.24139095842838287 1 0.52680207506841648 2 0.19729792939413091 
		3 0.032091420615798449 4 0.0024176164932711739
		5 0 0.24139690399169922 1 0.52680717508290575 2 0.19728580307548454 
		3 0.032092745265907996 4 0.0024173725840024316
		5 0 0.1110246554017067 1 0.47380006248575296 2 0.36506658499568034 
		3 0.047459196724385026 4 0.0026495003924748906
		5 0 0.11101602017879486 1 0.47377579040733175 2 0.36509967303218899 
		3 0.047458462749344808 4 0.002650053632339661
		5 0 0.11100257933139801 1 0.47373798055330901 2 0.36515119319243139 
		3 0.047457332431429675 4 0.0026509144914319809
		5 0 0.11098562926054001 1 0.47369035962914191 2 0.36521608972544622 
		3 0.04745592208623288 4 0.002651999298639034
		5 0 0.11096683889627457 1 0.47363754146480302 2 0.36528802602317384 
		3 0.047454391681658742 4 0.0026532019340898259
		5 0 0.11094804108142853 1 0.47358475339915262 2 0.36535991934486717 
		3 0.047452881501183618 4 0.002654404673368034
		5 0 0.11093108355998993 1 0.47353709938309013 2 0.36542477797771383 
		3 0.047451549547762713 4 0.0026554895314433737
		5 0 0.11091762036085129 1 0.47349928654685997 2 0.3654762400453716 
		3 0.047450502484223674 4 0.00265635056269347
		5 0 0.11090897023677826 1 0.47347501417894916 2 0.3655092642005105 
		3 0.047449847730742838 4 0.0026569036530192905
		5 0 0.11090599745512009 1 0.47346664554221124 2 0.36552064700890791 
		3 0.047449615961482519 4 0.0026570940322781719
		5 0 0.11090897768735886 1 0.47347500809909565 2 0.36550926956019075 
		3 0.047449841167857887 4 0.0026569034854968553
		5 0 0.11091762036085129 1 0.47349928714832817 2 0.36547624282127472 
		3 0.047450499545913731 4 0.0026563501236321007
		5 0 0.11093107610940933 1 0.47353709809248817 2 0.36542479215039936 
		3 0.047451544898251888 4 0.0026554887494512612
		5 0 0.11094803363084793 1 0.47358475170152814 2 0.36535993066668876 
		3 0.047452880377589171 4 0.0026544036233459235
		5 0 0.11096683144569397 1 0.47363757000996654 2 0.36528801421664775 
		3 0.047454383846549875 4 0.0026532004811418274
		5 0 0.11098562180995941 1 0.47369038242572131 2 0.36521608650104764 
		3 0.047455912034176984 4 0.0026519972290946336
		5 0 0.11100256443023682 1 0.47373803317684288 2 0.36515116690781269 
		3 0.047457323227384461 4 0.0026509122577232274
		5 0 0.11101600527763367 1 0.47377581615906744 2 0.36509966699742924 
		3 0.04745846003144253 4 0.0026500515344270595
		5 0 0.1110246405005455 1 0.47380008722292177 2 0.36506657323479641 
		3 0.04745920033543724 4 0.0026494987062990424
		5 0 0.11102762073278427 1 0.47380842746957441 2 0.36505518688623195 
		3 0.047459455809425996 4 0.0026493091019833279;
	setAttr ".wl[100:199].w"
		5 0 0.039532583206892014 1 0.35442055480168905 2 0.51279457502509307 
		3 0.090601797435808873 4 0.0026504895305170385
		5 0 0.039529584348201752 1 0.35439231876530697 2 0.51281432531168636 
		3 0.0906128889743055 4 0.002650882600499433
		5 0 0.039524909108877182 1 0.35434835744027526 2 0.51284506655897855 
		3 0.090630173343117168 4 0.0026514935487518317
		5 0 0.039519015699625015 1 0.35429297609028226 2 0.51288378092755638 
		3 0.090651964090999862 4 0.0026522631915365776
		5 0 0.039512481540441513 1 0.3542315661435958 2 0.51292671416527957 
		3 0.090676121797478818 4 0.0026531163532042255
		5 0 0.039505943655967712 1 0.35417015829592041 2 0.51296961724988832 
		3 0.090700310837826773 4 0.0026539699603967465
		5 0 0.039500046521425247 1 0.35411474630026557 2 0.51300831291891069 
		3 0.090722154347047806 4 0.0026547399123506617
		5 0 0.039495360106229782 1 0.35407081374538413 2 0.51303898372442835 
		3 0.090739491749231113 4 0.0026553506747265276
		5 0 0.039492353796958923 1 0.35404257552507284 2 0.51305870844848966 
		3 0.090750619654522857 4 0.0026557425749556252
		5 0 0.039491318166255951 1 0.35403284772415433 2 0.51306549651517908 
		3 0.090754459727209733 4 0.0026558778672008503
		5 0 0.039492353796958923 1 0.35404257482391249 2 0.51305870845090984 
		3 0.090750620349354411 4 0.0026557425788642491
		5 0 0.039495360106229782 1 0.35407078302770689 2 0.51303902340848773 
		3 0.090739483771520857 4 0.0026553496860547924
		5 0 0.03950003907084465 1 0.35411474613463684 2 0.51300833783170718 
		3 0.090722138767789673 4 0.0026547381950215707
		5 0 0.039505936205387115 1 0.35417015855851908 2 0.51296962822468162 
		3 0.090700308885974329 4 0.0026539681254378797
		5 0 0.039512474089860916 1 0.35423156667320976 2 0.51292673164053637 
		3 0.090676113483478246 4 0.0026531141129147191
		5 0 0.03951900452375412 1 0.35429297618836381 2 0.51288380603189287 
		3 0.090651952668634156 4 0.0026522605873551173
		5 0 0.039524897933006287 1 0.35434838710690936 2 0.51284506762107873 
		3 0.090630156790890759 4 0.0026514905481149708
		5 0 0.039529573172330856 1 0.35439234753419496 2 0.51281432126991722 
		3 0.090612878732770102 4 0.0026508792907869341
		5 0 0.039532575756311417 1 0.35442058332041304 2 0.51279456197167517 
		3 0.0906017918508326 4 0.0026504871007677795
		5 0 0.039533611387014389 1 0.35443031208683617 2 0.51278774590422005 
		3 0.090597977792143458 4 0.0026503528297860098
		5 0 0.01175446342676878 1 0.20977622178851701 2 0.56814234405001696 
		3 0.20484490873719263 4 0.005482061997504728
		5 0 0.011753545142710209 1 0.20975289717963508 2 0.56814203403086616 
		3 0.20486895887603196 4 0.0054825647707565615
		5 0 0.011752111837267876 1 0.20971659017594146 2 0.56814149124878732 
		3 0.2049064607844738 4 0.0054833459535295025
		5 0 0.011750303208827972 1 0.20967082664121722 2 0.56814088197347101 
		3 0.20495365937503046 4 0.0054843288014532693
		5 0 0.0117482990026474 1 0.20962010612380061 2 0.56814016611287255 
		3 0.20500600926300167 4 0.0054854194976777498
		5 0 0.011746293865144253 1 0.20956938576010337 2 0.56813944552470008 
		3 0.20505836500348498 4 0.0054865098465673098
		5 0 0.011744484305381775 1 0.2095236516921328 2 0.56813878123966921 
		3 0.2051055897205227 4 0.0054874930422934469
		5 0 0.011743047274649143 1 0.20948734510341305 2 0.56813825263307605 
		3 0.20514308082605995 4 0.0054882741628018228
		5 0 0.011742125265300274 1 0.20946403545992001 2 0.56813790056667146 
		3 0.20516716329052279 4 0.0054887754175855031
		5 0 0.011741806752979755 1 0.20945600990886146 2 0.56813778280724758 
		3 0.2051754526587842 4 0.0054889478721270027
		5 0 0.011742124333977699 1 0.20946403555373058 2 0.56813790122498231 
		3 0.20516716395977083 4 0.0054887749275385157
		5 0 0.011743046343326569 1 0.20948734502960692 2 0.56813824719258887 
		3 0.20514308856063604 4 0.0054882728738417253
		5 0 0.011744481511414051 1 0.20952363707078198 2 0.5681387926228566 
		3 0.20510559767254796 4 0.0054874911223993439
		5 0 0.011746290139853954 1 0.20956938585395909 2 0.56813944161920205 
		3 0.20505837532309515 4 0.005486507063889757
		5 0 0.011748294346034527 1 0.20962009151936353 2 0.56814017295770758 
		3 0.20500602590142653 4 0.0054854152754678946
		5 0 0.011750297620892525 1 0.20967081189405928 2 0.56814093439908964 
		3 0.20495363312535814 4 0.0054843229606004532
		5 0 0.011752104386687279 1 0.2097165904005395 2 0.56814153400936618 
		3 0.20490643217775278 4 0.0054833390256542576
		5 0 0.011753537692129612 1 0.209752897492228 2 0.5681420376434364 
		3 0.20486896839494223 4 0.0054825587772637033
		5 0 0.011754458770155907 1 0.20977622186189529 2 0.56814233966841943 
		3 0.20484492253210676 4 0.0054820571674226637
		5 0 0.011754778213799 1 0.20978426199071634 2 0.56814245293571952 
		3 0.2048366209099276 4 0.0054818859498375642
		5 0 0.0041938913054764271 1 0.098069442689700179 2 0.51628478539385048 
		3 0.3587630041844499 4 0.022688876426523008
		5 0 0.0041934121400117874 1 0.098055430574525607 2 0.51626772990258507 
		3 0.35879237001508152 4 0.022691057367796114
		5 0 0.0041926652193069458 1 0.098033613310761269 2 0.516241183315718 
		3 0.35883808744650081 4 0.022694450707713087
		5 0 0.0041917236521840096 1 0.098006116826370948 2 0.51620777137600349 
		3 0.35889566487100094 4 0.022698723274440523
		5 0 0.0041906796395778656 1 0.097975639596258116 2 0.51617066673051593 
		3 0.35895954775027911 4 0.022703466283369049
		5 0 0.0041896356269717216 1 0.097945177215360391 2 0.51613360705822464 
		3 0.35902337231745601 4 0.022708207781987177
		5 0 0.0041886935941874981 1 0.097917695650475936 2 0.51610014610452581 
		3 0.35908097779763992 4 0.022712486853170857
		5 0 0.0041879462078213692 1 0.09789589326518125 2 0.51607360022628668 
		3 0.35912667645249768 4 0.022715883848212947
		5 0 0.0041874665766954422 1 0.097881895983707751 2 0.51605654280219526 
		3 0.35915603060498325 4 0.022718064032418279
		5 0 0.0041873008012771606 1 0.097877071710688157 2 0.516050646639862 
		3 0.35916616595010675 4 0.022718814898065928
		5 0 0.0041874656453728676 1 0.097881896051413231 2 0.51605654318399707 
		3 0.35915603105883964 4 0.022718064060377168
		5 0 0.0041879452764987946 1 0.097895885852565562 2 0.51607360116444589 
		3 0.35912668522328572 4 0.022715882483204025
		5 0 0.0041886921972036362 1 0.097917688202070433 2 0.5161001999779723 
		3 0.35908094101646043 4 0.022712478606293215
		5 0 0.0041896332986652851 1 0.097945162348797563 2 0.5161336652365095 
		3 0.35902333939713471 4 0.022708199718892912
		5 0 0.0041906768456101418 1 0.097975632163725346 2 0.51617071304387185 
		3 0.35895952406300713 4 0.022703453883785481
		5 0 0.0041917203925549984 1 0.098006102003955542 2 0.51620777036656496 
		3 0.35889569387951481 4 0.022698713357409694
		5 0 0.0041926614940166473 1 0.098033591035658174 2 0.5162412391270419 
		3 0.35883807052009148 4 0.022694437823191783
		5 0 0.0041934088803827763 1 0.098055423172222045 2 0.51626772871851234 
		3 0.35879239129715246 4 0.022691047931730376
		5 0 0.0041938889771699905 1 0.098069435218192044 2 0.51628478123163568 
		3 0.35876302576739966 4 0.022688868805602561
		5 0 0.0041940547525882721 1 0.098074267030230963 2 0.51629062677188065 
		3 0.35875293000315095 4 0.022688121442149118
		5 0 0.0028456039726734161 1 0.040122685442316376 2 0.37831858813692149 
		3 0.49199066181844009 4 0.086722460629648584
		5 0 0.002845096169039607 1 0.040115793122642379 2 0.37828874065565171 
		3 0.49201793270968203 4 0.086732437342984206
		5 0 0.0028443045448511839 1 0.040105052282297875 2 0.37824224700250064 
		3 0.49206041241140941 4 0.086747983758940925
		5 0 0.0028433068655431271 1 0.040091524727786397 2 0.37818364152554557 
		3 0.49211394205133879 4 0.086767584829786193
		5 0 0.0028422011528164148 1 0.040076529279062974 2 0.37811869056460717 
		3 0.49217328276248368 4 0.086789296241029795
		5 0 0.0028410956729203463 1 0.040061541287741941 2 0.37805373985667545 
		3 0.49223259150584686 4 0.086811031676815392
		5 0 0.0028400984592735767 1 0.040048021170880563 2 0.37799513158520831 
		3 0.49228611200135691 4 0.086830636783280665
		5 0 0.0028393073007464409 1 0.040037295236306454 2 0.37794863433626263 
		3 0.49232855214380439 4 0.086846210982880159
		5 0 0.0028387992642819881 1 0.040030406638632526 2 0.37791878507975563 
		3 0.4923558082719236 4 0.086856200745406204
		5 0 0.0028386239428073168 1 0.040028033461034923 2 0.37790848154351842 
		3 0.49236521462060867 4 0.086859646432030757
		5 0 0.0028387987986207008 1 0.04003040665179021 2 0.37791875617210757 
		3 0.49235583382306158 4 0.086856204554420044
		5 0 0.0028393066022545099 1 0.040037291511081548 2 0.37794863430165954 
		3 0.49232857121681922 4 0.086846196368185274
		5 0 0.0028400975279510021 1 0.040048013721918123 2 0.37799516109862175 
		3 0.49228609454188338 4 0.086830633109625854
		5 0 0.0028410942759364843 1 0.040061530109695778 2 0.37805376990539052 
		3 0.4922325897216478 4 0.08681101598732939
		5 0 0.0028421995230019093 1 0.040076518099007342 2 0.3781187197051129 
		3 0.49217328257399251 4 0.086789280098885341
		5 0 0.0028433050028979778 1 0.040091509835275728 2 0.37818367103467665 
		3 0.49211395125568835 4 0.086767562871461409
		5 0 0.002844302449375391 1 0.040105041118010346 2 0.37824224610383289 
		3 0.49206042967445102 4 0.086747980654330425
		5 0 0.0028450940735638142 1 0.040115778222283828 2 0.37828874090611225 
		3 0.49201796080852322 4 0.086732425989516748
		5 0 0.0028456025756895542 1 0.04012267798867971 2 0.37831858723008255 
		3 0.49199067832621862 4 0.086722453879329656
		5 0 0.0028457783628255129 1 0.040125058631672768 2 0.37832886222550738 
		3 0.49198127939045533 4 0.086719021389538992
		5 0 0.0023787850514054298 1 0.017654413107430166 2 0.20893706296553752 
		3 0.53838607435647456 4 0.23264366451915228
		5 0 0.0023781857453286648 1 0.017650746492294766 2 0.20890516846189719 
		3 0.53839843111478691 4 0.23266746818569248
		5 0 0.0023772520944476128 1 0.017645033117028891 2 0.20885550358378271 
		3 0.53841771426316531 4 0.23270449694157549
		5 0 0.0023760756012052298 1 0.017637832230826257 2 0.20879293014761796 
		3 0.53844198658121689 4 0.23275117543913365
		5 0 0.0023747717496007681 1 0.017629854029452791 2 0.20872355339346485 
		3 0.5384689149707671 4 0.23280290585671454
		5 0 0.0023734681308269501 1 0.017621877694676918 2 0.2086541765534338 
		3 0.53849583729723349 4 0.23285464032382888
		5 0 0.0023722925689071417 1 0.017614682404416351 2 0.20859160247881431 
		3 0.53852008679863683 4 0.23290133574922534
		5 0 0.0023713598493486643 1 0.017608974641428955 2 0.2085419376251714 
		3 0.53853933272479937 4 0.23293839515925169
		5 0 0.0023707607761025429 1 0.017605309893954372 2 0.2085100573334355 
		3 0.53855170461994695 4 0.23296216737656067
		5 0 0.0023705544881522655 1 0.017604047918708829 2 0.20849906014926739 
		3 0.53855594506395088 4 0.23297039237992065
		5 0 0.0023707607761025429 1 0.017605309890561648 2 0.20851004229492986 
		3 0.53855171482105746 4 0.2329621722173485
		5 0 0.002371359383687377 1 0.017608972774493512 2 0.20854193707591775 
		3 0.53853937357386883 4 0.23293835719203251
		5 0 0.0023722918704152107 1 0.017614678682625853 2 0.20859158817325862 
		3 0.53852009171213333 4 0.23290134956156699
		5 0 0.0023734674323350191 1 0.017621870243208337 2 0.20865417700835279 
		3 0.5384958270885517 4 0.23285465822755219
		5 0 0.0023747705854475498 1 0.01762984657349281 2 0.20872353848599506 
		3 0.53846896133885536 4 0.23280288301620922
		5 0 0.0023760742042213678 1 0.017637824779077126 2 0.20879291508784109 
		3 0.5384420329778753 4 0.23275115295098517
		5 0 0.0023772506974637508 1 0.01764502193717106 2 0.20885550381961426 
		3 0.53841776639278227 4 0.23270445715296859
		5 0 0.0023781843483448029 1 0.017650739030986125 2 0.2089051680933478 
		3 0.53839846714401196 4 0.23266744138330925
		5 0 0.0023787841200828552 1 0.017654407518913416 2 0.20893706302992082 
		3 0.5383860633037163 4 0.2326436820273666
		5 0 0.0023789911065250635 1 0.017655675076484856 2 0.20894804484064561 
		3 0.53838181885661662 4 0.23263547011972779;
	setAttr ".wl[200:261].w"
		5 0 0.0016148242866620421 1 0.0090115229467486943 2 0.081518138414067479 
		3 0.48889108084105382 4 0.41896443351146795
		5 0 0.0016142420936375856 1 0.0090091231570846707 2 0.081494943228623079 
		3 0.48888838628577519 4 0.41899330523487938
		5 0 0.001613335101865232 1 0.0090053837328055962 2 0.081458828786776447 
		3 0.48888418312912529 4 0.41903826924942744
		5 0 0.0016121923690661788 1 0.0090006735896008393 2 0.081413324517966804 
		3 0.4888789156041996 4 0.41909489391916649
		5 0 0.0016109262360259891 1 0.008995452936061599 2 0.081362891058546744 
		3 0.48887303191605858 4 0.4191576978533072
		5 0 0.0016096604522317648 1 0.0089902341473193006 2 0.081312472382551612 
		3 0.48886720390044375 4 0.41922042911745366
		5 0 0.0016085192328318954 1 0.0089855277389923136 2 0.081266990705682843 
		3 0.48886189245187395 4 0.41927706987061897
		5 0 0.0016076136380434036 1 0.0089817929847646506 2 0.081230906309519138 
		3 0.48885770655763072 4 0.4193219805100421
		5 0 0.0016070323763415217 1 0.008979395997390692 2 0.081207741081474452 
		3 0.48885496302262416 4 0.41935086752216916
		5 0 0.0016068321419879794 1 0.0089785696739275202 2 0.081199758649199497 
		3 0.48885408025699739 4 0.41936075927788757
		5 0 0.0016070322599261999 1 0.0089793950672970389 2 0.081207733693475059 
		3 0.48885496737720557 4 0.41935087160209611
		5 0 0.00160761340521276 1 0.0089817920520871165 2 0.081230898753162223 
		3 0.48885770618264029 4 0.41932198960689765
		5 0 0.001608518767170608 1 0.0089855249439318424 2 0.081266983274111873 
		3 0.48886189079453468 4 0.41927708222025101
		5 0 0.0016096598701551557 1 0.0089902313541537892 2 0.081312457496972426 
		3 0.48886720723078581 4 0.41922044404793279
		5 0 0.0016109254211187363 1 0.0089954492109295316 2 0.08136287612605736 
		3 0.48887308872824625 4 0.41915766051364811
		5 0 0.0016121914377436042 1 0.0090006680026110709 2 0.081413309737671469 
		3 0.48887896977572742 4 0.41909486104624633
		5 0 0.0016133340541273355 1 0.0090053781453787521 2 0.081458813984184364 
		3 0.48888423767877742 4 0.41903823613753205
		5 0 0.001614241162315011 1 0.0090091175703824432 2 0.081494935994077991 
		3 0.48888838210841223 4 0.41899332316481225
		5 0 0.001614823704585433 1 0.0090115192216903717 2 0.081518123658937222 
		3 0.48889107982197277 4 0.4189644535928142
		5 0 0.0016150247538462281 1 0.0090123483398338988 2 0.081526120892982903 
		3 0.48889201466378535 4 0.41895449134955171
		5 0 0.00084884307580068707 1 0.0047919846556325439 2 0.02218533331380932 
		3 0.38262228696576805 4 0.58955155198898945
		5 0 0.00084840157069265842 1 0.0047904169434344803 2 0.02217316221592926 
		3 0.38260845649504366 4 0.58957956277489998
		5 0 0.00084771384717896581 1 0.0047879748138945095 2 0.022154205812008092 
		3 0.38258692992606169 4 0.58962317560085675
		5 0 0.00084684771718457341 1 0.0047848980582792687 2 0.022130330755344582 
		3 0.38255978624490256 4 0.58967813722428897
		5 0 0.00084588810568675399 1 0.004781488857899246 2 0.022103880057206458 
		3 0.38252967114871361 4 0.5897390718304939
		5 0 0.00084492901805788279 1 0.0047780801247787929 2 0.022077440560466489 
		3 0.38249958944304918 4 0.58979996085364761
		5 0 0.00084406434325501323 1 0.0047750066317224678 2 0.022053604613990554 
		3 0.38247242085044364 4 0.58985490356058834
		5 0 0.00084337848238646984 1 0.0047725682322209261 2 0.022034696687496368 
		3 0.3824508438237238 4 0.58989851277417249
		5 0 0.00084293825784698129 1 0.0047710028519697047 2 0.022022559137587883 
		3 0.38243699123767994 4 0.58992650851491546
		5 0 0.00084278651047497988 1 0.0047704632102742632 2 0.022018377432058398 
		3 0.38243224006664367 4 0.58993613278054868
		5 0 0.00084293819963932037 1 0.0047710023866833892 2 0.022022557283322176 
		3 0.38243699208536264 4 0.58992651004499252
		5 0 0.00084337824955582619 1 0.0047725673011635274 2 0.022034691094879624 
		3 0.38245084453218897 4 0.58989851882221211
		5 0 0.00084406405221670866 1 0.004775005235564342 2 0.022053599052823385 
		3 0.38247242229417172 4 0.58985490936522378
		5 0 0.0008449286688119173 1 0.0047780787280993593 2 0.02207743497467636 
		3 0.38249958942296697 4 0.58979996820544545
		5 0 0.00084588764002546668 1 0.004781486530219402 2 0.022103868901569797 
		3 0.38252970239948009 4 0.58973905452870523
		5 0 0.00084684719331562519 1 0.0047848957304743025 2 0.022130321454106247 
		3 0.38255978679752112 4 0.58967814882458269
		5 0 0.00084771326510235667 1 0.0047879720205341956 2 0.022154194661174471 
		3 0.38258693071945665 4 0.58962318933373226
		5 0 0.00084840098861604929 1 0.0047904146148723993 2 0.022173151034863225 
		3 0.3826084555825236 4 0.58957957777912473
		5 0 0.00084884272655472159 1 0.0047919837240239828 2 0.022185324001204196 
		3 0.3826222860878285 4 0.58955156346038862
		5 0 0.00084899505600333214 1 0.0047925242980637753 2 0.022189522466621963 
		3 0.38262706663278795 4 0.58954189154652303
		5 0 0.0004128031141590327 1 0.0027449812162514999 2 0.0052717152251895022 
		3 0.28297857792447867 4 0.70859192251992131
		5 0 0.00041256623808294535 1 0.0027441993875072746 2 0.0052668436530386468 
		3 0.28296560659759334 4 0.70861078412377776
		5 0 0.00041219731792807579 1 0.0027429814765128542 2 0.0052592577955570957 
		3 0.28294541060918121 4 0.70864015280082082
		5 0 0.00041173273348249495 1 0.0027414471562147206 2 0.0052497068444247045 
		3 0.28291994519915253 4 0.70867716806672554
		5 0 0.00041121806134469807 1 0.0027397470649729513 2 0.0052391293733318883 
		3 0.28289169807405906 4 0.70871820742629144
		5 0 0.00041070379666052759 1 0.0027380476728829572 2 0.0052285616780436712 
		3 0.28286345297288323 4 0.70875923387952955
		5 0 0.00041024020174518228 1 0.0027365149843781534 2 0.0052190377267611098 
		3 0.28283799217700439 4 0.70879621491011113
		5 0 0.0004098725039511919 1 0.0027352991713421237 2 0.0052114853879135347 
		3 0.28281774268613696 4 0.70882560025065611
		5 0 0.00040963653009384871 1 0.0027345187418572709 2 0.0052066394252071489 
		3 0.28280477700797907 4 0.70884442829486272
		5 0 0.00040955524309538305 1 0.0027342498288170122 2 0.0052049698139326056 
		3 0.28280030694571584 4 0.70885091816843915
		5 0 0.00040963650099001825 1 0.002734518509137781 2 0.0052066394265745629 
		3 0.28280477708279089 4 0.70884442848050677
		5 0 0.00040987241663970053 1 0.0027352987059019508 2 0.0052114844594979689 
		3 0.28281774290782113 4 0.70882560151013929
		5 0 0.00041024005622602999 1 0.0027365145186827406 2 0.0052190353979590098 
		3 0.28283799201192955 4 0.70879621801520265
		5 0 0.00041070362203754485 1 0.0027380467416258021 2 0.0052285588864414518 
		3 0.28286348257284327 4 0.70875920817705185
		5 0 0.00041121782851405442 1 0.0027397461337356896 2 0.0052391251851946364 
		3 0.28289172790255668 4 0.708718182949999
		5 0 0.00041173244244419038 1 0.0027414462250880322 2 0.0052497021918311987 
		3 0.28291994533521181 4 0.70867717380542483
		5 0 0.00041219702688977122 1 0.0027429803124482837 2 0.005259252678690542 
		3 0.28294541065657469 4 0.7086401593253967
		5 0 0.00041256594704464078 1 0.0027441984561971037 2 0.0052668380696012825 
		3 0.28296560653001557 4 0.70861079099714142
		5 0 0.00041280293953604996 1 0.0027449807504941995 2 0.0052717110364265329 
		3 0.28297857727966308 4 0.70859192799388016
		5 0 0.00041288469219580293 1 0.0027452505952277289 2 0.0052733918156441083 
		3 0.28298304824781689 4 0.70858542464911545
		5 0 0.69375276565551758 1 0.30105898973114126 2 0.0035501772676822829 
		3 0.0014264424995014526 4 0.00021162484615736677
		5 0 0.00033677250030450523 1 0.0023965649056969709 2 0.0031419346076713992 
		3 0.26250557636997413 4 0.73161915161635294;
	setAttr -s 5 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.89077980915845489 0.445999100540247 -0.087155802520071948 0
		 -0.44599911016210431 0.89479726776721125 0.020558291051179695 0 0.087155753282489742 0.020558499790222361 0.99598254139123221 0
		 -5.9468187153703598 -26.384851773053594 0.32994975481650285 1;
	setAttr ".pm[1]" -type "matrix" 0.89077982976014458 0.44599906158411257 -0.087155791308316244 0
		 -0.44599907128903188 0.89479728727191932 0.020558285437634664 0 0.087155741645682294 0.020558495978673059 0.9959825424882135 0
		 -3.8467831100615761 -26.384851566782487 0.32994969545072084 1;
	setAttr ".pm[2]" -type "matrix" 0.89077982780920573 0.44599906527318089 -0.087155792370047114 0
		 -0.44599907497023433 0.89479728542486248 0.02055828596922616 0 0.087155742747664716 0.020558496339619137 0.99598254238433159 0
		 -1.746819666475574 -26.384851516826171 0.32994968107306233 1;
	setAttr ".pm[3]" -type "matrix" 0.89077982585830517 0.4459990689621765 -0.087155793431757028 0
		 -0.4459990786513644 0.89479728357784183 0.020558286500807169 0 0.087155743849625378 0.020558496700558121 0.99598254228045158 0
		 0.35314358242501814 -26.384851581250949 0.32994969961481352 1;
	setAttr ".pm[4]" -type "matrix" 0.89077984645998076 0.44599903000606606 -0.087155782220009387 0
		 -0.44599903977831568 0.89479730308253669 0.020558280887266175 0 0.087155732212826256 0.020558492889012063 0.99598254337743231 0
		 2.4531791878916667 -26.384851634736012 0.32994971500806464 1;
	setAttr ".gm" -type "matrix" 0.44838957900319953 0.89383822972796967 6.7216833888529546e-05 0
		 -0.8904342826150653 0.44668855970127663 -0.087155716827946664 0 -0.077933136630881403 0.039019863002941899 0.99619469809174555 0
		 13.352407957920779 22.823230333403774 0.3660541195401642 1;
	setAttr -s 5 ".ma";
	setAttr -s 5 ".dpf[0:4]"  4 4 4 4 4;
	setAttr -s 5 ".lw";
	setAttr -s 5 ".lw";
	setAttr ".mi" 5;
	setAttr ".ucm" yes;
	setAttr -s 5 ".ifcl";
	setAttr -s 5 ".ifcl";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "16C8989C-456D-C761-CA34-AD915025F59D";
	setAttr -s 4 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "streatchy setup";
	setAttr ".tgi[0].vl" -type "double2" -658.48602591097892 -569.76783742902592 ;
	setAttr ".tgi[0].vh" -type "double2" 3967.2234972395449 1044.8666187650247 ;
	setAttr -s 24 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 288.86734008789062;
	setAttr ".tgi[0].ni[0].y" 230.19044494628906;
	setAttr ".tgi[0].ni[0].nvs" 18312;
	setAttr ".tgi[0].ni[1].x" 1878.8055419921875;
	setAttr ".tgi[0].ni[1].y" -208.94769287109375;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 1230.0201416015625;
	setAttr ".tgi[0].ni[2].y" 9.2839193344116211;
	setAttr ".tgi[0].ni[2].nvs" 18306;
	setAttr ".tgi[0].ni[3].x" 875.09051513671875;
	setAttr ".tgi[0].ni[3].y" 852.03826904296875;
	setAttr ".tgi[0].ni[3].nvs" 18314;
	setAttr ".tgi[0].ni[4].x" 157.687744140625;
	setAttr ".tgi[0].ni[4].y" 413.43856811523438;
	setAttr ".tgi[0].ni[4].nvs" 18313;
	setAttr ".tgi[0].ni[5].x" 315.28457641601562;
	setAttr ".tgi[0].ni[5].y" -126.45581817626953;
	setAttr ".tgi[0].ni[5].nvs" 18314;
	setAttr ".tgi[0].ni[6].x" 316.04629516601562;
	setAttr ".tgi[0].ni[6].y" 657.0107421875;
	setAttr ".tgi[0].ni[6].nvs" 18306;
	setAttr ".tgi[0].ni[7].x" 1997.185302734375;
	setAttr ".tgi[0].ni[7].y" 133.58085632324219;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 457.864501953125;
	setAttr ".tgi[0].ni[8].y" 221.02037048339844;
	setAttr ".tgi[0].ni[8].nvs" 18314;
	setAttr ".tgi[0].ni[9].x" 3045.315185546875;
	setAttr ".tgi[0].ni[9].y" -69.191459655761719;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 2596.7333984375;
	setAttr ".tgi[0].ni[10].y" 234.697509765625;
	setAttr ".tgi[0].ni[10].nvs" 18314;
	setAttr ".tgi[0].ni[11].x" -35.614044189453125;
	setAttr ".tgi[0].ni[11].y" 245.99201965332031;
	setAttr ".tgi[0].ni[11].nvs" 18313;
	setAttr ".tgi[0].ni[12].x" -149.97695922851562;
	setAttr ".tgi[0].ni[12].y" 834.14495849609375;
	setAttr ".tgi[0].ni[12].nvs" 18313;
	setAttr ".tgi[0].ni[13].x" 1226.91650390625;
	setAttr ".tgi[0].ni[13].y" 537.32672119140625;
	setAttr ".tgi[0].ni[13].nvs" 18314;
	setAttr ".tgi[0].ni[14].x" -167.26889038085938;
	setAttr ".tgi[0].ni[14].y" 430.208251953125;
	setAttr ".tgi[0].ni[14].nvs" 18312;
	setAttr ".tgi[0].ni[15].x" -472.85714721679688;
	setAttr ".tgi[0].ni[15].y" 380;
	setAttr ".tgi[0].ni[15].nvs" 18304;
	setAttr ".tgi[0].ni[16].x" 2599.625732421875;
	setAttr ".tgi[0].ni[16].y" -115.68100738525391;
	setAttr ".tgi[0].ni[16].nvs" 18314;
	setAttr ".tgi[0].ni[17].x" -472.85714721679688;
	setAttr ".tgi[0].ni[17].y" 250;
	setAttr ".tgi[0].ni[17].nvs" 18304;
	setAttr ".tgi[0].ni[18].x" -158.69671630859375;
	setAttr ".tgi[0].ni[18].y" 606.052490234375;
	setAttr ".tgi[0].ni[18].nvs" 18312;
	setAttr ".tgi[0].ni[19].x" 1523.4456787109375;
	setAttr ".tgi[0].ni[19].y" 559.107177734375;
	setAttr ".tgi[0].ni[19].nvs" 1931;
	setAttr ".tgi[0].ni[20].x" -32.344383239746094;
	setAttr ".tgi[0].ni[20].y" -49.265602111816406;
	setAttr ".tgi[0].ni[20].nvs" 18313;
	setAttr ".tgi[0].ni[21].x" -33.144790649414062;
	setAttr ".tgi[0].ni[21].y" 59.955604553222656;
	setAttr ".tgi[0].ni[21].nvs" 18312;
	setAttr ".tgi[0].ni[22].x" 181.88186645507812;
	setAttr ".tgi[0].ni[22].y" 857.52154541015625;
	setAttr ".tgi[0].ni[22].nvs" 18314;
	setAttr ".tgi[0].ni[23].x" 3010.765625;
	setAttr ".tgi[0].ni[23].y" 152.55543518066406;
	setAttr ".tgi[0].ni[23].nvs" 18304;
	setAttr ".tgi[1].tn" -type "string" "twist setup";
	setAttr ".tgi[1].vl" -type "double2" -1275.8975243559044 -901.58641913747385 ;
	setAttr ".tgi[1].vh" -type "double2" 2586.2778975822425 446.53141682206802 ;
	setAttr -s 12 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 962.3179931640625;
	setAttr ".tgi[1].ni[0].y" -277.96353149414062;
	setAttr ".tgi[1].ni[0].nvs" 18312;
	setAttr ".tgi[1].ni[1].x" 951.59320068359375;
	setAttr ".tgi[1].ni[1].y" -443.85076904296875;
	setAttr ".tgi[1].ni[1].nvs" 18312;
	setAttr ".tgi[1].ni[2].x" 382.7005615234375;
	setAttr ".tgi[1].ni[2].y" -297.95925903320312;
	setAttr ".tgi[1].ni[2].nvs" 18312;
	setAttr ".tgi[1].ni[3].x" 359.91708374023438;
	setAttr ".tgi[1].ni[3].y" 175.83334350585938;
	setAttr ".tgi[1].ni[3].nvs" 18312;
	setAttr ".tgi[1].ni[4].x" -298.79541015625;
	setAttr ".tgi[1].ni[4].y" -329.96365356445312;
	setAttr ".tgi[1].ni[4].nvs" 18312;
	setAttr ".tgi[1].ni[5].x" 374.6021728515625;
	setAttr ".tgi[1].ni[5].y" 68.960205078125;
	setAttr ".tgi[1].ni[5].nvs" 18312;
	setAttr ".tgi[1].ni[6].x" 961.99072265625;
	setAttr ".tgi[1].ni[6].y" -78.987762451171875;
	setAttr ".tgi[1].ni[6].nvs" 18312;
	setAttr ".tgi[1].ni[7].x" 363.29544067382812;
	setAttr ".tgi[1].ni[7].y" -625.47332763671875;
	setAttr ".tgi[1].ni[7].nvs" 18312;
	setAttr ".tgi[1].ni[8].x" 822.537109375;
	setAttr ".tgi[1].ni[8].y" 58.278133392333984;
	setAttr ".tgi[1].ni[8].nvs" 18312;
	setAttr ".tgi[1].ni[9].x" -301.93417358398438;
	setAttr ".tgi[1].ni[9].y" -179.94023132324219;
	setAttr ".tgi[1].ni[9].nvs" 18312;
	setAttr ".tgi[1].ni[10].x" 415.05364990234375;
	setAttr ".tgi[1].ni[10].y" -42.052936553955078;
	setAttr ".tgi[1].ni[10].nvs" 18312;
	setAttr ".tgi[1].ni[11].x" 993.20355224609375;
	setAttr ".tgi[1].ni[11].y" -191.33927917480469;
	setAttr ".tgi[1].ni[11].nvs" 18312;
	setAttr ".tgi[2].tn" -type "string" "bendy";
	setAttr ".tgi[2].vl" -type "double2" -980.90434874585355 -1053.4821573039949 ;
	setAttr ".tgi[2].vh" -type "double2" 1339.6619741269774 -243.47315781064825 ;
	setAttr -s 16 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -269.41912841796875;
	setAttr ".tgi[2].ni[0].y" -851.7523193359375;
	setAttr ".tgi[2].ni[0].nvs" 18312;
	setAttr ".tgi[2].ni[1].x" 306.43975830078125;
	setAttr ".tgi[2].ni[1].y" -446.17425537109375;
	setAttr ".tgi[2].ni[1].nvs" 18312;
	setAttr ".tgi[2].ni[2].x" 303.34375;
	setAttr ".tgi[2].ni[2].y" -957.016845703125;
	setAttr ".tgi[2].ni[2].nvs" 18312;
	setAttr ".tgi[2].ni[3].x" 306.43975830078125;
	setAttr ".tgi[2].ni[3].y" -650.51129150390625;
	setAttr ".tgi[2].ni[3].nvs" 18312;
	setAttr ".tgi[2].ni[4].x" 306.43975830078125;
	setAttr ".tgi[2].ni[4].y" -1068.473388671875;
	setAttr ".tgi[2].ni[4].nvs" 18312;
	setAttr ".tgi[2].ni[5].x" -222.9788818359375;
	setAttr ".tgi[2].ni[5].y" -545.24676513671875;
	setAttr ".tgi[2].ni[5].nvs" 18312;
	setAttr ".tgi[2].ni[6].x" 321.91983032226562;
	setAttr ".tgi[2].ni[6].y" -805.31207275390625;
	setAttr ".tgi[2].ni[6].nvs" 18312;
	setAttr ".tgi[2].ni[7].x" -213.69084167480469;
	setAttr ".tgi[2].ni[7].y" -631.9351806640625;
	setAttr ".tgi[2].ni[7].nvs" 18312;
	setAttr ".tgi[2].ni[8].x" -210.59481811523438;
	setAttr ".tgi[2].ni[8].y" -455.46231079101562;
	setAttr ".tgi[2].ni[8].nvs" 18312;
	setAttr ".tgi[2].ni[9].x" -888.6221923828125;
	setAttr ".tgi[2].ni[9].y" -752.6798095703125;
	setAttr ".tgi[2].ni[9].nvs" 18312;
	setAttr ".tgi[2].ni[10].x" -888.6221923828125;
	setAttr ".tgi[2].ni[10].y" -947.728759765625;
	setAttr ".tgi[2].ni[10].nvs" 18312;
	setAttr ".tgi[2].ni[11].x" -891.71820068359375;
	setAttr ".tgi[2].ni[11].y" -635.03118896484375;
	setAttr ".tgi[2].ni[11].nvs" 18312;
	setAttr ".tgi[2].ni[12].x" -222.9788818359375;
	setAttr ".tgi[2].ni[12].y" -706.23956298828125;
	setAttr ".tgi[2].ni[12].nvs" 18312;
	setAttr ".tgi[2].ni[13].x" -888.6221923828125;
	setAttr ".tgi[2].ni[13].y" -492.614501953125;
	setAttr ".tgi[2].ni[13].nvs" 18312;
	setAttr ".tgi[2].ni[14].x" -622.3648681640625;
	setAttr ".tgi[2].ni[14].y" -319.23764038085938;
	setAttr ".tgi[2].ni[14].nvs" 18312;
	setAttr ".tgi[2].ni[15].x" -913.39031982421875;
	setAttr ".tgi[2].ni[15].y" -839.36822509765625;
	setAttr ".tgi[2].ni[15].nvs" 18312;
	setAttr ".tgi[3].tn" -type "string" "Untitled_1";
	setAttr ".tgi[3].vl" -type "double2" -969.29655096844829 -484.16819227185965 ;
	setAttr ".tgi[3].vh" -type "double2" 1347.2551057848875 326.62488759180775 ;
	setAttr -s 13 ".tgi[3].ni";
	setAttr ".tgi[3].ni[0].x" -578.5714111328125;
	setAttr ".tgi[3].ni[0].y" -495.71429443359375;
	setAttr ".tgi[3].ni[0].nvs" 18304;
	setAttr ".tgi[3].ni[1].x" -728.5714111328125;
	setAttr ".tgi[3].ni[1].y" -55.714286804199219;
	setAttr ".tgi[3].ni[1].nvs" 18304;
	setAttr ".tgi[3].ni[2].x" -525.71429443359375;
	setAttr ".tgi[3].ni[2].y" 77.142860412597656;
	setAttr ".tgi[3].ni[2].nvs" 18304;
	setAttr ".tgi[3].ni[3].x" -842.85711669921875;
	setAttr ".tgi[3].ni[3].y" -342.85714721679688;
	setAttr ".tgi[3].ni[3].nvs" 18304;
	setAttr ".tgi[3].ni[4].x" -371.42855834960938;
	setAttr ".tgi[3].ni[4].y" 47.142856597900391;
	setAttr ".tgi[3].ni[4].nvs" 18304;
	setAttr ".tgi[3].ni[5].x" -842.85711669921875;
	setAttr ".tgi[3].ni[5].y" -612.85711669921875;
	setAttr ".tgi[3].ni[5].nvs" 18304;
	setAttr ".tgi[3].ni[6].x" -525.71429443359375;
	setAttr ".tgi[3].ni[6].y" -367.14285278320312;
	setAttr ".tgi[3].ni[6].nvs" 18304;
	setAttr ".tgi[3].ni[7].x" -842.85711669921875;
	setAttr ".tgi[3].ni[7].y" -241.42857360839844;
	setAttr ".tgi[3].ni[7].nvs" 18304;
	setAttr ".tgi[3].ni[8].x" -1512.857177734375;
	setAttr ".tgi[3].ni[8].y" -377.14285278320312;
	setAttr ".tgi[3].ni[8].nvs" 18304;
	setAttr ".tgi[3].ni[9].x" 88.571426391601562;
	setAttr ".tgi[3].ni[9].y" -161.42857360839844;
	setAttr ".tgi[3].ni[9].nvs" 18304;
	setAttr ".tgi[3].ni[10].x" -218.57142639160156;
	setAttr ".tgi[3].ni[10].y" -111.42857360839844;
	setAttr ".tgi[3].ni[10].nvs" 18305;
	setAttr ".tgi[3].ni[11].x" -1661.4285888671875;
	setAttr ".tgi[3].ni[11].y" -5.7142858505249023;
	setAttr ".tgi[3].ni[11].nvs" 18304;
	setAttr ".tgi[3].ni[12].x" 432.85714721679688;
	setAttr ".tgi[3].ni[12].y" -55.714286804199219;
	setAttr ".tgi[3].ni[12].nvs" 18304;
createNode displayLayer -n "AdvancedSkeleton_defaultLayer";
	rename -uid "F7AD204F-48D2-1F28-C545-AF9F6BD4BB6E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "AdvancedSkeleton_renderLayerManager";
	rename -uid "0476568B-44F9-4851-02EF-4C9282A7C2D1";
createNode objectSet -n "AllSet";
	rename -uid "00CB2384-451B-8D4F-5A86-8D9AF8594C3A";
	setAttr ".ihi" 0;
	setAttr -s 638 ".dnsm";
createNode objectSet -n "Sets";
	rename -uid "FD137D0A-4121-4FF5-3C84-23B2FE9F7E99";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "MainScaleMultiplyDivide";
	rename -uid "BFEB02D9-45A8-41DB-EF22-38923EA8BB5D";
	setAttr ".ihi" 0;
createNode setRange -n "PoleLeg_RSetRangeFollow";
	rename -uid "B01C43EF-449E-0C5B-3D40-97BB9CBA8EEE";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKArm_RSetRangeFollow";
	rename -uid "3B11C783-42AD-8B35-FE07-1D946E2D0FB1";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "PoleArm_RSetRangeFollow";
	rename -uid "040FBC35-400D-73BE-7499-AFBCC219E3FA";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKStiffSpine1SetRange_M";
	rename -uid "9927BB8D-474A-0708-AA94-51865CA391A2";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0.63205588 0.36794409 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKStiffSpine3SetRange_M";
	rename -uid "32C7D89D-422C-1E92-9433-2DBBA225CE39";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0.70122153 0.29877847 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode multiplyDivide -n "IKCurveInfoNormalizeSpine_M";
	rename -uid "7D7F9C4E-46AF-5784-DDBC-2EBECE112A76";
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 3.1818798 1 1 ;
createNode multiplyDivide -n "IKCurveInfoAllMultiplySpine_M";
	rename -uid "D953B1AC-4E2D-F614-0423-B8AC97A10ABF";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode multiplyDivide -n "SpineStretchyMultiplyDivide0_M";
	rename -uid "CB7CF8B7-4E09-CD70-8701-7085AA3382A4";
	setAttr ".ihi" 0;
createNode blendTwoAttr -n "SpineStretchyBlendTwo0_M";
	rename -uid "EB4E5013-48B8-B6D6-2BB8-659DF6EAE9E5";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SpineStretchyMultiplyDivide1_M";
	rename -uid "EA67E945-4B3E-192E-0093-D185D1549A2F";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 0.47460365 0 0 ;
createNode blendTwoAttr -n "SpineStretchyBlendTwo1_M";
	rename -uid "7F9BC38E-456A-2CE8-256F-8EBDC1B9959A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  0.47460365893468115 47460.3671875;
createNode multiplyDivide -n "SpineStretchyMultiplyDivide2_M";
	rename -uid "F78868B8-4F50-964D-AF95-99871C410507";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 0.47460365 0 0 ;
createNode blendTwoAttr -n "SpineStretchyBlendTwo2_M";
	rename -uid "2B470B5B-4042-4AED-4A25-E7AE695F3E7C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  0.4746036589346776 47460.3671875;
createNode multiplyDivide -n "SpineStretchyMultiplyDivide3_M";
	rename -uid "D4734FA2-4298-40EC-6EE0-8DB7CEA1E34A";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 0.58538508 0 0 ;
createNode blendTwoAttr -n "SpineStretchyBlendTwo3_M";
	rename -uid "93B1E520-406C-5BC1-013B-FAAB4473D898";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  0.5853850668364533 58538.5078125;
createNode multiplyDivide -n "SpineStretchyMultiplyDivide4_M";
	rename -uid "01BB1EB7-45D6-D58F-32F7-64987F728A1B";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 0.58538508 0 0 ;
createNode blendTwoAttr -n "SpineStretchyBlendTwo4_M";
	rename -uid "E7544452-4080-4DC3-6652-F08251866BF6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  0.58538506683645508 58538.5078125;
createNode multiplyDivide -n "SpineStretchyMultiplyDivide5_M";
	rename -uid "9E02761A-4B67-BDED-7D96-34B9543D08EF";
	setAttr ".ihi" 0;
	setAttr ".i1" -type "float3" 0.58538508 0 0 ;
createNode blendTwoAttr -n "SpineStretchyBlendTwo5_M";
	rename -uid "998A2210-4902-BEAB-3EBE-6C8CB747FF48";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  0.5853850668364533 58538.5078125;
createNode ramp -n "IKSpineRamp_M";
	rename -uid "660DA1FA-4DFA-15C4-D2A2-A0B5FEBC79A8";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[1].ep" 0.5;
	setAttr ".cel[1].ec" -type "float3" 0 0 0 ;
	setAttr ".cel[3].ep" 1;
	setAttr ".cel[3].ec" -type "float3" 0 0 0 ;
createNode setRange -n "IKSpineFlipUpAxisSetRange_M";
	rename -uid "F1F4D699-49C6-5CBF-F0F7-24B362ECAEF4";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 3 0 0 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode setRange -n "IKSpineFlipAxisSetRange_M";
	rename -uid "5DA6CC21-4D1C-41B2-47D8-648F756713AB";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 0 0 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode setRange -n "IKSpine3_MSetRangeFollow";
	rename -uid "6DC34680-4EC3-CFBE-8F8F-6EAD1F091886";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "PoleLeg_LSetRangeFollow";
	rename -uid "58678A32-4596-1297-FC15-32BA0315877A";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "IKArm_LSetRangeFollow";
	rename -uid "78164DB6-44B2-966E-0CDE-4BBC91B8F4D0";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode setRange -n "PoleArm_LSetRangeFollow";
	rename -uid "0DE42119-4AAC-DA8E-78C7-4FB0BF513ADD";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 0 1 0 ;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 10 0 ;
createNode condition -n "FKIKBlendLegCondition_R";
	rename -uid "991939E7-496B-2DE6-A3A8-34A04222765A";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendLegsetRange_R";
	rename -uid "2BE711A3-453F-B560-2C40-078C00B25865";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode condition -n "FKIKBlendArmCondition_R";
	rename -uid "C526B1CF-4E78-44ED-AB8B-6190895CB9A5";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendArmsetRange_R";
	rename -uid "F0F98191-4A81-7D1F-FAD1-30ABA5F2FD19";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode condition -n "FKIKBlendSpineCondition_M";
	rename -uid "3BA010BD-4B7C-0448-FAAF-8DBD2239597D";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendSpinesetRange_M";
	rename -uid "AD8EC76F-43F5-519B-A710-6B85776BFCAA";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode plusMinusAverage -n "FKIKBlendSpineHybridVisPMA_M";
	rename -uid "9552F83F-44BE-2D9A-166A-16AAFCDB39A6";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr -s 3 ".i1[1:2]"  1 -0.5;
createNode unitConversion -n "FKIKBlendSpineConditionUnitConversion_M";
	rename -uid "F4A8C7C6-4121-7D47-DCC4-99A74D53D3D6";
	setAttr ".cf" 0.1;
createNode condition -n "FKIKBlendLegCondition_L";
	rename -uid "945B0FFA-4AA9-D3F9-F6E3-D59BC2B82247";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendLegsetRange_L";
	rename -uid "75127183-428B-02E7-B99E-F7B0DF78C2B7";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode condition -n "FKIKBlendArmCondition_L";
	rename -uid "6AB9C823-4486-35F9-99AF-7E9703B79260";
	setAttr ".ihi" 0;
createNode setRange -n "FKIKBlendArmsetRange_L";
	rename -uid "F0B52245-4675-06DD-8DCA-E7892852794E";
	setAttr ".ihi" 0;
	setAttr ".n" -type "float3" 10 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode clamp -n "IKLegFootRockInnerPivotClamp_R";
	rename -uid "071C3B5C-421F-C64A-0565-549FB44C026A";
	setAttr ".ihi" 0;
	setAttr ".mn" -type "float3" -200 0 0 ;
createNode unitConversion -n "IKLegFootRockInnerPivotClamp_R_outputRUC";
	rename -uid "65650E4E-4317-B252-0A1B-669CE350AB6F";
	setAttr ".cf" 0.017453292519943295;
createNode clamp -n "IKLegFootRockOuterPivotClamp_R";
	rename -uid "040F31BE-4605-E4AF-632B-168A8929E795";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 200 0 0 ;
createNode unitConversion -n "IKLegFootRockOuterPivotClamp_R_outputRUC";
	rename -uid "1AA1E7C9-47EA-2C2E-8DC2-708934E83BD7";
	setAttr ".cf" 0.017453292519943295;
createNode clamp -n "IKRollHeelClampLeg_R";
	rename -uid "C07651C6-4A40-4FBD-E254-EFBF338E0B22";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKRollHeelClampLeg_R_outputRUC";
	rename -uid "4CB806DC-421A-1F72-6FB7-1BAC51DCD561";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "IKRollToesPMALeg_R";
	rename -uid "71BB9799-492D-90E2-1B12-6297DDFB350E";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  1 0;
createNode setRange -n "IKRollToesSetRange2Leg_R";
	rename -uid "A5B9E4B0-467C-4359-361D-7ABE9C803965";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
createNode setRange -n "IKRollToesSetRange1Leg_R";
	rename -uid "8AB1DD45-40FA-2FA6-CE01-09B7087C80B5";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "IKRollToesMPD1Leg_R";
	rename -uid "08EF5DBF-4ACC-BD55-475A-8FAC4AAC1D74";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKRollToesMPD2Leg_R";
	rename -uid "ABE80581-47B2-3881-7337-12B17E565EB9";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKRollToesMPD2Leg_R_outputXUC";
	rename -uid "9B69597B-4945-FB2F-79A9-4E95A60279F4";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "IKRollToesEndSetRangeLeg_R";
	rename -uid "E7E9A6C2-4FE0-CD6A-2D91-7086DDF11737";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "IKRollToesEndMPDLeg_R";
	rename -uid "AAA57F55-4C6C-07FA-0198-A8AF48AAF2F5";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKRollToesEndMPDLeg_R_outputXUC";
	rename -uid "D5638456-4A7D-69E8-82C7-E3A2A144C81C";
	setAttr ".cf" 0.017453292519943295;
createNode clamp -n "IKLegFootRockInnerPivotClamp_L";
	rename -uid "99ABBABC-4236-C977-8D2B-1787DC8206D5";
	setAttr ".ihi" 0;
	setAttr ".mn" -type "float3" -200 0 0 ;
createNode unitConversion -n "IKLegFootRockInnerPivotClamp_L_outputRUC";
	rename -uid "2A503FA2-412E-154A-9B80-BD9C45F74B0B";
	setAttr ".cf" -0.017453292519943295;
createNode clamp -n "IKLegFootRockOuterPivotClamp_L";
	rename -uid "D7476664-4A3C-D7C9-CB9A-B396ED7EA781";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 200 0 0 ;
createNode unitConversion -n "IKLegFootRockOuterPivotClamp_L_outputRUC";
	rename -uid "42883E38-4551-BA24-0033-F188CE675B85";
	setAttr ".cf" -0.017453292519943295;
createNode clamp -n "IKRollHeelClampLeg_L";
	rename -uid "86E2BA29-4919-86F1-2711-B1BDF7A0B009";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKRollHeelClampLeg_L_outputRUC";
	rename -uid "6CCA6548-4AF7-D248-8D09-C5AC1BE459EE";
	setAttr ".cf" 0.017453292519943295;
createNode plusMinusAverage -n "IKRollToesPMALeg_L";
	rename -uid "0358F14A-4F14-2F9E-AADC-9492572EB43F";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr -s 2 ".i1[0:1]"  1 0;
createNode setRange -n "IKRollToesSetRange2Leg_L";
	rename -uid "9F1E3581-4E96-4622-9021-3398104AA058";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
createNode setRange -n "IKRollToesSetRange1Leg_L";
	rename -uid "B06808E7-473C-7617-FF57-2C800D293716";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "IKRollToesMPD1Leg_L";
	rename -uid "C446330B-41A4-7056-78D6-8A9541ADC01D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKRollToesMPD2Leg_L";
	rename -uid "2295C843-4205-24F4-96B0-5D8B5DACE8FE";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKRollToesMPD2Leg_L_outputXUC";
	rename -uid "E7836CEF-4858-2764-572C-07842B65BDA1";
	setAttr ".cf" 0.017453292519943295;
createNode setRange -n "IKRollToesEndSetRangeLeg_L";
	rename -uid "3951FDDB-4113-75FA-22FE-D3BE3F9D7D8B";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "IKRollToesEndMPDLeg_L";
	rename -uid "9B81D1C4-4BBE-1EC1-CDF3-AF9AE73E6785";
	setAttr ".ihi" 0;
createNode unitConversion -n "IKRollToesEndMPDLeg_L_outputXUC";
	rename -uid "779D8C5C-4812-88F3-73F9-389494D99115";
	setAttr ".cf" 0.017453292519943295;
createNode blendColors -n "ScaleBlendToesEnd_R";
	rename -uid "C603BC01-4024-502C-72A0-23A571290C3E";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendToes_R";
	rename -uid "6F570276-4252-959C-6148-AFAE7EBC25C8";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendAnkle_R";
	rename -uid "7DB3A9C0-4BDE-A4BB-D678-66BE984D747E";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendKnee_R";
	rename -uid "0FA3619D-4070-EF51-FDCA-018BD00D5759";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHip_R";
	rename -uid "C56C3923-42B8-8B8D-B50A-6B8F10621542";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendWrist_R";
	rename -uid "6E07BAD6-49DC-BDD2-6733-F4AC0743C00F";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendElbow_R";
	rename -uid "6140F295-4EDE-6108-90B1-93BEA14ADD7C";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendShoulder_R";
	rename -uid "133F9CAB-434D-E0B1-A752-0DAB3F698BD8";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendChest_M";
	rename -uid "210B2CCC-42CC-B26A-E334-338551900AF7";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendSpine1Part2_M";
	rename -uid "C58FDFE3-43E7-B740-998E-6681B79F2E04";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendSpine1Part1_M";
	rename -uid "2F0D0A6A-4E61-CE47-8321-F0AEEF6CC387";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendSpine1_M";
	rename -uid "99B56BD8-4A80-FC8F-A0FA-B2B2FE8400EF";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendRootPart2_M";
	rename -uid "5BFD0ACF-4D0D-4946-96D7-F3A838AC1FE2";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendRootPart1_M";
	rename -uid "1025347F-472C-5016-036A-66801529E4F2";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendRoot_M";
	rename -uid "63BD6A5A-41C2-43E7-0A7A-BBAADB6FC2D6";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendToesEnd_L";
	rename -uid "68E9C496-4412-955F-1B59-908D93BF42B0";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
	setAttr ".c2" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendToes_L";
	rename -uid "AF2ACD73-4B7C-6CA8-70D3-E08B713EAE4B";
	setAttr ".ihi" 0;
	setAttr ".c1" -type "float3" 1 1 1 ;
createNode blendColors -n "ScaleBlendAnkle_L";
	rename -uid "DC5BDE93-4115-7E08-D01D-A1A78CEFAA49";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendKnee_L";
	rename -uid "FE72FBCE-484C-52AF-0D7D-C9B1A1F12B23";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendHip_L";
	rename -uid "E72D7DC6-4022-71DB-4B9F-9DBE3D76D525";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendWrist_L";
	rename -uid "A1B49E0E-4E08-2D3D-1C3F-0C93D04404AD";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendElbow_L";
	rename -uid "86278283-465E-47D8-440C-1DBDBD561ADD";
	setAttr ".ihi" 0;
createNode blendColors -n "ScaleBlendShoulder_L";
	rename -uid "7D9F04CD-4557-D75B-FD92-7AB58EB155AE";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleRootMultiplyDivide_M";
	rename -uid "DBB55966-44C5-0C9D-4060-66AAFB40F96E";
createNode multiplyDivide -n "IKScaleRootPart1MultiplyDivide_M";
	rename -uid "C24EA807-4B66-0518-44DF-AC8509FBF88C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleRootPart2MultiplyDivide_M";
	rename -uid "E98224B3-4C8D-3725-E70C-9D8055D8D110";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleSpine1MultiplyDivide_M";
	rename -uid "C0A12EB8-4358-DE0F-A9EB-E6B846A26163";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleSpine1Part1MultiplyDivide_M";
	rename -uid "5C9A349B-421D-9E44-C4B1-FBB3750256E7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleSpine1Part2MultiplyDivide_M";
	rename -uid "34BDADDC-4CC3-C607-ABCC-B1B33E2BE848";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKScaleChestMultiplyDivide_M";
	rename -uid "C9E017B7-4132-61EF-B6A8-C79BE5B6E98F";
createNode setRange -n "IKSetRangeStretchLeg_R";
	rename -uid "AE6F7632-4FFF-23CC-777A-028B6758C170";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopLeg_R";
	rename -uid "A8DA2F00-4D49-88FF-C8A7-2787179B0B21";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivLeg_R";
	rename -uid "1CC980C6-472B-D67A-4F50-4190E4BF1B62";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 8.8043041 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopLeg_R";
	rename -uid "3E5C818F-4C3E-7666-66EB-35AC93190B2D";
	setAttr ".ihi" 0;
createNode clamp -n "IKdistanceClampLeg_R";
	rename -uid "EF77F430-4326-51FE-4078-9AA3EB2773F9";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 8.8043041 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchLeg_R";
	rename -uid "E551DA22-4BDB-6295-09A6-5CAF31A15656";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKXKnee_R_IKmessureDiv_R";
	rename -uid "ED166E8E-4CBE-0D03-2351-90BAF194B7A8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXKnee_R_IKLenght_R";
	rename -uid "B4051D60-41CB-E777-F5EF-43A75CC643B5";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 4.9741244 1 1 ;
createNode multiplyDivide -n "IKXAnkle_R_IKmessureDiv_R";
	rename -uid "A16EFAD7-46F0-E1D9-1BB2-61B7749C9C6C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXAnkle_R_IKLenght_R";
	rename -uid "8A883D4B-428B-F221-31E3-9FB0EC62F1F0";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 3.8301795 1 1 ;
createNode plusMinusAverage -n "fatnessIKXHip_R";
	rename -uid "F8FBA400-4560-1846-F144-C883094AFE81";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode plusMinusAverage -n "fatnessIKXKnee_R";
	rename -uid "1001B2F5-4B38-A545-4B09-C2966DF9924A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode blendTwoAttr -n "PoleLockBlenderIKXKnee_R";
	rename -uid "F2542828-48A8-BA65-D55F-0E9BDFE7F0F8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXKnee_RUnitConversion_R";
	rename -uid "8BE6CAD7-4858-93ED-949D-AAA8358A62D4";
createNode multiplyDivide -n "PoleLockMainScalerIKXKnee_R";
	rename -uid "6026835A-4B06-2674-1944-CEB40E0911E1";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode blendTwoAttr -n "PoleLockBlenderIKXAnkle_R";
	rename -uid "1559787A-409A-98C9-B2EC-D695D3F2979B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R";
	rename -uid "8E626D4C-444D-CE86-B98B-3DB5A49A3347";
createNode multiplyDivide -n "PoleLockMainScalerIKXAnkle_R";
	rename -uid "9F97D706-4B38-CA4D-971C-3D81B3AD472D";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode setRange -n "IKSetRangeStretchArm_R";
	rename -uid "32AE90CD-4E26-ABBB-3B4C-0FB2E3137682";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopArm_R";
	rename -uid "81130446-46B5-1EE6-E532-4EB81127589F";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivArm_R";
	rename -uid "3528C651-41B9-8E55-4E32-17A7403A545E";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4.8968554 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopArm_R";
	rename -uid "BB6C1799-4B82-ACF1-3E1C-CE850297280D";
	setAttr ".ihi" 0;
createNode clamp -n "IKdistanceClampArm_R";
	rename -uid "CD526879-41D1-F04F-8947-FC80298D0777";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 4.8968554 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchArm_R";
	rename -uid "AFFE3D04-402E-2982-688B-CA9676389107";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKXElbow_R_IKmessureDiv_R";
	rename -uid "4F00CB35-4136-E57C-5CE3-2CA9F3A264B9";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXElbow_R_IKLenght_R";
	rename -uid "88BD55CF-4751-157F-7473-2FA89A6D5456";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 2.6142519 1 1 ;
createNode multiplyDivide -n "IKXWrist_R_IKmessureDiv_R";
	rename -uid "BBD7083F-4827-E512-F65F-DDB30166C238";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXWrist_R_IKLenght_R";
	rename -uid "46736E70-48DC-9DB5-CC42-AEBDAFBF7BDC";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 2.2826035 1 1 ;
createNode plusMinusAverage -n "fatnessIKXShoulder_R";
	rename -uid "EEFA8FB4-4E5F-332E-4687-7795E1AD12F0";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode plusMinusAverage -n "fatnessIKXElbow_R";
	rename -uid "A4928215-4381-3AA3-AFB6-A894932C04FA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode blendTwoAttr -n "PoleLockBlenderIKXElbow_R";
	rename -uid "FACC0BD4-4179-1C74-0CA6-01B2A45D9712";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXElbow_RUnitConversion_R";
	rename -uid "01432070-4A09-E81C-B314-1E9B64D83149";
createNode multiplyDivide -n "PoleLockMainScalerIKXElbow_R";
	rename -uid "89D9CB99-4CC3-3232-7CAF-9FAECBE567DA";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode blendTwoAttr -n "PoleLockBlenderIKXWrist_R";
	rename -uid "0764BA2D-4716-1CA2-C2CA-A983F841037D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXWrist_RUnitConversion_R";
	rename -uid "08B7EA02-4446-F6D4-F515-949BF5AE8B4A";
createNode multiplyDivide -n "PoleLockMainScalerIKXWrist_R";
	rename -uid "93220D55-4E48-FF67-F9D1-7386CED2524A";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode setRange -n "IKSetRangeStretchLeg_L";
	rename -uid "10FBC4EF-4746-59C8-41A7-B0A5F8AD4B05";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopLeg_L";
	rename -uid "8D3A807D-458F-502A-C358-71880262D319";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivLeg_L";
	rename -uid "6694A077-4913-5916-8510-2AA244C5F220";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 8.8043041 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopLeg_L";
	rename -uid "121A3F33-443A-C14A-9CBE-8280066C8804";
	setAttr ".ihi" 0;
createNode clamp -n "IKdistanceClampLeg_L";
	rename -uid "F1E51786-47CD-BEEF-DFA2-CB94B7C031DF";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 8.8043041 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchLeg_L";
	rename -uid "8471B420-4EB5-C694-A322-5798DB95C79B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKXKnee_L_IKmessureDiv_L";
	rename -uid "7C42EB8B-431A-482D-6B85-B3BB11588F59";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXKnee_L_IKLenght_L";
	rename -uid "84FAFA5A-47B8-C3E1-B29B-BCB7C088A6E8";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" -4.9741244 1 1 ;
createNode multiplyDivide -n "IKXAnkle_L_IKmessureDiv_L";
	rename -uid "700DF55C-4A69-79E6-FC77-A48CB82318B8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXAnkle_L_IKLenght_L";
	rename -uid "11E15337-4EBD-8187-3840-C3B079B2C908";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" -3.8301795 1 1 ;
createNode plusMinusAverage -n "fatnessIKXHip_L";
	rename -uid "DDEEDFC9-43E8-0DEA-4C06-9E9A7651DAC0";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode plusMinusAverage -n "fatnessIKXKnee_L";
	rename -uid "307B16D2-4DA4-6DE2-5786-D3A310E6AFAA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode blendTwoAttr -n "PoleLockBlenderIKXKnee_L";
	rename -uid "57FEDFA8-4A3F-4D28-1F6A-9BA16B058369";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXKnee_LUnitConversion_L";
	rename -uid "4DA3BD14-43B4-CBF1-C3EE-A2A27C3120F9";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXKnee_L";
	rename -uid "753D8D35-4F45-02F8-737B-8C9AD38FD5E4";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode blendTwoAttr -n "PoleLockBlenderIKXAnkle_L";
	rename -uid "4B2CEED3-40DC-1773-2617-B99C46D2733F";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L";
	rename -uid "BDD7D22A-4A30-1911-CA77-AFA095D0794C";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXAnkle_L";
	rename -uid "6FE17A63-4BAE-96F1-92AA-3ABF35E0A9DB";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode setRange -n "IKSetRangeStretchArm_L";
	rename -uid "A628C055-4E7E-5230-2675-1A8019A7D8C4";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode setRange -n "IKSetRangeAntiPopArm_L";
	rename -uid "B783C550-4434-2E90-7064-9BB91A79EED6";
	setAttr ".ihi" 0;
	setAttr ".m" -type "float3" 1 0 0 ;
	setAttr ".om" -type "float3" 10 0 0 ;
createNode multiplyDivide -n "IKmessureDivArm_L";
	rename -uid "85AAFDD6-42DE-D20D-F8C2-1899A25F5495";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i2" -type "float3" 4.8968554 1 1 ;
createNode blendTwoAttr -n "IKmessureBlendAntiPopArm_L";
	rename -uid "D4ED4A5B-4AF9-054E-DA9E-FDAA031CF586";
	setAttr ".ihi" 0;
createNode clamp -n "IKdistanceClampArm_L";
	rename -uid "10AC9AE2-4699-7B20-7C65-808FA075DBFC";
	setAttr ".ihi" 0;
	setAttr ".mx" -type "float3" 4.8968554 0 0 ;
createNode blendTwoAttr -n "IKmessureBlendStretchArm_L";
	rename -uid "411B477D-4578-24D1-E89B-9C94EAAAD9B7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode multiplyDivide -n "IKXElbow_L_IKmessureDiv_L";
	rename -uid "6A3C3DE7-40EA-F471-2F4A-1C95E6755B3C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXElbow_L_IKLenght_L";
	rename -uid "BFE2A8E4-4229-8E11-6EDA-C1959BE0FF9D";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" -2.6142519 1 1 ;
createNode multiplyDivide -n "IKXWrist_L_IKmessureDiv_L";
	rename -uid "F3715ABF-4B47-2CA9-D2B9-40BEF089E236";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "IKXWrist_L_IKLenght_L";
	rename -uid "0E612857-4833-499A-A0DC-ED80E1DEBC09";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" -2.2826035 1 1 ;
createNode plusMinusAverage -n "fatnessIKXShoulder_L";
	rename -uid "AF512464-4DF8-17AD-E023-E8A64631237B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode plusMinusAverage -n "fatnessIKXElbow_L";
	rename -uid "62073018-44FD-1E9E-2391-CAA638880F1A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[0:1]"  0 1;
createNode blendTwoAttr -n "PoleLockBlenderIKXElbow_L";
	rename -uid "652B65D0-4032-9357-A43E-52A240B942A5";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXElbow_LUnitConversion_L";
	rename -uid "E39D0244-4367-DF8E-90A7-1CA42AB228AC";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXElbow_L";
	rename -uid "ADDAFAF3-47BD-3C19-2D71-AC8EA7423E3D";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode blendTwoAttr -n "PoleLockBlenderIKXWrist_L";
	rename -uid "C4254106-4916-A390-87C2-868B4CDFABCA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i";
	setAttr -s 2 ".i";
createNode unitConversion -n "PoleDistanceSideReverseIKXWrist_LUnitConversion_L";
	rename -uid "E69B27B7-4E7E-19A9-ABC9-13BD2BAFEE7A";
	setAttr ".cf" -1;
createNode multiplyDivide -n "PoleLockMainScalerIKXWrist_L";
	rename -uid "F1C3A502-47C0-6FB9-A0FD-FDA11AED280E";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
createNode setRange -n "MainTwistFlipSetRange";
	rename -uid "9E309D15-4A2C-F3F1-07D4-85A765DE12D6";
	setAttr ".n" -type "float3" 1 1 0 ;
	setAttr ".m" -type "float3" 0 2 1 ;
	setAttr ".om" -type "float3" 1 1 1 ;
createNode multiplyDivide -n "FKAnkle_R360TwistDivideMultiplyDivide";
	rename -uid "E0C908D9-427C-A5DF-4E23-45B5EF48FB8B";
createNode multiplyDivide -n "FKAnkle_RAutoTwistMultiplyDivide";
	rename -uid "1BF475A6-4400-93EB-1755-86A47BCE0F34";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKAnkle_RExtraTwistPlusMinusAverage";
	rename -uid "1DE7C2A3-4E2A-7E06-424E-438CE2645FD6";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideAnkle_R";
	rename -uid "FA5EDC78-4BF2-A2A7-41B7-9597018A601A";
createNode plusMinusAverage -n "twistAdditionAnkle_R";
	rename -uid "4D2EDD5A-43DA-80D9-68E2-D290BA14BED2";
createNode unitConversion -n "twistAdditionAnkle_R_output1DUC";
	rename -uid "BF3A8FE7-44CB-1699-AD46-03A923D6BC55";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideAnklePart1_R";
	rename -uid "0D27F8F1-47B8-B7C3-7DEA-04B685D2C96C";
createNode plusMinusAverage -n "twistAdditionAnklePart1_R";
	rename -uid "E5049721-4C21-0F27-35CA-3082060A4DD6";
createNode unitConversion -n "twistAdditionAnklePart1_R_output1DUC";
	rename -uid "C58C1391-48CA-41F0-9804-B0B5C5192B05";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideAnklePart2_R";
	rename -uid "5D111E8B-42A7-95A0-E134-F39B52F7612B";
createNode plusMinusAverage -n "twistAdditionAnklePart2_R";
	rename -uid "48B33D75-456D-7F7F-90DB-5BBCE2C2CFBC";
createNode unitConversion -n "twistAdditionAnklePart2_R_output1DUC";
	rename -uid "A867FDEE-482E-31D4-A3AD-06A6172DE916";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKKnee_R360TwistDivideMultiplyDivide";
	rename -uid "71412C04-4F27-121A-D1EA-FDA20A2F5A94";
createNode multiplyDivide -n "FKKnee_RAutoTwistMultiplyDivide";
	rename -uid "2BBC3548-464F-23CF-3B5F-F580BD791E98";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKKnee_RExtraTwistPlusMinusAverage";
	rename -uid "EF135DDE-4B09-FFBF-EA7C-1EA85BE8BE6C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideKnee_R";
	rename -uid "219384D6-400A-A7E2-29EA-4A960AC76ED7";
createNode plusMinusAverage -n "twistAdditionKnee_R";
	rename -uid "B86CE73D-48D8-05D9-E26C-AF8F0B32DE69";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionKnee_R_output1DUC";
	rename -uid "3745D838-436E-E904-8ACC-C7A93243D68E";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideKneePart1_R";
	rename -uid "145999A4-4EEC-CBC3-BB89-12ABF285D0C4";
createNode plusMinusAverage -n "twistAdditionKneePart1_R";
	rename -uid "AAA580CA-49C5-7070-3749-8B86CA4021C3";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionKneePart1_R_output1DUC";
	rename -uid "2CDCE985-43B1-1E05-E592-F5B2F7C96446";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideKneePart2_R";
	rename -uid "6EED7398-4703-EDC3-BD1E-18BB74BBF2A4";
createNode plusMinusAverage -n "twistAdditionKneePart2_R";
	rename -uid "2B6C1915-4497-21AE-1863-C7A69A86A927";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionKneePart2_R_output1DUC";
	rename -uid "8F3A7784-435D-BDD9-24FD-4B8E52FED208";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKHip_R360TwistDivideMultiplyDivide";
	rename -uid "96634E40-4111-2491-F3E2-B2B0C0FBD943";
createNode multiplyDivide -n "FKHip_RAutoTwistMultiplyDivide";
	rename -uid "CFCF1B1C-4557-2048-E2ED-91829D1B278F";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKHip_RExtraTwistPlusMinusAverage";
	rename -uid "CE4879AF-4471-9F9A-B0E3-C3AE5A940726";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideHip_R";
	rename -uid "EA2D1BD1-4FA9-9408-1C4D-6A945911FA75";
createNode plusMinusAverage -n "twistAdditionHip_R";
	rename -uid "322EBCAF-4884-00A6-CDA0-D5968F3671A2";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionHip_R_output1DUC";
	rename -uid "B1C01E58-4794-FCE6-72A8-329641FA0B92";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideHipPart1_R";
	rename -uid "2A77A40C-4E61-1413-7CD4-E9A61B4793FF";
createNode plusMinusAverage -n "twistAdditionHipPart1_R";
	rename -uid "5D3E9FFC-48CB-DD4A-3B98-B2817FB5EDE8";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionHipPart1_R_output1DUC";
	rename -uid "EBE4B689-4319-8810-2C7E-338F4D197B7F";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideHipPart2_R";
	rename -uid "4B73FB85-40DA-2546-F815-04829F7ED260";
createNode plusMinusAverage -n "twistAdditionHipPart2_R";
	rename -uid "D8D8F902-4A6F-BBEF-E60E-C3951992AA81";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionHipPart2_R_output1DUC";
	rename -uid "1ED039F5-497C-49D8-E6F1-6F8824E4928C";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKHead_M360TwistDivideMultiplyDivide";
	rename -uid "C6DABAFE-4284-32CE-B791-D2A2727F771B";
createNode multiplyDivide -n "FKHead_MAutoTwistMultiplyDivide";
	rename -uid "FC36F047-40E3-9855-11B6-99865C528E78";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKHead_MExtraTwistPlusMinusAverage";
	rename -uid "09899E2F-47C2-5620-826C-31840C21E381";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideHead_M";
	rename -uid "EAC8CDF8-46F3-3388-FED7-F295CADCDA3D";
createNode plusMinusAverage -n "twistAdditionHead_M";
	rename -uid "78411113-4D5F-6A36-657E-01AC194DD9B5";
createNode unitConversion -n "twistAdditionHead_M_output1DUC";
	rename -uid "6F914CEE-47FD-47A1-129D-EC85551EB6F6";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideHeadPart1_M";
	rename -uid "03423CBF-460D-6F3F-2387-AEB3FFC897F9";
createNode plusMinusAverage -n "twistAdditionHeadPart1_M";
	rename -uid "5DD5693E-4E02-D60B-A9ED-CBB0055C4404";
createNode unitConversion -n "twistAdditionHeadPart1_M_output1DUC";
	rename -uid "87EFDE68-407E-ADD3-167C-E2B70814C959";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideHeadPart2_M";
	rename -uid "0FB94031-44C7-2FE1-10D6-D19A1CF92B1D";
createNode plusMinusAverage -n "twistAdditionHeadPart2_M";
	rename -uid "6E82E476-412F-A7ED-3932-1A87708B2FA9";
createNode unitConversion -n "twistAdditionHeadPart2_M_output1DUC";
	rename -uid "A12FD6D7-4C86-CBFB-117C-D8B5E41EAD3B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKNeck_M360TwistDivideMultiplyDivide";
	rename -uid "6BED9D71-41C6-D48D-293C-38B8F0449376";
createNode multiplyDivide -n "FKNeck_MAutoTwistMultiplyDivide";
	rename -uid "B5462539-4499-2B2F-B352-809EA646886F";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKNeck_MExtraTwistPlusMinusAverage";
	rename -uid "CF1A9722-4A0C-0DFD-3B12-AEB203D29CBD";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideNeck_M";
	rename -uid "2DFCD1FC-45BE-170B-C79E-5EA4A643B5E6";
createNode plusMinusAverage -n "twistAdditionNeck_M";
	rename -uid "C8913A9E-4985-7F73-700B-1F8E0F2AD487";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionNeck_M_output1DUC";
	rename -uid "030D8B61-4C18-3F8C-47AD-5095F05B1DAC";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideNeckPart1_M";
	rename -uid "7DBEB36A-4D5D-4947-B8B7-37822F1059A2";
createNode plusMinusAverage -n "twistAdditionNeckPart1_M";
	rename -uid "D26233D9-45D2-F735-1625-40AB744D8BD5";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionNeckPart1_M_output1DUC";
	rename -uid "9FEA2942-4E0F-EE9A-0507-2789A2367A82";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideNeckPart2_M";
	rename -uid "D62C6BAE-4BBF-86C3-99AF-2EADC9B56561";
createNode plusMinusAverage -n "twistAdditionNeckPart2_M";
	rename -uid "63A9A100-4186-5B2F-4B3B-BF81D69DC131";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionNeckPart2_M_output1DUC";
	rename -uid "CCFFEB19-465A-5F92-1B8D-B08401C3BB2B";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKWrist_R360TwistDivideMultiplyDivide";
	rename -uid "024514D0-4BA8-C3A3-716F-4D9462328E5C";
createNode multiplyDivide -n "FKWrist_RAutoTwistMultiplyDivide";
	rename -uid "BB270458-451E-B3B2-E01D-C1B99788326C";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKWrist_RExtraTwistPlusMinusAverage";
	rename -uid "9F34D28C-432D-DB7E-91CE-1E96E2A734A3";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideWrist_R";
	rename -uid "AA6AD1AE-42E9-6975-CCAE-2880DD7A62D3";
createNode plusMinusAverage -n "twistAdditionWrist_R";
	rename -uid "9497EE0F-4E06-6D5E-57B7-02B7F9BDB2A6";
createNode unitConversion -n "twistAdditionWrist_R_output1DUC";
	rename -uid "6BF73C68-4C7F-3BED-46BB-408FF814182C";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideWristPart1_R";
	rename -uid "4943306F-4521-9085-96BF-FFA6EA8517A8";
createNode plusMinusAverage -n "twistAdditionWristPart1_R";
	rename -uid "489320F3-46E2-9BFD-2449-4390BE7BA957";
createNode unitConversion -n "twistAdditionWristPart1_R_output1DUC";
	rename -uid "28680AE5-43F0-795B-52AF-A7B69924E7B4";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideWristPart2_R";
	rename -uid "E0E541D3-4530-61B4-2BDB-CCB15D7E913F";
createNode plusMinusAverage -n "twistAdditionWristPart2_R";
	rename -uid "36267101-47C9-FCB1-ECE5-3C8C006D4877";
createNode unitConversion -n "twistAdditionWristPart2_R_output1DUC";
	rename -uid "8B1D96FA-470D-7009-D71A-98AC32457EE8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKElbow_R360TwistDivideMultiplyDivide";
	rename -uid "AD48B543-420A-09CF-5775-A88A970A4D3A";
createNode multiplyDivide -n "FKElbow_RAutoTwistMultiplyDivide";
	rename -uid "F4B218D9-4CB3-2764-A9F8-3980D8FA08F4";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKElbow_RExtraTwistPlusMinusAverage";
	rename -uid "D7D6A9A6-4387-2609-FD89-F782C81D9D2B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideElbow_R";
	rename -uid "6FFA2117-45C0-CD6D-4C3F-E385E0C4279D";
createNode plusMinusAverage -n "twistAdditionElbow_R";
	rename -uid "BD5B0307-48C6-9D86-6B82-4D88893116EC";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionElbow_R_output1DUC";
	rename -uid "56931DED-49D8-8A90-FD85-889CF5E1B439";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideElbowPart1_R";
	rename -uid "7384FAE2-4A60-E851-1E83-59A438F1DCA5";
createNode plusMinusAverage -n "twistAdditionElbowPart1_R";
	rename -uid "16848B68-435A-64DA-EC7D-97A02D80B59B";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionElbowPart1_R_output1DUC";
	rename -uid "ECE36911-4827-04CD-3A77-F48D20112527";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideElbowPart2_R";
	rename -uid "FC395FFA-41FA-DEFA-D8F3-6187B88230DF";
createNode plusMinusAverage -n "twistAdditionElbowPart2_R";
	rename -uid "5D5F887D-4B6F-A1E8-1993-DABD8BCAE0C9";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionElbowPart2_R_output1DUC";
	rename -uid "E7925374-423F-E606-D07C-E3908D5CE2E1";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKShoulder_R360TwistDivideMultiplyDivide";
	rename -uid "D0F6B8EE-4D03-A0F7-AB73-3F98EE18E90D";
createNode multiplyDivide -n "FKShoulder_RAutoTwistMultiplyDivide";
	rename -uid "5EB4C306-4D14-0999-C5BC-EC8B9E1F632A";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKShoulder_RExtraTwistPlusMinusAverage";
	rename -uid "A2FE23CD-4002-C2B6-2066-55A8DD6FC159";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideShoulder_R";
	rename -uid "AF3ECFA8-4326-56E6-1905-ECB2642A1BE8";
createNode plusMinusAverage -n "twistAdditionShoulder_R";
	rename -uid "91756FCD-4B91-4DB5-3925-5E9587F208FC";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionShoulder_R_output1DUC";
	rename -uid "107F4D00-4631-1099-B8CD-EB8745B7CAC9";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideShoulderPart1_R";
	rename -uid "A7BC828C-4B4E-A072-12AD-7B89AD8F9805";
createNode plusMinusAverage -n "twistAdditionShoulderPart1_R";
	rename -uid "650A720F-49E7-CD83-7331-9F8EBAB489E9";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionShoulderPart1_R_output1DUC";
	rename -uid "81F92D36-4E28-EC7F-8D6E-159A0BED98A8";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideShoulderPart2_R";
	rename -uid "E2A0123E-4F27-8B8E-EF49-0F898AFCD8B0";
createNode plusMinusAverage -n "twistAdditionShoulderPart2_R";
	rename -uid "37857BB9-4491-6122-B1F4-07B7156CF8E1";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionShoulderPart2_R_output1DUC";
	rename -uid "56C5E4B4-414F-2778-046B-45889F51DE94";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKAnkle_L360TwistDivideMultiplyDivide";
	rename -uid "7C0D8A6C-4E19-7368-7D13-4BA179359114";
createNode multiplyDivide -n "FKAnkle_LAutoTwistMultiplyDivide";
	rename -uid "86A3BCC2-4D25-E537-DF55-71974BEAA392";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKAnkle_LExtraTwistPlusMinusAverage";
	rename -uid "48BAA6DF-41BB-B4E9-A0DE-5C9CF7230A9E";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideAnkle_L";
	rename -uid "8C27F9E8-43B3-BEAC-7203-A692F7598FC6";
createNode plusMinusAverage -n "twistAdditionAnkle_L";
	rename -uid "49239E03-423C-0C4B-89B4-5FAD4FC9F0F6";
createNode unitConversion -n "twistAdditionAnkle_L_output1DUC";
	rename -uid "03302D14-41B4-6621-971B-E886DBE978E4";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideAnklePart1_L";
	rename -uid "D4D7F98F-4A94-70A9-5619-7CB408F04E88";
createNode plusMinusAverage -n "twistAdditionAnklePart1_L";
	rename -uid "007EE320-4AC2-E5CA-80F1-9897025056EE";
createNode unitConversion -n "twistAdditionAnklePart1_L_output1DUC";
	rename -uid "5638C394-4629-9209-B590-7AAAB2933348";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideAnklePart2_L";
	rename -uid "07CEC6D9-4318-F98B-7741-F5A089D6D28B";
createNode plusMinusAverage -n "twistAdditionAnklePart2_L";
	rename -uid "7609FB0F-49A0-DE91-249B-3BA0316218FA";
createNode unitConversion -n "twistAdditionAnklePart2_L_output1DUC";
	rename -uid "AA2E7AF6-42A3-728D-F889-68A55F9B2573";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKKnee_L360TwistDivideMultiplyDivide";
	rename -uid "339FC14A-418B-6AC0-FFCE-FC9944B3B080";
createNode multiplyDivide -n "FKKnee_LAutoTwistMultiplyDivide";
	rename -uid "6FB2CD53-417C-ABF2-7961-EAA984B8AD6E";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKKnee_LExtraTwistPlusMinusAverage";
	rename -uid "6C7FE90B-4D7C-9CE4-BBE3-A3842A4CE159";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideKnee_L";
	rename -uid "A113CD85-41A7-533B-925A-48A7AB6E9914";
createNode plusMinusAverage -n "twistAdditionKnee_L";
	rename -uid "738A5708-46AA-D408-9ACC-55A5E3D00B9C";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionKnee_L_output1DUC";
	rename -uid "08397802-495D-8B67-D4E1-97868EEE6AB9";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideKneePart1_L";
	rename -uid "E5E22FCE-4123-3B3A-B348-70B40FA623CA";
createNode plusMinusAverage -n "twistAdditionKneePart1_L";
	rename -uid "294822CA-42D3-FC72-A292-B78D81289E6B";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionKneePart1_L_output1DUC";
	rename -uid "7B1A285F-4E42-A54C-B362-5C88067D0491";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideKneePart2_L";
	rename -uid "CB1E3BF8-4BEE-211A-53DB-B781C7FF76C5";
createNode plusMinusAverage -n "twistAdditionKneePart2_L";
	rename -uid "136B94B1-49F8-96CE-EC65-ADB4FFB07545";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionKneePart2_L_output1DUC";
	rename -uid "6DB2F254-453F-666B-A673-7181C90B05C6";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKHip_L360TwistDivideMultiplyDivide";
	rename -uid "0409173D-46E0-9852-0139-BCA70FCBCF08";
createNode multiplyDivide -n "FKHip_LAutoTwistMultiplyDivide";
	rename -uid "A8766836-4F89-1C9F-4B4B-5BAE23AC0B4C";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKHip_LExtraTwistPlusMinusAverage";
	rename -uid "D2F7FC61-4A66-EBC4-54C9-B28C9B1245B9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideHip_L";
	rename -uid "01B6E50A-4182-DE0E-5DF1-718E79763C65";
createNode plusMinusAverage -n "twistAdditionHip_L";
	rename -uid "8079C887-4FC1-B5B7-D806-D69DB43A5537";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionHip_L_output1DUC";
	rename -uid "B10D0818-4874-C4B5-15BB-6BAA3D0AB914";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideHipPart1_L";
	rename -uid "7E396E18-40AB-2CA5-BF5C-0C99592D69C5";
createNode plusMinusAverage -n "twistAdditionHipPart1_L";
	rename -uid "BE2AA17B-4675-7DB1-0729-51A06515F59E";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionHipPart1_L_output1DUC";
	rename -uid "0AD2C356-46F7-B1F6-6CF8-5F9CFA4A0E0A";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideHipPart2_L";
	rename -uid "8CDB0F5D-4843-D554-BCF3-4DA29F52F366";
createNode plusMinusAverage -n "twistAdditionHipPart2_L";
	rename -uid "FBEFB357-4F7C-50F7-D221-34B0D3FED188";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionHipPart2_L_output1DUC";
	rename -uid "4BFAEAD4-45AE-D568-A777-619F12C38664";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKWrist_L360TwistDivideMultiplyDivide";
	rename -uid "3975E3C4-427C-0071-5B7E-F2978800568B";
createNode multiplyDivide -n "FKWrist_LAutoTwistMultiplyDivide";
	rename -uid "5B71BEFB-4C29-6C2B-B8ED-4A8A9CE74486";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKWrist_LExtraTwistPlusMinusAverage";
	rename -uid "6EBD0FE4-431D-D49D-B353-78B9B4E6C1BC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideWrist_L";
	rename -uid "ECA07CBB-49C1-3E47-A7E2-A08945FAE2A7";
createNode plusMinusAverage -n "twistAdditionWrist_L";
	rename -uid "90B30D93-4835-480B-98FC-76823A4FA34A";
createNode unitConversion -n "twistAdditionWrist_L_output1DUC";
	rename -uid "9832B0D3-4134-0BE2-712A-96B612FB2F72";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideWristPart1_L";
	rename -uid "60C78723-4C50-EB37-5396-E585A2B986C0";
createNode plusMinusAverage -n "twistAdditionWristPart1_L";
	rename -uid "B6F4EB99-4F55-4B5E-DC53-B59547165D2B";
createNode unitConversion -n "twistAdditionWristPart1_L_output1DUC";
	rename -uid "708A91DF-4C6B-5113-CEE9-6D82C2C88D11";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideWristPart2_L";
	rename -uid "B12F6411-4C80-49DF-93FE-8395596AAA32";
createNode plusMinusAverage -n "twistAdditionWristPart2_L";
	rename -uid "490E1217-4D47-C49C-22FD-F5A696D08D49";
createNode unitConversion -n "twistAdditionWristPart2_L_output1DUC";
	rename -uid "439EDE02-40DC-EC9D-1631-75B38AB853B6";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKElbow_L360TwistDivideMultiplyDivide";
	rename -uid "8B403077-4D5A-C61D-7510-A2AF25D329D3";
createNode multiplyDivide -n "FKElbow_LAutoTwistMultiplyDivide";
	rename -uid "3610BB41-4D62-4480-D65B-0FA72FD98606";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKElbow_LExtraTwistPlusMinusAverage";
	rename -uid "294BB1B6-4302-0EBF-487D-299BFEFEE4FB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideElbow_L";
	rename -uid "9BE300B0-4E4D-70F2-13DA-9B9C771363FF";
createNode plusMinusAverage -n "twistAdditionElbow_L";
	rename -uid "2CB02B99-4764-55B3-3EE0-04A7DB3A8703";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionElbow_L_output1DUC";
	rename -uid "AAA1847A-4BB1-F1F0-E3F1-EA9F8FFDDBB4";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideElbowPart1_L";
	rename -uid "BACA6FAB-4B41-94E1-98B8-37ABEA5D17D6";
createNode plusMinusAverage -n "twistAdditionElbowPart1_L";
	rename -uid "AE9E58C3-4205-838E-B2AF-408DBAFC0300";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionElbowPart1_L_output1DUC";
	rename -uid "ED1A80B6-48DC-47C5-0F3B-5F8C41D30D97";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideElbowPart2_L";
	rename -uid "0EA9F9CD-4074-7B78-6F75-DABC7CD96A7F";
createNode plusMinusAverage -n "twistAdditionElbowPart2_L";
	rename -uid "65BE0DBE-48DF-C0A9-96B7-7A81B46E011E";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionElbowPart2_L_output1DUC";
	rename -uid "EAFCA855-43A5-44DC-E7A0-3A8D21DACCC2";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "FKShoulder_L360TwistDivideMultiplyDivide";
	rename -uid "8BBCF7E0-4902-2BA2-332C-AFAA458985C1";
createNode multiplyDivide -n "FKShoulder_LAutoTwistMultiplyDivide";
	rename -uid "61B04BB8-4C77-5B2C-B417-33B37EB09A14";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "FKShoulder_LExtraTwistPlusMinusAverage";
	rename -uid "255E1DFE-4910-ACDA-0410-549BA21DE3C2";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  0;
createNode multiplyDivide -n "twistAmountDivideShoulder_L";
	rename -uid "ABA0ABA9-4C60-5DED-C001-B482839ED525";
createNode plusMinusAverage -n "twistAdditionShoulder_L";
	rename -uid "444C17A5-4F31-1CE7-7A9C-63A644A74826";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionShoulder_L_output1DUC";
	rename -uid "01D5D02E-4862-434F-67FA-5E91DBD7AD18";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideShoulderPart1_L";
	rename -uid "81024EFE-479E-AA88-5BBF-6E9E3EC6E787";
createNode plusMinusAverage -n "twistAdditionShoulderPart1_L";
	rename -uid "E86BBDEC-4906-6B04-4246-D884A1F64308";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionShoulderPart1_L_output1DUC";
	rename -uid "DA89F590-41F9-FFB8-637F-84ADD98C7620";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "twistAmountDivideShoulderPart2_L";
	rename -uid "575C8A69-4B48-222B-752A-CE98B19EC417";
createNode plusMinusAverage -n "twistAdditionShoulderPart2_L";
	rename -uid "2B95133E-4339-EE10-45E1-A89F5C261D88";
	setAttr ".ihi" 0;
	setAttr -s 5 ".i1[1:4]"  0 0 0 0;
	setAttr -s 4 ".i1";
createNode unitConversion -n "twistAdditionShoulderPart2_L_output1DUC";
	rename -uid "DECBCA15-49F7-8E25-1586-29B7C50706E4";
	setAttr ".cf" 0.017453292519943295;
createNode multDoubleLinear -n "BendStretchyMDLKnee2_R";
	rename -uid "2050F6AC-4636-68C8-F7F3-948BF6C7A812";
	setAttr ".ihi" 0;
	setAttr ".i1" 1.9150897455847087;
createNode multiplyDivide -n "ScaleBlendMultKnee_R";
	rename -uid "701BF9A5-46C7-2791-A62C-049486D2EC2A";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultKnee1_0_R";
	rename -uid "1F73AE7B-4BDF-9568-F7BE-0C9FF6E86D69";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "BendTwistMultKnee2_0_R";
	rename -uid "EFCD83D1-41E6-BB56-7510-4F821869251C";
createNode plusMinusAverage -n "BendScaleAddKnee1_0_R";
	rename -uid "F0DF01CD-4EEE-82A5-0652-5BA36AD546BE";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultKnee1_0_R";
	rename -uid "508A1F96-4E35-EA2B-30B4-C698E4BA21D0";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultKnee2_0_R";
	rename -uid "AE34972C-4A59-8EAD-C981-F99FA1F60B4E";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAKnee_R";
	rename -uid "53EED337-4FCE-CC74-10C5-30B5ED4EE0A4";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBKnee_R";
	rename -uid "01877DDF-440D-64F1-4A94-A3A8E8EB17CE";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultKnee1_1_R";
	rename -uid "5415F5E5-48B5-10CD-7576-13AA57A8EF99";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "BendTwistMultKnee2_1_R";
	rename -uid "F93A5BED-4593-00FC-DA88-E491433BC1A6";
createNode plusMinusAverage -n "BendScaleAddKnee1_1_R";
	rename -uid "893FE8C2-4DEC-945A-3FA6-4AAE5514D441";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  0 0 0;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultKnee1_1_R";
	rename -uid "C343A6D7-4680-4D9E-B5DF-00B24A287DE4";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultKnee2_1_R";
	rename -uid "99383E28-43B1-7A63-843F-9D995DFB65DB";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultKneePart1_R";
	rename -uid "EFB1FB1F-4586-CE59-A47F-F78FB4D7DADA";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAKneePart1_R";
	rename -uid "250B2F89-4792-4529-41DE-59B5EE654BA4";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBKneePart1_R";
	rename -uid "9E0C8286-406F-AE7C-B75D-A69C268234D7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultKnee1_2_R";
	rename -uid "0EBD2134-4D64-4F60-6209-D28D38C86855";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultKnee2_2_R";
	rename -uid "A9337335-462D-83D9-81A2-7580ED7DD361";
createNode plusMinusAverage -n "BendScaleAddKnee1_2_R";
	rename -uid "EB415710-4127-A88A-3BEC-D78084BD709B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  1 1 1;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultKnee1_2_R";
	rename -uid "87C000DB-43DA-4A36-C7F7-4092B2EF140A";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultKnee2_2_R";
	rename -uid "8F83BE97-4D76-E2C0-A1CD-B2922675B7A2";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultKneePart2_R";
	rename -uid "A1BA2D0B-4308-4289-8002-C689F08D565A";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAKneePart2_R";
	rename -uid "F8F27EB3-4563-12E9-1759-31B099E4040A";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBKneePart2_R";
	rename -uid "9F1FB0B5-4E46-FE68-DE82-76ABAA5D1C1F";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLHip2_R";
	rename -uid "A9CE7432-4071-7751-560B-D58E85CA786D";
	setAttr ".ihi" 0;
	setAttr ".i1" 2.4870623179171529;
createNode multiplyDivide -n "ScaleBlendMultHip_R";
	rename -uid "AC27D907-431C-A3C9-E3FB-3F9290326F7C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultHip1_0_R";
	rename -uid "7B254BFA-4828-B1BF-1A4F-8C8E9FE63A87";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BendTwistMultHip2_0_R";
	rename -uid "66871F89-4584-BD37-6AA5-CE8A968ED8F8";
createNode plusMinusAverage -n "BendScaleAddHip1_0_R";
	rename -uid "3B9471FD-48F4-6387-F43A-6B9C334CDDB7";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultHip1_0_R";
	rename -uid "7C2415D7-43DD-7F1C-7E05-43AE3F6857A5";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultHip2_0_R";
	rename -uid "037D83BB-48E7-40AC-6DCE-6092169E44EC";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAHip_R";
	rename -uid "EAA71A43-49DB-1360-D3CE-DCAC5222BAF8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBHip_R";
	rename -uid "CDA16B80-4DED-6FAD-0B4B-318FECA3D7C1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultHip1_1_R";
	rename -uid "B77A0AC6-46FA-7A71-C831-54AD1690B1E1";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 0.5 ;
createNode multiplyDivide -n "BendTwistMultHip2_1_R";
	rename -uid "675E7C93-41E9-905B-034C-25ABB84E80CA";
createNode plusMinusAverage -n "BendScaleAddHip1_1_R";
	rename -uid "0D2B2468-42CD-04FB-2594-EE8BDB7DCD12";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultHip1_1_R";
	rename -uid "720143F8-4FD8-9785-8A82-2B9380051F32";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultHip2_1_R";
	rename -uid "C1A8842B-455E-9C86-EBB6-3D9A77C62236";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultKneeEnd_1_R";
	rename -uid "3E8CCF3A-48A1-2090-A164-78AFFE0128F2";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultHipPart1_R";
	rename -uid "F65051F7-46D3-C26D-231E-0FB71748D3C1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAHipPart1_R";
	rename -uid "40930DAD-4869-6465-8B5C-3D97EF3CD040";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBHipPart1_R";
	rename -uid "4661ACB5-425F-72A3-924C-29A9FA657784";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultHip1_2_R";
	rename -uid "EF3A27BA-4597-E698-164A-F09F9B475A61";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultHip2_2_R";
	rename -uid "D05AB0DA-44C3-C5AA-7CB1-1BAB1473FDD4";
createNode plusMinusAverage -n "BendScaleAddHip1_2_R";
	rename -uid "1BD89B95-4ECF-27A8-7586-A195B6D190AF";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultHip1_2_R";
	rename -uid "4D1F931D-45FB-0449-D324-9CA5B391EE9E";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultHip2_2_R";
	rename -uid "A9142E41-4209-1F70-9826-BEB91CDC997A";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultKneeEnd_2_R";
	rename -uid "2B262E72-43EE-116A-9B45-DF81EBD29298";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultHipPart2_R";
	rename -uid "650E8C61-4B2B-AEFA-1C7E-98BDC15D4001";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAHipPart2_R";
	rename -uid "69E6176A-4EF5-5D57-3456-73B259D74914";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBHipPart2_R";
	rename -uid "84F6E9D0-41D3-975E-93D6-40987CFC48A1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultNeck_M";
	rename -uid "B7EC0EB6-4844-015A-67C6-36A6B1B0706E";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultNeck1_0_M";
	rename -uid "D5554AEF-45E6-E393-7836-8383EFD53F9A";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "BendTwistMultNeck2_0_M";
	rename -uid "0CC4B91F-4D19-FF7A-E146-25AD21DDC643";
createNode plusMinusAverage -n "BendScaleAddNeck1_0_M";
	rename -uid "AE076430-4F60-0A4A-61A2-D198DDD37DE8";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultNeck1_0_M";
	rename -uid "AA598B7D-4D78-1F29-230F-429638394B61";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultNeck2_0_M";
	rename -uid "3BCE64D5-4F35-1E79-FD08-5E82A01B07C7";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultANeck_M";
	rename -uid "90896CE4-4E6C-C1A9-D42F-F0BA15D488B8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBNeck_M";
	rename -uid "332900C9-49A9-263F-2A5C-8487AF3E0E78";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultNeck1_1_M";
	rename -uid "61E3EF33-499B-0DE2-12F5-1D929CDD2978";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "BendTwistMultNeck2_1_M";
	rename -uid "F9B732A6-4DA3-F3D6-6378-04B3C93728B9";
createNode plusMinusAverage -n "BendScaleAddNeck1_1_M";
	rename -uid "6D5CDF54-415E-E718-05A0-78A1C2F1A4FB";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  0 0 0;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultNeck1_1_M";
	rename -uid "28048525-4CBF-3D30-A082-D38E97A5F569";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultNeck2_1_M";
	rename -uid "DFACF471-4E93-F483-0A18-0BA47E89B51C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultNeckPart1_M";
	rename -uid "3AD16C50-4896-69CA-6E50-D59DC88FB690";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultANeckPart1_M";
	rename -uid "6DB9577F-4057-250B-FEE6-3489AC6B8B03";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBNeckPart1_M";
	rename -uid "00CABC41-43F7-1CA6-0B7D-558F0B7D581F";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultNeck1_2_M";
	rename -uid "1C0BA770-4EE7-05C9-74D6-2598EC7601C0";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultNeck2_2_M";
	rename -uid "77649174-48FD-4E41-B878-70B7042155FD";
createNode plusMinusAverage -n "BendScaleAddNeck1_2_M";
	rename -uid "735C64B3-4DB7-AC3B-89E2-0A91B92CE2F2";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  1 1 1;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultNeck1_2_M";
	rename -uid "9625F406-43B5-01AE-F605-ED82FF7FA38F";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultNeck2_2_M";
	rename -uid "33BC8A46-4613-F772-B812-E88BC46C1EAC";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultNeckPart2_M";
	rename -uid "DBC100F5-467D-1792-0624-3184E7F40939";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultANeckPart2_M";
	rename -uid "F1205DC0-4F22-11A4-FCDD-FCAD866FDFC4";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBNeckPart2_M";
	rename -uid "1D9B4D8C-469F-1C6C-B448-E3B777F1DC55";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLElbow2_R";
	rename -uid "43EC8DE9-4986-3458-0A4A-789752543D4D";
	setAttr ".ihi" 0;
	setAttr ".i1" 1.1413017388128051;
createNode multiplyDivide -n "ScaleBlendMultElbow_R";
	rename -uid "4BC6F369-40DC-A23A-BCAD-3C8699D797AB";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultElbow1_0_R";
	rename -uid "E3EE5D6D-4EA0-939B-547E-ADB9FCF931D6";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "BendTwistMultElbow2_0_R";
	rename -uid "DA28749C-43C9-0DA4-3A8A-21BA9BA5E639";
createNode plusMinusAverage -n "BendScaleAddElbow1_0_R";
	rename -uid "2497A927-4A87-C0C6-A86B-39BE88CAA052";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultElbow1_0_R";
	rename -uid "79EA86AA-4C4A-231C-94B3-2BB17C749432";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultElbow2_0_R";
	rename -uid "1B0B32AC-4583-FA46-93B8-F587F1498C94";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAElbow_R";
	rename -uid "59A2E37B-4C4D-5A8F-635E-769EE3365BDA";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBElbow_R";
	rename -uid "B8591C95-4E56-F0C3-206F-039D85EEEA2C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultElbow1_1_R";
	rename -uid "10472CC3-44C1-851E-B299-62AA793AF086";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "BendTwistMultElbow2_1_R";
	rename -uid "F42CD934-42F5-CC73-5B0D-47908C9E50F0";
createNode plusMinusAverage -n "BendScaleAddElbow1_1_R";
	rename -uid "0284F23C-4356-2147-D40A-9FACB9C29538";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  0 0 0;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultElbow1_1_R";
	rename -uid "9773C9E6-49FE-D3D8-796F-659D974825F4";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultElbow2_1_R";
	rename -uid "360CF88E-447B-2C01-C46A-04B01CC5C378";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultElbowPart1_R";
	rename -uid "D7EDFFF9-42A0-6E49-8F54-2EBD1DB34C7B";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAElbowPart1_R";
	rename -uid "EF0173CD-415D-4C58-E7B6-3288A9C8C894";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBElbowPart1_R";
	rename -uid "6B4B240B-476D-63C4-4787-2D8DF16B707D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultElbow1_2_R";
	rename -uid "225F01E4-4AAC-6A0B-0766-F2B79A0A629E";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultElbow2_2_R";
	rename -uid "27360A43-4752-EC67-4339-278C3E433BAB";
createNode plusMinusAverage -n "BendScaleAddElbow1_2_R";
	rename -uid "D96718BB-462B-0AA1-DCC2-9C9DFA15C9C3";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  1 1 1;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultElbow1_2_R";
	rename -uid "86E732E5-4693-C534-87A5-BAAD9DCCC19C";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultElbow2_2_R";
	rename -uid "D6694C71-47A6-CD8E-E5F7-8EB2C59C17CF";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultElbowPart2_R";
	rename -uid "AAB880B4-4099-72FC-AC6B-209951C83AFB";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAElbowPart2_R";
	rename -uid "9B2AD2C3-46F7-AA57-35BB-C5B7B881AFA1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBElbowPart2_R";
	rename -uid "AE692360-4889-F5C1-C1AC-A2A35B2F280A";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLShoulder2_R";
	rename -uid "68527C23-4223-B936-E447-469DA1F52C28";
	setAttr ".ihi" 0;
	setAttr ".i1" 1.3071259522155703;
createNode multiplyDivide -n "ScaleBlendMultShoulder_R";
	rename -uid "6ED935CB-48BF-A1ED-0BDF-8694B76873DF";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultShoulder1_0_R";
	rename -uid "41BB081B-4125-DC8E-6B8C-1DACC6B62BF9";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BendTwistMultShoulder2_0_R";
	rename -uid "DD298F01-4AAF-2F3C-0732-46A79249C3F5";
createNode plusMinusAverage -n "BendScaleAddShoulder1_0_R";
	rename -uid "063509E4-424E-A901-4FA4-D4A044B7C4BB";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultShoulder1_0_R";
	rename -uid "018C1026-4E69-D5D3-8CC0-6783BDB6501C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultShoulder2_0_R";
	rename -uid "3DE666CD-4DE3-DE5F-744D-A8ABD2344CFD";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAShoulder_R";
	rename -uid "AF2CE1F8-4EE5-B700-21B8-7B9A9B7DD19F";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBShoulder_R";
	rename -uid "0371D47C-4109-C09C-223F-9782D6C632E4";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultShoulder1_1_R";
	rename -uid "CDC5F134-491D-E1A8-FC99-8ABF27D3C5DA";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 0.5 ;
createNode multiplyDivide -n "BendTwistMultShoulder2_1_R";
	rename -uid "C114631C-4BF7-224B-43E1-0A9BA8DDC59A";
createNode plusMinusAverage -n "BendScaleAddShoulder1_1_R";
	rename -uid "C4172328-4979-87E4-0243-80BB2335089C";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultShoulder1_1_R";
	rename -uid "902140C6-4768-4D1A-54F4-35816CB3E296";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultShoulder2_1_R";
	rename -uid "7F01D354-46A9-9536-F66E-9BA9AC10E559";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultElbowEnd_1_R";
	rename -uid "D203AD7D-4D05-446C-8E0C-CEAB2D73200C";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultShoulderPart1_R";
	rename -uid "2D7299B2-4549-A935-2958-8E815E3DA212";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAShoulderPart1_R";
	rename -uid "92250E3C-4698-E042-9A14-E393D4CBF31B";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBShoulderPart1_R";
	rename -uid "00B8E11C-421A-DFAB-6BA3-9DB5DED6ED4D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultShoulder1_2_R";
	rename -uid "86B06F81-4506-340A-A92E-60B7464BD237";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultShoulder2_2_R";
	rename -uid "D7E739DD-497B-2FF5-0D17-70A35EE4AE14";
createNode plusMinusAverage -n "BendScaleAddShoulder1_2_R";
	rename -uid "B2D54A07-4C70-B59A-3910-E48F7B5895F7";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultShoulder1_2_R";
	rename -uid "11342B60-4D2C-773D-9044-F7B91B8FBAF2";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultShoulder2_2_R";
	rename -uid "1B9C3478-4BBC-1E84-D96B-2B913E54AB7A";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultElbowEnd_2_R";
	rename -uid "7313DB28-45EF-391C-5110-1E96C8BD5374";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultShoulderPart2_R";
	rename -uid "16562AB0-4524-1C00-C566-A780F65FD881";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAShoulderPart2_R";
	rename -uid "2230F28C-4E0D-5BBC-75F2-BCAE00C911E8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBShoulderPart2_R";
	rename -uid "C48243A2-4382-47BD-A0B4-DFAD5EAE87FC";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLKnee2_L";
	rename -uid "D338AD64-4584-BC73-582E-C3B470DF02E4";
	setAttr ".ihi" 0;
	setAttr ".i1" -1.9150897455847105;
createNode multiplyDivide -n "ScaleBlendMultKnee_L";
	rename -uid "FEA382E4-4234-8C61-D653-319ECDFBA8E4";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultKnee1_0_L";
	rename -uid "F0A14E5A-402C-B5BC-7608-EAAE6E333223";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "BendTwistMultKnee2_0_L";
	rename -uid "40C47C19-443D-BCC3-D694-9BA21381CAA8";
createNode plusMinusAverage -n "BendScaleAddKnee1_0_L";
	rename -uid "2699EB01-4E3F-85DC-7324-059EB5252338";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultKnee1_0_L";
	rename -uid "85515B1A-4E6B-0556-D41C-43B7112B8E67";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultKnee2_0_L";
	rename -uid "69015A0D-4370-40BD-2D8A-0CAF0A1E32DA";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAKnee_L";
	rename -uid "16855E95-404E-7E3E-2912-E09366363D6E";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBKnee_L";
	rename -uid "178293B6-4500-5271-DCB8-17B4041CB84D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultKnee1_1_L";
	rename -uid "86A90151-4F75-6938-E44E-53922503A93B";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "BendTwistMultKnee2_1_L";
	rename -uid "A775312F-4F5C-3C3D-2374-83ACB7962E0D";
createNode plusMinusAverage -n "BendScaleAddKnee1_1_L";
	rename -uid "04CB4E38-4B3E-03AE-0134-77A684B50D4E";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  0 0 0;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultKnee1_1_L";
	rename -uid "59A336EA-46AD-2D83-3935-2496B17ACD89";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultKnee2_1_L";
	rename -uid "5C97D05B-400C-3FF0-035D-B787E218AF38";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultKneePart1_L";
	rename -uid "B9497CE0-453D-F44F-10C1-F4832B167469";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAKneePart1_L";
	rename -uid "2394B700-4217-8A25-24E9-AF864A974C1A";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBKneePart1_L";
	rename -uid "8C6B67DD-46C4-4A64-F2B4-80BF18CE3B61";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultKnee1_2_L";
	rename -uid "4E1EAF7C-42A7-40BA-4B79-78A7B5E843E7";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultKnee2_2_L";
	rename -uid "7BC012EE-4EE5-256E-9B63-FDB4340C96C3";
createNode plusMinusAverage -n "BendScaleAddKnee1_2_L";
	rename -uid "8C7A7F70-4321-136F-9EFE-5FB2607D448D";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  1 1 1;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultKnee1_2_L";
	rename -uid "701457B3-42E8-68EE-F929-15B6574D4823";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultKnee2_2_L";
	rename -uid "518022C4-4F4F-890A-E035-D580384AC09D";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultKneePart2_L";
	rename -uid "5C9D8E83-4CB3-2BA2-00DD-C4BE737882F5";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAKneePart2_L";
	rename -uid "1B731418-44DD-6FAB-AFA1-C6870E1296B7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBKneePart2_L";
	rename -uid "15FE94C2-415B-019B-A9F5-4E89E8DB1D58";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLHip2_L";
	rename -uid "4726D30B-4E7F-69E5-B7F2-46BE3506E4AD";
	setAttr ".ihi" 0;
	setAttr ".i1" -2.4870623180240132;
createNode multiplyDivide -n "ScaleBlendMultHip_L";
	rename -uid "20DC3CBF-4A42-1A4C-04FB-21A117F43602";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultHip1_0_L";
	rename -uid "7A47A36F-40BE-2150-3EC5-4CB70F61D828";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BendTwistMultHip2_0_L";
	rename -uid "DC626AB3-4BCD-2BCB-7EAB-FDBE805F1B73";
createNode plusMinusAverage -n "BendScaleAddHip1_0_L";
	rename -uid "51A6CFD2-42C7-291D-4410-D19C766EDC02";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultHip1_0_L";
	rename -uid "F0A89945-4B52-CC2B-3288-D58C30147D41";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultHip2_0_L";
	rename -uid "3BF8CA79-48E3-068B-A865-DA8C552B6D82";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAHip_L";
	rename -uid "85591E68-4A9C-987F-4254-4CBEF08278A8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBHip_L";
	rename -uid "FDBCED1A-474B-9CAC-39D4-4EB9BC251FD1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultHip1_1_L";
	rename -uid "CA6021F8-4FA3-E675-D7F4-86B42A95045C";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 0.5 ;
createNode multiplyDivide -n "BendTwistMultHip2_1_L";
	rename -uid "4E19E559-4EEB-C3DA-7055-E8836CFFE80E";
createNode plusMinusAverage -n "BendScaleAddHip1_1_L";
	rename -uid "00426D47-4B6A-A8EB-C4AF-54AC0D4BDA84";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultHip1_1_L";
	rename -uid "6717267D-41D1-7989-7999-F486B5ADD9A9";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultHip2_1_L";
	rename -uid "7F13758B-4A95-1D93-3CAE-D4AC3FE8B183";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultKneeEnd_1_L";
	rename -uid "2ADDEDE7-4F3C-EB93-96E6-07829A2C9071";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultHipPart1_L";
	rename -uid "004146EA-42D2-CA9B-75ED-36869D9A5241";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAHipPart1_L";
	rename -uid "3DFE499E-4A5C-5AB6-7FBA-F797BBA7CEF8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBHipPart1_L";
	rename -uid "69DF3FFC-48F9-11D9-3E00-ECB1E0158B3E";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultHip1_2_L";
	rename -uid "02F0B561-4E7A-7AAB-03FF-9387C66B0FDD";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultHip2_2_L";
	rename -uid "76A9F990-4CDD-2D48-6104-709674D7FB42";
createNode plusMinusAverage -n "BendScaleAddHip1_2_L";
	rename -uid "538AEA9B-49AA-2D65-DCA0-FE9FDEE0363C";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultHip1_2_L";
	rename -uid "6023E31F-4ABB-0A45-678F-65902D4A8179";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultHip2_2_L";
	rename -uid "8DA585B5-4C5C-6EBF-43F8-D698010440EE";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultKneeEnd_2_L";
	rename -uid "BACAF884-47D7-EEF0-8D50-ACBFC64F955D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultHipPart2_L";
	rename -uid "BFDF2EDB-4D1B-619F-E733-7A941DA21388";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAHipPart2_L";
	rename -uid "87758475-48AF-7A0B-8224-C180138A137D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBHipPart2_L";
	rename -uid "14E6524E-4FD3-13F2-4C87-0E9B479EFF23";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLElbow2_L";
	rename -uid "EF777207-41C0-11ED-3A5A-9DB81BFC5239";
	setAttr ".ihi" 0;
	setAttr ".i1" -1.1413017388128068;
createNode multiplyDivide -n "ScaleBlendMultElbow_L";
	rename -uid "82711C6B-4BC6-64E4-6011-848E72E59388";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultElbow1_0_L";
	rename -uid "C0980CCD-402F-131A-7B9C-0EBFD6955B16";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 1 ;
createNode multiplyDivide -n "BendTwistMultElbow2_0_L";
	rename -uid "A099AA34-4FD2-8712-1FDA-C1AB324066A5";
createNode plusMinusAverage -n "BendScaleAddElbow1_0_L";
	rename -uid "F866B275-43EB-9FB1-C0DA-E1ACF6E8C92C";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultElbow1_0_L";
	rename -uid "178438F8-498E-D776-3015-8F86829C969C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultElbow2_0_L";
	rename -uid "9D686365-439E-815B-9604-B4B0E27235BF";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAElbow_L";
	rename -uid "6F45303D-4E8D-F945-3ABF-6DAC39A3E834";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBElbow_L";
	rename -uid "6E347079-4E82-DCF6-90FA-8DB7F0D65B00";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultElbow1_1_L";
	rename -uid "991801A1-418E-4B8F-7C18-3C93759191BF";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode multiplyDivide -n "BendTwistMultElbow2_1_L";
	rename -uid "7FB2432B-4C83-848E-8A5C-1D988E563269";
createNode plusMinusAverage -n "BendScaleAddElbow1_1_L";
	rename -uid "AA3E5BF8-4212-CC18-A136-68AD771C8170";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  0 0 0;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultElbow1_1_L";
	rename -uid "8EE80E9F-4373-DCC4-0C4B-6FBB99B051AF";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultElbow2_1_L";
	rename -uid "822F61BF-475B-0ED3-C7F0-6DA53D37AB31";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultElbowPart1_L";
	rename -uid "ABBCA0F5-4802-3E25-0CB9-A1AD92766DA1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAElbowPart1_L";
	rename -uid "84409A84-4630-E918-9C04-0F863A388C62";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBElbowPart1_L";
	rename -uid "79DF0113-4958-DADF-637D-889B04BD5774";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultElbow1_2_L";
	rename -uid "93B082D0-49E3-678F-B642-4E854EEC821F";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultElbow2_2_L";
	rename -uid "E01B3013-4D08-487D-86B0-04B13F4DC374";
createNode plusMinusAverage -n "BendScaleAddElbow1_2_L";
	rename -uid "EEB111D9-46ED-227A-E005-0FABC92EF07D";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3[2]" -type "float3"  1 1 1;
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultElbow1_2_L";
	rename -uid "43C29D83-47CC-7E01-FBCA-37BB67000AA9";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultElbow2_2_L";
	rename -uid "358703AC-4B59-9143-F81A-C4AA6A9C1C41";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultElbowPart2_L";
	rename -uid "BC8F57CC-4C25-407D-8BFA-8EA61F10640E";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAElbowPart2_L";
	rename -uid "E477EE5A-40D3-C5A2-E067-68BA792FC57D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBElbowPart2_L";
	rename -uid "A0C11F52-4ECA-C172-F324-1DACF18890DE";
	setAttr ".ihi" 0;
createNode multDoubleLinear -n "BendStretchyMDLShoulder2_L";
	rename -uid "50F46E99-4034-75FD-0243-B092E2A117E7";
	setAttr ".ihi" 0;
	setAttr ".i1" -1.3071259520340788;
createNode multiplyDivide -n "ScaleBlendMultShoulder_L";
	rename -uid "0407788A-4C46-9D86-DEB6-10822A140123";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultShoulder1_0_L";
	rename -uid "CEA7FAB1-41B5-12FC-067C-6D8E60A60A49";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "BendTwistMultShoulder2_0_L";
	rename -uid "8168A972-4348-7D64-4B78-8092A6763AB5";
createNode plusMinusAverage -n "BendScaleAddShoulder1_0_L";
	rename -uid "5214D1F0-4A96-9CA6-1134-B6A948859073";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i3";
	setAttr -s 2 ".i3";
createNode multiplyDivide -n "BendScaleMultShoulder1_0_L";
	rename -uid "4F95BA7A-4EBC-1A12-EACF-F184B8D6978D";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultShoulder2_0_L";
	rename -uid "E6A91784-4B3D-A7D7-CB1B-8BB1F24E5480";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultAShoulder_L";
	rename -uid "1379391A-4283-6106-BFFF-BF8412B07209";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBShoulder_L";
	rename -uid "8A07FCAB-4FF9-9A6B-989D-AB89BEAE0973";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultShoulder1_1_L";
	rename -uid "ED49CDC4-4453-13A1-08E6-2DBFA2F30E5F";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0.5 1 0.5 ;
createNode multiplyDivide -n "BendTwistMultShoulder2_1_L";
	rename -uid "FB97FD70-4C84-2BB4-C937-6CA0CFD2B1B2";
createNode plusMinusAverage -n "BendScaleAddShoulder1_1_L";
	rename -uid "0E5E8BAD-4DED-2FFD-DC37-C28798140C1E";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultShoulder1_1_L";
	rename -uid "62C69FA0-4F41-7513-5945-5FAFAEBCE5BA";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultShoulder2_1_L";
	rename -uid "6D1FCDBF-45DF-583C-1D24-B9A795FB25F4";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendScaleMultElbowEnd_1_L";
	rename -uid "A1DCC0D3-4E0B-7925-DF48-C5AE41EE3FD9";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "ScaleBlendMultShoulderPart1_L";
	rename -uid "75E0D937-4DED-9303-C443-53A5A0F038AF";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAShoulderPart1_L";
	rename -uid "CB69D4B3-474E-7692-F55B-8CA37358E8FE";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBShoulderPart1_L";
	rename -uid "7C293A60-4F92-7EED-42DC-FF9A7CC5E4B1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "BendTwistMultShoulder1_2_L";
	rename -uid "A19E5684-428E-4737-469B-5B961913E778";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 1 ;
createNode multiplyDivide -n "BendTwistMultShoulder2_2_L";
	rename -uid "9175206C-48BA-D36D-9A4E-A38316E9B971";
createNode plusMinusAverage -n "BendScaleAddShoulder1_2_L";
	rename -uid "8D653DEF-4B63-A7D4-E87A-B4A8AE65F360";
	setAttr ".ihi" 0;
	setAttr -s 3 ".i3";
	setAttr -s 3 ".i3";
createNode multiplyDivide -n "BendScaleMultShoulder1_2_L";
	rename -uid "A7EF4061-4E41-A7CD-2516-92931671D6CF";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultShoulder2_2_L";
	rename -uid "E5541C8A-40DC-4F61-905B-A1866FA91F36";
	setAttr ".ihi" 0;
	setAttr ".i2" -type "float3" 0 0 0 ;
createNode multiplyDivide -n "BendScaleMultElbowEnd_2_L";
	rename -uid "63891ADF-4541-F20E-436E-358F7BE8476A";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultShoulderPart2_L";
	rename -uid "572B4A0E-4478-2955-332E-1DAFA5B629B7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultAShoulderPart2_L";
	rename -uid "A1B1A5F5-45CD-1FBD-7544-1F931B3DDD17";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "ScaleBlendMultBShoulderPart2_L";
	rename -uid "501B3C68-4B99-763B-B01D-C888A4FFD646";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "multWithStretchyLeg_R";
	rename -uid "CD052868-4162-E5BC-68C0-41B21D03B3BB";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverLeg_R";
	rename -uid "627C0F7C-4C0C-3015-F9D6-79A8439E5F07";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowLeg_R";
	rename -uid "910F2DE1-47AA-E3B7-1C50-02A66E1E6E59";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendLegBlendTwo_R";
	rename -uid "CE1674F9-4C4A-A01D-9A17-8285DF0B2647";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "multWithStretchyArm_R";
	rename -uid "F35969AD-4B3B-53CE-2160-7D98F16A2440";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverArm_R";
	rename -uid "E16A0BFC-4CF3-213F-0B41-9995F47779FE";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowArm_R";
	rename -uid "2090ADC9-41E6-7998-4EAA-218970FB9B09";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendArmBlendTwo_R";
	rename -uid "6385035D-43D9-722B-FDC4-739AA60D4D5D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "multWithStretchySpine_M";
	rename -uid "8C265BED-49DC-DC89-03A7-6EB030549A97";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverSpine_M";
	rename -uid "42403758-4D15-5A81-3E81-FAB755034411";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowSpine_M";
	rename -uid "F47502DD-4465-D138-58C5-1993468D0904";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendSpineBlendTwo_M";
	rename -uid "B1AB43D1-4D78-45D5-E52D-45BE8E2A8E1D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 0.0031622776295989752;
createNode multiplyDivide -n "multWithStretchyLeg_L";
	rename -uid "A3CA31FC-4DE3-5415-225A-FA8582B97CF8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverLeg_L";
	rename -uid "C9F1CE63-4446-6757-8966-DEBEA0DEFEB5";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowLeg_L";
	rename -uid "E89DA952-4925-D818-5770-FDB994DB918E";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendLegBlendTwo_L";
	rename -uid "76044FB5-49AD-6616-FB87-00AAD1F51F82";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode multiplyDivide -n "multWithStretchyArm_L";
	rename -uid "0A05A21D-4BB3-8F6F-A48E-CDAD48F793E7";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "volume1OverArm_L";
	rename -uid "71B2E4F3-4E83-D032-DBBE-A7A316947FB0";
	setAttr ".ihi" 0;
	setAttr ".op" 2;
	setAttr ".i1" -type "float3" 1 0 0 ;
createNode multiplyDivide -n "volumepowArm_L";
	rename -uid "FC4C0934-4238-0A8A-E394-01AA1BEC6D1E";
	setAttr ".ihi" 0;
	setAttr ".op" 3;
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode blendTwoAttr -n "volumeBlendArmBlendTwo_L";
	rename -uid "EF90B499-4BA2-061D-59FF-5FA5A1CED282";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i[0:1]"  1 1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerASpine1Part2_M";
	rename -uid "8F30AD6E-41D1-DEFF-E8EB-5289EBF8A87A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBSpine1Part2_M";
	rename -uid "C15EE703-4F4B-B865-2E0A-7189E3376DC0";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerSpine1Part2_M";
	rename -uid "C3A36196-4FBA-C44C-1958-008B7A13B086";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerASpine1Part1_M";
	rename -uid "D6524E5B-4A59-FF00-EB65-558468F6C0B9";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBSpine1Part1_M";
	rename -uid "24E74779-46D4-5834-A501-E4B1D68C728B";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerSpine1Part1_M";
	rename -uid "186583D4-4E63-67BC-E65C-D2B947076206";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerASpine1_M";
	rename -uid "08B58DA7-413A-83AE-B79D-BE9597C5CA3A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBSpine1_M";
	rename -uid "4BB6BA91-4E31-B0C3-5F69-93BDD197DE94";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerSpine1_M";
	rename -uid "CF1F5789-4204-F5C2-6CE3-F8A0E61188EA";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerARootPart2_M";
	rename -uid "6831ED0C-464B-2F9F-1536-F391488CA3BA";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBRootPart2_M";
	rename -uid "3DA827EA-4807-2A39-137E-84A075E9305D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerRootPart2_M";
	rename -uid "28FCF98A-4BC3-C4B7-D594-4BBF6879191D";
	setAttr ".ihi" 0;
createNode plusMinusAverage -n "IKSquashDistributNormalizerARootPart1_M";
	rename -uid "D9FCBBCB-494E-7AD9-A2C7-9A83691C42E2";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  -1;
createNode plusMinusAverage -n "IKSquashDistributNormalizerBRootPart1_M";
	rename -uid "6C042558-42BF-BF77-FEF8-F6882D2D4C29";
	setAttr ".ihi" 0;
	setAttr -s 2 ".i1[1]"  1;
createNode multiplyDivide -n "IKSquashDistributerRootPart1_M";
	rename -uid "AA8635D9-4594-DD9D-0E4E-2F9907BCC78E";
	setAttr ".ihi" 0;
createNode dagPose -n "buildPose";
	rename -uid "92C4892F-4D6F-DF11-6CF7-F7A5C1303D2A";
	addAttr -ci true -sn "udAttr" -ln "udAttr" -dt "string";
	setAttr ".udAttr" -type "string" (
		"xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 Main;xform -os -t 0 0 0 -ro 0 0 0 RootExtraX_M;xform -os -t 0 0 0 -ro 0 0 0 RootX_M;setAttr RootX_M.CenterBtwFeet 0;xform -os -t 0 0 0 -ro 0 0 0 FKExtraAnkle_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraToes_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKToes_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKAnkle_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraKnee_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKKnee_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroKneePart1_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraKneePart2_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraKnee_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroKnee_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraKneePart1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraHip_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraHip_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHip_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroKneePart2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroHipPart2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroHip_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraHipPart1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroHipPart1_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraHipPart2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraEye_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKJaw_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKEye_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraJaw_M;xform -os -t 0 -0 0 -ro 0 0 0 FKExtraHead_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHead_M;setAttr FKHead_M.Global 0;xform -os -t 0 0 0 -ro 0 0 0 FKExtraNeck_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKNeck_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroNeck_M;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraNeckPart1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroNeckPart1_M;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraNeck_M;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraNeckPart2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroNeckPart2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraPinkyFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKPinkyFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKPinkyFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKPinkyFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraPinkyFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraPinkyFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRingFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRingFinger3_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRingFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRingFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRingFinger2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRingFinger1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraCup_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKCup_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWrist_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraElbow_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWrist_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroElbow_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKElbow_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraElbow_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroElbowPart2_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraElbowPart2_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraElbowPart1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroElbowPart1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraShoulder_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKShoulder_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraShoulder_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroShoulder_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroShoulderPart1_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraScapula_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraShoulderPart2_R;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraShoulderPart1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroShoulderPart2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKScapula_R;xform -os -t 0 0 0 -ro 0 0 0 FKExtraChest_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKChest_M;xform -os -t 0 0 0 -ro 0 0 0 FKSpine1Part2_M;xform -os -t 0 0 -0 -ro 0 0 0 FKExtraSpine1Part2_M;xform -os -t 0 0 0 -ro 0 0 0 FKSpine1Part1_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraSpine1Part1_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 FKRootPart2_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRootPart2_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRootPart1_M;xform -os -t 0 0 0 -ro 0 0 0 FKRootPart1_M;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRoot_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKToes_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraToes_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKAnkle_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraKnee_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraAnkle_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKKnee_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroKneePart1_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraKneePart1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroKneePart2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraHip_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraKnee_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroKnee_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraKneePart2_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraHip_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroHip_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKHip_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroHipPart2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKEye_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroHipPart1_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraHipPart1_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraHipPart2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraEye_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraMiddleFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKMiddleFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKThumbFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraThumbFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraIndexFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKIndexFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraPinkyFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKPinkyFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraPinkyFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKPinkyFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKPinkyFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraPinkyFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRingFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRingFinger3_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRingFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKRingFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRingFinger2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraRingFinger1_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraWrist_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKCup_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraCup_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKWrist_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKElbow_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraElbow_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroElbow_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraElbow_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraElbowPart1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroElbowPart1_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraElbowPart2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroElbowPart2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraShoulder_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKShoulder_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraShoulder_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraShoulderPart1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroShoulder_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroShoulderPart2_L;xform -os -t 0 0 0 -ro 0 0 0 FKExtraScapula_L;xform -os -t 0 0 0 -ro 0 0 0 MicroExtraShoulderPart2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 FKScapula_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 MicroShoulderPart1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 AimEye_M;setAttr AimEye_M.follow 10;xform -os -t 0 0 0 AimEye_R;xform -os -t 0 0 0 AimEye_L;xform -os -t 0 0 0 PoleLeg_R;setAttr PoleLeg_R.follow 10;setAttr PoleLeg_R.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKExtraLeg_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKLeg_R;setAttr IKLeg_R.swivel 0;setAttr IKLeg_R.roll 0;setAttr IKLeg_R.rollStartAngle 30;setAttr IKLeg_R.rollEndAngle 60;setAttr IKLeg_R.rock 0;setAttr IKLeg_R.stretchy 0;setAttr IKLeg_R.antiPop 0;setAttr IKLeg_R.Lenght1 1;setAttr IKLeg_R.Lenght2 1;setAttr IKLeg_R.Fatness1 0;setAttr IKLeg_R.Fatness2 0;setAttr IKLeg_R.volume 10;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraLeg_R;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraArm_R;xform -os -t 0 0 0 -ro 0 0 0 IKExtraArm_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKArm_R;setAttr IKArm_R.follow 0;setAttr IKArm_R.stretchy 0;setAttr IKArm_R.antiPop 0;setAttr IKArm_R.Lenght1 1;setAttr IKArm_R.Lenght2 1;setAttr IKArm_R.Fatness1 0;setAttr IKArm_R.Fatness2 0;setAttr IKArm_R.volume 10;xform -os -t 0 0 0 PoleArm_R;setAttr PoleArm_R.follow 0;setAttr PoleArm_R.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSpine1_M;xform -os -t 0 0 0 IKcvSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSpine2_M;xform -os -t 0 0 0 IKcvSpine3_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSpine4_M;xform -os -t 0 0 0 IKcvSpine2_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSpine3_M;xform -os -t 0 0 0 IKcvSpine4_M;xform -os -t 0 0 0 IKcvSpine5_M;xform -os -t 0 0 0 -ro 0 0 0 IKcvExtraSpine5_M;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpine1_M;setAttr IKSpine1_M.stiff 5;setAttr IKSpine1_M.FixedOrient 0;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpine2_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpine2_M;setAttr IKSpine2_M.followEnd 5;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKSpine3_M;setAttr IKSpine3_M.stiff 5;setAttr IKSpine3_M.stretchy 10;setAttr IKSpine3_M.follow 10;setAttr IKSpine3_M.volume 10;xform -os -t 0 0 0 -ro 0 0 0 IKExtraSpine3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSpine2_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSpine2_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSpine1_M;xform -os -t 0 0 0 -ro 0 0 0 IKhybridExtraSpine3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKhybridSpine3_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKLeg_L;setAttr IKLeg_L.swivel 0;setAttr IKLeg_L.roll 0;setAttr IKLeg_L.rollStartAngle 30;setAttr IKLeg_L.rollEndAngle 60;setAttr IKLeg_L.rock 0;setAttr IKLeg_L.stretchy 0;setAttr IKLeg_L.antiPop 0;setAttr IKLeg_L.Lenght1 1;setAttr IKLeg_L.Lenght2 1;setAttr IKLeg_L.Fatness1 0;setAttr IKLeg_L.Fatness2 0;setAttr IKLeg_L.volume 10;xform -os -t 0 0 0 PoleLeg_L;setAttr PoleLeg_L.follow 10;setAttr PoleLeg_L.lock 0;xform -os -t 0 0 0 -ro 0 0 0 IKExtraLeg_L;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraLeg_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKArm_L;setAttr IKArm_L.follow 0;setAttr IKArm_L.stretchy 0;setAttr IKArm_L.antiPop 0;setAttr IKArm_L.Lenght1 1;setAttr IKArm_L.Lenght2 1;setAttr IKArm_L.Fatness1 0;setAttr IKArm_L.Fatness2 0;setAttr IKArm_L.volume 10;xform -os -t 0 0 0 -ro 0 0 0 PoleExtraArm_L;xform -os -t 0 0 0 -ro 0 0 0 IKExtraArm_L;xform -os -t 0 0 0 PoleArm_L;setAttr PoleArm_L.follow 0;setAttr PoleArm_L.lock 0;setAttr FKIKLeg_R.FKIKBlend 10;setAttr FKIKLeg_R.FKVis 1;setAttr FKIKLeg_R.IKVis 1;setAttr FKIKArm_R.FKIKBlend 0;setAttr FKIKArm_R.FKVis 1;setAttr FKIKArm_R.IKVis 1;setAttr FKIKSpine_M.FKIKBlend 0;setAttr FKIKSpine_M.FKVis 1;setAttr FKIKSpine_M.IKVis 1;setAttr FKIKLeg_L.FKIKBlend 10;setAttr FKIKLeg_L.FKVis 1;setAttr FKIKLeg_L.IKVis 1;setAttr FKIKArm_L.FKIKBlend 0;setAttr FKIKArm_L.FKVis 1;setAttr FKIKArm_L.IKVis 1;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToes_R;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToesEnd_R;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToes_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToesEnd_R;xform -os -t 0 0 0 -ro 0 0 0 RollExtraHeel_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollHeel_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKToes_R;xform -os -t 0 0 0 -ro 0 0 0 IKExtraToes_R;xform -os -t 0 -0 0 -ro 0 0 0 RollExtraHeel_L;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToes_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToes_L;xform -os -t 0 0 0 -ro 0 0 0 RollExtraToesEnd_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollToesEnd_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 RollHeel_L;xform -os -t 0 0 0 -ro 0 0 0 IKExtraToes_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 IKToes_L;xform -os -ro 0 0 0 HipSwinger_M;xform -os -t 0 0 0 -ro 0 0 0 BendExtraKnee2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendKnee2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendKnee1_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraKnee1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendHip1_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraHip1_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraHip2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendHip2_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraNeck2_M;xform -os -t 0 0 0 -ro 0 0 0 BendExtraNeck1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendNeck1_M;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendNeck2_M;xform -os -t 0 0 0 -ro 0 0 0 BendExtraElbow2_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraElbow1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendElbow1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendElbow2_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraShoulder1_R;xform -os -t 0 0 0 -ro 0 0 0 BendExtraShoulder2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendShoulder1_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendShoulder2_R;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendKnee2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendKnee1_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraKnee2_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraKnee1_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraHip1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendHip1_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraHip2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendHip2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendElbow1_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraElbow1_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraElbow2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendElbow2_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraShoulder1_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendShoulder1_L;xform -os -t 0 0 0 -ro 0 0 0 BendExtraShoulder2_L;xform -os -t 0 0 0 -ro 0 0 0 -s 1 1 1 BendShoulder2_L;;setAttr Fingers_R.spread 0;;setAttr Fingers_R.cup 0;;setAttr Fingers_R.indexCurl 0;;setAttr Fingers_R.middleCurl 0;;setAttr Fingers_R.ringCurl 0;;setAttr Fingers_R.pinkyCurl 0;;setAttr Fingers_R.thumbCurl 0;;setAttr Fingers_L.spread 0;;setAttr Fingers_L.cup 0;;setAttr Fingers_L.indexCurl 0;;setAttr Fingers_L.middleCurl 0;;setAttr Fingers_L.ringCurl 0;;setAttr Fingers_L.pinkyCurl 0;;setAttr Fingers_L.thumbCurl 0;");
createNode multiplyDivide -n "SDKFKPinkyFinger1_RScaleMPD";
	rename -uid "62CAF3C4-4E87-DBFA-5699-3EB1A5CFA4D8";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKIndexFinger1_RScaleMPD";
	rename -uid "391C7BFE-44E6-D1E3-2177-45946D02134E";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKRingFinger1_RScaleMPD";
	rename -uid "02B5BC29-48CE-DB1C-FCF9-D781810CF13B";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKCup_RScaleMPD";
	rename -uid "320450DC-472B-78C5-5E5A-30958ADB6D8C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKIndexFinger2_RScaleMPD";
	rename -uid "FABB930C-49AC-8247-AD2F-FA8A535AEE1C";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKIndexFinger3_RScaleMPD";
	rename -uid "F2704CB0-4585-EA35-F539-C18B60E01D7B";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKMiddleFinger2_RScaleMPD";
	rename -uid "598AD1B7-4701-6622-FB29-D596B322B7E2";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKMiddleFinger3_RScaleMPD";
	rename -uid "33AF5282-42FB-9CDC-9315-9197AD009748";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKMiddleFinger1_RScaleMPD";
	rename -uid "8667F536-476A-8F76-B32F-E482C530772B";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKRingFinger2_RScaleMPD";
	rename -uid "553C5A98-471D-58BA-FBDF-0190E0745613";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKRingFinger3_RScaleMPD";
	rename -uid "57F9F9C5-46EF-9FF3-A0E0-1383D68B0CE1";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKPinkyFinger2_RScaleMPD";
	rename -uid "2E9AA720-473E-FA61-46E1-218EF737CA44";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKPinkyFinger3_RScaleMPD";
	rename -uid "EA433245-40D7-39D4-1DB5-4EA05E8F752B";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKThumbFinger2_RScaleMPD";
	rename -uid "029CDBBF-42A8-CF4B-CB3C-19BCBE663621";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKThumbFinger3_RScaleMPD";
	rename -uid "09D05F74-452D-74F3-2CC1-D7B19290E53E";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKPinkyFinger1_LScaleMPD";
	rename -uid "079A5805-430B-0BA6-30AD-19B87900E137";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKIndexFinger1_LScaleMPD";
	rename -uid "FB97DFE8-4B37-DE5F-30A0-C0AF43745873";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKRingFinger1_LScaleMPD";
	rename -uid "5C59BFB3-4BB8-B28E-2BDD-D08D34878C47";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKCup_LScaleMPD";
	rename -uid "089F01F2-4ECE-3BC5-9607-188D4098F1C0";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKIndexFinger2_LScaleMPD";
	rename -uid "366EBF3E-490C-7270-1241-478CE595DACD";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKIndexFinger3_LScaleMPD";
	rename -uid "FDCF6877-47CE-DCD8-2CF8-EE9AF419C2EC";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKMiddleFinger2_LScaleMPD";
	rename -uid "E83B1325-4D0B-DD2C-54F6-95AD5F11DC59";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKMiddleFinger3_LScaleMPD";
	rename -uid "6D84F8E5-445B-9680-E67D-42BBCDCFBB8A";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKMiddleFinger1_LScaleMPD";
	rename -uid "15CC51C6-47D5-03BC-596B-B89EEB0029BF";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKRingFinger2_LScaleMPD";
	rename -uid "B0D02E4B-4505-FFDD-1925-90A817FB2AC3";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKRingFinger3_LScaleMPD";
	rename -uid "D23B16E8-40D3-F385-ED3D-408E536AF1B2";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKPinkyFinger2_LScaleMPD";
	rename -uid "0F18D023-4214-0798-161F-3ABDACDF9280";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKPinkyFinger3_LScaleMPD";
	rename -uid "FD024364-4529-718C-8896-429872E3677F";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKThumbFinger2_LScaleMPD";
	rename -uid "DB8153C2-4DFE-CF46-1D2D-BABDA45DB1EF";
	setAttr ".ihi" 0;
createNode multiplyDivide -n "SDKFKThumbFinger3_LScaleMPD";
	rename -uid "9DE6A812-441D-0A67-F62C-B1A6B096A1A4";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".hfe";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 19 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
select -ne :standardSurface1;
	setAttr ".b" 0.80000001192092896;
	setAttr ".bc" -type "float3" 1 1 1 ;
	setAttr ".s" 0.20000000298023224;
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".rv";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -cb on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mot";
	setAttr -av -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".mbso";
	setAttr -k on ".mbsc";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".gsn";
	setAttr -k on ".gsv";
	setAttr -s 4 ".sol";
connectAttr "rig_settings_ctrl.geo_visibility" "geo_grp.v";
connectAttr "rig_settings_ctrl.geo_selection" "geo_grp.ovdt";
connectAttr "global_ctrl.rig_scale" "global_ctrl.sx";
connectAttr "global_ctrl.rig_scale" "global_ctrl.sy";
connectAttr "global_ctrl.rig_scale" "global_ctrl.sz";
connectAttr "c_arm_03_ik_01.s" "c_arm_03_ik_02.is";
connectAttr "multDoubleLinear1.o" "c_arm_03_ik_02.tx";
connectAttr "c_arm_03_ik_02.s" "c_arm_03_ik_03.is";
connectAttr "multDoubleLinear2.o" "c_arm_03_ik_03.tx";
connectAttr "c_arm_03_ik_03.tx" "effector1.tx";
connectAttr "c_arm_03_ik_03.ty" "effector1.ty";
connectAttr "c_arm_03_ik_03.tz" "effector1.tz";
connectAttr "c_arm_03_ik_03.opm" "effector1.opm";
connectAttr "c_arm_03_fk_01_parentConstraint1.ctx" "c_arm_03_fk_01.tx";
connectAttr "c_arm_03_fk_01_parentConstraint1.cty" "c_arm_03_fk_01.ty";
connectAttr "c_arm_03_fk_01_parentConstraint1.ctz" "c_arm_03_fk_01.tz";
connectAttr "c_arm_03_fk_01_parentConstraint1.crx" "c_arm_03_fk_01.rx";
connectAttr "c_arm_03_fk_01_parentConstraint1.cry" "c_arm_03_fk_01.ry";
connectAttr "c_arm_03_fk_01_parentConstraint1.crz" "c_arm_03_fk_01.rz";
connectAttr "c_arm_03_fk_01.s" "c_arm_03_fk_02.is";
connectAttr "c_arm_03_fk_02_parentConstraint1.ctx" "c_arm_03_fk_02.tx";
connectAttr "c_arm_03_fk_02_parentConstraint1.cty" "c_arm_03_fk_02.ty";
connectAttr "c_arm_03_fk_02_parentConstraint1.ctz" "c_arm_03_fk_02.tz";
connectAttr "c_arm_03_fk_02_parentConstraint1.crx" "c_arm_03_fk_02.rx";
connectAttr "c_arm_03_fk_02_parentConstraint1.cry" "c_arm_03_fk_02.ry";
connectAttr "c_arm_03_fk_02_parentConstraint1.crz" "c_arm_03_fk_02.rz";
connectAttr "c_arm_03_fk_02.s" "c_arm_03_fk_03.is";
connectAttr "c_arm_03_fk_03_parentConstraint1.ctx" "c_arm_03_fk_03.tx";
connectAttr "c_arm_03_fk_03_parentConstraint1.cty" "c_arm_03_fk_03.ty";
connectAttr "c_arm_03_fk_03_parentConstraint1.ctz" "c_arm_03_fk_03.tz";
connectAttr "c_arm_03_fk_03_parentConstraint1.crx" "c_arm_03_fk_03.rx";
connectAttr "c_arm_03_fk_03_parentConstraint1.cry" "c_arm_03_fk_03.ry";
connectAttr "c_arm_03_fk_03_parentConstraint1.crz" "c_arm_03_fk_03.rz";
connectAttr "c_arm_03_fk_03.ro" "c_arm_03_fk_03_parentConstraint1.cro";
connectAttr "c_arm_03_fk_03.pim" "c_arm_03_fk_03_parentConstraint1.cpim";
connectAttr "c_arm_03_fk_03.rp" "c_arm_03_fk_03_parentConstraint1.crp";
connectAttr "c_arm_03_fk_03.rpt" "c_arm_03_fk_03_parentConstraint1.crt";
connectAttr "c_arm_03_fk_03.jo" "c_arm_03_fk_03_parentConstraint1.cjo";
connectAttr "c_arm_03_fk_03_ctrl.t" "c_arm_03_fk_03_parentConstraint1.tg[0].tt";
connectAttr "c_arm_03_fk_03_ctrl.rp" "c_arm_03_fk_03_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_fk_03_ctrl.rpt" "c_arm_03_fk_03_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_fk_03_ctrl.r" "c_arm_03_fk_03_parentConstraint1.tg[0].tr";
connectAttr "c_arm_03_fk_03_ctrl.ro" "c_arm_03_fk_03_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_fk_03_ctrl.s" "c_arm_03_fk_03_parentConstraint1.tg[0].ts";
connectAttr "c_arm_03_fk_03_ctrl.pm" "c_arm_03_fk_03_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_fk_03_parentConstraint1.w0" "c_arm_03_fk_03_parentConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_fk_02.ro" "c_arm_03_fk_02_parentConstraint1.cro";
connectAttr "c_arm_03_fk_02.pim" "c_arm_03_fk_02_parentConstraint1.cpim";
connectAttr "c_arm_03_fk_02.rp" "c_arm_03_fk_02_parentConstraint1.crp";
connectAttr "c_arm_03_fk_02.rpt" "c_arm_03_fk_02_parentConstraint1.crt";
connectAttr "c_arm_03_fk_02.jo" "c_arm_03_fk_02_parentConstraint1.cjo";
connectAttr "c_arm_03_fk_02_ctrl.t" "c_arm_03_fk_02_parentConstraint1.tg[0].tt";
connectAttr "c_arm_03_fk_02_ctrl.rp" "c_arm_03_fk_02_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_fk_02_ctrl.rpt" "c_arm_03_fk_02_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_fk_02_ctrl.r" "c_arm_03_fk_02_parentConstraint1.tg[0].tr";
connectAttr "c_arm_03_fk_02_ctrl.ro" "c_arm_03_fk_02_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_fk_02_ctrl.s" "c_arm_03_fk_02_parentConstraint1.tg[0].ts";
connectAttr "c_arm_03_fk_02_ctrl.pm" "c_arm_03_fk_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_fk_02_parentConstraint1.w0" "c_arm_03_fk_02_parentConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_fk_01.ro" "c_arm_03_fk_01_parentConstraint1.cro";
connectAttr "c_arm_03_fk_01.pim" "c_arm_03_fk_01_parentConstraint1.cpim";
connectAttr "c_arm_03_fk_01.rp" "c_arm_03_fk_01_parentConstraint1.crp";
connectAttr "c_arm_03_fk_01.rpt" "c_arm_03_fk_01_parentConstraint1.crt";
connectAttr "c_arm_03_fk_01.jo" "c_arm_03_fk_01_parentConstraint1.cjo";
connectAttr "c_arm_03_fk_01_ctrl.t" "c_arm_03_fk_01_parentConstraint1.tg[0].tt";
connectAttr "c_arm_03_fk_01_ctrl.rp" "c_arm_03_fk_01_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_fk_01_ctrl.rpt" "c_arm_03_fk_01_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_fk_01_ctrl.r" "c_arm_03_fk_01_parentConstraint1.tg[0].tr";
connectAttr "c_arm_03_fk_01_ctrl.ro" "c_arm_03_fk_01_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_fk_01_ctrl.s" "c_arm_03_fk_01_parentConstraint1.tg[0].ts";
connectAttr "c_arm_03_fk_01_ctrl.pm" "c_arm_03_fk_01_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_fk_01_parentConstraint1.w0" "c_arm_03_fk_01_parentConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_01_scale_bc.op" "c_arm_03_driven_01.s";
connectAttr "c_arm_03_01_translate_bc.op" "c_arm_03_driven_01.t";
connectAttr "unitConversion3.o" "c_arm_03_driven_01.r";
connectAttr "c_arm_03_driven_01.s" "c_arm_03_driven_02.is";
connectAttr "c_arm_03_02_scale_bc.op" "c_arm_03_driven_02.s";
connectAttr "c_arm_03_02_translate_bc.op" "c_arm_03_driven_02.t";
connectAttr "unitConversion6.o" "c_arm_03_driven_02.r";
connectAttr "c_arm_03_driven_02.s" "c_arm_03_driven_03.is";
connectAttr "c_arm_03_03_translate_bc.op" "c_arm_03_driven_03.t";
connectAttr "unitConversion9.o" "c_arm_03_driven_03.r";
connectAttr "c_arm_03_03_scale_bc.op" "c_arm_03_driven_03.s";
connectAttr "c_arm_03_def_01.s" "c_arm_03_def_02.is";
connectAttr "c_arm_03_def_02.s" "c_arm_03_def_03.is";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_fk_ctrl_grp.v" -l on;
connectAttr "c_arm_03_switch_reverse_Value_RV.ox" "c_arm_03_ik_ctrl_grp.v" -l on
		;
connectAttr "c_arm_03_ik_01.msg" "c_arm_03_ikHandle_01.hsj";
connectAttr "effector1.hp" "c_arm_03_ikHandle_01.hee";
connectAttr "ikRPsolver.msg" "c_arm_03_ikHandle_01.hsv";
connectAttr "c_arm_03_ikHandle_01_poleVectorConstraint1.ctx" "c_arm_03_ikHandle_01.pvx"
		;
connectAttr "c_arm_03_ikHandle_01_poleVectorConstraint1.cty" "c_arm_03_ikHandle_01.pvy"
		;
connectAttr "c_arm_03_ikHandle_01_poleVectorConstraint1.ctz" "c_arm_03_ikHandle_01.pvz"
		;
connectAttr "c_arm_03_ikHandle_01.pim" "c_arm_03_ikHandle_01_poleVectorConstraint1.cpim"
		;
connectAttr "c_arm_03_ik_01.pm" "c_arm_03_ikHandle_01_poleVectorConstraint1.ps";
connectAttr "c_arm_03_ik_01.t" "c_arm_03_ikHandle_01_poleVectorConstraint1.crp";
connectAttr "c_arm_03_ik_02_ctrl.t" "c_arm_03_ikHandle_01_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_ik_02_ctrl.rp" "c_arm_03_ikHandle_01_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_ik_02_ctrl.rpt" "c_arm_03_ikHandle_01_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_ik_02_ctrl.pm" "c_arm_03_ikHandle_01_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_ikHandle_01_poleVectorConstraint1.w0" "c_arm_03_ikHandle_01_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.ctx" "c_arm_03_switch_ctrl_grp.tx"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.cty" "c_arm_03_switch_ctrl_grp.ty"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.ctz" "c_arm_03_switch_ctrl_grp.tz"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.crx" "c_arm_03_switch_ctrl_grp.rx"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.cry" "c_arm_03_switch_ctrl_grp.ry"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.crz" "c_arm_03_switch_ctrl_grp.rz"
		;
connectAttr "c_arm_03_switch_ctrl_grp.ro" "c_arm_03_switch_ctrl_grp_parentConstraint1.cro"
		;
connectAttr "c_arm_03_switch_ctrl_grp.pim" "c_arm_03_switch_ctrl_grp_parentConstraint1.cpim"
		;
connectAttr "c_arm_03_switch_ctrl_grp.rp" "c_arm_03_switch_ctrl_grp_parentConstraint1.crp"
		;
connectAttr "c_arm_03_switch_ctrl_grp.rpt" "c_arm_03_switch_ctrl_grp_parentConstraint1.crt"
		;
connectAttr "c_arm_03_driven_03.t" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_03.rp" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_03.rpt" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_03.r" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_03.ro" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_03.s" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_03.pm" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_03.jo" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_03.ssc" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_03.is" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "c_arm_03_switch_ctrl_grp_parentConstraint1.w0" "c_arm_03_switch_ctrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "arm_03_guide_01.s" "arm_03_guide_02.is";
connectAttr "arm_03_guide_02.s" "arm_03_guide_03.is";
connectAttr "lower_arm_twist_up_02_parentConstraint1.ctx" "lower_arm_twist_up_02.tx"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.cty" "lower_arm_twist_up_02.ty"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.ctz" "lower_arm_twist_up_02.tz"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.crx" "lower_arm_twist_up_02.rx"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.cry" "lower_arm_twist_up_02.ry"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.crz" "lower_arm_twist_up_02.rz"
		;
connectAttr "lower_arm_twist_up_02.ro" "lower_arm_twist_up_02_parentConstraint1.cro"
		;
connectAttr "lower_arm_twist_up_02.pim" "lower_arm_twist_up_02_parentConstraint1.cpim"
		;
connectAttr "lower_arm_twist_up_02.rp" "lower_arm_twist_up_02_parentConstraint1.crp"
		;
connectAttr "lower_arm_twist_up_02.rpt" "lower_arm_twist_up_02_parentConstraint1.crt"
		;
connectAttr "lower_arm_twist_up_02.jo" "lower_arm_twist_up_02_parentConstraint1.cjo"
		;
connectAttr "c_arm_03_driven_03.t" "lower_arm_twist_up_02_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_03.rp" "lower_arm_twist_up_02_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_03.rpt" "lower_arm_twist_up_02_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_03.r" "lower_arm_twist_up_02_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_03.ro" "lower_arm_twist_up_02_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_03.s" "lower_arm_twist_up_02_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_03.pm" "lower_arm_twist_up_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_03.jo" "lower_arm_twist_up_02_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_03.ssc" "lower_arm_twist_up_02_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_03.is" "lower_arm_twist_up_02_parentConstraint1.tg[0].tis"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.w0" "lower_arm_twist_up_02_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster1.og[0]" "bendy_crvShape.cr";
connectAttr "motionPath1.r" "lower_arm_bendy_01.r";
connectAttr "motionPath1.ac" "lower_arm_bendy_01.t";
connectAttr "motionPath2.r" "lower_arm_bendy_02.r";
connectAttr "motionPath2.ac" "lower_arm_bendy_02.t";
connectAttr "motionPath3.r" "lower_arm_bendy_03.r";
connectAttr "motionPath3.ac" "lower_arm_bendy_03.t";
connectAttr "motionPath4.r" "lower_arm_bendy_04.r";
connectAttr "motionPath4.ac" "lower_arm_bendy_04.t";
connectAttr "motionPath5.ac" "lower_arm_bendy_05.t";
connectAttr "motionPath5.r" "lower_arm_bendy_05.r";
connectAttr "c_arm_03_driven_02_parentConstraint1.ctx" "lower_arm_twist_up_01.tx"
		;
connectAttr "c_arm_03_driven_02_parentConstraint1.cty" "lower_arm_twist_up_01.ty"
		;
connectAttr "c_arm_03_driven_02_parentConstraint1.ctz" "lower_arm_twist_up_01.tz"
		;
connectAttr "lower_arm_twist_up_01.ro" "c_arm_03_driven_02_parentConstraint1.cro"
		;
connectAttr "lower_arm_twist_up_01.pim" "c_arm_03_driven_02_parentConstraint1.cpim"
		;
connectAttr "lower_arm_twist_up_01.rp" "c_arm_03_driven_02_parentConstraint1.crp"
		;
connectAttr "lower_arm_twist_up_01.rpt" "c_arm_03_driven_02_parentConstraint1.crt"
		;
connectAttr "lower_arm_twist_up_01.jo" "c_arm_03_driven_02_parentConstraint1.cjo"
		;
connectAttr "c_arm_03_driven_03.t" "c_arm_03_driven_02_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_03.rp" "c_arm_03_driven_02_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_03.rpt" "c_arm_03_driven_02_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_03.r" "c_arm_03_driven_02_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_03.ro" "c_arm_03_driven_02_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_03.s" "c_arm_03_driven_02_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_03.pm" "c_arm_03_driven_02_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_03.jo" "c_arm_03_driven_02_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_03.ssc" "c_arm_03_driven_02_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_03.is" "c_arm_03_driven_02_parentConstraint1.tg[0].tis"
		;
connectAttr "c_arm_03_driven_02_parentConstraint1.w0" "c_arm_03_driven_02_parentConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.ctx" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.tx"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.cty" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.ty"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.ctz" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.tz"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.crx" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.rx"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.cry" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.ry"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.crz" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.rz"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.ro" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.cro"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.pim" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.cpim"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.rp" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.crp"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_03_ctrl_grp.rpt" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.crt"
		;
connectAttr "c_arm_03_driven_03.t" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_03.rp" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_03.rpt" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_03.r" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_03.ro" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_03.s" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_03.pm" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_03.jo" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_03.ssc" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_03.is" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.w0" "c_arm_03_lower_twist_03_ctrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.ctx" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.tx"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.cty" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.ty"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.ctz" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.tz"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.crx" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.rx"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.cry" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.ry"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.crz" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.rz"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.ro" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.cro"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.pim" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.cpim"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.rp" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.crp"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_02_ctrl_grp.rpt" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.crt"
		;
connectAttr "c_arm_03_driven_03.t" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_03.rp" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_03.rpt" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_03.r" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_03.ro" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_03.s" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_03.pm" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_03.jo" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_03.ssc" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_03.is" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.w0" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "c_arm_03_driven_02.t" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tt"
		;
connectAttr "c_arm_03_driven_02.rp" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].trp"
		;
connectAttr "c_arm_03_driven_02.rpt" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].trt"
		;
connectAttr "c_arm_03_driven_02.r" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tr"
		;
connectAttr "c_arm_03_driven_02.ro" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tro"
		;
connectAttr "c_arm_03_driven_02.s" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].ts"
		;
connectAttr "c_arm_03_driven_02.pm" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tpm"
		;
connectAttr "c_arm_03_driven_02.jo" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tjo"
		;
connectAttr "c_arm_03_driven_02.ssc" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tsc"
		;
connectAttr "c_arm_03_driven_02.is" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tis"
		;
connectAttr "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.w1" "c_arm_03_lower_twist_02_ctrl_grp_parentConstraint1.tg[1].tw"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.ctx" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.tx"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.cty" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.ty"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.ctz" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.tz"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.crx" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.rx"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.cry" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.ry"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.crz" "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.rz"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.ro" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.cro"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.pim" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.cpim"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.rp" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.crp"
		;
connectAttr "|main|rig_grp|global_ctrl_grp|global_ctrl_off_grp|global_ctrl|global_sub_01_ctrl_grp|global_sub_01_ctrl_off_grp|global_sub_01_ctrl|c_arm_03_grp|c_arm_03_don_not_touch_grp|lower_arm_bendy_driver_jnt|c_arm_03_lower_twist_01_ctrl_grp.rpt" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.crt"
		;
connectAttr "c_arm_03_driven_02.t" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_02.rp" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_02.rpt" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_02.r" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_02.ro" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_02.s" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_02.pm" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_02.jo" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_02.ssc" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_02.is" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.w0" "c_arm_03_lower_twist_01_ctrl_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.ctx" "lower_arm_twist_jnts_grp.tx"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.cty" "lower_arm_twist_jnts_grp.ty"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.ctz" "lower_arm_twist_jnts_grp.tz"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.crx" "lower_arm_twist_jnts_grp.rx"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.cry" "lower_arm_twist_jnts_grp.ry"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.crz" "lower_arm_twist_jnts_grp.rz"
		;
connectAttr "lower_arm_twist_jnts_grp.ro" "lower_arm_twist_jnts_grp_parentConstraint1.cro"
		;
connectAttr "lower_arm_twist_jnts_grp.pim" "lower_arm_twist_jnts_grp_parentConstraint1.cpim"
		;
connectAttr "lower_arm_twist_jnts_grp.rp" "lower_arm_twist_jnts_grp_parentConstraint1.crp"
		;
connectAttr "lower_arm_twist_jnts_grp.rpt" "lower_arm_twist_jnts_grp_parentConstraint1.crt"
		;
connectAttr "c_arm_03_driven_02.t" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "c_arm_03_driven_02.rp" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "c_arm_03_driven_02.rpt" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "c_arm_03_driven_02.r" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "c_arm_03_driven_02.ro" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "c_arm_03_driven_02.s" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "c_arm_03_driven_02.pm" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "c_arm_03_driven_02.jo" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "c_arm_03_driven_02.ssc" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "c_arm_03_driven_02.is" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "lower_arm_twist_jnts_grp_parentConstraint1.w0" "lower_arm_twist_jnts_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "unitConversion25.o" "lower_arm_twist_01.rx";
connectAttr "unitConversion26.o" "lower_arm_twist_02.rx";
connectAttr "unitConversion27.o" "lower_arm_twist_03.rx";
connectAttr "unitConversion28.o" "lower_arm_twist_04.rx";
connectAttr "unitConversion29.o" "lower_arm_twist_05.rx";
connectAttr "skinCluster2.og[0]" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "c_arm_03_fk_01.t" "c_arm_03_01_translate_bc.c1";
connectAttr "c_arm_03_ik_01.t" "c_arm_03_01_translate_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_01_translate_bc.b";
connectAttr "unitConversion1.o" "c_arm_03_01_rotate_bc.c1";
connectAttr "unitConversion2.o" "c_arm_03_01_rotate_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_01_rotate_bc.b";
connectAttr "c_arm_03_fk_01.r" "unitConversion1.i";
connectAttr "c_arm_03_ik_01.r" "unitConversion2.i";
connectAttr "c_arm_03_01_rotate_bc.op" "unitConversion3.i";
connectAttr "c_arm_03_fk_01.s" "c_arm_03_01_scale_bc.c1";
connectAttr "c_arm_03_ik_01.s" "c_arm_03_01_scale_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_01_scale_bc.b";
connectAttr "c_arm_03_fk_02.t" "c_arm_03_02_translate_bc.c1";
connectAttr "c_arm_03_ik_02.t" "c_arm_03_02_translate_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_02_translate_bc.b";
connectAttr "unitConversion4.o" "c_arm_03_02_rotate_bc.c1";
connectAttr "unitConversion5.o" "c_arm_03_02_rotate_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_02_rotate_bc.b";
connectAttr "c_arm_03_fk_02.r" "unitConversion4.i";
connectAttr "c_arm_03_ik_02.r" "unitConversion5.i";
connectAttr "c_arm_03_02_rotate_bc.op" "unitConversion6.i";
connectAttr "c_arm_03_fk_02.s" "c_arm_03_02_scale_bc.c1";
connectAttr "c_arm_03_ik_02.s" "c_arm_03_02_scale_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_02_scale_bc.b";
connectAttr "c_arm_03_fk_03.t" "c_arm_03_03_translate_bc.c1";
connectAttr "c_arm_03_ik_03.t" "c_arm_03_03_translate_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_03_translate_bc.b";
connectAttr "unitConversion7.o" "c_arm_03_03_rotate_bc.c1";
connectAttr "unitConversion8.o" "c_arm_03_03_rotate_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_03_rotate_bc.b";
connectAttr "c_arm_03_fk_03.r" "unitConversion7.i";
connectAttr "c_arm_03_ik_03.r" "unitConversion8.i";
connectAttr "c_arm_03_03_rotate_bc.op" "unitConversion9.i";
connectAttr "c_arm_03_fk_03.s" "c_arm_03_03_scale_bc.c1";
connectAttr "c_arm_03_ik_03.s" "c_arm_03_03_scale_bc.c2";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_03_scale_bc.b";
connectAttr "c_arm_03_switch_ctrl.switch" "c_arm_03_switch_reverse_Value_RV.ix";
connectAttr "c_arm_03_def_02.wm" "arm_def_start_to_mid_DB.im2";
connectAttr "c_arm_03_def_01.wm" "arm_def_start_to_mid_DB.im1";
connectAttr "c_arm_03_def_03.wm" "arm_def_mid_to_end_DB.im2";
connectAttr "c_arm_03_def_02.wm" "arm_def_mid_to_end_DB.im1";
connectAttr "c_arm_03_ik_01_ctrl.wm" "arm_start_to_end_DB.im1";
connectAttr "c_arm_03_ik_03_ctrl.wm" "arm_start_to_end_DB.im2";
connectAttr "c_arm_03_ik_01_ctrl.wm" "arm_start_to_mid_DB.im1";
connectAttr "c_arm_03_ik_02_ctrl.wm" "arm_start_to_mid_DB.im2";
connectAttr "c_arm_03_ik_02_ctrl.wm" "arm_mid_to_end_DB.im1";
connectAttr "c_arm_03_ik_03_ctrl.wm" "arm_mid_to_end_DB.im2";
connectAttr "arm_def_start_to_mid_DB.d" "arm_def_start_to_end_ADL.i1";
connectAttr "arm_def_mid_to_end_DB.d" "arm_def_start_to_end_ADL.i2";
connectAttr "arm_start_to_end_DB.d" "multiplyDivide1.i1x";
connectAttr "arm_def_start_to_end_ADL.o" "multiplyDivide1.i2x";
connectAttr "arm_def_start_to_end_ADL.o" "condition1.st";
connectAttr "arm_start_to_end_DB.d" "condition1.ft";
connectAttr "multiplyDivide1.ox" "condition1.ctr";
connectAttr "c_arm_03_ik_03_ctrl.streatchy" "blendTwoAttr1.ab";
connectAttr "condition1.ocr" "blendTwoAttr1.i[1]";
connectAttr "blendTwoAttr2.o" "multDoubleLinear1.i1";
connectAttr "blendTwoAttr3.o" "multDoubleLinear2.i1";
connectAttr "arm_start_to_mid_DB.d" "multiplyDivide2.i1x";
connectAttr "arm_mid_to_end_DB.d" "multiplyDivide2.i1y";
connectAttr "arm_def_start_to_mid_DB.d" "multiplyDivide2.i2x";
connectAttr "arm_def_mid_to_end_DB.d" "multiplyDivide2.i2y";
connectAttr "c_arm_03_ik_02_ctrl.lock" "blendTwoAttr2.ab";
connectAttr "blendTwoAttr1.o" "blendTwoAttr2.i[0]";
connectAttr "multiplyDivide2.ox" "blendTwoAttr2.i[1]";
connectAttr "c_arm_03_ik_02_ctrl.lock" "blendTwoAttr3.ab";
connectAttr "blendTwoAttr1.o" "blendTwoAttr3.i[0]";
connectAttr "multiplyDivide2.oy" "blendTwoAttr3.i[1]";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "unitConversion33.o" "blendTwoAttr4.ab";
connectAttr "unitConversion31.o" "blendTwoAttr4.i[0]";
connectAttr "unitConversion39.o" "blendTwoAttr4.i[1]";
connectAttr "unitConversion34.o" "blendTwoAttr5.i[0]";
connectAttr "unitConversion37.o" "blendTwoAttr5.i[1]";
connectAttr "unitConversion30.o" "blendTwoAttr6.i[0]";
connectAttr "unitConversion40.o" "blendTwoAttr6.i[1]";
connectAttr "unitConversion32.o" "blendTwoAttr7.i[0]";
connectAttr "unitConversion38.o" "blendTwoAttr7.i[1]";
connectAttr "unitConversion35.o" "blendTwoAttr8.i[0]";
connectAttr "unitConversion36.o" "blendTwoAttr8.i[1]";
connectAttr "blendTwoAttr4.o" "unitConversion25.i";
connectAttr "blendTwoAttr5.o" "unitConversion26.i";
connectAttr "blendTwoAttr6.o" "unitConversion27.i";
connectAttr "blendTwoAttr7.o" "unitConversion28.i";
connectAttr "blendTwoAttr8.o" "unitConversion29.i";
connectAttr "lower_arm_twist_up_01.rx" "unitConversion30.i";
connectAttr "lower_arm_twist_up_01.rx" "unitConversion31.i";
connectAttr "lower_arm_twist_up_01.rx" "unitConversion32.i";
connectAttr "lower_arm_twist_up_01.rx" "unitConversion33.i";
connectAttr "lower_arm_twist_up_01.rx" "unitConversion34.i";
connectAttr "lower_arm_twist_up_01.rx" "unitConversion35.i";
connectAttr "bendy_crvShape.ws" "motionPath1.gp";
connectAttr "lower_arm_twist_01.wm" "motionPath1.wum";
connectAttr "bendy_crvShape.ws" "motionPath2.gp";
connectAttr "lower_arm_twist_02.wm" "motionPath2.wum";
connectAttr "bendy_crvShape.ws" "motionPath3.gp";
connectAttr "lower_arm_twist_03.wm" "motionPath3.wum";
connectAttr "bendy_crvShape.ws" "motionPath4.gp";
connectAttr "lower_arm_twist_04.wm" "motionPath4.wum";
connectAttr "bendy_crvShape.ws" "motionPath5.gp";
connectAttr "lower_arm_twist_05.wm" "motionPath5.wum";
connectAttr "bendy_crvShapeOrig.ws" "skinCluster1.ip[0].ig";
connectAttr "bendy_crvShapeOrig.l" "skinCluster1.orggeom[0]";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "lower_arm_bendy_bnd_jnt_03.wm" "skinCluster1.ma[0]";
connectAttr "lower_arm_bendy_bnd_jnt_02.wm" "skinCluster1.ma[1]";
connectAttr "lower_arm_bendy_bnd_jnt_01.wm" "skinCluster1.ma[2]";
connectAttr "lower_arm_bendy_bnd_jnt_03.liw" "skinCluster1.lw[0]";
connectAttr "lower_arm_bendy_bnd_jnt_02.liw" "skinCluster1.lw[1]";
connectAttr "lower_arm_bendy_bnd_jnt_01.liw" "skinCluster1.lw[2]";
connectAttr "lower_arm_bendy_bnd_jnt_03.obcc" "skinCluster1.ifcl[0]";
connectAttr "lower_arm_bendy_bnd_jnt_02.obcc" "skinCluster1.ifcl[1]";
connectAttr "lower_arm_bendy_bnd_jnt_01.obcc" "skinCluster1.ifcl[2]";
connectAttr "lower_arm_bendy_bnd_jnt_03.msg" "bindPose1.m[0]";
connectAttr "lower_arm_bendy_bnd_jnt_02.msg" "bindPose1.m[1]";
connectAttr "lower_arm_bendy_bnd_jnt_01.msg" "bindPose1.m[2]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.w" "bindPose1.p[1]";
connectAttr "bindPose1.w" "bindPose1.p[2]";
connectAttr "lower_arm_bendy_bnd_jnt_03.bps" "bindPose1.wm[0]";
connectAttr "lower_arm_bendy_bnd_jnt_02.bps" "bindPose1.wm[1]";
connectAttr "lower_arm_bendy_bnd_jnt_01.bps" "bindPose1.wm[2]";
connectAttr "lower_arm_twist_up_02.rx" "unitConversion36.i";
connectAttr "lower_arm_twist_up_02.rx" "unitConversion37.i";
connectAttr "lower_arm_twist_up_02.rx" "unitConversion38.i";
connectAttr "lower_arm_twist_up_02.rx" "unitConversion39.i";
connectAttr "lower_arm_twist_up_02.rx" "unitConversion40.i";
connectAttr "main.msg" "bindPose2.m[0]";
connectAttr "rig_grp.msg" "bindPose2.m[1]";
connectAttr "global_ctrl_grp.msg" "bindPose2.m[2]";
connectAttr "global_ctrl_off_grp.msg" "bindPose2.m[3]";
connectAttr "global_ctrl.msg" "bindPose2.m[4]";
connectAttr "global_sub_01_ctrl_grp.msg" "bindPose2.m[5]";
connectAttr "global_sub_01_ctrl_off_grp.msg" "bindPose2.m[6]";
connectAttr "global_sub_01_ctrl.msg" "bindPose2.m[7]";
connectAttr "c_arm_03_grp.msg" "bindPose2.m[8]";
connectAttr "c_arm_03_don_not_touch_grp.msg" "bindPose2.m[9]";
connectAttr "bendy_jnts.msg" "bindPose2.m[10]";
connectAttr "lower_arm_bendy_05.msg" "bindPose2.m[11]";
connectAttr "lower_arm_bendy_04.msg" "bindPose2.m[12]";
connectAttr "lower_arm_bendy_03.msg" "bindPose2.m[13]";
connectAttr "lower_arm_bendy_02.msg" "bindPose2.m[14]";
connectAttr "lower_arm_bendy_01.msg" "bindPose2.m[15]";
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[8]" "bindPose2.p[9]";
connectAttr "bindPose2.m[9]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[10]" "bindPose2.p[12]";
connectAttr "bindPose2.m[10]" "bindPose2.p[13]";
connectAttr "bindPose2.m[10]" "bindPose2.p[14]";
connectAttr "bindPose2.m[10]" "bindPose2.p[15]";
connectAttr "lower_arm_bendy_05.bps" "bindPose2.wm[11]";
connectAttr "lower_arm_bendy_04.bps" "bindPose2.wm[12]";
connectAttr "lower_arm_bendy_03.bps" "bindPose2.wm[13]";
connectAttr "lower_arm_bendy_02.bps" "bindPose2.wm[14]";
connectAttr "lower_arm_bendy_01.bps" "bindPose2.wm[15]";
connectAttr "pCylinderShape1Orig.w" "skinCluster2.ip[0].ig";
connectAttr "pCylinderShape1Orig.o" "skinCluster2.orggeom[0]";
connectAttr "bindPose2.msg" "skinCluster2.bp";
connectAttr "lower_arm_bendy_05.wm" "skinCluster2.ma[0]";
connectAttr "lower_arm_bendy_04.wm" "skinCluster2.ma[1]";
connectAttr "lower_arm_bendy_03.wm" "skinCluster2.ma[2]";
connectAttr "lower_arm_bendy_02.wm" "skinCluster2.ma[3]";
connectAttr "lower_arm_bendy_01.wm" "skinCluster2.ma[4]";
connectAttr "lower_arm_bendy_05.liw" "skinCluster2.lw[0]";
connectAttr "lower_arm_bendy_04.liw" "skinCluster2.lw[1]";
connectAttr "lower_arm_bendy_03.liw" "skinCluster2.lw[2]";
connectAttr "lower_arm_bendy_02.liw" "skinCluster2.lw[3]";
connectAttr "lower_arm_bendy_01.liw" "skinCluster2.lw[4]";
connectAttr "lower_arm_bendy_05.obcc" "skinCluster2.ifcl[0]";
connectAttr "lower_arm_bendy_04.obcc" "skinCluster2.ifcl[1]";
connectAttr "lower_arm_bendy_03.obcc" "skinCluster2.ifcl[2]";
connectAttr "lower_arm_bendy_02.obcc" "skinCluster2.ifcl[3]";
connectAttr "lower_arm_bendy_01.obcc" "skinCluster2.ifcl[4]";
connectAttr "lower_arm_bendy_05.msg" "skinCluster2.ptt";
connectAttr "arm_start_to_mid_DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blendTwoAttr3.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "multiplyDivide2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "multiplyDivide1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "arm_def_mid_to_end_DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "arm_mid_to_end_DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "arm_def_start_to_end_ADL.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "blendTwoAttr2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "arm_start_to_end_DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "c_arm_03_ik_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "multDoubleLinear1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "c_arm_03_ik_01_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "c_arm_03_def_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "condition1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn";
connectAttr "c_arm_03_def_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "bendy_crvShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[15].dn";
connectAttr "multDoubleLinear2.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "bendy_crv.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[17].dn";
connectAttr "c_arm_03_def_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "blendTwoAttr1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[19].dn";
connectAttr "c_arm_03_ik_03_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "c_arm_03_ik_02_ctrl.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "arm_def_start_to_mid_DB.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "c_arm_03_ik_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[23].dn";
connectAttr "lower_arm_twist_04.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "lower_arm_twist_05.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "blendTwoAttr7.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[2].dn";
connectAttr "blendTwoAttr4.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[3].dn";
connectAttr "lower_arm_twist_up_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "blendTwoAttr5.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[5].dn";
connectAttr "lower_arm_twist_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "blendTwoAttr8.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[7].dn";
connectAttr "lower_arm_twist_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "lower_arm_twist_up_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "blendTwoAttr6.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[10].dn";
connectAttr "lower_arm_twist_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[1].ni[11].dn"
		;
connectAttr "motionPath5.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[0].dn";
connectAttr "lower_arm_bendy_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "lower_arm_bendy_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[2].dn"
		;
connectAttr "lower_arm_bendy_04.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[3].dn"
		;
connectAttr "lower_arm_bendy_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[4].dn"
		;
connectAttr "motionPath2.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[5].dn";
connectAttr "lower_arm_bendy_05.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[6].dn"
		;
connectAttr "motionPath3.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[7].dn";
connectAttr "motionPath1.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[8].dn";
connectAttr "lower_arm_twist_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[9].dn"
		;
connectAttr "lower_arm_twist_05.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[10].dn"
		;
connectAttr "lower_arm_twist_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[11].dn"
		;
connectAttr "motionPath4.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[12].dn";
connectAttr "lower_arm_twist_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[13].dn"
		;
connectAttr "bendy_crvShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[14].dn";
connectAttr "lower_arm_twist_04.msg" "MayaNodeEditorSavedTabsInfo.tgi[2].ni[15].dn"
		;
connectAttr "lower_arm_twist_up_02_parentConstraint1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[0].dn"
		;
connectAttr "pCylinderShape1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[1].dn";
connectAttr "bendy_crvShapeOrig.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[2].dn"
		;
connectAttr "lower_arm_bendy_bnd_jnt_01.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[3].dn"
		;
connectAttr "pCylinder1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[4].dn";
connectAttr "lower_arm_bendy_bnd_jnt_03.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[5].dn"
		;
connectAttr "bindPose1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[6].dn";
connectAttr "lower_arm_bendy_bnd_jnt_02.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[7].dn"
		;
connectAttr "bendy_crv.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[8].dn";
connectAttr "bendy_crvShape.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[9].dn";
connectAttr "skinCluster1.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[10].dn";
connectAttr "c_arm_03_don_not_touch_grp.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[11].dn"
		;
connectAttr "lower_arm_bendy_driver_jnt.msg" "MayaNodeEditorSavedTabsInfo.tgi[3].ni[12].dn"
		;
connectAttr "SDKFKThumbFinger3_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKThumbFinger2_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKPinkyFinger3_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKPinkyFinger2_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKRingFinger3_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKRingFinger2_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKMiddleFinger1_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKMiddleFinger3_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKMiddleFinger2_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKIndexFinger3_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKIndexFinger2_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKCup_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKRingFinger1_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKIndexFinger1_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKPinkyFinger1_LScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKThumbFinger3_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKThumbFinger2_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKPinkyFinger3_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKPinkyFinger2_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKRingFinger3_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKRingFinger2_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKMiddleFinger1_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKMiddleFinger3_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKMiddleFinger2_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKIndexFinger3_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKIndexFinger2_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKCup_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKRingFinger1_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKIndexFinger1_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "SDKFKPinkyFinger1_RScaleMPD.msg" "AllSet.dnsm" -na;
connectAttr "buildPose.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerRootPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBRootPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerARootPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerRootPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBRootPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerARootPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerASpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerSpine1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBSpine1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerASpine1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributerSpine1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerBSpine1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSquashDistributNormalizerASpine1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendArmBlendTwo_L.msg" "AllSet.dnsm" -na;
connectAttr "volumepowArm_L.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverArm_L.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyArm_L.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendLegBlendTwo_L.msg" "AllSet.dnsm" -na;
connectAttr "volumepowLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendSpineBlendTwo_M.msg" "AllSet.dnsm" -na;
connectAttr "volumepowSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchySpine_M.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendArmBlendTwo_R.msg" "AllSet.dnsm" -na;
connectAttr "volumepowArm_R.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverArm_R.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyArm_R.msg" "AllSet.dnsm" -na;
connectAttr "volumeBlendLegBlendTwo_R.msg" "AllSet.dnsm" -na;
connectAttr "volumepowLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "volume1OverLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "multWithStretchyLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBShoulderPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAShoulderPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultShoulderPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbowEnd_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddShoulder1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBShoulderPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAShoulderPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultShoulderPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbowEnd_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddShoulder1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddShoulder1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLShoulder2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBElbowPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAElbowPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultElbowPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddElbow1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBElbowPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAElbowPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultElbowPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddElbow1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddElbow1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLElbow2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBHipPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAHipPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultHipPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKneeEnd_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddHip1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBHipPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAHipPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultHipPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKneeEnd_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddHip1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBHip_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAHip_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddHip1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultHip_L.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLHip2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBKneePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAKneePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultKneePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddKnee1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee2_2_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee1_2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBKneePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAKneePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultKneePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddKnee1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee2_1_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee1_1_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddKnee1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee2_0_L.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee1_0_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLKnee2_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBShoulderPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAShoulderPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultShoulderPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbowEnd_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddShoulder1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBShoulderPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAShoulderPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultShoulderPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbowEnd_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddShoulder1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultShoulder1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddShoulder1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultShoulder1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLShoulder2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBElbowPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAElbowPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultElbowPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddElbow1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBElbowPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAElbowPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultElbowPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddElbow1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultElbow1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddElbow1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultElbow1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLElbow2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBNeckPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultANeckPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultNeckPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultNeck2_2_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultNeck1_2_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddNeck1_2_M.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultNeck2_2_M.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultNeck1_2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBNeckPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultANeckPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultNeckPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultNeck2_1_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultNeck1_1_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddNeck1_1_M.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultNeck2_1_M.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultNeck1_1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBNeck_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultANeck_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultNeck2_0_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultNeck1_0_M.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddNeck1_0_M.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultNeck2_0_M.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultNeck1_0_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultNeck_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBHipPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAHipPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultHipPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKneeEnd_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddHip1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBHipPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAHipPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultHipPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKneeEnd_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddHip1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBHip_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAHip_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultHip1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddHip1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultHip1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultHip_R.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLHip2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBKneePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAKneePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultKneePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddKnee1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee2_2_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee1_2_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBKneePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAKneePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultKneePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddKnee1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee2_1_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee1_1_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultBKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultAKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleMultKnee1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendScaleAddKnee1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee2_0_R.msg" "AllSet.dnsm" -na;
connectAttr "BendTwistMultKnee1_0_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendMultKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "BendStretchyMDLKnee2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart2_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideShoulderPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart1_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideShoulderPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulder_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "FKShoulder_LExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKShoulder_LAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKShoulder_L360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart2_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideElbowPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart1_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideElbowPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbow_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "FKElbow_LExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKElbow_LAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKElbow_L360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart2_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideWristPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart1_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideWristPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWrist_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "FKWrist_LExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKWrist_LAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKWrist_L360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart2_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHipPart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart1_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHipPart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHip_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHip_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHip_L.msg" "AllSet.dnsm" -na;
connectAttr "FKHip_LExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKHip_LAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKHip_L360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart2_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideKneePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart1_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideKneePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKnee_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "FKKnee_LExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKKnee_LAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKKnee_L360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart2_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideAnklePart2_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart1_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideAnklePart1_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnkle_L_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "FKAnkle_LExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKAnkle_LAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKAnkle_L360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart2_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideShoulderPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart1_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulderPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideShoulderPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulder_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "FKShoulder_RExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKShoulder_RAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKShoulder_R360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart2_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideElbowPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart1_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbowPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideElbowPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbow_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "FKElbow_RExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKElbow_RAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKElbow_R360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart2_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideWristPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart1_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWristPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideWristPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWrist_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "FKWrist_RExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKWrist_RAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKWrist_R360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionNeckPart2_M_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionNeckPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideNeckPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionNeckPart1_M_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionNeckPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideNeckPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionNeck_M_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionNeck_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideNeck_M.msg" "AllSet.dnsm" -na;
connectAttr "FKNeck_MExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKNeck_MAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKNeck_M360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHeadPart2_M_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHeadPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHeadPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHeadPart1_M_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHeadPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHeadPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHead_M_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHead_M.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHead_M.msg" "AllSet.dnsm" -na;
connectAttr "FKHead_MExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKHead_MAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKHead_M360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart2_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHipPart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart1_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHipPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHipPart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHip_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionHip_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideHip_R.msg" "AllSet.dnsm" -na;
connectAttr "FKHip_RExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKHip_RAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKHip_R360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart2_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideKneePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart1_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKneePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideKneePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKnee_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "FKKnee_RExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKKnee_RAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKKnee_R360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart2_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideAnklePart2_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart1_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnklePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideAnklePart1_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnkle_R_output1DUC.msg" "AllSet.dnsm" -na;
connectAttr "twistAdditionAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "twistAmountDivideAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "FKAnkle_RExtraTwistPlusMinusAverage.msg" "AllSet.dnsm" -na;
connectAttr "FKAnkle_RAutoTwistMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "FKAnkle_R360TwistDivideMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "MainTwistFlipSetRange.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXWrist_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXElbow_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopArm_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchArm_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXKnee_LUnitConversion_L.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXHip_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_L_IKLenght_L.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_L_IKmessureDiv_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXWrist_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXElbow_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXWrist_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXElbow_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopArm_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchArm_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleLockMainScalerIKXKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleDistanceSideReverseIKXKnee_RUnitConversion_R.msg" "AllSet.dnsm"
		 -na;
connectAttr "PoleLockBlenderIKXKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "fatnessIKXHip_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXAnkle_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_R_IKLenght_R.msg" "AllSet.dnsm" -na;
connectAttr "IKXKnee_R_IKmessureDiv_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendStretchLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKdistanceClampLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureBlendAntiPopLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKmessureDivLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeAntiPopLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKSetRangeStretchLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleChestMultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleSpine1Part2MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleSpine1Part1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleSpine1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleRootPart2MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleRootPart1MultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "IKScaleRootMultiplyDivide_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendShoulder_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendElbow_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendWrist_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHip_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendKnee_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendAnkle_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToes_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToesEnd_L.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendRoot_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendRootPart1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendRootPart2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendSpine1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendSpine1Part1_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendSpine1Part2_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendChest_M.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendShoulder_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendElbow_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendWrist_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendHip_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendKnee_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendAnkle_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToes_R.msg" "AllSet.dnsm" -na;
connectAttr "ScaleBlendToesEnd_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesEndMPDLeg_L_outputXUC.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesEndMPDLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesEndSetRangeLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesMPD2Leg_L_outputXUC.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesMPD2Leg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesMPD1Leg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesSetRange1Leg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesSetRange2Leg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesPMALeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollHeelClampLeg_L_outputRUC.msg" "AllSet.dnsm" -na;
connectAttr "IKRollHeelClampLeg_L.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockOuterPivotClamp_L_outputRUC.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockOuterPivotClamp_L.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockInnerPivotClamp_L_outputRUC.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockInnerPivotClamp_L.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesEndMPDLeg_R_outputXUC.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesEndMPDLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesEndSetRangeLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesMPD2Leg_R_outputXUC.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesMPD2Leg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesMPD1Leg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesSetRange1Leg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesSetRange2Leg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollToesPMALeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKRollHeelClampLeg_R_outputRUC.msg" "AllSet.dnsm" -na;
connectAttr "IKRollHeelClampLeg_R.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockOuterPivotClamp_R_outputRUC.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockOuterPivotClamp_R.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockInnerPivotClamp_R_outputRUC.msg" "AllSet.dnsm" -na;
connectAttr "IKLegFootRockInnerPivotClamp_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmsetRange_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmCondition_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegsetRange_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegCondition_L.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpineConditionUnitConversion_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpineHybridVisPMA_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpinesetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendSpineCondition_M.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmsetRange_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendArmCondition_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegsetRange_R.msg" "AllSet.dnsm" -na;
connectAttr "FKIKBlendLegCondition_R.msg" "AllSet.dnsm" -na;
connectAttr "PoleArm_LSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKArm_LSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "PoleLeg_LSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKSpine3_MSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKSpineFlipAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpineFlipUpAxisSetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKSpineRamp_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyBlendTwo5_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyMultiplyDivide5_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyBlendTwo4_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyMultiplyDivide4_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyBlendTwo3_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyMultiplyDivide3_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyBlendTwo2_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyMultiplyDivide2_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyBlendTwo1_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyMultiplyDivide1_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyBlendTwo0_M.msg" "AllSet.dnsm" -na;
connectAttr "SpineStretchyMultiplyDivide0_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoAllMultiplySpine_M.msg" "AllSet.dnsm" -na;
connectAttr "IKCurveInfoNormalizeSpine_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSpine3SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "IKStiffSpine1SetRange_M.msg" "AllSet.dnsm" -na;
connectAttr "PoleArm_RSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "IKArm_RSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "PoleLeg_RSetRangeFollow.msg" "AllSet.dnsm" -na;
connectAttr "MainScaleMultiplyDivide.msg" "AllSet.dnsm" -na;
connectAttr "AllSet.msg" "Sets.dnsm" -na;
connectAttr "IKCurveInfoNormalizeSpine_M.ox" "IKCurveInfoAllMultiplySpine_M.i1x"
		;
connectAttr "MainScaleMultiplyDivide.ox" "IKCurveInfoAllMultiplySpine_M.i2x";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "SpineStretchyMultiplyDivide0_M.i2x"
		;
connectAttr "SpineStretchyMultiplyDivide0_M.ox" "SpineStretchyBlendTwo0_M.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "SpineStretchyMultiplyDivide1_M.i2x"
		;
connectAttr "SpineStretchyMultiplyDivide1_M.ox" "SpineStretchyBlendTwo1_M.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "SpineStretchyMultiplyDivide2_M.i2x"
		;
connectAttr "SpineStretchyMultiplyDivide2_M.ox" "SpineStretchyBlendTwo2_M.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "SpineStretchyMultiplyDivide3_M.i2x"
		;
connectAttr "SpineStretchyMultiplyDivide3_M.ox" "SpineStretchyBlendTwo3_M.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "SpineStretchyMultiplyDivide4_M.i2x"
		;
connectAttr "SpineStretchyMultiplyDivide4_M.ox" "SpineStretchyBlendTwo4_M.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "SpineStretchyMultiplyDivide5_M.i2x"
		;
connectAttr "SpineStretchyMultiplyDivide5_M.ox" "SpineStretchyBlendTwo5_M.i[1]";
connectAttr "FKIKBlendLegsetRange_R.ox" "FKIKBlendLegCondition_R.cfg";
connectAttr "FKIKBlendArmsetRange_R.ox" "FKIKBlendArmCondition_R.cfg";
connectAttr "FKIKBlendSpinesetRange_M.ox" "FKIKBlendSpineCondition_M.cfg";
connectAttr "FKIKBlendSpineConditionUnitConversion_M.o" "FKIKBlendSpineHybridVisPMA_M.i1[0]"
		;
connectAttr "FKIKBlendSpineCondition_M.ocr" "FKIKBlendSpineConditionUnitConversion_M.i"
		;
connectAttr "FKIKBlendLegsetRange_L.ox" "FKIKBlendLegCondition_L.cfg";
connectAttr "FKIKBlendArmsetRange_L.ox" "FKIKBlendArmCondition_L.cfg";
connectAttr "IKLegFootRockInnerPivotClamp_R.opr" "IKLegFootRockInnerPivotClamp_R_outputRUC.i"
		;
connectAttr "IKLegFootRockOuterPivotClamp_R.opr" "IKLegFootRockOuterPivotClamp_R_outputRUC.i"
		;
connectAttr "IKRollHeelClampLeg_R.opr" "IKRollHeelClampLeg_R_outputRUC.i";
connectAttr "IKRollToesSetRange2Leg_R.ox" "IKRollToesPMALeg_R.i1[1]";
connectAttr "IKRollToesPMALeg_R.o1" "IKRollToesMPD1Leg_R.i1x";
connectAttr "IKRollToesSetRange1Leg_R.ox" "IKRollToesMPD1Leg_R.i2x";
connectAttr "IKRollToesMPD1Leg_R.ox" "IKRollToesMPD2Leg_R.i1x";
connectAttr "IKRollToesMPD2Leg_R.ox" "IKRollToesMPD2Leg_R_outputXUC.i";
connectAttr "IKRollToesEndSetRangeLeg_R.ox" "IKRollToesEndMPDLeg_R.i1x";
connectAttr "IKRollToesEndMPDLeg_R.ox" "IKRollToesEndMPDLeg_R_outputXUC.i";
connectAttr "IKLegFootRockInnerPivotClamp_L.opr" "IKLegFootRockInnerPivotClamp_L_outputRUC.i"
		;
connectAttr "IKLegFootRockOuterPivotClamp_L.opr" "IKLegFootRockOuterPivotClamp_L_outputRUC.i"
		;
connectAttr "IKRollHeelClampLeg_L.opr" "IKRollHeelClampLeg_L_outputRUC.i";
connectAttr "IKRollToesSetRange2Leg_L.ox" "IKRollToesPMALeg_L.i1[1]";
connectAttr "IKRollToesPMALeg_L.o1" "IKRollToesMPD1Leg_L.i1x";
connectAttr "IKRollToesSetRange1Leg_L.ox" "IKRollToesMPD1Leg_L.i2x";
connectAttr "IKRollToesMPD1Leg_L.ox" "IKRollToesMPD2Leg_L.i1x";
connectAttr "IKRollToesMPD2Leg_L.ox" "IKRollToesMPD2Leg_L_outputXUC.i";
connectAttr "IKRollToesEndSetRangeLeg_L.ox" "IKRollToesEndMPDLeg_L.i1x";
connectAttr "IKRollToesEndMPDLeg_L.ox" "IKRollToesEndMPDLeg_L_outputXUC.i";
connectAttr "volumeBlendLegBlendTwo_R.o" "ScaleBlendKnee_R.c1r";
connectAttr "fatnessIKXKnee_R.o1" "ScaleBlendKnee_R.c1g";
connectAttr "fatnessIKXKnee_R.o1" "ScaleBlendKnee_R.c1b";
connectAttr "volumeBlendLegBlendTwo_R.o" "ScaleBlendHip_R.c1r";
connectAttr "fatnessIKXHip_R.o1" "ScaleBlendHip_R.c1g";
connectAttr "fatnessIKXHip_R.o1" "ScaleBlendHip_R.c1b";
connectAttr "volumeBlendArmBlendTwo_R.o" "ScaleBlendElbow_R.c1r";
connectAttr "fatnessIKXElbow_R.o1" "ScaleBlendElbow_R.c1g";
connectAttr "fatnessIKXElbow_R.o1" "ScaleBlendElbow_R.c1b";
connectAttr "volumeBlendArmBlendTwo_R.o" "ScaleBlendShoulder_R.c1r";
connectAttr "fatnessIKXShoulder_R.o1" "ScaleBlendShoulder_R.c1g";
connectAttr "fatnessIKXShoulder_R.o1" "ScaleBlendShoulder_R.c1b";
connectAttr "IKScaleChestMultiplyDivide_M.ox" "ScaleBlendChest_M.c1r";
connectAttr "IKScaleChestMultiplyDivide_M.oy" "ScaleBlendChest_M.c1g";
connectAttr "IKScaleChestMultiplyDivide_M.oz" "ScaleBlendChest_M.c1b";
connectAttr "IKScaleSpine1Part2MultiplyDivide_M.ox" "ScaleBlendSpine1Part2_M.c1r"
		;
connectAttr "IKScaleSpine1Part2MultiplyDivide_M.oy" "ScaleBlendSpine1Part2_M.c1g"
		;
connectAttr "IKScaleSpine1Part2MultiplyDivide_M.oz" "ScaleBlendSpine1Part2_M.c1b"
		;
connectAttr "IKScaleSpine1Part1MultiplyDivide_M.ox" "ScaleBlendSpine1Part1_M.c1r"
		;
connectAttr "IKScaleSpine1Part1MultiplyDivide_M.oy" "ScaleBlendSpine1Part1_M.c1g"
		;
connectAttr "IKScaleSpine1Part1MultiplyDivide_M.oz" "ScaleBlendSpine1Part1_M.c1b"
		;
connectAttr "IKScaleSpine1MultiplyDivide_M.ox" "ScaleBlendSpine1_M.c1r";
connectAttr "IKScaleSpine1MultiplyDivide_M.oy" "ScaleBlendSpine1_M.c1g";
connectAttr "IKScaleSpine1MultiplyDivide_M.oz" "ScaleBlendSpine1_M.c1b";
connectAttr "IKScaleRootPart2MultiplyDivide_M.ox" "ScaleBlendRootPart2_M.c1r";
connectAttr "IKScaleRootPart2MultiplyDivide_M.oy" "ScaleBlendRootPart2_M.c1g";
connectAttr "IKScaleRootPart2MultiplyDivide_M.oz" "ScaleBlendRootPart2_M.c1b";
connectAttr "IKScaleRootPart1MultiplyDivide_M.ox" "ScaleBlendRootPart1_M.c1r";
connectAttr "IKScaleRootPart1MultiplyDivide_M.oy" "ScaleBlendRootPart1_M.c1g";
connectAttr "IKScaleRootPart1MultiplyDivide_M.oz" "ScaleBlendRootPart1_M.c1b";
connectAttr "IKScaleRootMultiplyDivide_M.ox" "ScaleBlendRoot_M.c1r";
connectAttr "IKScaleRootMultiplyDivide_M.oy" "ScaleBlendRoot_M.c1g";
connectAttr "IKScaleRootMultiplyDivide_M.oz" "ScaleBlendRoot_M.c1b";
connectAttr "volumeBlendLegBlendTwo_L.o" "ScaleBlendKnee_L.c1r";
connectAttr "fatnessIKXKnee_L.o1" "ScaleBlendKnee_L.c1g";
connectAttr "fatnessIKXKnee_L.o1" "ScaleBlendKnee_L.c1b";
connectAttr "volumeBlendLegBlendTwo_L.o" "ScaleBlendHip_L.c1r";
connectAttr "fatnessIKXHip_L.o1" "ScaleBlendHip_L.c1g";
connectAttr "fatnessIKXHip_L.o1" "ScaleBlendHip_L.c1b";
connectAttr "volumeBlendArmBlendTwo_L.o" "ScaleBlendElbow_L.c1r";
connectAttr "fatnessIKXElbow_L.o1" "ScaleBlendElbow_L.c1g";
connectAttr "fatnessIKXElbow_L.o1" "ScaleBlendElbow_L.c1b";
connectAttr "volumeBlendArmBlendTwo_L.o" "ScaleBlendShoulder_L.c1r";
connectAttr "fatnessIKXShoulder_L.o1" "ScaleBlendShoulder_L.c1g";
connectAttr "fatnessIKXShoulder_L.o1" "ScaleBlendShoulder_L.c1b";
connectAttr "IKSquashDistributNormalizerBRootPart1_M.o1" "IKScaleRootPart1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBRootPart1_M.o1" "IKScaleRootPart1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBRootPart1_M.o1" "IKScaleRootPart1MultiplyDivide_M.i2z"
		;
connectAttr "IKSquashDistributNormalizerBRootPart2_M.o1" "IKScaleRootPart2MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBRootPart2_M.o1" "IKScaleRootPart2MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBRootPart2_M.o1" "IKScaleRootPart2MultiplyDivide_M.i2z"
		;
connectAttr "IKSquashDistributNormalizerBSpine1_M.o1" "IKScaleSpine1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBSpine1_M.o1" "IKScaleSpine1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBSpine1_M.o1" "IKScaleSpine1MultiplyDivide_M.i2z"
		;
connectAttr "IKSquashDistributNormalizerBSpine1Part1_M.o1" "IKScaleSpine1Part1MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBSpine1Part1_M.o1" "IKScaleSpine1Part1MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBSpine1Part1_M.o1" "IKScaleSpine1Part1MultiplyDivide_M.i2z"
		;
connectAttr "IKSquashDistributNormalizerBSpine1Part2_M.o1" "IKScaleSpine1Part2MultiplyDivide_M.i2x"
		;
connectAttr "IKSquashDistributNormalizerBSpine1Part2_M.o1" "IKScaleSpine1Part2MultiplyDivide_M.i2y"
		;
connectAttr "IKSquashDistributNormalizerBSpine1Part2_M.o1" "IKScaleSpine1Part2MultiplyDivide_M.i2z"
		;
connectAttr "IKmessureBlendStretchLeg_R.o" "IKmessureDivLeg_R.i1x";
connectAttr "IKSetRangeAntiPopLeg_R.ox" "IKmessureBlendAntiPopLeg_R.ab";
connectAttr "IKmessureBlendAntiPopLeg_R.o" "IKdistanceClampLeg_R.ipr";
connectAttr "IKSetRangeStretchLeg_R.ox" "IKmessureBlendStretchLeg_R.ab";
connectAttr "IKdistanceClampLeg_R.opr" "IKmessureBlendStretchLeg_R.i[0]";
connectAttr "IKmessureBlendAntiPopLeg_R.o" "IKmessureBlendStretchLeg_R.i[1]";
connectAttr "IKmessureDivLeg_R.ox" "IKXKnee_R_IKmessureDiv_R.i1x";
connectAttr "IKXKnee_R_IKLenght_R.ox" "IKXKnee_R_IKmessureDiv_R.i2x";
connectAttr "IKmessureDivLeg_R.ox" "IKXAnkle_R_IKmessureDiv_R.i1x";
connectAttr "IKXAnkle_R_IKLenght_R.ox" "IKXAnkle_R_IKmessureDiv_R.i2x";
connectAttr "volumeBlendLegBlendTwo_R.o" "fatnessIKXHip_R.i1[1]";
connectAttr "volumeBlendLegBlendTwo_R.o" "fatnessIKXKnee_R.i1[1]";
connectAttr "IKXKnee_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXKnee_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXKnee_RUnitConversion_R.o" "PoleLockBlenderIKXKnee_R.i[1]"
		;
connectAttr "PoleLockMainScalerIKXKnee_R.ox" "PoleDistanceSideReverseIKXKnee_RUnitConversion_R.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXKnee_R.i2x";
connectAttr "IKXAnkle_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXAnkle_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R.o" "PoleLockBlenderIKXAnkle_R.i[1]"
		;
connectAttr "PoleLockMainScalerIKXAnkle_R.ox" "PoleDistanceSideReverseIKXAnkle_RUnitConversion_R.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXAnkle_R.i2x";
connectAttr "IKmessureBlendStretchArm_R.o" "IKmessureDivArm_R.i1x";
connectAttr "IKSetRangeAntiPopArm_R.ox" "IKmessureBlendAntiPopArm_R.ab";
connectAttr "IKmessureBlendAntiPopArm_R.o" "IKdistanceClampArm_R.ipr";
connectAttr "IKSetRangeStretchArm_R.ox" "IKmessureBlendStretchArm_R.ab";
connectAttr "IKdistanceClampArm_R.opr" "IKmessureBlendStretchArm_R.i[0]";
connectAttr "IKmessureBlendAntiPopArm_R.o" "IKmessureBlendStretchArm_R.i[1]";
connectAttr "IKmessureDivArm_R.ox" "IKXElbow_R_IKmessureDiv_R.i1x";
connectAttr "IKXElbow_R_IKLenght_R.ox" "IKXElbow_R_IKmessureDiv_R.i2x";
connectAttr "IKmessureDivArm_R.ox" "IKXWrist_R_IKmessureDiv_R.i1x";
connectAttr "IKXWrist_R_IKLenght_R.ox" "IKXWrist_R_IKmessureDiv_R.i2x";
connectAttr "volumeBlendArmBlendTwo_R.o" "fatnessIKXShoulder_R.i1[1]";
connectAttr "volumeBlendArmBlendTwo_R.o" "fatnessIKXElbow_R.i1[1]";
connectAttr "IKXElbow_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXElbow_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXElbow_RUnitConversion_R.o" "PoleLockBlenderIKXElbow_R.i[1]"
		;
connectAttr "PoleLockMainScalerIKXElbow_R.ox" "PoleDistanceSideReverseIKXElbow_RUnitConversion_R.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXElbow_R.i2x";
connectAttr "IKXWrist_R_IKmessureDiv_R.ox" "PoleLockBlenderIKXWrist_R.i[0]";
connectAttr "PoleDistanceSideReverseIKXWrist_RUnitConversion_R.o" "PoleLockBlenderIKXWrist_R.i[1]"
		;
connectAttr "PoleLockMainScalerIKXWrist_R.ox" "PoleDistanceSideReverseIKXWrist_RUnitConversion_R.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXWrist_R.i2x";
connectAttr "IKmessureBlendStretchLeg_L.o" "IKmessureDivLeg_L.i1x";
connectAttr "IKSetRangeAntiPopLeg_L.ox" "IKmessureBlendAntiPopLeg_L.ab";
connectAttr "IKmessureBlendAntiPopLeg_L.o" "IKdistanceClampLeg_L.ipr";
connectAttr "IKSetRangeStretchLeg_L.ox" "IKmessureBlendStretchLeg_L.ab";
connectAttr "IKdistanceClampLeg_L.opr" "IKmessureBlendStretchLeg_L.i[0]";
connectAttr "IKmessureBlendAntiPopLeg_L.o" "IKmessureBlendStretchLeg_L.i[1]";
connectAttr "IKmessureDivLeg_L.ox" "IKXKnee_L_IKmessureDiv_L.i1x";
connectAttr "IKXKnee_L_IKLenght_L.ox" "IKXKnee_L_IKmessureDiv_L.i2x";
connectAttr "IKmessureDivLeg_L.ox" "IKXAnkle_L_IKmessureDiv_L.i1x";
connectAttr "IKXAnkle_L_IKLenght_L.ox" "IKXAnkle_L_IKmessureDiv_L.i2x";
connectAttr "volumeBlendLegBlendTwo_L.o" "fatnessIKXHip_L.i1[1]";
connectAttr "volumeBlendLegBlendTwo_L.o" "fatnessIKXKnee_L.i1[1]";
connectAttr "IKXKnee_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXKnee_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXKnee_LUnitConversion_L.o" "PoleLockBlenderIKXKnee_L.i[1]"
		;
connectAttr "PoleLockMainScalerIKXKnee_L.ox" "PoleDistanceSideReverseIKXKnee_LUnitConversion_L.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXKnee_L.i2x";
connectAttr "IKXAnkle_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXAnkle_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L.o" "PoleLockBlenderIKXAnkle_L.i[1]"
		;
connectAttr "PoleLockMainScalerIKXAnkle_L.ox" "PoleDistanceSideReverseIKXAnkle_LUnitConversion_L.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXAnkle_L.i2x";
connectAttr "IKmessureBlendStretchArm_L.o" "IKmessureDivArm_L.i1x";
connectAttr "IKSetRangeAntiPopArm_L.ox" "IKmessureBlendAntiPopArm_L.ab";
connectAttr "IKmessureBlendAntiPopArm_L.o" "IKdistanceClampArm_L.ipr";
connectAttr "IKSetRangeStretchArm_L.ox" "IKmessureBlendStretchArm_L.ab";
connectAttr "IKdistanceClampArm_L.opr" "IKmessureBlendStretchArm_L.i[0]";
connectAttr "IKmessureBlendAntiPopArm_L.o" "IKmessureBlendStretchArm_L.i[1]";
connectAttr "IKmessureDivArm_L.ox" "IKXElbow_L_IKmessureDiv_L.i1x";
connectAttr "IKXElbow_L_IKLenght_L.ox" "IKXElbow_L_IKmessureDiv_L.i2x";
connectAttr "IKmessureDivArm_L.ox" "IKXWrist_L_IKmessureDiv_L.i1x";
connectAttr "IKXWrist_L_IKLenght_L.ox" "IKXWrist_L_IKmessureDiv_L.i2x";
connectAttr "volumeBlendArmBlendTwo_L.o" "fatnessIKXShoulder_L.i1[1]";
connectAttr "volumeBlendArmBlendTwo_L.o" "fatnessIKXElbow_L.i1[1]";
connectAttr "IKXElbow_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXElbow_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXElbow_LUnitConversion_L.o" "PoleLockBlenderIKXElbow_L.i[1]"
		;
connectAttr "PoleLockMainScalerIKXElbow_L.ox" "PoleDistanceSideReverseIKXElbow_LUnitConversion_L.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXElbow_L.i2x";
connectAttr "IKXWrist_L_IKmessureDiv_L.ox" "PoleLockBlenderIKXWrist_L.i[0]";
connectAttr "PoleDistanceSideReverseIKXWrist_LUnitConversion_L.o" "PoleLockBlenderIKXWrist_L.i[1]"
		;
connectAttr "PoleLockMainScalerIKXWrist_L.ox" "PoleDistanceSideReverseIKXWrist_LUnitConversion_L.i"
		;
connectAttr "MainScaleMultiplyDivide.oy" "PoleLockMainScalerIKXWrist_L.i2x";
connectAttr "MainTwistFlipSetRange.oy" "FKAnkle_R360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKAnkle_R360TwistDivideMultiplyDivide.ox" "FKAnkle_RAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKAnkle_RAutoTwistMultiplyDivide.ox" "FKAnkle_RExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideAnkle_R.ox" "twistAdditionAnkle_R.i1[0]";
connectAttr "twistAdditionAnkle_R.o1" "twistAdditionAnkle_R_output1DUC.i";
connectAttr "twistAmountDivideAnklePart1_R.ox" "twistAdditionAnklePart1_R.i1[0]"
		;
connectAttr "twistAdditionAnklePart1_R.o1" "twistAdditionAnklePart1_R_output1DUC.i"
		;
connectAttr "twistAmountDivideAnklePart2_R.ox" "twistAdditionAnklePart2_R.i1[0]"
		;
connectAttr "twistAdditionAnklePart2_R.o1" "twistAdditionAnklePart2_R_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKKnee_R360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKKnee_R360TwistDivideMultiplyDivide.ox" "FKKnee_RAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKKnee_RAutoTwistMultiplyDivide.ox" "FKKnee_RExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideKnee_R.ox" "twistAdditionKnee_R.i1[0]";
connectAttr "twistAmountDivideAnkle_R.ox" "twistAdditionKnee_R.i1[2]";
connectAttr "BendTwistMultKnee1_0_R.ox" "twistAdditionKnee_R.i1[3]";
connectAttr "BendTwistMultKnee1_0_R.oy" "twistAdditionKnee_R.i1[4]";
connectAttr "twistAdditionKnee_R.o1" "twistAdditionKnee_R_output1DUC.i";
connectAttr "twistAmountDivideKneePart1_R.ox" "twistAdditionKneePart1_R.i1[0]";
connectAttr "twistAmountDivideAnklePart1_R.ox" "twistAdditionKneePart1_R.i1[2]";
connectAttr "BendTwistMultKnee1_1_R.ox" "twistAdditionKneePart1_R.i1[3]";
connectAttr "BendTwistMultKnee1_1_R.oy" "twistAdditionKneePart1_R.i1[4]";
connectAttr "twistAdditionKneePart1_R.o1" "twistAdditionKneePart1_R_output1DUC.i"
		;
connectAttr "twistAmountDivideKneePart2_R.ox" "twistAdditionKneePart2_R.i1[0]";
connectAttr "twistAmountDivideAnklePart2_R.ox" "twistAdditionKneePart2_R.i1[2]";
connectAttr "BendTwistMultKnee1_2_R.ox" "twistAdditionKneePart2_R.i1[3]";
connectAttr "BendTwistMultKnee1_2_R.oy" "twistAdditionKneePart2_R.i1[4]";
connectAttr "twistAdditionKneePart2_R.o1" "twistAdditionKneePart2_R_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKHip_R360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKHip_R360TwistDivideMultiplyDivide.ox" "FKHip_RAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKHip_RAutoTwistMultiplyDivide.ox" "FKHip_RExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideHip_R.ox" "twistAdditionHip_R.i1[0]";
connectAttr "BendTwistMultHip1_0_R.ox" "twistAdditionHip_R.i1[2]";
connectAttr "BendTwistMultHip1_0_R.oy" "twistAdditionHip_R.i1[3]";
connectAttr "BendTwistMultHip1_0_R.oz" "twistAdditionHip_R.i1[4]";
connectAttr "twistAdditionHip_R.o1" "twistAdditionHip_R_output1DUC.i";
connectAttr "twistAmountDivideHipPart1_R.ox" "twistAdditionHipPart1_R.i1[0]";
connectAttr "BendTwistMultHip1_1_R.ox" "twistAdditionHipPart1_R.i1[2]";
connectAttr "BendTwistMultHip1_1_R.oy" "twistAdditionHipPart1_R.i1[3]";
connectAttr "BendTwistMultHip1_1_R.oz" "twistAdditionHipPart1_R.i1[4]";
connectAttr "twistAdditionHipPart1_R.o1" "twistAdditionHipPart1_R_output1DUC.i";
connectAttr "twistAmountDivideHipPart2_R.ox" "twistAdditionHipPart2_R.i1[0]";
connectAttr "BendTwistMultHip1_2_R.ox" "twistAdditionHipPart2_R.i1[2]";
connectAttr "BendTwistMultHip1_2_R.oy" "twistAdditionHipPart2_R.i1[3]";
connectAttr "BendTwistMultHip1_2_R.oz" "twistAdditionHipPart2_R.i1[4]";
connectAttr "twistAdditionHipPart2_R.o1" "twistAdditionHipPart2_R_output1DUC.i";
connectAttr "MainTwistFlipSetRange.oy" "FKHead_M360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKHead_M360TwistDivideMultiplyDivide.ox" "FKHead_MAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKHead_MAutoTwistMultiplyDivide.ox" "FKHead_MExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideHead_M.ox" "twistAdditionHead_M.i1[0]";
connectAttr "twistAdditionHead_M.o1" "twistAdditionHead_M_output1DUC.i";
connectAttr "twistAmountDivideHeadPart1_M.ox" "twistAdditionHeadPart1_M.i1[0]";
connectAttr "twistAdditionHeadPart1_M.o1" "twistAdditionHeadPart1_M_output1DUC.i"
		;
connectAttr "twistAmountDivideHeadPart2_M.ox" "twistAdditionHeadPart2_M.i1[0]";
connectAttr "twistAdditionHeadPart2_M.o1" "twistAdditionHeadPart2_M_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKNeck_M360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKNeck_M360TwistDivideMultiplyDivide.ox" "FKNeck_MAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKNeck_MAutoTwistMultiplyDivide.ox" "FKNeck_MExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideNeck_M.ox" "twistAdditionNeck_M.i1[0]";
connectAttr "twistAmountDivideHead_M.ox" "twistAdditionNeck_M.i1[2]";
connectAttr "BendTwistMultNeck1_0_M.ox" "twistAdditionNeck_M.i1[3]";
connectAttr "BendTwistMultNeck1_0_M.oy" "twistAdditionNeck_M.i1[4]";
connectAttr "twistAdditionNeck_M.o1" "twistAdditionNeck_M_output1DUC.i";
connectAttr "twistAmountDivideNeckPart1_M.ox" "twistAdditionNeckPart1_M.i1[0]";
connectAttr "twistAmountDivideHeadPart1_M.ox" "twistAdditionNeckPart1_M.i1[2]";
connectAttr "BendTwistMultNeck1_1_M.ox" "twistAdditionNeckPart1_M.i1[3]";
connectAttr "BendTwistMultNeck1_1_M.oy" "twistAdditionNeckPart1_M.i1[4]";
connectAttr "twistAdditionNeckPart1_M.o1" "twistAdditionNeckPart1_M_output1DUC.i"
		;
connectAttr "twistAmountDivideNeckPart2_M.ox" "twistAdditionNeckPart2_M.i1[0]";
connectAttr "twistAmountDivideHeadPart2_M.ox" "twistAdditionNeckPart2_M.i1[2]";
connectAttr "BendTwistMultNeck1_2_M.ox" "twistAdditionNeckPart2_M.i1[3]";
connectAttr "BendTwistMultNeck1_2_M.oy" "twistAdditionNeckPart2_M.i1[4]";
connectAttr "twistAdditionNeckPart2_M.o1" "twistAdditionNeckPart2_M_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKWrist_R360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKWrist_R360TwistDivideMultiplyDivide.ox" "FKWrist_RAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKWrist_RAutoTwistMultiplyDivide.ox" "FKWrist_RExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideWrist_R.ox" "twistAdditionWrist_R.i1[0]";
connectAttr "twistAdditionWrist_R.o1" "twistAdditionWrist_R_output1DUC.i";
connectAttr "twistAmountDivideWristPart1_R.ox" "twistAdditionWristPart1_R.i1[0]"
		;
connectAttr "twistAdditionWristPart1_R.o1" "twistAdditionWristPart1_R_output1DUC.i"
		;
connectAttr "twistAmountDivideWristPart2_R.ox" "twistAdditionWristPart2_R.i1[0]"
		;
connectAttr "twistAdditionWristPart2_R.o1" "twistAdditionWristPart2_R_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKElbow_R360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKElbow_R360TwistDivideMultiplyDivide.ox" "FKElbow_RAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKElbow_RAutoTwistMultiplyDivide.ox" "FKElbow_RExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideElbow_R.ox" "twistAdditionElbow_R.i1[0]";
connectAttr "twistAmountDivideWrist_R.ox" "twistAdditionElbow_R.i1[2]";
connectAttr "BendTwistMultElbow1_0_R.ox" "twistAdditionElbow_R.i1[3]";
connectAttr "BendTwistMultElbow1_0_R.oy" "twistAdditionElbow_R.i1[4]";
connectAttr "twistAdditionElbow_R.o1" "twistAdditionElbow_R_output1DUC.i";
connectAttr "twistAmountDivideElbowPart1_R.ox" "twistAdditionElbowPart1_R.i1[0]"
		;
connectAttr "twistAmountDivideWristPart1_R.ox" "twistAdditionElbowPart1_R.i1[2]"
		;
connectAttr "BendTwistMultElbow1_1_R.ox" "twistAdditionElbowPart1_R.i1[3]";
connectAttr "BendTwistMultElbow1_1_R.oy" "twistAdditionElbowPart1_R.i1[4]";
connectAttr "twistAdditionElbowPart1_R.o1" "twistAdditionElbowPart1_R_output1DUC.i"
		;
connectAttr "twistAmountDivideElbowPart2_R.ox" "twistAdditionElbowPart2_R.i1[0]"
		;
connectAttr "twistAmountDivideWristPart2_R.ox" "twistAdditionElbowPart2_R.i1[2]"
		;
connectAttr "BendTwistMultElbow1_2_R.ox" "twistAdditionElbowPart2_R.i1[3]";
connectAttr "BendTwistMultElbow1_2_R.oy" "twistAdditionElbowPart2_R.i1[4]";
connectAttr "twistAdditionElbowPart2_R.o1" "twistAdditionElbowPart2_R_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKShoulder_R360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKShoulder_R360TwistDivideMultiplyDivide.ox" "FKShoulder_RAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKShoulder_RAutoTwistMultiplyDivide.ox" "FKShoulder_RExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideShoulder_R.ox" "twistAdditionShoulder_R.i1[0]";
connectAttr "BendTwistMultShoulder1_0_R.ox" "twistAdditionShoulder_R.i1[2]";
connectAttr "BendTwistMultShoulder1_0_R.oy" "twistAdditionShoulder_R.i1[3]";
connectAttr "BendTwistMultShoulder1_0_R.oz" "twistAdditionShoulder_R.i1[4]";
connectAttr "twistAdditionShoulder_R.o1" "twistAdditionShoulder_R_output1DUC.i";
connectAttr "twistAmountDivideShoulderPart1_R.ox" "twistAdditionShoulderPart1_R.i1[0]"
		;
connectAttr "BendTwistMultShoulder1_1_R.ox" "twistAdditionShoulderPart1_R.i1[2]"
		;
connectAttr "BendTwistMultShoulder1_1_R.oy" "twistAdditionShoulderPart1_R.i1[3]"
		;
connectAttr "BendTwistMultShoulder1_1_R.oz" "twistAdditionShoulderPart1_R.i1[4]"
		;
connectAttr "twistAdditionShoulderPart1_R.o1" "twistAdditionShoulderPart1_R_output1DUC.i"
		;
connectAttr "twistAmountDivideShoulderPart2_R.ox" "twistAdditionShoulderPart2_R.i1[0]"
		;
connectAttr "BendTwistMultShoulder1_2_R.ox" "twistAdditionShoulderPart2_R.i1[2]"
		;
connectAttr "BendTwistMultShoulder1_2_R.oy" "twistAdditionShoulderPart2_R.i1[3]"
		;
connectAttr "BendTwistMultShoulder1_2_R.oz" "twistAdditionShoulderPart2_R.i1[4]"
		;
connectAttr "twistAdditionShoulderPart2_R.o1" "twistAdditionShoulderPart2_R_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKAnkle_L360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKAnkle_L360TwistDivideMultiplyDivide.ox" "FKAnkle_LAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKAnkle_LAutoTwistMultiplyDivide.ox" "FKAnkle_LExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideAnkle_L.ox" "twistAdditionAnkle_L.i1[0]";
connectAttr "twistAdditionAnkle_L.o1" "twistAdditionAnkle_L_output1DUC.i";
connectAttr "twistAmountDivideAnklePart1_L.ox" "twistAdditionAnklePart1_L.i1[0]"
		;
connectAttr "twistAdditionAnklePart1_L.o1" "twistAdditionAnklePart1_L_output1DUC.i"
		;
connectAttr "twistAmountDivideAnklePart2_L.ox" "twistAdditionAnklePart2_L.i1[0]"
		;
connectAttr "twistAdditionAnklePart2_L.o1" "twistAdditionAnklePart2_L_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKKnee_L360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKKnee_L360TwistDivideMultiplyDivide.ox" "FKKnee_LAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKKnee_LAutoTwistMultiplyDivide.ox" "FKKnee_LExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideKnee_L.ox" "twistAdditionKnee_L.i1[0]";
connectAttr "twistAmountDivideAnkle_L.ox" "twistAdditionKnee_L.i1[2]";
connectAttr "BendTwistMultKnee1_0_L.ox" "twistAdditionKnee_L.i1[3]";
connectAttr "BendTwistMultKnee1_0_L.oy" "twistAdditionKnee_L.i1[4]";
connectAttr "twistAdditionKnee_L.o1" "twistAdditionKnee_L_output1DUC.i";
connectAttr "twistAmountDivideKneePart1_L.ox" "twistAdditionKneePart1_L.i1[0]";
connectAttr "twistAmountDivideAnklePart1_L.ox" "twistAdditionKneePart1_L.i1[2]";
connectAttr "BendTwistMultKnee1_1_L.ox" "twistAdditionKneePart1_L.i1[3]";
connectAttr "BendTwistMultKnee1_1_L.oy" "twistAdditionKneePart1_L.i1[4]";
connectAttr "twistAdditionKneePart1_L.o1" "twistAdditionKneePart1_L_output1DUC.i"
		;
connectAttr "twistAmountDivideKneePart2_L.ox" "twistAdditionKneePart2_L.i1[0]";
connectAttr "twistAmountDivideAnklePart2_L.ox" "twistAdditionKneePart2_L.i1[2]";
connectAttr "BendTwistMultKnee1_2_L.ox" "twistAdditionKneePart2_L.i1[3]";
connectAttr "BendTwistMultKnee1_2_L.oy" "twistAdditionKneePart2_L.i1[4]";
connectAttr "twistAdditionKneePart2_L.o1" "twistAdditionKneePart2_L_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKHip_L360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKHip_L360TwistDivideMultiplyDivide.ox" "FKHip_LAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKHip_LAutoTwistMultiplyDivide.ox" "FKHip_LExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideHip_L.ox" "twistAdditionHip_L.i1[0]";
connectAttr "BendTwistMultHip1_0_L.ox" "twistAdditionHip_L.i1[2]";
connectAttr "BendTwistMultHip1_0_L.oy" "twistAdditionHip_L.i1[3]";
connectAttr "BendTwistMultHip1_0_L.oz" "twistAdditionHip_L.i1[4]";
connectAttr "twistAdditionHip_L.o1" "twistAdditionHip_L_output1DUC.i";
connectAttr "twistAmountDivideHipPart1_L.ox" "twistAdditionHipPart1_L.i1[0]";
connectAttr "BendTwistMultHip1_1_L.ox" "twistAdditionHipPart1_L.i1[2]";
connectAttr "BendTwistMultHip1_1_L.oy" "twistAdditionHipPart1_L.i1[3]";
connectAttr "BendTwistMultHip1_1_L.oz" "twistAdditionHipPart1_L.i1[4]";
connectAttr "twistAdditionHipPart1_L.o1" "twistAdditionHipPart1_L_output1DUC.i";
connectAttr "twistAmountDivideHipPart2_L.ox" "twistAdditionHipPart2_L.i1[0]";
connectAttr "BendTwistMultHip1_2_L.ox" "twistAdditionHipPart2_L.i1[2]";
connectAttr "BendTwistMultHip1_2_L.oy" "twistAdditionHipPart2_L.i1[3]";
connectAttr "BendTwistMultHip1_2_L.oz" "twistAdditionHipPart2_L.i1[4]";
connectAttr "twistAdditionHipPart2_L.o1" "twistAdditionHipPart2_L_output1DUC.i";
connectAttr "MainTwistFlipSetRange.oy" "FKWrist_L360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKWrist_L360TwistDivideMultiplyDivide.ox" "FKWrist_LAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKWrist_LAutoTwistMultiplyDivide.ox" "FKWrist_LExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideWrist_L.ox" "twistAdditionWrist_L.i1[0]";
connectAttr "twistAdditionWrist_L.o1" "twistAdditionWrist_L_output1DUC.i";
connectAttr "twistAmountDivideWristPart1_L.ox" "twistAdditionWristPart1_L.i1[0]"
		;
connectAttr "twistAdditionWristPart1_L.o1" "twistAdditionWristPart1_L_output1DUC.i"
		;
connectAttr "twistAmountDivideWristPart2_L.ox" "twistAdditionWristPart2_L.i1[0]"
		;
connectAttr "twistAdditionWristPart2_L.o1" "twistAdditionWristPart2_L_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKElbow_L360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKElbow_L360TwistDivideMultiplyDivide.ox" "FKElbow_LAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKElbow_LAutoTwistMultiplyDivide.ox" "FKElbow_LExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideElbow_L.ox" "twistAdditionElbow_L.i1[0]";
connectAttr "twistAmountDivideWrist_L.ox" "twistAdditionElbow_L.i1[2]";
connectAttr "BendTwistMultElbow1_0_L.ox" "twistAdditionElbow_L.i1[3]";
connectAttr "BendTwistMultElbow1_0_L.oy" "twistAdditionElbow_L.i1[4]";
connectAttr "twistAdditionElbow_L.o1" "twistAdditionElbow_L_output1DUC.i";
connectAttr "twistAmountDivideElbowPart1_L.ox" "twistAdditionElbowPart1_L.i1[0]"
		;
connectAttr "twistAmountDivideWristPart1_L.ox" "twistAdditionElbowPart1_L.i1[2]"
		;
connectAttr "BendTwistMultElbow1_1_L.ox" "twistAdditionElbowPart1_L.i1[3]";
connectAttr "BendTwistMultElbow1_1_L.oy" "twistAdditionElbowPart1_L.i1[4]";
connectAttr "twistAdditionElbowPart1_L.o1" "twistAdditionElbowPart1_L_output1DUC.i"
		;
connectAttr "twistAmountDivideElbowPart2_L.ox" "twistAdditionElbowPart2_L.i1[0]"
		;
connectAttr "twistAmountDivideWristPart2_L.ox" "twistAdditionElbowPart2_L.i1[2]"
		;
connectAttr "BendTwistMultElbow1_2_L.ox" "twistAdditionElbowPart2_L.i1[3]";
connectAttr "BendTwistMultElbow1_2_L.oy" "twistAdditionElbowPart2_L.i1[4]";
connectAttr "twistAdditionElbowPart2_L.o1" "twistAdditionElbowPart2_L_output1DUC.i"
		;
connectAttr "MainTwistFlipSetRange.oy" "FKShoulder_L360TwistDivideMultiplyDivide.i1x"
		;
connectAttr "FKShoulder_L360TwistDivideMultiplyDivide.ox" "FKShoulder_LAutoTwistMultiplyDivide.i2x"
		;
connectAttr "FKShoulder_LAutoTwistMultiplyDivide.ox" "FKShoulder_LExtraTwistPlusMinusAverage.i1[0]"
		;
connectAttr "twistAmountDivideShoulder_L.ox" "twistAdditionShoulder_L.i1[0]";
connectAttr "BendTwistMultShoulder1_0_L.ox" "twistAdditionShoulder_L.i1[2]";
connectAttr "BendTwistMultShoulder1_0_L.oy" "twistAdditionShoulder_L.i1[3]";
connectAttr "BendTwistMultShoulder1_0_L.oz" "twistAdditionShoulder_L.i1[4]";
connectAttr "twistAdditionShoulder_L.o1" "twistAdditionShoulder_L_output1DUC.i";
connectAttr "twistAmountDivideShoulderPart1_L.ox" "twistAdditionShoulderPart1_L.i1[0]"
		;
connectAttr "BendTwistMultShoulder1_1_L.ox" "twistAdditionShoulderPart1_L.i1[2]"
		;
connectAttr "BendTwistMultShoulder1_1_L.oy" "twistAdditionShoulderPart1_L.i1[3]"
		;
connectAttr "BendTwistMultShoulder1_1_L.oz" "twistAdditionShoulderPart1_L.i1[4]"
		;
connectAttr "twistAdditionShoulderPart1_L.o1" "twistAdditionShoulderPart1_L_output1DUC.i"
		;
connectAttr "twistAmountDivideShoulderPart2_L.ox" "twistAdditionShoulderPart2_L.i1[0]"
		;
connectAttr "BendTwistMultShoulder1_2_L.ox" "twistAdditionShoulderPart2_L.i1[2]"
		;
connectAttr "BendTwistMultShoulder1_2_L.oy" "twistAdditionShoulderPart2_L.i1[3]"
		;
connectAttr "BendTwistMultShoulder1_2_L.oz" "twistAdditionShoulderPart2_L.i1[4]"
		;
connectAttr "twistAdditionShoulderPart2_L.o1" "twistAdditionShoulderPart2_L_output1DUC.i"
		;
connectAttr "IKmessureDivLeg_R.ox" "BendStretchyMDLKnee2_R.i2";
connectAttr "ScaleBlendKnee_R.opr" "ScaleBlendMultKnee_R.i1x";
connectAttr "ScaleBlendKnee_R.opg" "ScaleBlendMultKnee_R.i1y";
connectAttr "ScaleBlendKnee_R.opb" "ScaleBlendMultKnee_R.i1z";
connectAttr "BendScaleMultKnee1_0_R.o" "BendScaleAddKnee1_0_R.i3[0]";
connectAttr "BendScaleMultKnee2_0_R.o" "BendScaleAddKnee1_0_R.i3[1]";
connectAttr "ScaleBlendKnee_R.opr" "ScaleBlendMultAKnee_R.i1x";
connectAttr "ScaleBlendKnee_R.opg" "ScaleBlendMultAKnee_R.i1y";
connectAttr "ScaleBlendKnee_R.opb" "ScaleBlendMultAKnee_R.i1z";
connectAttr "ScaleBlendMultAKnee_R.ox" "ScaleBlendMultBKnee_R.i1x";
connectAttr "ScaleBlendMultAKnee_R.oy" "ScaleBlendMultBKnee_R.i1y";
connectAttr "ScaleBlendMultAKnee_R.oz" "ScaleBlendMultBKnee_R.i1z";
connectAttr "BendScaleMultKnee1_1_R.o" "BendScaleAddKnee1_1_R.i3[0]";
connectAttr "BendScaleMultKnee2_1_R.o" "BendScaleAddKnee1_1_R.i3[1]";
connectAttr "ScaleBlendKnee_R.opr" "ScaleBlendMultKneePart1_R.i1x";
connectAttr "ScaleBlendKnee_R.opg" "ScaleBlendMultKneePart1_R.i1y";
connectAttr "ScaleBlendKnee_R.opb" "ScaleBlendMultKneePart1_R.i1z";
connectAttr "ScaleBlendKnee_R.opr" "ScaleBlendMultAKneePart1_R.i1x";
connectAttr "ScaleBlendKnee_R.opg" "ScaleBlendMultAKneePart1_R.i1y";
connectAttr "ScaleBlendKnee_R.opb" "ScaleBlendMultAKneePart1_R.i1z";
connectAttr "ScaleBlendMultAKneePart1_R.ox" "ScaleBlendMultBKneePart1_R.i1x";
connectAttr "ScaleBlendMultAKneePart1_R.oy" "ScaleBlendMultBKneePart1_R.i1y";
connectAttr "ScaleBlendMultAKneePart1_R.oz" "ScaleBlendMultBKneePart1_R.i1z";
connectAttr "BendScaleMultKnee1_2_R.o" "BendScaleAddKnee1_2_R.i3[0]";
connectAttr "BendScaleMultKnee2_2_R.o" "BendScaleAddKnee1_2_R.i3[1]";
connectAttr "ScaleBlendKnee_R.opr" "ScaleBlendMultKneePart2_R.i1x";
connectAttr "ScaleBlendKnee_R.opg" "ScaleBlendMultKneePart2_R.i1y";
connectAttr "ScaleBlendKnee_R.opb" "ScaleBlendMultKneePart2_R.i1z";
connectAttr "ScaleBlendKnee_R.opr" "ScaleBlendMultAKneePart2_R.i1x";
connectAttr "ScaleBlendKnee_R.opg" "ScaleBlendMultAKneePart2_R.i1y";
connectAttr "ScaleBlendKnee_R.opb" "ScaleBlendMultAKneePart2_R.i1z";
connectAttr "ScaleBlendMultAKneePart2_R.ox" "ScaleBlendMultBKneePart2_R.i1x";
connectAttr "ScaleBlendMultAKneePart2_R.oy" "ScaleBlendMultBKneePart2_R.i1y";
connectAttr "ScaleBlendMultAKneePart2_R.oz" "ScaleBlendMultBKneePart2_R.i1z";
connectAttr "IKmessureDivLeg_R.ox" "BendStretchyMDLHip2_R.i2";
connectAttr "ScaleBlendHip_R.opr" "ScaleBlendMultHip_R.i1x";
connectAttr "ScaleBlendHip_R.opg" "ScaleBlendMultHip_R.i1y";
connectAttr "ScaleBlendHip_R.opb" "ScaleBlendMultHip_R.i1z";
connectAttr "BendScaleMultHip1_0_R.o" "BendScaleAddHip1_0_R.i3[0]";
connectAttr "BendScaleMultHip2_0_R.o" "BendScaleAddHip1_0_R.i3[1]";
connectAttr "ScaleBlendHip_R.opr" "ScaleBlendMultAHip_R.i1x";
connectAttr "ScaleBlendHip_R.opg" "ScaleBlendMultAHip_R.i1y";
connectAttr "ScaleBlendHip_R.opb" "ScaleBlendMultAHip_R.i1z";
connectAttr "ScaleBlendMultAHip_R.ox" "ScaleBlendMultBHip_R.i1x";
connectAttr "ScaleBlendMultAHip_R.oy" "ScaleBlendMultBHip_R.i1y";
connectAttr "ScaleBlendMultAHip_R.oz" "ScaleBlendMultBHip_R.i1z";
connectAttr "BendScaleMultHip1_1_R.o" "BendScaleAddHip1_1_R.i3[0]";
connectAttr "BendScaleMultHip2_1_R.o" "BendScaleAddHip1_1_R.i3[1]";
connectAttr "BendScaleMultKneeEnd_1_R.o" "BendScaleAddHip1_1_R.i3[2]";
connectAttr "ScaleBlendHip_R.opr" "ScaleBlendMultHipPart1_R.i1x";
connectAttr "ScaleBlendHip_R.opg" "ScaleBlendMultHipPart1_R.i1y";
connectAttr "ScaleBlendHip_R.opb" "ScaleBlendMultHipPart1_R.i1z";
connectAttr "ScaleBlendHip_R.opr" "ScaleBlendMultAHipPart1_R.i1x";
connectAttr "ScaleBlendHip_R.opg" "ScaleBlendMultAHipPart1_R.i1y";
connectAttr "ScaleBlendHip_R.opb" "ScaleBlendMultAHipPart1_R.i1z";
connectAttr "ScaleBlendMultAHipPart1_R.ox" "ScaleBlendMultBHipPart1_R.i1x";
connectAttr "ScaleBlendMultAHipPart1_R.oy" "ScaleBlendMultBHipPart1_R.i1y";
connectAttr "ScaleBlendMultAHipPart1_R.oz" "ScaleBlendMultBHipPart1_R.i1z";
connectAttr "BendScaleMultHip1_2_R.o" "BendScaleAddHip1_2_R.i3[0]";
connectAttr "BendScaleMultHip2_2_R.o" "BendScaleAddHip1_2_R.i3[1]";
connectAttr "BendScaleMultKneeEnd_2_R.o" "BendScaleAddHip1_2_R.i3[2]";
connectAttr "ScaleBlendHip_R.opr" "ScaleBlendMultHipPart2_R.i1x";
connectAttr "ScaleBlendHip_R.opg" "ScaleBlendMultHipPart2_R.i1y";
connectAttr "ScaleBlendHip_R.opb" "ScaleBlendMultHipPart2_R.i1z";
connectAttr "ScaleBlendHip_R.opr" "ScaleBlendMultAHipPart2_R.i1x";
connectAttr "ScaleBlendHip_R.opg" "ScaleBlendMultAHipPart2_R.i1y";
connectAttr "ScaleBlendHip_R.opb" "ScaleBlendMultAHipPart2_R.i1z";
connectAttr "ScaleBlendMultAHipPart2_R.ox" "ScaleBlendMultBHipPart2_R.i1x";
connectAttr "ScaleBlendMultAHipPart2_R.oy" "ScaleBlendMultBHipPart2_R.i1y";
connectAttr "ScaleBlendMultAHipPart2_R.oz" "ScaleBlendMultBHipPart2_R.i1z";
connectAttr "BendScaleMultNeck1_0_M.o" "BendScaleAddNeck1_0_M.i3[0]";
connectAttr "BendScaleMultNeck2_0_M.o" "BendScaleAddNeck1_0_M.i3[1]";
connectAttr "ScaleBlendMultANeck_M.ox" "ScaleBlendMultBNeck_M.i1x";
connectAttr "ScaleBlendMultANeck_M.oy" "ScaleBlendMultBNeck_M.i1y";
connectAttr "ScaleBlendMultANeck_M.oz" "ScaleBlendMultBNeck_M.i1z";
connectAttr "BendScaleMultNeck1_1_M.o" "BendScaleAddNeck1_1_M.i3[0]";
connectAttr "BendScaleMultNeck2_1_M.o" "BendScaleAddNeck1_1_M.i3[1]";
connectAttr "ScaleBlendMultANeckPart1_M.ox" "ScaleBlendMultBNeckPart1_M.i1x";
connectAttr "ScaleBlendMultANeckPart1_M.oy" "ScaleBlendMultBNeckPart1_M.i1y";
connectAttr "ScaleBlendMultANeckPart1_M.oz" "ScaleBlendMultBNeckPart1_M.i1z";
connectAttr "BendScaleMultNeck1_2_M.o" "BendScaleAddNeck1_2_M.i3[0]";
connectAttr "BendScaleMultNeck2_2_M.o" "BendScaleAddNeck1_2_M.i3[1]";
connectAttr "ScaleBlendMultANeckPart2_M.ox" "ScaleBlendMultBNeckPart2_M.i1x";
connectAttr "ScaleBlendMultANeckPart2_M.oy" "ScaleBlendMultBNeckPart2_M.i1y";
connectAttr "ScaleBlendMultANeckPart2_M.oz" "ScaleBlendMultBNeckPart2_M.i1z";
connectAttr "IKmessureDivArm_R.ox" "BendStretchyMDLElbow2_R.i2";
connectAttr "ScaleBlendElbow_R.opr" "ScaleBlendMultElbow_R.i1x";
connectAttr "ScaleBlendElbow_R.opg" "ScaleBlendMultElbow_R.i1y";
connectAttr "ScaleBlendElbow_R.opb" "ScaleBlendMultElbow_R.i1z";
connectAttr "BendScaleMultElbow1_0_R.o" "BendScaleAddElbow1_0_R.i3[0]";
connectAttr "BendScaleMultElbow2_0_R.o" "BendScaleAddElbow1_0_R.i3[1]";
connectAttr "ScaleBlendElbow_R.opr" "ScaleBlendMultAElbow_R.i1x";
connectAttr "ScaleBlendElbow_R.opg" "ScaleBlendMultAElbow_R.i1y";
connectAttr "ScaleBlendElbow_R.opb" "ScaleBlendMultAElbow_R.i1z";
connectAttr "ScaleBlendMultAElbow_R.ox" "ScaleBlendMultBElbow_R.i1x";
connectAttr "ScaleBlendMultAElbow_R.oy" "ScaleBlendMultBElbow_R.i1y";
connectAttr "ScaleBlendMultAElbow_R.oz" "ScaleBlendMultBElbow_R.i1z";
connectAttr "BendScaleMultElbow1_1_R.o" "BendScaleAddElbow1_1_R.i3[0]";
connectAttr "BendScaleMultElbow2_1_R.o" "BendScaleAddElbow1_1_R.i3[1]";
connectAttr "ScaleBlendElbow_R.opr" "ScaleBlendMultElbowPart1_R.i1x";
connectAttr "ScaleBlendElbow_R.opg" "ScaleBlendMultElbowPart1_R.i1y";
connectAttr "ScaleBlendElbow_R.opb" "ScaleBlendMultElbowPart1_R.i1z";
connectAttr "ScaleBlendElbow_R.opr" "ScaleBlendMultAElbowPart1_R.i1x";
connectAttr "ScaleBlendElbow_R.opg" "ScaleBlendMultAElbowPart1_R.i1y";
connectAttr "ScaleBlendElbow_R.opb" "ScaleBlendMultAElbowPart1_R.i1z";
connectAttr "ScaleBlendMultAElbowPart1_R.ox" "ScaleBlendMultBElbowPart1_R.i1x";
connectAttr "ScaleBlendMultAElbowPart1_R.oy" "ScaleBlendMultBElbowPart1_R.i1y";
connectAttr "ScaleBlendMultAElbowPart1_R.oz" "ScaleBlendMultBElbowPart1_R.i1z";
connectAttr "BendScaleMultElbow1_2_R.o" "BendScaleAddElbow1_2_R.i3[0]";
connectAttr "BendScaleMultElbow2_2_R.o" "BendScaleAddElbow1_2_R.i3[1]";
connectAttr "ScaleBlendElbow_R.opr" "ScaleBlendMultElbowPart2_R.i1x";
connectAttr "ScaleBlendElbow_R.opg" "ScaleBlendMultElbowPart2_R.i1y";
connectAttr "ScaleBlendElbow_R.opb" "ScaleBlendMultElbowPart2_R.i1z";
connectAttr "ScaleBlendElbow_R.opr" "ScaleBlendMultAElbowPart2_R.i1x";
connectAttr "ScaleBlendElbow_R.opg" "ScaleBlendMultAElbowPart2_R.i1y";
connectAttr "ScaleBlendElbow_R.opb" "ScaleBlendMultAElbowPart2_R.i1z";
connectAttr "ScaleBlendMultAElbowPart2_R.ox" "ScaleBlendMultBElbowPart2_R.i1x";
connectAttr "ScaleBlendMultAElbowPart2_R.oy" "ScaleBlendMultBElbowPart2_R.i1y";
connectAttr "ScaleBlendMultAElbowPart2_R.oz" "ScaleBlendMultBElbowPart2_R.i1z";
connectAttr "IKmessureDivArm_R.ox" "BendStretchyMDLShoulder2_R.i2";
connectAttr "ScaleBlendShoulder_R.opr" "ScaleBlendMultShoulder_R.i1x";
connectAttr "ScaleBlendShoulder_R.opg" "ScaleBlendMultShoulder_R.i1y";
connectAttr "ScaleBlendShoulder_R.opb" "ScaleBlendMultShoulder_R.i1z";
connectAttr "BendScaleMultShoulder1_0_R.o" "BendScaleAddShoulder1_0_R.i3[0]";
connectAttr "BendScaleMultShoulder2_0_R.o" "BendScaleAddShoulder1_0_R.i3[1]";
connectAttr "ScaleBlendShoulder_R.opr" "ScaleBlendMultAShoulder_R.i1x";
connectAttr "ScaleBlendShoulder_R.opg" "ScaleBlendMultAShoulder_R.i1y";
connectAttr "ScaleBlendShoulder_R.opb" "ScaleBlendMultAShoulder_R.i1z";
connectAttr "ScaleBlendMultAShoulder_R.ox" "ScaleBlendMultBShoulder_R.i1x";
connectAttr "ScaleBlendMultAShoulder_R.oy" "ScaleBlendMultBShoulder_R.i1y";
connectAttr "ScaleBlendMultAShoulder_R.oz" "ScaleBlendMultBShoulder_R.i1z";
connectAttr "BendScaleMultShoulder1_1_R.o" "BendScaleAddShoulder1_1_R.i3[0]";
connectAttr "BendScaleMultShoulder2_1_R.o" "BendScaleAddShoulder1_1_R.i3[1]";
connectAttr "BendScaleMultElbowEnd_1_R.o" "BendScaleAddShoulder1_1_R.i3[2]";
connectAttr "ScaleBlendShoulder_R.opr" "ScaleBlendMultShoulderPart1_R.i1x";
connectAttr "ScaleBlendShoulder_R.opg" "ScaleBlendMultShoulderPart1_R.i1y";
connectAttr "ScaleBlendShoulder_R.opb" "ScaleBlendMultShoulderPart1_R.i1z";
connectAttr "ScaleBlendShoulder_R.opr" "ScaleBlendMultAShoulderPart1_R.i1x";
connectAttr "ScaleBlendShoulder_R.opg" "ScaleBlendMultAShoulderPart1_R.i1y";
connectAttr "ScaleBlendShoulder_R.opb" "ScaleBlendMultAShoulderPart1_R.i1z";
connectAttr "ScaleBlendMultAShoulderPart1_R.ox" "ScaleBlendMultBShoulderPart1_R.i1x"
		;
connectAttr "ScaleBlendMultAShoulderPart1_R.oy" "ScaleBlendMultBShoulderPart1_R.i1y"
		;
connectAttr "ScaleBlendMultAShoulderPart1_R.oz" "ScaleBlendMultBShoulderPart1_R.i1z"
		;
connectAttr "BendScaleMultShoulder1_2_R.o" "BendScaleAddShoulder1_2_R.i3[0]";
connectAttr "BendScaleMultShoulder2_2_R.o" "BendScaleAddShoulder1_2_R.i3[1]";
connectAttr "BendScaleMultElbowEnd_2_R.o" "BendScaleAddShoulder1_2_R.i3[2]";
connectAttr "ScaleBlendShoulder_R.opr" "ScaleBlendMultShoulderPart2_R.i1x";
connectAttr "ScaleBlendShoulder_R.opg" "ScaleBlendMultShoulderPart2_R.i1y";
connectAttr "ScaleBlendShoulder_R.opb" "ScaleBlendMultShoulderPart2_R.i1z";
connectAttr "ScaleBlendShoulder_R.opr" "ScaleBlendMultAShoulderPart2_R.i1x";
connectAttr "ScaleBlendShoulder_R.opg" "ScaleBlendMultAShoulderPart2_R.i1y";
connectAttr "ScaleBlendShoulder_R.opb" "ScaleBlendMultAShoulderPart2_R.i1z";
connectAttr "ScaleBlendMultAShoulderPart2_R.ox" "ScaleBlendMultBShoulderPart2_R.i1x"
		;
connectAttr "ScaleBlendMultAShoulderPart2_R.oy" "ScaleBlendMultBShoulderPart2_R.i1y"
		;
connectAttr "ScaleBlendMultAShoulderPart2_R.oz" "ScaleBlendMultBShoulderPart2_R.i1z"
		;
connectAttr "IKmessureDivLeg_L.ox" "BendStretchyMDLKnee2_L.i2";
connectAttr "ScaleBlendKnee_L.opr" "ScaleBlendMultKnee_L.i1x";
connectAttr "ScaleBlendKnee_L.opg" "ScaleBlendMultKnee_L.i1y";
connectAttr "ScaleBlendKnee_L.opb" "ScaleBlendMultKnee_L.i1z";
connectAttr "BendScaleMultKnee1_0_L.o" "BendScaleAddKnee1_0_L.i3[0]";
connectAttr "BendScaleMultKnee2_0_L.o" "BendScaleAddKnee1_0_L.i3[1]";
connectAttr "ScaleBlendKnee_L.opr" "ScaleBlendMultAKnee_L.i1x";
connectAttr "ScaleBlendKnee_L.opg" "ScaleBlendMultAKnee_L.i1y";
connectAttr "ScaleBlendKnee_L.opb" "ScaleBlendMultAKnee_L.i1z";
connectAttr "ScaleBlendMultAKnee_L.ox" "ScaleBlendMultBKnee_L.i1x";
connectAttr "ScaleBlendMultAKnee_L.oy" "ScaleBlendMultBKnee_L.i1y";
connectAttr "ScaleBlendMultAKnee_L.oz" "ScaleBlendMultBKnee_L.i1z";
connectAttr "BendScaleMultKnee1_1_L.o" "BendScaleAddKnee1_1_L.i3[0]";
connectAttr "BendScaleMultKnee2_1_L.o" "BendScaleAddKnee1_1_L.i3[1]";
connectAttr "ScaleBlendKnee_L.opr" "ScaleBlendMultKneePart1_L.i1x";
connectAttr "ScaleBlendKnee_L.opg" "ScaleBlendMultKneePart1_L.i1y";
connectAttr "ScaleBlendKnee_L.opb" "ScaleBlendMultKneePart1_L.i1z";
connectAttr "ScaleBlendKnee_L.opr" "ScaleBlendMultAKneePart1_L.i1x";
connectAttr "ScaleBlendKnee_L.opg" "ScaleBlendMultAKneePart1_L.i1y";
connectAttr "ScaleBlendKnee_L.opb" "ScaleBlendMultAKneePart1_L.i1z";
connectAttr "ScaleBlendMultAKneePart1_L.ox" "ScaleBlendMultBKneePart1_L.i1x";
connectAttr "ScaleBlendMultAKneePart1_L.oy" "ScaleBlendMultBKneePart1_L.i1y";
connectAttr "ScaleBlendMultAKneePart1_L.oz" "ScaleBlendMultBKneePart1_L.i1z";
connectAttr "BendScaleMultKnee1_2_L.o" "BendScaleAddKnee1_2_L.i3[0]";
connectAttr "BendScaleMultKnee2_2_L.o" "BendScaleAddKnee1_2_L.i3[1]";
connectAttr "ScaleBlendKnee_L.opr" "ScaleBlendMultKneePart2_L.i1x";
connectAttr "ScaleBlendKnee_L.opg" "ScaleBlendMultKneePart2_L.i1y";
connectAttr "ScaleBlendKnee_L.opb" "ScaleBlendMultKneePart2_L.i1z";
connectAttr "ScaleBlendKnee_L.opr" "ScaleBlendMultAKneePart2_L.i1x";
connectAttr "ScaleBlendKnee_L.opg" "ScaleBlendMultAKneePart2_L.i1y";
connectAttr "ScaleBlendKnee_L.opb" "ScaleBlendMultAKneePart2_L.i1z";
connectAttr "ScaleBlendMultAKneePart2_L.ox" "ScaleBlendMultBKneePart2_L.i1x";
connectAttr "ScaleBlendMultAKneePart2_L.oy" "ScaleBlendMultBKneePart2_L.i1y";
connectAttr "ScaleBlendMultAKneePart2_L.oz" "ScaleBlendMultBKneePart2_L.i1z";
connectAttr "IKmessureDivLeg_L.ox" "BendStretchyMDLHip2_L.i2";
connectAttr "ScaleBlendHip_L.opr" "ScaleBlendMultHip_L.i1x";
connectAttr "ScaleBlendHip_L.opg" "ScaleBlendMultHip_L.i1y";
connectAttr "ScaleBlendHip_L.opb" "ScaleBlendMultHip_L.i1z";
connectAttr "BendScaleMultHip1_0_L.o" "BendScaleAddHip1_0_L.i3[0]";
connectAttr "BendScaleMultHip2_0_L.o" "BendScaleAddHip1_0_L.i3[1]";
connectAttr "ScaleBlendHip_L.opr" "ScaleBlendMultAHip_L.i1x";
connectAttr "ScaleBlendHip_L.opg" "ScaleBlendMultAHip_L.i1y";
connectAttr "ScaleBlendHip_L.opb" "ScaleBlendMultAHip_L.i1z";
connectAttr "ScaleBlendMultAHip_L.ox" "ScaleBlendMultBHip_L.i1x";
connectAttr "ScaleBlendMultAHip_L.oy" "ScaleBlendMultBHip_L.i1y";
connectAttr "ScaleBlendMultAHip_L.oz" "ScaleBlendMultBHip_L.i1z";
connectAttr "BendScaleMultHip1_1_L.o" "BendScaleAddHip1_1_L.i3[0]";
connectAttr "BendScaleMultHip2_1_L.o" "BendScaleAddHip1_1_L.i3[1]";
connectAttr "BendScaleMultKneeEnd_1_L.o" "BendScaleAddHip1_1_L.i3[2]";
connectAttr "ScaleBlendHip_L.opr" "ScaleBlendMultHipPart1_L.i1x";
connectAttr "ScaleBlendHip_L.opg" "ScaleBlendMultHipPart1_L.i1y";
connectAttr "ScaleBlendHip_L.opb" "ScaleBlendMultHipPart1_L.i1z";
connectAttr "ScaleBlendHip_L.opr" "ScaleBlendMultAHipPart1_L.i1x";
connectAttr "ScaleBlendHip_L.opg" "ScaleBlendMultAHipPart1_L.i1y";
connectAttr "ScaleBlendHip_L.opb" "ScaleBlendMultAHipPart1_L.i1z";
connectAttr "ScaleBlendMultAHipPart1_L.ox" "ScaleBlendMultBHipPart1_L.i1x";
connectAttr "ScaleBlendMultAHipPart1_L.oy" "ScaleBlendMultBHipPart1_L.i1y";
connectAttr "ScaleBlendMultAHipPart1_L.oz" "ScaleBlendMultBHipPart1_L.i1z";
connectAttr "BendScaleMultHip1_2_L.o" "BendScaleAddHip1_2_L.i3[0]";
connectAttr "BendScaleMultHip2_2_L.o" "BendScaleAddHip1_2_L.i3[1]";
connectAttr "BendScaleMultKneeEnd_2_L.o" "BendScaleAddHip1_2_L.i3[2]";
connectAttr "ScaleBlendHip_L.opr" "ScaleBlendMultHipPart2_L.i1x";
connectAttr "ScaleBlendHip_L.opg" "ScaleBlendMultHipPart2_L.i1y";
connectAttr "ScaleBlendHip_L.opb" "ScaleBlendMultHipPart2_L.i1z";
connectAttr "ScaleBlendHip_L.opr" "ScaleBlendMultAHipPart2_L.i1x";
connectAttr "ScaleBlendHip_L.opg" "ScaleBlendMultAHipPart2_L.i1y";
connectAttr "ScaleBlendHip_L.opb" "ScaleBlendMultAHipPart2_L.i1z";
connectAttr "ScaleBlendMultAHipPart2_L.ox" "ScaleBlendMultBHipPart2_L.i1x";
connectAttr "ScaleBlendMultAHipPart2_L.oy" "ScaleBlendMultBHipPart2_L.i1y";
connectAttr "ScaleBlendMultAHipPart2_L.oz" "ScaleBlendMultBHipPart2_L.i1z";
connectAttr "IKmessureDivArm_L.ox" "BendStretchyMDLElbow2_L.i2";
connectAttr "ScaleBlendElbow_L.opr" "ScaleBlendMultElbow_L.i1x";
connectAttr "ScaleBlendElbow_L.opg" "ScaleBlendMultElbow_L.i1y";
connectAttr "ScaleBlendElbow_L.opb" "ScaleBlendMultElbow_L.i1z";
connectAttr "BendScaleMultElbow1_0_L.o" "BendScaleAddElbow1_0_L.i3[0]";
connectAttr "BendScaleMultElbow2_0_L.o" "BendScaleAddElbow1_0_L.i3[1]";
connectAttr "ScaleBlendElbow_L.opr" "ScaleBlendMultAElbow_L.i1x";
connectAttr "ScaleBlendElbow_L.opg" "ScaleBlendMultAElbow_L.i1y";
connectAttr "ScaleBlendElbow_L.opb" "ScaleBlendMultAElbow_L.i1z";
connectAttr "ScaleBlendMultAElbow_L.ox" "ScaleBlendMultBElbow_L.i1x";
connectAttr "ScaleBlendMultAElbow_L.oy" "ScaleBlendMultBElbow_L.i1y";
connectAttr "ScaleBlendMultAElbow_L.oz" "ScaleBlendMultBElbow_L.i1z";
connectAttr "BendScaleMultElbow1_1_L.o" "BendScaleAddElbow1_1_L.i3[0]";
connectAttr "BendScaleMultElbow2_1_L.o" "BendScaleAddElbow1_1_L.i3[1]";
connectAttr "ScaleBlendElbow_L.opr" "ScaleBlendMultElbowPart1_L.i1x";
connectAttr "ScaleBlendElbow_L.opg" "ScaleBlendMultElbowPart1_L.i1y";
connectAttr "ScaleBlendElbow_L.opb" "ScaleBlendMultElbowPart1_L.i1z";
connectAttr "ScaleBlendElbow_L.opr" "ScaleBlendMultAElbowPart1_L.i1x";
connectAttr "ScaleBlendElbow_L.opg" "ScaleBlendMultAElbowPart1_L.i1y";
connectAttr "ScaleBlendElbow_L.opb" "ScaleBlendMultAElbowPart1_L.i1z";
connectAttr "ScaleBlendMultAElbowPart1_L.ox" "ScaleBlendMultBElbowPart1_L.i1x";
connectAttr "ScaleBlendMultAElbowPart1_L.oy" "ScaleBlendMultBElbowPart1_L.i1y";
connectAttr "ScaleBlendMultAElbowPart1_L.oz" "ScaleBlendMultBElbowPart1_L.i1z";
connectAttr "BendScaleMultElbow1_2_L.o" "BendScaleAddElbow1_2_L.i3[0]";
connectAttr "BendScaleMultElbow2_2_L.o" "BendScaleAddElbow1_2_L.i3[1]";
connectAttr "ScaleBlendElbow_L.opr" "ScaleBlendMultElbowPart2_L.i1x";
connectAttr "ScaleBlendElbow_L.opg" "ScaleBlendMultElbowPart2_L.i1y";
connectAttr "ScaleBlendElbow_L.opb" "ScaleBlendMultElbowPart2_L.i1z";
connectAttr "ScaleBlendElbow_L.opr" "ScaleBlendMultAElbowPart2_L.i1x";
connectAttr "ScaleBlendElbow_L.opg" "ScaleBlendMultAElbowPart2_L.i1y";
connectAttr "ScaleBlendElbow_L.opb" "ScaleBlendMultAElbowPart2_L.i1z";
connectAttr "ScaleBlendMultAElbowPart2_L.ox" "ScaleBlendMultBElbowPart2_L.i1x";
connectAttr "ScaleBlendMultAElbowPart2_L.oy" "ScaleBlendMultBElbowPart2_L.i1y";
connectAttr "ScaleBlendMultAElbowPart2_L.oz" "ScaleBlendMultBElbowPart2_L.i1z";
connectAttr "IKmessureDivArm_L.ox" "BendStretchyMDLShoulder2_L.i2";
connectAttr "ScaleBlendShoulder_L.opr" "ScaleBlendMultShoulder_L.i1x";
connectAttr "ScaleBlendShoulder_L.opg" "ScaleBlendMultShoulder_L.i1y";
connectAttr "ScaleBlendShoulder_L.opb" "ScaleBlendMultShoulder_L.i1z";
connectAttr "BendScaleMultShoulder1_0_L.o" "BendScaleAddShoulder1_0_L.i3[0]";
connectAttr "BendScaleMultShoulder2_0_L.o" "BendScaleAddShoulder1_0_L.i3[1]";
connectAttr "ScaleBlendShoulder_L.opr" "ScaleBlendMultAShoulder_L.i1x";
connectAttr "ScaleBlendShoulder_L.opg" "ScaleBlendMultAShoulder_L.i1y";
connectAttr "ScaleBlendShoulder_L.opb" "ScaleBlendMultAShoulder_L.i1z";
connectAttr "ScaleBlendMultAShoulder_L.ox" "ScaleBlendMultBShoulder_L.i1x";
connectAttr "ScaleBlendMultAShoulder_L.oy" "ScaleBlendMultBShoulder_L.i1y";
connectAttr "ScaleBlendMultAShoulder_L.oz" "ScaleBlendMultBShoulder_L.i1z";
connectAttr "BendScaleMultShoulder1_1_L.o" "BendScaleAddShoulder1_1_L.i3[0]";
connectAttr "BendScaleMultShoulder2_1_L.o" "BendScaleAddShoulder1_1_L.i3[1]";
connectAttr "BendScaleMultElbowEnd_1_L.o" "BendScaleAddShoulder1_1_L.i3[2]";
connectAttr "ScaleBlendShoulder_L.opr" "ScaleBlendMultShoulderPart1_L.i1x";
connectAttr "ScaleBlendShoulder_L.opg" "ScaleBlendMultShoulderPart1_L.i1y";
connectAttr "ScaleBlendShoulder_L.opb" "ScaleBlendMultShoulderPart1_L.i1z";
connectAttr "ScaleBlendShoulder_L.opr" "ScaleBlendMultAShoulderPart1_L.i1x";
connectAttr "ScaleBlendShoulder_L.opg" "ScaleBlendMultAShoulderPart1_L.i1y";
connectAttr "ScaleBlendShoulder_L.opb" "ScaleBlendMultAShoulderPart1_L.i1z";
connectAttr "ScaleBlendMultAShoulderPart1_L.ox" "ScaleBlendMultBShoulderPart1_L.i1x"
		;
connectAttr "ScaleBlendMultAShoulderPart1_L.oy" "ScaleBlendMultBShoulderPart1_L.i1y"
		;
connectAttr "ScaleBlendMultAShoulderPart1_L.oz" "ScaleBlendMultBShoulderPart1_L.i1z"
		;
connectAttr "BendScaleMultShoulder1_2_L.o" "BendScaleAddShoulder1_2_L.i3[0]";
connectAttr "BendScaleMultShoulder2_2_L.o" "BendScaleAddShoulder1_2_L.i3[1]";
connectAttr "BendScaleMultElbowEnd_2_L.o" "BendScaleAddShoulder1_2_L.i3[2]";
connectAttr "ScaleBlendShoulder_L.opr" "ScaleBlendMultShoulderPart2_L.i1x";
connectAttr "ScaleBlendShoulder_L.opg" "ScaleBlendMultShoulderPart2_L.i1y";
connectAttr "ScaleBlendShoulder_L.opb" "ScaleBlendMultShoulderPart2_L.i1z";
connectAttr "ScaleBlendShoulder_L.opr" "ScaleBlendMultAShoulderPart2_L.i1x";
connectAttr "ScaleBlendShoulder_L.opg" "ScaleBlendMultAShoulderPart2_L.i1y";
connectAttr "ScaleBlendShoulder_L.opb" "ScaleBlendMultAShoulderPart2_L.i1z";
connectAttr "ScaleBlendMultAShoulderPart2_L.ox" "ScaleBlendMultBShoulderPart2_L.i1x"
		;
connectAttr "ScaleBlendMultAShoulderPart2_L.oy" "ScaleBlendMultBShoulderPart2_L.i1y"
		;
connectAttr "ScaleBlendMultAShoulderPart2_L.oz" "ScaleBlendMultBShoulderPart2_L.i1z"
		;
connectAttr "IKmessureDivLeg_R.ox" "volume1OverLeg_R.i2x";
connectAttr "volume1OverLeg_R.ox" "volumepowLeg_R.i1x";
connectAttr "multWithStretchyLeg_R.ox" "volumeBlendLegBlendTwo_R.ab";
connectAttr "volumepowLeg_R.ox" "volumeBlendLegBlendTwo_R.i[1]";
connectAttr "IKmessureDivArm_R.ox" "volume1OverArm_R.i2x";
connectAttr "volume1OverArm_R.ox" "volumepowArm_R.i1x";
connectAttr "multWithStretchyArm_R.ox" "volumeBlendArmBlendTwo_R.ab";
connectAttr "volumepowArm_R.ox" "volumeBlendArmBlendTwo_R.i[1]";
connectAttr "IKCurveInfoAllMultiplySpine_M.ox" "volume1OverSpine_M.i2x";
connectAttr "volume1OverSpine_M.ox" "volumepowSpine_M.i1x";
connectAttr "multWithStretchySpine_M.ox" "volumeBlendSpineBlendTwo_M.ab";
connectAttr "volumepowSpine_M.ox" "volumeBlendSpineBlendTwo_M.i[1]";
connectAttr "IKmessureDivLeg_L.ox" "volume1OverLeg_L.i2x";
connectAttr "volume1OverLeg_L.ox" "volumepowLeg_L.i1x";
connectAttr "multWithStretchyLeg_L.ox" "volumeBlendLegBlendTwo_L.ab";
connectAttr "volumepowLeg_L.ox" "volumeBlendLegBlendTwo_L.i[1]";
connectAttr "IKmessureDivArm_L.ox" "volume1OverArm_L.i2x";
connectAttr "volume1OverArm_L.ox" "volumepowArm_L.i1x";
connectAttr "multWithStretchyArm_L.ox" "volumeBlendArmBlendTwo_L.ab";
connectAttr "volumepowArm_L.ox" "volumeBlendArmBlendTwo_L.i[1]";
connectAttr "volumeBlendSpineBlendTwo_M.o" "IKSquashDistributNormalizerASpine1Part2_M.i1[0]"
		;
connectAttr "IKSquashDistributerSpine1Part2_M.ox" "IKSquashDistributNormalizerBSpine1Part2_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerASpine1Part2_M.o1" "IKSquashDistributerSpine1Part2_M.i1x"
		;
connectAttr "volumeBlendSpineBlendTwo_M.o" "IKSquashDistributNormalizerASpine1Part1_M.i1[0]"
		;
connectAttr "IKSquashDistributerSpine1Part1_M.ox" "IKSquashDistributNormalizerBSpine1Part1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerASpine1Part1_M.o1" "IKSquashDistributerSpine1Part1_M.i1x"
		;
connectAttr "volumeBlendSpineBlendTwo_M.o" "IKSquashDistributNormalizerASpine1_M.i1[0]"
		;
connectAttr "IKSquashDistributerSpine1_M.ox" "IKSquashDistributNormalizerBSpine1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerASpine1_M.o1" "IKSquashDistributerSpine1_M.i1x"
		;
connectAttr "volumeBlendSpineBlendTwo_M.o" "IKSquashDistributNormalizerARootPart2_M.i1[0]"
		;
connectAttr "IKSquashDistributerRootPart2_M.ox" "IKSquashDistributNormalizerBRootPart2_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerARootPart2_M.o1" "IKSquashDistributerRootPart2_M.i1x"
		;
connectAttr "volumeBlendSpineBlendTwo_M.o" "IKSquashDistributNormalizerARootPart1_M.i1[0]"
		;
connectAttr "IKSquashDistributerRootPart1_M.ox" "IKSquashDistributNormalizerBRootPart1_M.i1[0]"
		;
connectAttr "IKSquashDistributNormalizerARootPart1_M.o1" "IKSquashDistributerRootPart1_M.i1x"
		;
connectAttr "arm_def_start_to_mid_DB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_def_mid_to_end_DB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_start_to_end_DB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_start_to_mid_DB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_mid_to_end_DB.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "arm_def_start_to_end_ADL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multDoubleLinear1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multDoubleLinear2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "multiplyDivide2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "blendTwoAttr8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "condition1.oc" ":internal_standInShader.ic";
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of arm.ma
