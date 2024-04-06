//Maya ASCII 2024 scene
//Name: Knesittende_nakkeskade_pose.ma
//Last modified: Tue, Feb 06, 2024 12:54:36 AM
//Codeset: 1252
file -rdi 1 -ns "Characters_Rigged" -rfn "Characters_RiggedRN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/simen/OneDrive/Skrivebord/Snow_XR/Snow XR - Shared - Team/Art/Michael/Arbeidsfiler/Character_Rig/Maya/Character_Rig/scenes/Characters_Rigged.ma";
file -r -ns "Characters_Rigged" -dr 1 -rfn "Characters_RiggedRN" -op "v=0;" -typ
		 "mayaAscii" "C:/Users/simen/OneDrive/Skrivebord/Snow_XR/Snow XR - Shared - Team/Art/Michael/Arbeidsfiler/Character_Rig/Maya/Character_Rig/scenes/Characters_Rigged.ma";
requires maya "2024";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2018.11";
requires "stereoCamera" "10.0";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
requires -nodeType "renderSetup" -nodeType "lightEditor" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "47C7D3B2-49F6-0B0E-FB93-EA9821259812";
createNode transform -s -n "persp";
	rename -uid "FB59745F-46A0-3F66-25FB-FA923DED4E9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 186.31630304685706 77.790592369500303 113.87841545060954 ;
	setAttr ".r" -type "double3" -13.538352736828488 417.39999999956569 -1.4758385058802445e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "AE3B1459-41CF-4730-25E5-4CBD28A53165";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 223.54014843311677;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E5129F48-42B5-4539-74D4-21B652E4F933";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CD4FEC35-4AC6-DC5F-553F-0A9E1F1EACB8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "60DA2543-4474-FE06-6019-629C8067D970";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "20C3F712-43B6-EED7-1CC2-FC88A2EA018D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "7E8A3F8A-442E-5335-0A66-7BB864724425";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E3DA88F0-47D3-47FE-7F0D-43A45CF39565";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "73D1A91D-44BE-DEBD-AE04-B683004C31DE";
	setAttr ".s" -type "double3" 289.41047963202368 289.41047963202368 289.41047963202368 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "F09EEDFC-44B4-F1F4-37B9-C88624BC69DE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "783113B0-4387-EC9D-37AC-EFBBA593BD94";
	setAttr -s 117 ".lnk";
	setAttr -s 117 ".slnk";
createNode lightEditor -n "lightEditor";
	rename -uid "8E26F153-4B0A-A2CD-916A-67AA342F5FE4";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "207B7B47-4391-75D1-7327-A0B36912C8A3";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "8B32AABD-4DCA-63CC-2DF7-69A47AFE5437";
createNode displayLayerManager -n "layerManager";
	rename -uid "11B9B34A-4FB1-BE26-2F69-5D97E293DB1A";
createNode displayLayer -n "defaultLayer";
	rename -uid "2316D3DF-4E46-BCC3-BF9A-C4A764834CD1";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "98659F9A-4208-64C4-1483-4F94C35CC194";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A1DD728D-4E52-B0DE-FAF9-DE95FD20FE5F";
	setAttr ".g" yes;
createNode renderSetup -n "renderSetup";
	rename -uid "BF8DB7F8-4344-F72E-09A4-05838417AE51";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "51871015-42C7-0282-227A-21A429E5CDA5";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "DF5453E3-4E32-36E6-05B1-5E8AE3184E96";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "05F5B28A-4E5B-52C0-1DE1-23B2EB946C3C";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "94E50590-41C6-6B5A-8A76-8E957F384633";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "Characters_RiggedRN";
	rename -uid "B5BF0E9C-4A23-7F4B-4699-508B1306250A";
	setAttr -s 323 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Characters_RiggedRN"
		"Characters_RiggedRN" 0
		"Characters_RiggedRN" 476
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Ambulance1|Characters_Rigged:M_Ambulance1Shape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Ambulance1|Characters_Rigged:M_Ambulance1Shape" 
		"uvPivot" " -type \"double2\" 0.49444746907101944 0.50310218427330256"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Boots|Characters_Rigged:M_BootsShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Boots|Characters_Rigged:M_BootsShape" 
		"uvPivot" " -type \"double2\" 0.11091219075024128 0.84935259819030762"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_hair02|Characters_Rigged:M_hair02Shape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_hair02|Characters_Rigged:M_hair02Shape" 
		"uvPivot" " -type \"double2\" 0.49926601792685688 0.49933761358261108"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Head|Characters_Rigged:M_HeadShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Head|Characters_Rigged:M_HeadShape" 
		"uvPivot" " -type \"double2\" 0.50128763588145375 0.48457692563533783"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Eyeball_L|Characters_Rigged:M_Eyeball_LShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Eyeball_L|Characters_Rigged:M_Eyeball_LShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Eyeball_R|Characters_Rigged:M_Eyeball_RShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Eyeball_R|Characters_Rigged:M_Eyeball_RShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Tongue|Characters_Rigged:M_TongueShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Tongue|Characters_Rigged:M_TongueShape" 
		"uvPivot" " -type \"double2\" 0.81673651933670044 0.16068029031157494"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Hands|Characters_Rigged:M_HandsShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_M|Characters_Rigged:M_Hands|Characters_Rigged:M_HandsShape" 
		"uvPivot" " -type \"double2\" 0.30033824592828751 0.1989581361413002"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Ambulance|Characters_Rigged:F_AmbulanceShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Ambulance|Characters_Rigged:F_AmbulanceShape" 
		"uvPivot" " -type \"double2\" 0.49444746907101944 0.50310218427330256"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Boots|Characters_Rigged:F_BootsShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Boots|Characters_Rigged:F_BootsShape" 
		"uvPivot" " -type \"double2\" 0.11091365106403828 0.84935259819030762"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Hair|Characters_Rigged:F_HairShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Hair|Characters_Rigged:F_HairShape" 
		"uvPivot" " -type \"double2\" 0.50154724717140198 0.50030082371085882"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Head|Characters_Rigged:F_HeadShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Head|Characters_Rigged:F_HeadShape" 
		"uvPivot" " -type \"double2\" 0.50058716209605336 0.49421785771846771"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Eyeball_L|Characters_Rigged:F_Eyeball_LShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Eyeball_L|Characters_Rigged:F_Eyeball_LShape" 
		"uvPivot" " -type \"double2\" 0.49929638206958771 0.49861262831836939"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Eyeball_R|Characters_Rigged:F_Eyeball_RShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Eyeball_R|Characters_Rigged:F_Eyeball_RShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Tongue|Characters_Rigged:F_TongueShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Tongue|Characters_Rigged:F_TongueShape" 
		"uvPivot" " -type \"double2\" 0.81673651933670044 0.16068029031157494"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Hands|Characters_Rigged:F_HandsShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Ambulance_F|Characters_Rigged:F_Hands|Characters_Rigged:F_HandsShape" 
		"uvPivot" " -type \"double2\" 0.80428767204284668 0.19438377022743225"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Outfit|Characters_Rigged:F_OutfitShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Outfit|Characters_Rigged:F_OutfitShape" 
		"uvPivot" " -type \"double2\" 0.50045811524614692 0.50135846622288227"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Shoes|Characters_Rigged:F_ShoesShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Shoes|Characters_Rigged:F_ShoesShape" 
		"uvPivot" " -type \"double2\" 0.77620789408683777 0.31185703724622726"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Hair|Characters_Rigged:F_HairShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Hair|Characters_Rigged:F_HairShape" 
		"uvPivot" " -type \"double2\" 0.50154724717140198 0.50030082371085882"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Head|Characters_Rigged:F_HeadShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Head|Characters_Rigged:F_HeadShape" 
		"uvPivot" " -type \"double2\" 0.50058716209605336 0.49421785771846771"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Eyeball_R|Characters_Rigged:F_Eyeball_RShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Eyeball_R|Characters_Rigged:F_Eyeball_RShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Eyeball_L|Characters_Rigged:F_Eyeball_LShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Eyeball_L|Characters_Rigged:F_Eyeball_LShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Tongue|Characters_Rigged:F_TongueShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Tongue|Characters_Rigged:F_TongueShape" 
		"uvPivot" " -type \"double2\" 0.81673651933670044 0.16068029031157494"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Hands|Characters_Rigged:F_HandsShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_F|Characters_Rigged:F_Hands|Characters_Rigged:F_HandsShape" 
		"uvPivot" " -type \"double2\" 0.80428767204284668 0.19438377022743225"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Outfit|Characters_Rigged:M_OutfitShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Outfit|Characters_Rigged:M_OutfitShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Shoes|Characters_Rigged:M_ShoesShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Shoes|Characters_Rigged:M_ShoesShape" 
		"uvPivot" " -type \"double2\" 0.77620759606361389 0.12852498143911362"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Tongue|Characters_Rigged:M_TongueShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Tongue|Characters_Rigged:M_TongueShape" 
		"uvPivot" " -type \"double2\" 0.81673651933670044 0.16068029031157494"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_hair02|Characters_Rigged:M_hair02Shape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_hair02|Characters_Rigged:M_hair02Shape" 
		"uvPivot" " -type \"double2\" 0.49926601792685688 0.49933761358261108"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Head|Characters_Rigged:M_HeadShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Head|Characters_Rigged:M_HeadShape" 
		"uvPivot" " -type \"double2\" 0.48383697541430593 0.48457692563533783"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Eyeball_R|Characters_Rigged:M_Eyeball_RShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Eyeball_R|Characters_Rigged:M_Eyeball_RShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Eyeball_L|Characters_Rigged:M_Eyeball_LShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Eyeball_L|Characters_Rigged:M_Eyeball_LShape" 
		"uvPivot" " -type \"double2\" 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Hands|Characters_Rigged:M_HandsShape" 
		"visibility" " -k 0 1"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:mesh|Characters_Rigged:Civilian_M|Characters_Rigged:M_Hands|Characters_Rigged:M_HandsShape" 
		"uvPivot" " -type \"double2\" 0.30033824592828751 0.1989581361413002"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translate" " -type \"double3\" -1.65470269574512208 40.33981498549275813 -19.34966504602678938"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotate" " -type \"double3\" 4.17045960800158522 0.018442104557091953 -6.85753957131729663"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translate" " -type \"double3\" -1.65470269574512208 40.33981498549275813 -19.34966504602678938"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotate" " -type \"double3\" 4.13853235301699751 0.51583498362338986 -6.8395731799842352"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_pelvis_twist_grp|Characters_Rigged:L_pelvis_twist|Characters_Rigged:L_hip_twist|Characters_Rigged:L_knee_twist_start" 
		"rotate" " -type \"double3\" 0 -18.34509050904974359 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt" 
		"rotate" " -type \"double3\" 31.31705190017539309 9.70145823380638639 30.17749849404099649"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt" 
		"rotate" " -type \"double3\" -123.05261476829505796 0.00026552828950314949 0.017229148827254244"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt" 
		"rotate" " -type \"double3\" -51.74164595007049172 -28.9396488584919318 -2.86640113257255846"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt|Characters_Rigged:L_ball_ik_jnt" 
		"rotate" " -type \"double3\" 43.3758652711220023 -0.0063220792702418163 -0.0060717383111437992"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translate" " -type \"double3\" 15.59477066620299013 -40.47525493707787803 -19.08341095830472156"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotate" " -type \"double3\" -1.49675842849379159 -0.018393271791724428 6.85888075488126514"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translate" " -type \"double3\" -1.65470269574512208 40.33981498549275813 -19.34966504602678938"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotate" " -type \"double3\" 4.13836433884940913 0.51718347994143932 -6.876896888704497"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_pelvis_twist_grp|Characters_Rigged:R_pelvis_twist|Characters_Rigged:R_hip_twist|Characters_Rigged:R_knee_twist_start" 
		"rotate" " -type \"double3\" -3.5046942008633267e-07 31.99136788821615696 -4.6043814341499655e-08"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt" 
		"rotate" " -type \"double3\" 70.41926047151639523 -108.98509256418658708 96.83767989279456856"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt" 
		"rotate" " -type \"double3\" -121.2997231241601952 0.00020535812238210867 0.016709104982024662"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt" 
		"rotate" " -type \"double3\" -10.05679755768798067 -16.22888253148835958 14.66108391761421004"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt|Characters_Rigged:R_ball_ik_jnt" 
		"rotate" " -type \"double3\" 17.28682522131375165 -0.0022260601740957532 0.026256872316254055"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translate" " -type \"double3\" 3.97478706250950742 38.91687959171651556 -18.29267270685253521"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"rotate" " -type \"double3\" -4.1704598232772403 0.018393271791723582 -6.85888075488126603"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"translate" " -type \"double3\" 15.54040691881247582 138.49921297213728622 -4.03377143213439115"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"rotate" " -type \"double3\" -7.71563718234517104 0 -121.99119450478049487"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translate" " -type \"double3\" 68.09258575406727232 38.55249933500373771 27.59765485926806861"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt|Characters_Rigged:L_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64826965773642797 0 -2.53873396055059564"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_clavicle_twist_grp|Characters_Rigged:L_clavicle_twist|Characters_Rigged:L_shoulder_twist|Characters_Rigged:L_elbow_twist_start" 
		"rotate" " -type \"double3\" 0 67.48329305825340896 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"translate" " -type \"double3\" -0.98303018131186093 49.89380001638411954 14.01773062983924589"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"rotate" " -type \"double3\" -4.1055076151588672 -6.53828084579808344 122.22579812989260972"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_arm_ikHandles|Characters_Rigged:L_arm_ikHandle" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translate" " -type \"double3\" -60.13999545262782931 -33.24375807303479746 -23.97603834648486654"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotate" " -type \"double3\" -30.88272529121248766 -5.00434871619389199 72.39160198523335055"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt|Characters_Rigged:R_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64885935783379978 0.00033314236064041285 -2.54187065782685506"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_clavicle_twist_grp|Characters_Rigged:R_clavicle_twist|Characters_Rigged:R_shoulder_twist|Characters_Rigged:R_elbow_twist_start" 
		"rotate" " -type \"double3\" -0.0004348687791991492 31.90857235546933879 8.7378070570835108e-05"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"translate" " -type \"double3\" 0.98321118247453398 -49.89374248346769036 -14.01772434871574191"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"rotate" " -type \"double3\" 175.89449238484112925 -6.53828084579808877 122.22579812989263814"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"rotateZ" " -av"
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[1]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[2]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[3]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[4]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[5]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[6]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[7]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[8]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[9]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[10]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.Eyes_Follow_Switch" 
		"Characters_RiggedRN.placeHolderList[11]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.Locators_Visability" 
		"Characters_RiggedRN.placeHolderList[12]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[13]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[14]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[15]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[16]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[17]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[18]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[19]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[20]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[21]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[22]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[23]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[24]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[25]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[26]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[27]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[28]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[29]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[30]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[31]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[32]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[33]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[34]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[35]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[36]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[37]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[38]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[39]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[40]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[41]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[42]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[43]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[44]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[45]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[46]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[47]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[48]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[49]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[50]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[51]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[52]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[53]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[54]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[55]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[56]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[57]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[58]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[59]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[60]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[61]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[62]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[63]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[64]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[65]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[66]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[67]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.L_arm_IK_FK_switch" 
		"Characters_RiggedRN.placeHolderList[68]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[69]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[70]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[71]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[72]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[73]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[74]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[75]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[76]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[77]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[78]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[79]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[80]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[81]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[82]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.R_arm_IK_FK_switch" 
		"Characters_RiggedRN.placeHolderList[83]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[84]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[85]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[86]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[87]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[88]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[89]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[90]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[91]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[92]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[93]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[94]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[95]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[96]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[97]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[98]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[99]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[100]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[101]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.Orient_Neck" 
		"Characters_RiggedRN.placeHolderList[102]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[103]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[104]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[105]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[106]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[107]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[108]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[109]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[110]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[111]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[112]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[113]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[114]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[115]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[116]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[117]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[118]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[119]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[120]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[121]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[122]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[123]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[124]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[125]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[126]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[127]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[128]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[129]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[130]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[131]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[132]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[133]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[134]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[135]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[136]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[137]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[138]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[139]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[140]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[141]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[142]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[143]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[144]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[145]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[146]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[147]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[148]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[149]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[150]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[151]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[152]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[153]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[154]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[155]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[156]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[157]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[158]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[159]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[160]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[161]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[162]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[163]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[164]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[165]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[166]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[167]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[168]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[169]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[170]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[171]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[172]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[173]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[174]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[175]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[176]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[177]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.Heel_Rise" 
		"Characters_RiggedRN.placeHolderList[178]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[179]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[180]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[181]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[182]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[183]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[184]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.Toe_Roll" 
		"Characters_RiggedRN.placeHolderList[185]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.Foot_Bank" 
		"Characters_RiggedRN.placeHolderList[186]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[187]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[188]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[189]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[190]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[191]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[192]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.Heel_Rise" 
		"Characters_RiggedRN.placeHolderList[193]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[194]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[195]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[196]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[197]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[198]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[199]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.Toe_Roll" 
		"Characters_RiggedRN.placeHolderList[200]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.Foot_Bank" 
		"Characters_RiggedRN.placeHolderList[201]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[202]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[203]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[204]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[205]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[206]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[207]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[208]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[209]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[210]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[211]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[212]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[213]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[214]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[215]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[216]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[217]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[218]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[219]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[220]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[221]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[222]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[223]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[224]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[225]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[226]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[227]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[228]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[229]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[230]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[231]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[232]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[233]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[234]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[235]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[236]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[237]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[238]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[239]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[240]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[241]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[242]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[243]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[244]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[245]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[246]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[247]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[248]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[249]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[250]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[251]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[252]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[253]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[254]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[255]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[256]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[257]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[258]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[259]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[260]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[261]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[262]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[263]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[264]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[265]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[266]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[267]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[268]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[269]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[270]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[271]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[272]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[273]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[274]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[275]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[276]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[277]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[278]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[279]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[280]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[281]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[282]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[283]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[284]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[285]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[286]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[287]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[288]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[289]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[290]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[291]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[292]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[293]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[294]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[295]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[296]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[297]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[298]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[299]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[300]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[301]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[302]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[303]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[304]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[305]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[306]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[307]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[308]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[309]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[310]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[311]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[312]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[313]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[314]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[315]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[316]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[317]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[318]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[319]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[320]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[321]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[322]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[323]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2FA69BAD-4FC6-56BF-BBDC-129CAD64119D";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 832\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n"
		+ "                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n"
		+ "                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n"
		+ "                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 832\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 832\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CFD42B55-4830-55E1-B860-51B0BAB7EC9A";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode animCurveTU -n "cog_ctrl_visibility";
	rename -uid "56EB20A9-49CD-20B5-AD16-5AAE401D1544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "cog_ctrl_translateX";
	rename -uid "0FD90C5D-4248-0795-433F-06A87F7B349B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "cog_ctrl_translateY";
	rename -uid "AADDA5D4-45C9-55B3-290F-6B9774F3088A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -55.392508003418676 15 -55.392508003418676
		 30 -55.392508003418676;
createNode animCurveTL -n "cog_ctrl_translateZ";
	rename -uid "E27399AA-468D-7B2B-D051-A0BA9AD3B631";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -21.876789060772865 15 -21.876789060772865
		 30 -21.876789060772865;
createNode animCurveTA -n "cog_ctrl_rotateX";
	rename -uid "9A54CFF5-42C4-57CC-3776-688AB72C8BBD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.9604342771874954 15 4.9604342771874954
		 30 4.9604342771874954;
createNode animCurveTA -n "cog_ctrl_rotateY";
	rename -uid "44FC64E7-4A86-ADEF-6018-B68067B6D86E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "cog_ctrl_rotateZ";
	rename -uid "ED2007EC-44C7-7107-89B4-DF8ABDB313F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "neck_ctrl_visibility";
	rename -uid "90BB2639-486D-C73C-D95E-D5BF951B9CEE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "neck_ctrl_rotateX";
	rename -uid "DC81B6E1-45DD-55CF-FEC9-D39E2B3B7C3F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.946656739152949 15 -22.946656739152949
		 30 -22.946656739152949;
createNode animCurveTA -n "neck_ctrl_rotateY";
	rename -uid "9C280CDA-4B9D-BE59-AF8F-F3906869F7FF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "neck_ctrl_rotateZ";
	rename -uid "13308151-4577-7C92-129D-44AD6FC816E1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_index_03_ctrl_visibility";
	rename -uid "2E58AF41-4153-42E0-AC08-B6A47211E443";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ";
	rename -uid "B30F541E-4F5F-82CF-FA65-73A4720B523D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.9418897967094102 15 -5.9418897967094102
		 30 -5.9418897967094102;
createNode animCurveTU -n "tongue_03_ctrl_visibility";
	rename -uid "574C7071-453C-3C6A-119C-9D8EB7C850BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_03_ctrl_translateX";
	rename -uid "7D5EEED6-4D9D-0824-9644-D08F351F139A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_03_ctrl_translateY";
	rename -uid "1D40A49E-4BFB-CD6F-ECB7-B69A4F38BFFE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_03_ctrl_translateZ";
	rename -uid "479285A6-462D-05E7-E63D-09B196E65BF7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateX";
	rename -uid "2C738710-4D34-05E2-6E30-76A54442B18C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateY";
	rename -uid "DB544C2C-4849-1B8B-9CB6-BD96A0B07749";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateZ";
	rename -uid "7C317653-4DD2-4F80-48D6-57BBEF8AAEC6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_03_ctrl_scaleX";
	rename -uid "F371122A-4AC4-0383-18AA-ED850605166B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleY";
	rename -uid "C68BCDB0-40DC-B535-531A-08909D144A90";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleZ";
	rename -uid "A7AB70B2-41C2-FE18-F27D-E9B63469126F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_index_04_ctrl_visibility";
	rename -uid "A76E027B-4A8B-DE3F-1E4A-E9BC0225B8FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ";
	rename -uid "7D92561D-4972-A9C0-52C7-FD917DE5E10C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_04_ctrl_visibility";
	rename -uid "8121E1BB-4023-C671-7886-4AB43268910E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ";
	rename -uid "8FD00A88-407A-E24E-78BF-C78EE5C34231";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.993624355827572 15 7.3042171649829335
		 30 15.993624355827572;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility";
	rename -uid "14CA1FEF-4A9C-44E7-CB00-F2AC17627800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ";
	rename -uid "CE02B808-4920-472E-42B2-61916CFB07BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.835023401067029 15 6.835023401067029
		 30 6.835023401067029;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility";
	rename -uid "9F2C7936-4B29-A403-8154-8692756F9A65";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ";
	rename -uid "078CB58D-453A-3336-F58F-D69A86F2AEAE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "abdomen_ctrl_visibility";
	rename -uid "BE0022DA-42F5-CD6A-6181-0DA6C3BF6694";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "abdomen_ctrl_rotateX";
	rename -uid "24504159-47EB-0608-EC6B-E08CD8BFED71";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 32.333405812310502 15 31.677663827300645
		 30 32.333405812310502;
createNode animCurveTA -n "abdomen_ctrl_rotateY";
	rename -uid "B79CD365-44E7-0FEB-DE35-44AC6E099190";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.0660921696979058 15 -4.0658254266795684
		 30 -4.0660921696979058;
createNode animCurveTA -n "abdomen_ctrl_rotateZ";
	rename -uid "5D5D3A8D-4CB4-EBEE-D151-F187D30F4542";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 -0.04661309432271532 30 0;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateX";
	rename -uid "64FD4CED-49C3-503C-C012-EF9CBE9BC4D8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 102.52379604394162 15 102.52379604394162
		 30 102.52379604394162;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateY";
	rename -uid "2E6898AC-47F3-34FB-9095-5AB9B237DB40";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateZ";
	rename -uid "6E8C37EB-48E0-BBFE-73FF-6393C601A58B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "global_ctrl_visibility";
	rename -uid "1CEAD5CD-4A18-E4BA-2AD0-A0AB17304A12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "global_ctrl_translateX";
	rename -uid "2C5D50B9-46D2-772C-4FD0-CEB2D4345228";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "global_ctrl_translateY";
	rename -uid "267A9B1F-405E-3820-7BF2-7089A0AE6DBF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "global_ctrl_translateZ";
	rename -uid "5473275B-4EED-0BA8-492B-ECAF10B428DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "global_ctrl_rotateX";
	rename -uid "4EB3B39E-485F-07BF-8D3A-E59FFD486132";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "global_ctrl_rotateY";
	rename -uid "0AA213CE-4953-A8E7-E6EB-EFBFBE8E6518";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "global_ctrl_rotateZ";
	rename -uid "07E82926-4E65-9257-BBA5-67A5843693F6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "global_ctrl_scaleX";
	rename -uid "A40F3591-4E68-C643-0267-73B1EE80A0DB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "global_ctrl_scaleY";
	rename -uid "ED771076-44A0-ECEF-2886-519DF531A0F1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "global_ctrl_scaleZ";
	rename -uid "0B1FA506-4AFA-4CD6-9E0B-AA9544741C93";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "head_ctrl1_visibility";
	rename -uid "720D6484-4B2E-0C3D-C061-EF9F0DFB2F7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "head_ctrl1_rotateX";
	rename -uid "8BF7ACF2-49DA-64C4-9941-1EA1B4A4AA2C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.1860248640231101 15 2.1860248640231101
		 30 2.1860248640231101;
createNode animCurveTA -n "head_ctrl1_rotateY";
	rename -uid "E7DBD5F3-407E-EA09-EF4D-62B0CFAB435B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "head_ctrl1_rotateZ";
	rename -uid "2C2595F4-462B-07A2-E6D1-0E9EFC9DC6C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "head_ctrl1_Orient_Neck";
	rename -uid "844953B0-4D65-81DD-6720-2C8D65D9C5F6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_03_ctrl_visibility";
	rename -uid "D7236756-40CB-8A9C-CE23-7BB045839FBE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ";
	rename -uid "722197D8-420D-AC97-9150-3D91117314E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.9041096064847869 15 2.9041096064847869
		 30 2.9041096064847869;
createNode animCurveTU -n "L_ring_01_ctrl1_visibility";
	rename -uid "E245C98C-41F5-FFFF-C835-CE8CAD0748D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateX";
	rename -uid "966D1E92-4C12-1028-46A0-EEABE7A2A905";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.595502484527147 15 2.595502484527147
		 30 2.595502484527147;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateY";
	rename -uid "05E799B9-483F-3419-39C1-0A95E85BA08A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateZ";
	rename -uid "FE4BE6AC-4840-8392-84E8-A99D90F32FC2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_eye_ctrl_visibility";
	rename -uid "8A502B0C-49F0-7AA3-D34F-38985E84C2A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_eye_ctrl_translateX";
	rename -uid "1E0F5A2A-4358-27CF-3514-B1A64BDE5103";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "L_eye_ctrl_translateY";
	rename -uid "86EA33B0-49A6-771E-5EEE-E8AB0D15A1FC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "L_eye_ctrl_translateZ";
	rename -uid "54FE6A33-4239-757F-738E-ED8D67297B6F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_eye_ctrl_rotateX";
	rename -uid "9D4351FE-49D6-AFD3-7BD9-F9AFBE45C1A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_eye_ctrl_rotateY";
	rename -uid "A65C0F39-4F87-EE2D-7401-29917CF2744B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_eye_ctrl_rotateZ";
	rename -uid "E7AB9264-4439-2996-2BED-E88383B71EBD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_eye_ctrl_scaleX";
	rename -uid "6A66FE95-4C22-40AD-3281-3599924B97B2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_eye_ctrl_scaleY";
	rename -uid "F831DE30-4CC3-ECF8-2A24-499459EB3051";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_eye_ctrl_scaleZ";
	rename -uid "083068BE-405D-EE41-D0E8-C2BD14EBB508";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_index_04_ctrl_visibility1";
	rename -uid "D4764736-4162-60AB-826C-6CA89AA6B2EF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ1";
	rename -uid "4D07DEE1-4552-63F6-C1E9-E2A12E82D259";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 17.001095070147809 15 2.8841799783898274
		 30 17.001095070147809;
createNode animCurveTU -n "R_eye_ctrl_visibility";
	rename -uid "DEDA2951-4148-8C51-BBC6-DFBB3CB5A103";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_eye_ctrl_translateX";
	rename -uid "27C5A7CD-4B89-5A32-977A-C6B4D8426EC9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "R_eye_ctrl_translateY";
	rename -uid "E68F7018-4F24-5495-2B39-CDAAB567CF73";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "R_eye_ctrl_translateZ";
	rename -uid "CD8A83EB-4E0F-783C-3F9D-10A761D71220";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_eye_ctrl_rotateX";
	rename -uid "D7835822-4C12-7432-538B-189239DA1B36";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_eye_ctrl_rotateY";
	rename -uid "BD31326F-4B2A-9CC3-4479-93A34867756C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_eye_ctrl_rotateZ";
	rename -uid "B942BF93-4388-FC68-15E9-3CA6F2798A10";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_eye_ctrl_scaleX";
	rename -uid "B92849F8-451E-6C24-104B-A198F8A3C681";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_eye_ctrl_scaleY";
	rename -uid "07D6EAF3-41B9-5046-15FA-178AE0CF8712";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_eye_ctrl_scaleZ";
	rename -uid "BB42EB54-4E45-2F40-BF81-CEA878A18653";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_02_ctrl_visibility";
	rename -uid "0729917F-41D9-652B-7DA4-34B8E1ED2DA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_02_ctrl_translateX";
	rename -uid "BC6DD869-496B-6FAC-28A7-8DAA0AA5C65E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_02_ctrl_translateY";
	rename -uid "1FEF28A0-4192-9989-FC7F-989B12E53721";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_02_ctrl_translateZ";
	rename -uid "D6B550A9-46C7-C0D9-823A-74B29480C46F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateX";
	rename -uid "4A4D7D5D-4B47-8556-6ECE-979AA3C24CBA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateY";
	rename -uid "58A7C042-4307-268B-A5F9-E59A49E2D7DD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateZ";
	rename -uid "C3BCC07D-4C15-E106-7A9B-79A62ABD7089";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_02_ctrl_scaleX";
	rename -uid "0B5EA409-4BD9-7E5C-7544-8BB69242CE91";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleY";
	rename -uid "77ADB496-41F4-DF89-E4E7-5588AF4F4F96";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleZ";
	rename -uid "663903E4-42E6-A3FD-552A-8EA8C1136C1D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_thumb_01_ctrl1_visibility";
	rename -uid "9BC09B2F-4B2B-833D-5B5C-E1967B97CD02";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateX";
	rename -uid "A719F40A-42F2-2039-9ED4-46BC4B66E488";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.4866374658257442 15 4.4866374658257442
		 30 4.4866374658257442;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateY";
	rename -uid "E252EFA9-4864-8A36-9734-E3AC6D4CA2D7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.41145511935708634 15 -0.41145511935708634
		 30 -0.41145511935708634;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateZ";
	rename -uid "B8390406-4732-A6D9-41FA-22B633DBD36B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.5714436433856709 15 -2.5714436433856709
		 30 -2.5714436433856709;
createNode animCurveTU -n "tongue_04_ctrl_visibility";
	rename -uid "918EB064-4911-6930-CFF9-6881C6EEBD82";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_04_ctrl_translateX";
	rename -uid "E27C655A-447C-76AB-9EDE-CE868306017A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_04_ctrl_translateY";
	rename -uid "925F4022-4976-4654-0429-159F000D88A4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_04_ctrl_translateZ";
	rename -uid "12847BCF-45AE-83ED-90BC-AEA5A0B56825";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateX";
	rename -uid "A7543B14-4AA3-76B7-2D75-388CFF6C9889";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateY";
	rename -uid "6372FAA7-4A76-4909-B00B-4E8C892328DE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateZ";
	rename -uid "D63171E1-4D45-2729-54DF-F39748CF8096";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_04_ctrl_scaleX";
	rename -uid "7E9F6162-48AA-F2FC-5413-2297C0B30C9F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleY";
	rename -uid "B66DDE76-4243-F1F7-AE06-169A9DBF002D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleZ";
	rename -uid "574FB8D4-4319-8128-0DD0-8D9CF791B95C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_index_03_ctrl_visibility1";
	rename -uid "B2A543CA-4FFE-5D40-20AB-059725C432A3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ1";
	rename -uid "DBD54224-47E4-E850-0994-5FA39E696070";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.5280493697911943 15 4.7317154002217316
		 30 9.5280493697911943;
createNode animCurveTU -n "R_clavicle_ctrl_visibility";
	rename -uid "58649DD8-4FF6-2995-8141-33BDA182F233";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "R_clavicle_ctrl_rotateX";
	rename -uid "7C2F0FA4-413F-6A95-C483-2099E0B58803";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateY";
	rename -uid "173B5D08-4549-EEF6-596D-7EBD199866F7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateZ";
	rename -uid "8A26AACC-451D-7E4C-0F2B-7DB32D8151B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_clavicle_ctrl_divider00";
	rename -uid "78841F93-4F49-A828-7889-5FB045C39B96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "R_clavicle_ctrl_R_arm_IK_FK_switch";
	rename -uid "A550C51B-4D6B-F219-54BE-ECB18234766C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility";
	rename -uid "05AD8C31-495B-9412-F2C7-E9A2714165E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX";
	rename -uid "B9328039-4D6A-8BCF-3635-C5B5A7538C9D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY";
	rename -uid "B4A9E6EE-43A5-0E56-ACBF-5995C0525606";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ";
	rename -uid "BAC24ED3-4C4A-8A6F-19F0-ED9DA05FB6FA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.470956341077903 15 8.470956341077903
		 30 8.470956341077903;
createNode animCurveTU -n "L_pinky_01_ctrl1_visibility";
	rename -uid "40B1A6F6-4A9E-BB54-5AAB-C9B5E53B9A0C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateX";
	rename -uid "20E38D69-4030-26F7-4C42-7FA6079CC4F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.2302241678660533 15 9.2302241678660533
		 30 9.2302241678660533;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateY";
	rename -uid "9417A00C-428E-1673-98EB-438350FB7381";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.059879589750072085 15 0.059879589750072085
		 30 0.059879589750072085;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateZ";
	rename -uid "CA3B90A7-4783-C377-CF44-7A8DFA7D2E4C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.8217595023806954 15 4.8217595023806954
		 30 4.8217595023806954;
createNode animCurveTU -n "L_middle_01_ctrl1_visibility";
	rename -uid "4D424573-456E-1CF1-6E75-9894E07C2CA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateX";
	rename -uid "863DED13-4EB5-8163-7DF2-B3B7C214F35C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateY";
	rename -uid "A39F324F-4632-151F-1FC4-9EA7584A8A0C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateZ";
	rename -uid "4CA3E93C-428B-9F26-3C8B-A3B8D0702C8E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateX";
	rename -uid "C0688F33-4856-14B9-A364-F7A13427659C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -15.196007165979815 15 -15.196007165979815
		 30 -15.196007165979815;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateY";
	rename -uid "DD290A5F-404B-A607-57B2-AE90A86A8C23";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateZ";
	rename -uid "70E9497A-4D9E-F7B9-B968-8D94792EF20F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateX";
	rename -uid "3D2925AA-4901-B270-7555-458B8734662A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 87.209476134711508 15 87.209476134711508
		 30 87.209476134711508;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateY";
	rename -uid "D04A45F2-4D9C-A290-134A-7B9FF76EAC1C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -52.57528670126203 15 -52.57528670126203
		 30 -52.57528670126203;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateZ";
	rename -uid "53850F7F-4A1B-0258-5DB3-7097CEAE2D4E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.643358358737132 15 15.643358358737132
		 30 15.643358358737132;
createNode animCurveTU -n "L_index_02_ctrl_visibility";
	rename -uid "4A9EB252-45E4-83D4-D84A-64AC945A4215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_02_ctrl_rotateX";
	rename -uid "7D46F184-4A3C-2DA9-4CBA-11AF397BAE49";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.29161923718114641 15 0.29161923718114641
		 30 0.29161923718114641;
createNode animCurveTA -n "L_index_02_ctrl_rotateY";
	rename -uid "0678BEFD-4EB3-89BE-5CA2-C3A0C5A30A2F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1208913747412452 15 1.1208913747412452
		 30 1.1208913747412452;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ";
	rename -uid "BA46FED4-4B23-7BDA-D997-D5B2D3FA6E24";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.227612301153886 15 2.227612301153886
		 30 2.227612301153886;
createNode animCurveTU -n "L_ring_04_ctrl_visibility";
	rename -uid "A79BA6E8-4204-4461-8E5D-2D8D50ED9F63";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ";
	rename -uid "4B7C92A1-401F-0DCF-86E4-7BAC530A878F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.218559709647966 15 14.964838520297878
		 30 20.218559709647966;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateX";
	rename -uid "874D6046-4280-A34C-8489-81B660D87295";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 58.963572935851829 15 58.963572935851829
		 30 58.963572935851829;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateY";
	rename -uid "38C55168-49D6-4439-C714-72AC17FD3865";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 93.82926786873287 15 93.82926786873287
		 30 93.82926786873287;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateZ";
	rename -uid "CC7F5D77-40E5-4197-5BD7-14B867B47FA7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.288865626373791 15 37.288865626373791
		 30 37.288865626373791;
createNode animCurveTU -n "L_middle_01_ctrl_visibility";
	rename -uid "4D0353C6-49EF-24DE-E0A3-3092E32EACD0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_01_ctrl_rotateX";
	rename -uid "5E99CA93-459F-0600-B299-8C944EFF0F07";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateY";
	rename -uid "262E16A1-4ADD-FEF6-6B7A-A1AE69B6F791";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateZ";
	rename -uid "0F37C3A2-43CA-6237-0A26-68B98BB76BBE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "waist_ctrl_visibility";
	rename -uid "97C8D6A7-4130-6CF9-A1DA-849810B8FE1A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "waist_ctrl_rotateX";
	rename -uid "2D8D49B0-4A46-BE62-1D94-93A304E8F2FA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.76264737718673892 15 -0.76264737718673892
		 30 -0.76264737718673892;
createNode animCurveTA -n "waist_ctrl_rotateY";
	rename -uid "A3B6C039-4CB8-B7AB-D272-9FA078E9E3C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.47553949680676455 15 -0.47553949680676455
		 30 -0.47553949680676455;
createNode animCurveTA -n "waist_ctrl_rotateZ";
	rename -uid "A360C412-43EF-3BDF-16B8-7AB103E7CB20";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.8424790962245057 15 -6.8424790962245057
		 30 -6.8424790962245057;
createNode animCurveTU -n "R_foot_ik_ctrl_visibility";
	rename -uid "EFD685E3-4DDF-C75D-03A9-308C58A24FDE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_foot_ik_ctrl_translateX";
	rename -uid "577C5033-4C39-D72F-1F54-CDB40ACBBA57";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.350112209559807 15 -2.350112209559807
		 30 -2.350112209559807;
createNode animCurveTL -n "R_foot_ik_ctrl_translateY";
	rename -uid "7571F829-4F18-FF13-D52D-7AAFA8DD3323";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "R_foot_ik_ctrl_translateZ";
	rename -uid "6F2C7AD8-4F07-3B0D-0A31-2F9D6E1EE5A5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.9496632066505564 15 3.9496632066505564
		 30 3.9496632066505564;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateX";
	rename -uid "6735A158-4379-CC2D-FD0B-708C10E37FAD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateY";
	rename -uid "DC823B0D-42B0-7376-E7A8-8B946436C8A9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateZ";
	rename -uid "A2EF0391-4B27-6F6A-1332-B2BCA36175F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_foot_ik_ctrl_divider00";
	rename -uid "189D1D2D-4C83-A991-25B9-BB886666493B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "R_foot_ik_ctrl_Toe_Roll";
	rename -uid "1F3701BB-40AF-3C42-2063-DD9E993538CD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_foot_ik_ctrl_Foot_Bank";
	rename -uid "8D11EAD5-4254-DE70-31A7-C9B5830C3DCA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_foot_ik_ctrl_Heel_Rise";
	rename -uid "29535330-490A-638D-63A9-50B31A0E5FEB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_pinky_01_ctrl_visibility";
	rename -uid "9B7145D4-4929-03F8-9650-988D0C342FD5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateX";
	rename -uid "4B40698B-4B2B-1E43-339F-A9AF9AA0865D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateY";
	rename -uid "F523E33B-4191-FDB7-6431-358F97869241";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateZ";
	rename -uid "7193ABAD-4113-6DDA-B70B-E781BD2AF7C5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility1";
	rename -uid "53B92E9F-4606-2E95-1296-3CAC3721F85F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ1";
	rename -uid "869DA386-45CD-19CD-7A52-978DF256CB6C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 16.278761685945593 15 10.145347875723283
		 30 16.278761685945593;
createNode animCurveTU -n "L_ring_04_ctrl_visibility1";
	rename -uid "17CB8D84-4790-BE5D-68E5-F5846719C2F2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ1";
	rename -uid "92E91FBE-4CD1-8167-F583-769FF7615BEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "eyes_master_ctrl_visibility";
	rename -uid "CFE6C0B8-45A4-EE8D-2B18-E18189973722";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "eyes_master_ctrl_translateX";
	rename -uid "5EF4745E-4F6E-BBFF-A091-8DBB775375C4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "eyes_master_ctrl_translateY";
	rename -uid "BCB0E840-4699-EAEF-4B6F-51ADD6888F07";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "eyes_master_ctrl_translateZ";
	rename -uid "034AAC01-476B-7433-BB22-AE93F5BB0C6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateX";
	rename -uid "10D2C630-4194-3011-8807-4DB73898C607";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateY";
	rename -uid "C54E501D-44B5-0B87-3548-50BF34C07E6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateZ";
	rename -uid "E91DEB9B-4E30-5723-A441-128F233E9A3F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "eyes_master_ctrl_divider00";
	rename -uid "B379F976-4D60-9065-633A-7FBDD70B1913";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "eyes_master_ctrl_Eyes_Follow_Switch";
	rename -uid "77A9674A-48DE-6BE7-67D3-0CABD26FCC22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "eyes_master_ctrl_Locators_Visability";
	rename -uid "1173BE9D-42C7-457B-1F5B-C48FCCD940D2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "R_ball_ik_ctrl_visibility";
	rename -uid "286AB2EE-4E3A-5A4E-0C35-2D9FBAA00060";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateX";
	rename -uid "1A3118E0-4BEB-3426-E01B-8F885755E5A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.285538619715712 15 -17.285538619715712
		 30 -17.285538619715712;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateY";
	rename -uid "FBAECF87-4639-A657-77C1-CEAB7EBBDA76";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateZ";
	rename -uid "0A56B3E7-4541-04B1-8A34-BB9BC5086813";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_04_ctrl_visibility1";
	rename -uid "F2C73B1A-4594-50D6-2C0D-8B95DEB831DB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ1";
	rename -uid "19ACA1E6-4FA1-85C5-35B2-9EB3787A90ED";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_05_ctrl_visibility";
	rename -uid "14D5D710-4884-6C42-C4FE-3C99A066AC12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_05_ctrl_translateX";
	rename -uid "72F4950C-4911-73BA-77FF-5DA2685F2038";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_05_ctrl_translateY";
	rename -uid "DC3BA63A-42CD-FA05-E175-0A8CE6732C36";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_05_ctrl_translateZ";
	rename -uid "57F78DAF-41AB-3655-99CD-6D885E491DF1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateX";
	rename -uid "AA2E26D3-4AE8-74ED-D920-26A29F5F5CF8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateY";
	rename -uid "5581137D-4F4B-6722-A9DE-B4A12CAB0192";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateZ";
	rename -uid "7694940D-4B4B-C9EA-F13C-6BA526ABCADB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_05_ctrl_scaleX";
	rename -uid "6E5712DB-4738-D3DC-1D03-AFB64F803809";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleY";
	rename -uid "0E85733A-4F18-672A-1771-F6B6139B298B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleZ";
	rename -uid "4B3A5E6A-4781-77B2-EADE-DF8540831860";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_visibility";
	rename -uid "937E0600-4F3A-8246-F00F-B0AFEC3AA52B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateX";
	rename -uid "A95992CE-4BD9-2CF8-646F-DFBFEA8AD239";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.952964527190076 15 -17.952964527190076
		 30 -17.952964527190076;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateY";
	rename -uid "53FB39DE-4683-CB54-3549-3EAC09F61C24";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -16.1223691582192 15 -16.1223691582192
		 30 -16.1223691582192;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateZ";
	rename -uid "894922D7-40ED-0F83-EB0F-49975464B86E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateX";
	rename -uid "D22D6922-40CC-D1D1-072A-BF9743EF8768";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateY";
	rename -uid "4E462F8B-4343-2422-9657-DABB92907098";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateZ";
	rename -uid "8B24CBB5-4B2F-1D3B-31F2-F7B4BC18C9AC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleX";
	rename -uid "967B0343-4C50-27ED-9236-888851654781";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleY";
	rename -uid "E707AA9B-45F9-DEC2-B94B-4890041FFFF8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleZ";
	rename -uid "ED67E0D2-429D-36A7-9121-A490CC2C11F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_thumb_01_ctrl_visibility";
	rename -uid "7AABE6D0-46F6-94A9-117C-759E0AFAA1BD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateX";
	rename -uid "CFC8B91E-489A-D644-F9D9-EF8DADABF6FE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -7.5415002746306801 15 -7.5415002746306801
		 30 -7.5415002746306801;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateY";
	rename -uid "50739A5F-413E-56A2-8001-9EAE8219526E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateZ";
	rename -uid "14EFD6C7-4760-C51D-40F8-67B2026C7801";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.1017195139646683 15 4.1017195139646683
		 30 4.1017195139646683;
createNode animCurveTU -n "L_foot_ik_ctrl_visibility";
	rename -uid "CDC5D8FF-4057-6F15-0415-80BCB90FC89D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_foot_ik_ctrl_translateX";
	rename -uid "FFFF996B-47AD-AA44-4455-5A87E37462A7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.9886035894828638 15 8.9886035894828638
		 30 8.9886035894828638;
createNode animCurveTL -n "L_foot_ik_ctrl_translateY";
	rename -uid "D3392AC9-443A-9C02-6E04-A18FE45F318B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "L_foot_ik_ctrl_translateZ";
	rename -uid "43A45C58-4771-8376-B4ED-4BB7B9ACCEF2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -40.915368346620646 15 -40.915368346620646
		 30 -40.915368346620646;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateX";
	rename -uid "8AFB8BE2-439D-9315-0DCC-E3AF3BE9854D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.6737013947832846 15 2.6737013947832846
		 30 2.6737013947832846;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateY";
	rename -uid "01B86770-4C95-F29D-FC27-05AA89E96EDE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateZ";
	rename -uid "698E851E-4AE8-E0EF-A587-E19A898A3798";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_foot_ik_ctrl_divider00";
	rename -uid "565F387D-481D-A4BF-E8C5-DE8F93A68C1B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_foot_ik_ctrl_Toe_Roll";
	rename -uid "A485D37E-4306-3AFC-19C2-F6BAFC654557";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_foot_ik_ctrl_Foot_Bank";
	rename -uid "8FD5888F-4177-7389-8545-FDA18279E477";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_foot_ik_ctrl_Heel_Rise";
	rename -uid "41C5F858-4F0D-415A-247F-CB9969120B73";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_ring_02_ctrl_visibility";
	rename -uid "F23DF1D8-4DE6-F5D3-84E3-5E928AA578E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX";
	rename -uid "C075EAA8-4AC4-0C84-250D-4188939A4DD6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY";
	rename -uid "216C2F36-45B6-89DB-979C-B8BABBD5911A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ";
	rename -uid "FB8B0F32-46F9-344C-1C3A-C6AB241592D8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.6974596359040461 15 8.6974596359040461
		 30 8.6974596359040461;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility";
	rename -uid "4FB7AA50-4B6E-7913-40E7-969665F4A8F6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ";
	rename -uid "98C4A099-4283-66DE-F476-129546235A75";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 -5.1330104404209278 30 0;
createNode animCurveTU -n "L_ring_03_ctrl_visibility";
	rename -uid "40B67EFB-4F41-167B-9AA2-7E9319E3991A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ";
	rename -uid "9543014E-4638-0CD5-AA32-8A898F4883A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_clavicle_ctrl_visibility";
	rename -uid "83EC4400-4BB5-B814-7A0F-0591F8C0875F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_clavicle_ctrl_rotateX";
	rename -uid "343FEEED-4C3E-F323-7362-E5A56A605C38";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateY";
	rename -uid "7FE8C849-4C02-8035-C6D5-8B9A3F397DA2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateZ";
	rename -uid "788FCBF6-4E54-E7AF-4288-D1B703F6DD59";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_clavicle_ctrl_divider00";
	rename -uid "18823E1A-48DD-6A3B-86A1-CF9B2E3A17C5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_clavicle_ctrl_L_arm_IK_FK_switch";
	rename -uid "6CA037C7-4612-5A79-3DF3-05B1FB5543B7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "tongue_01_ctrl_visibility";
	rename -uid "ABE949E7-4269-3DC6-128F-6F8663F1D94E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_01_ctrl_translateX";
	rename -uid "29911E9C-4803-C72D-DCAA-A782DA3AA1CD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_01_ctrl_translateY";
	rename -uid "066AC105-4126-E295-ECD4-6E83E402C8B0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_01_ctrl_translateZ";
	rename -uid "C4B3652B-4A0B-BA37-C9DB-BD87A4B28A93";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateX";
	rename -uid "D71E0323-4078-8D40-271D-7DA1CDF2CBA7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateY";
	rename -uid "3CDACD45-4E40-C472-C4A0-9A8098891E55";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateZ";
	rename -uid "1C3E2704-41A6-08AC-3E9E-7C8E27E1E214";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "spine_ctrl_visibility";
	rename -uid "D037A940-4A99-273D-12E5-6784C19BC90B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "spine_ctrl_rotateX";
	rename -uid "1C5E9381-4342-7A99-92A5-7C8E05E53FC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 24.461276025876064 15 24.461276025876064
		 30 24.461276025876064;
createNode animCurveTA -n "spine_ctrl_rotateY";
	rename -uid "A790C01C-4915-339D-6C12-B4BD8A0DC38B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -1.908561611986153 15 -1.908561611986153
		 30 -1.908561611986153;
createNode animCurveTA -n "spine_ctrl_rotateZ";
	rename -uid "35A06415-4928-8831-AF0E-E5B321C1C160";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility";
	rename -uid "E4B4323D-472F-6E3B-9D15-5AB20BD0E6CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX";
	rename -uid "04D4B506-49E4-83E5-D4C8-7A894FC33E02";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY";
	rename -uid "E551001F-4DF4-9E0D-97F9-3CA888AFD19F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ";
	rename -uid "FBDD1CA8-4B55-E697-70FF-9DA722E2F608";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 -2.2764176519083827 30 0;
createNode animCurveTU -n "L_index_01_ctrl1_visibility";
	rename -uid "1E05F90F-49C3-6679-0D82-20B64CAB0483";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_01_ctrl1_rotateX";
	rename -uid "AE94AAFB-4722-1DF2-EF4E-46B62F6C0037";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateY";
	rename -uid "6545DEAC-4317-E42F-BA83-6395369D2360";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateZ";
	rename -uid "DF12D58E-4AEB-735A-72BC-18B0DD61B544";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_ring_03_ctrl_visibility1";
	rename -uid "9DF45BBD-4A3B-9746-3DEC-53BFAFE88BBB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ1";
	rename -uid "AEFDC9B1-4A50-74F6-1323-FC82CF7B9B56";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.775911163355282 15 8.775911163355282
		 30 8.775911163355282;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateX";
	rename -uid "2C4FF2DA-40BC-5D1F-C26B-5B8A52432AF6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 76.504251156696057 15 76.504251156696057
		 30 76.504251156696057;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateY";
	rename -uid "ACDE09C0-4291-1277-E702-B886E983C32B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.5592036558124498 15 -5.5592036558124498
		 30 -5.5592036558124498;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateZ";
	rename -uid "80959A8E-4A32-7073-5955-3EB8FC39C92F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 33.071698331686882 15 33.071698331686882
		 30 33.071698331686882;
createNode animCurveTU -n "L_ring_02_ctrl_visibility1";
	rename -uid "6DA7BFEB-4C4F-470B-6AFB-80BF7C352D77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX1";
	rename -uid "5F9302A8-4C95-60F2-6E1D-859F95F0B01E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.182221065469568 15 11.182221065469568
		 30 11.182221065469568;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY1";
	rename -uid "2832F89C-427D-9623-E325-61A80B1BCCD3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.4925243609113719 15 1.4925243609113719
		 30 1.4925243609113719;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ1";
	rename -uid "8EE87732-4C81-A5F5-C269-CFA2E9ACCEDB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4130598427242971 15 5.4130598427242971
		 30 5.4130598427242971;
createNode animCurveTU -n "L_middle_02_ctrl_visibility";
	rename -uid "9526A1A4-4E27-51E4-70D1-E8A358D638A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX";
	rename -uid "9B652BA2-4ED0-B666-8245-FEA68F626028";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 7.1786546455521147 15 7.1786546455521147
		 30 7.1786546455521147;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY";
	rename -uid "ED4442FF-4CF8-A992-8991-8693F958AA72";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.78015433140430157 15 0.78015433140430157
		 30 0.78015433140430157;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ";
	rename -uid "6949C357-4C84-BFAC-0100-39BDF147DF9F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.444419349107477 15 -5.444419349107477
		 30 -5.444419349107477;
createNode animCurveTU -n "shoulders_ctrl_visibility";
	rename -uid "86C3EA89-4636-F604-35FA-33899450D095";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "shoulders_ctrl_rotateX";
	rename -uid "E517BA0A-4C19-71D8-B2DC-E19F158BF4F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.0106629309458377 15 6.5200854092028555
		 30 6.0106629309458377;
createNode animCurveTA -n "shoulders_ctrl_rotateY";
	rename -uid "FA6642B1-448A-8179-0D47-F28CB8733660";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -13.848213002823886 15 -13.847654731545504
		 30 -13.848213002823886;
createNode animCurveTA -n "shoulders_ctrl_rotateZ";
	rename -uid "ED34AF2B-46FC-C28B-F060-F6A587A28983";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0.12557892876365506 30 0;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateX";
	rename -uid "BE9D25A3-4453-80C4-2DE0-F6A8EB7E454A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9438156218794744 15 1.9438156218794744
		 30 1.9438156218794744;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateY";
	rename -uid "FE0573A2-4414-29CE-0ACF-1F93B3BC3D01";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -104.33237089516318 15 -104.33237089516318
		 30 -104.33237089516318;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateZ";
	rename -uid "53DF36AD-47A4-4C59-D8D5-89A0F7FC7E01";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.8147851675665372 15 -4.8147851675665372
		 30 -4.8147851675665372;
createNode animCurveTU -n "L_index_02_ctrl_visibility1";
	rename -uid "6CCD8032-43CB-4F2E-71FA-8ABAB7698E0B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_02_ctrl_rotateX1";
	rename -uid "19B883D6-4B8B-06EF-1ABB-838733665831";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateY1";
	rename -uid "A72D571A-4707-4D84-55EA-D3B3B50BDFA5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ1";
	rename -uid "844D983D-4DD8-D434-E667-D0BCA9691FA1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.898557656366222 15 10.898557656366222
		 30 10.898557656366222;
createNode animCurveTU -n "L_middle_03_ctrl_visibility1";
	rename -uid "A1223866-4137-7270-A01E-F0B60978689A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ1";
	rename -uid "1C8BF30F-422E-1BFB-858C-1EABD8EC2AC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.004672915026159 15 11.004672915026159
		 30 11.004672915026159;
createNode animCurveTU -n "L_index_01_ctrl_visibility";
	rename -uid "4F2B0BE5-49C4-6C4E-7B1E-E79077C66716";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_01_ctrl_rotateX";
	rename -uid "49571EF4-4C6F-7D2E-C177-5C946AE3A34A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateY";
	rename -uid "1AA50358-4F0C-91F3-744E-76A78948B67D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateZ";
	rename -uid "1DFB7904-4BCA-7777-F49C-48B65B869499";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_visibility";
	rename -uid "0C7B566B-4E6D-1BC0-7D7A-E88332684B93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateX";
	rename -uid "6AA129A4-4376-9954-864E-AE8A224AC99C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 40.585140797290585 15 40.585140797290585
		 30 40.585140797290585;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateY";
	rename -uid "43AF155A-4762-6908-73B0-0A9CDDC1F9A1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -91.662035965832374 15 -91.662035965832374
		 30 -91.662035965832374;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateZ";
	rename -uid "EFD4C04E-4149-F6EB-D725-20A42BB099CD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -44.721929406227929 15 -44.721929406227929
		 30 -44.721929406227929;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateX";
	rename -uid "E0B2A1C9-4D6C-FC77-50E2-49BC3C6E16A9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateY";
	rename -uid "13E50511-4B5F-EC24-0336-6DBE728C8C55";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateZ";
	rename -uid "7C03FFE7-4AC3-0814-9E30-24B5A65A5135";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleX";
	rename -uid "0B359F25-4CC1-304B-646F-D9A494580863";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleY";
	rename -uid "ED3EC6A9-4D0C-51E1-3495-37BDD97462AB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleZ";
	rename -uid "85391B7D-4499-8C42-F006-EF9AD63598F8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_ball_ik_ctrl_visibility";
	rename -uid "D30E85E9-4118-6161-59D8-D2B2054A4BA4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateX";
	rename -uid "4A90B155-48D4-C1A6-DEFC-A89890B92F89";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -43.375162609651376 15 -43.375162609651376
		 30 -43.375162609651376;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateY";
	rename -uid "CDB9873C-4F43-B77B-78FA-C981FA915A43";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateZ";
	rename -uid "8CB215AF-440F-D2C2-24D1-1CA8F82CCF96";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility1";
	rename -uid "E3C63D36-45A4-320B-3336-2CBE8A01C2D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX1";
	rename -uid "B789D577-402A-21E5-5459-C19043FBED22";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 14.076993103928386 15 14.076993103928386
		 30 14.076993103928386;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY1";
	rename -uid "E65AA555-4E95-D29E-4DAB-7B8D2C44C78D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9366485000537252 15 1.9366485000537252
		 30 1.9366485000537252;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ1";
	rename -uid "C2E70D86-4D8F-863E-5020-22A88F4524DD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.5412074611080078 15 5.5412074611080078
		 30 5.5412074611080078;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility1";
	rename -uid "AFD36B26-4584-C97C-1E2F-E0B541B99E6B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ1";
	rename -uid "BEC1EA4A-40D1-5645-1F8E-80BFBFBBA287";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_02_ctrl_visibility1";
	rename -uid "F33EB685-4631-0047-6EE9-C0BDDB69068E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX1";
	rename -uid "1A7137C0-411B-3C14-D37B-98A10708947D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY1";
	rename -uid "5BEEC41E-4657-D16E-7CCD-1C9E801F0258";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ1";
	rename -uid "54F8AB6E-4D2E-20A1-7A3A-6CA2EB7369BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.6465471672152798 15 8.6465471672152798
		 30 8.6465471672152798;
createNode animCurveTU -n "sternum_ctrl_visibility";
	rename -uid "74B761AD-4E56-0CCB-D9B9-7295D82848CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "sternum_ctrl_rotateX";
	rename -uid "6174B6BE-4D5E-061D-E6F3-09B9D67C35D0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 29.560472628844693 15 29.560472628844693
		 30 29.560472628844693;
createNode animCurveTA -n "sternum_ctrl_rotateY";
	rename -uid "872ED32D-4A2B-83E1-C90A-ABA7092035E8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "sternum_ctrl_rotateZ";
	rename -uid "CC2774F4-4F99-49AA-5E75-1A9F0A990E74";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility1";
	rename -uid "F3C843F9-49B8-B5D5-786C-65B40C150AFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX1";
	rename -uid "13B58CCE-4A26-F120-7431-6795D46D47A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.621523212740426 15 10.621523212740426
		 30 10.621523212740426;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY1";
	rename -uid "6E2E907D-4429-FBF0-DD5E-C7A32811CF0B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.67772334023731695 15 0.67772334023731695
		 30 0.67772334023731695;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ1";
	rename -uid "BA844A17-472E-2A85-B280-8C8818129BBB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.3596578898569227 15 -5.3596578898569227
		 30 -5.3596578898569227;
createNode animCurveTU -n "L_ring_01_ctrl_visibility";
	rename -uid "0F688DF9-4ED2-C6DD-E0E3-F7A504C30117";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_01_ctrl_rotateX";
	rename -uid "2C3A8B17-4421-F4F4-1758-43AF496726C9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateY";
	rename -uid "EAF96AD8-481D-CA88-4B29-078F884B7E99";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateZ";
	rename -uid "0B17E48E-4F17-14E2-B4FB-7C82684BB4F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility1";
	rename -uid "E79B40C3-44A7-B5AD-06AA-F9BC68F3493C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ1";
	rename -uid "319B99D7-40B9-A555-1068-5BB1DF6E85F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.553581804699371 15 10.553581804699371
		 30 10.553581804699371;
createNode animCurveTU -n "jaw_ctrl_visibility";
	rename -uid "B8EDF00D-412E-1F60-53DA-E18CB52B0638";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "jaw_ctrl_rotateX";
	rename -uid "3E4ECBB9-4AFC-5407-2F6B-37A37A3842F5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "jaw_ctrl_rotateY";
	rename -uid "07E45887-4AB0-60C2-DAF3-EEAD4F9E0869";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "jaw_ctrl_rotateZ";
	rename -uid "EE737E31-4771-8523-77EE-149990D31330";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "954461F2-4ADC-91B4-334B-EEAD50318BD2";
	setAttr ".cuv" 2;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "37F0AAE9-48BE-0330-14B4-788AA0F2D743";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "7EB97D90-4EF1-A911-8B7A-4FB3FCD68EC1";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".ac[0].acn" -type "string" "Knesittende_HalsSkade";
	setAttr ".ac[0].ace" 30;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/simen/OneDrive/Skrivebord/Snow_XR/Snow XR - Maya - Simen//scenes/Sittende";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "4D535992-48D1-2F2F-568F-76A9F2C3BD67";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "B0522FF6-423B-3D61-BBA3-24BF8FC417CA";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 117 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 120 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 454 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 116 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 2 ".sol";
connectAttr "global_ctrl_scaleX.o" "Characters_RiggedRN.phl[1]";
connectAttr "global_ctrl_scaleY.o" "Characters_RiggedRN.phl[2]";
connectAttr "global_ctrl_scaleZ.o" "Characters_RiggedRN.phl[3]";
connectAttr "global_ctrl_translateX.o" "Characters_RiggedRN.phl[4]";
connectAttr "global_ctrl_translateY.o" "Characters_RiggedRN.phl[5]";
connectAttr "global_ctrl_translateZ.o" "Characters_RiggedRN.phl[6]";
connectAttr "global_ctrl_rotateX.o" "Characters_RiggedRN.phl[7]";
connectAttr "global_ctrl_rotateY.o" "Characters_RiggedRN.phl[8]";
connectAttr "global_ctrl_rotateZ.o" "Characters_RiggedRN.phl[9]";
connectAttr "global_ctrl_visibility.o" "Characters_RiggedRN.phl[10]";
connectAttr "eyes_master_ctrl_Eyes_Follow_Switch.o" "Characters_RiggedRN.phl[11]"
		;
connectAttr "eyes_master_ctrl_Locators_Visability.o" "Characters_RiggedRN.phl[12]"
		;
connectAttr "eyes_master_ctrl_visibility.o" "Characters_RiggedRN.phl[13]";
connectAttr "eyes_master_ctrl_translateX.o" "Characters_RiggedRN.phl[14]";
connectAttr "eyes_master_ctrl_translateY.o" "Characters_RiggedRN.phl[15]";
connectAttr "eyes_master_ctrl_translateZ.o" "Characters_RiggedRN.phl[16]";
connectAttr "eyes_master_ctrl_rotateX.o" "Characters_RiggedRN.phl[17]";
connectAttr "eyes_master_ctrl_rotateY.o" "Characters_RiggedRN.phl[18]";
connectAttr "eyes_master_ctrl_rotateZ.o" "Characters_RiggedRN.phl[19]";
connectAttr "eyes_master_ctrl_divider00.o" "Characters_RiggedRN.phl[20]";
connectAttr "L_eye_ctrl_translateX.o" "Characters_RiggedRN.phl[21]";
connectAttr "L_eye_ctrl_translateY.o" "Characters_RiggedRN.phl[22]";
connectAttr "L_eye_ctrl_translateZ.o" "Characters_RiggedRN.phl[23]";
connectAttr "L_eye_ctrl_visibility.o" "Characters_RiggedRN.phl[24]";
connectAttr "L_eye_ctrl_rotateX.o" "Characters_RiggedRN.phl[25]";
connectAttr "L_eye_ctrl_rotateY.o" "Characters_RiggedRN.phl[26]";
connectAttr "L_eye_ctrl_rotateZ.o" "Characters_RiggedRN.phl[27]";
connectAttr "L_eye_ctrl_scaleX.o" "Characters_RiggedRN.phl[28]";
connectAttr "L_eye_ctrl_scaleY.o" "Characters_RiggedRN.phl[29]";
connectAttr "L_eye_ctrl_scaleZ.o" "Characters_RiggedRN.phl[30]";
connectAttr "R_eye_ctrl_translateX.o" "Characters_RiggedRN.phl[31]";
connectAttr "R_eye_ctrl_translateY.o" "Characters_RiggedRN.phl[32]";
connectAttr "R_eye_ctrl_translateZ.o" "Characters_RiggedRN.phl[33]";
connectAttr "R_eye_ctrl_visibility.o" "Characters_RiggedRN.phl[34]";
connectAttr "R_eye_ctrl_rotateX.o" "Characters_RiggedRN.phl[35]";
connectAttr "R_eye_ctrl_rotateY.o" "Characters_RiggedRN.phl[36]";
connectAttr "R_eye_ctrl_rotateZ.o" "Characters_RiggedRN.phl[37]";
connectAttr "R_eye_ctrl_scaleX.o" "Characters_RiggedRN.phl[38]";
connectAttr "R_eye_ctrl_scaleY.o" "Characters_RiggedRN.phl[39]";
connectAttr "R_eye_ctrl_scaleZ.o" "Characters_RiggedRN.phl[40]";
connectAttr "cog_ctrl_translateX.o" "Characters_RiggedRN.phl[41]";
connectAttr "cog_ctrl_translateY.o" "Characters_RiggedRN.phl[42]";
connectAttr "cog_ctrl_translateZ.o" "Characters_RiggedRN.phl[43]";
connectAttr "cog_ctrl_rotateX.o" "Characters_RiggedRN.phl[44]";
connectAttr "cog_ctrl_rotateY.o" "Characters_RiggedRN.phl[45]";
connectAttr "cog_ctrl_rotateZ.o" "Characters_RiggedRN.phl[46]";
connectAttr "cog_ctrl_visibility.o" "Characters_RiggedRN.phl[47]";
connectAttr "waist_ctrl_rotateX.o" "Characters_RiggedRN.phl[48]";
connectAttr "waist_ctrl_rotateY.o" "Characters_RiggedRN.phl[49]";
connectAttr "waist_ctrl_rotateZ.o" "Characters_RiggedRN.phl[50]";
connectAttr "waist_ctrl_visibility.o" "Characters_RiggedRN.phl[51]";
connectAttr "spine_ctrl_rotateX.o" "Characters_RiggedRN.phl[52]";
connectAttr "spine_ctrl_rotateY.o" "Characters_RiggedRN.phl[53]";
connectAttr "spine_ctrl_rotateZ.o" "Characters_RiggedRN.phl[54]";
connectAttr "spine_ctrl_visibility.o" "Characters_RiggedRN.phl[55]";
connectAttr "abdomen_ctrl_rotateX.o" "Characters_RiggedRN.phl[56]";
connectAttr "abdomen_ctrl_rotateY.o" "Characters_RiggedRN.phl[57]";
connectAttr "abdomen_ctrl_rotateZ.o" "Characters_RiggedRN.phl[58]";
connectAttr "abdomen_ctrl_visibility.o" "Characters_RiggedRN.phl[59]";
connectAttr "sternum_ctrl_rotateX.o" "Characters_RiggedRN.phl[60]";
connectAttr "sternum_ctrl_rotateY.o" "Characters_RiggedRN.phl[61]";
connectAttr "sternum_ctrl_rotateZ.o" "Characters_RiggedRN.phl[62]";
connectAttr "sternum_ctrl_visibility.o" "Characters_RiggedRN.phl[63]";
connectAttr "shoulders_ctrl_rotateX.o" "Characters_RiggedRN.phl[64]";
connectAttr "shoulders_ctrl_rotateY.o" "Characters_RiggedRN.phl[65]";
connectAttr "shoulders_ctrl_rotateZ.o" "Characters_RiggedRN.phl[66]";
connectAttr "shoulders_ctrl_visibility.o" "Characters_RiggedRN.phl[67]";
connectAttr "L_clavicle_ctrl_L_arm_IK_FK_switch.o" "Characters_RiggedRN.phl[68]"
		;
connectAttr "L_clavicle_ctrl_rotateX.o" "Characters_RiggedRN.phl[69]";
connectAttr "L_clavicle_ctrl_rotateY.o" "Characters_RiggedRN.phl[70]";
connectAttr "L_clavicle_ctrl_rotateZ.o" "Characters_RiggedRN.phl[71]";
connectAttr "L_clavicle_ctrl_visibility.o" "Characters_RiggedRN.phl[72]";
connectAttr "L_clavicle_ctrl_divider00.o" "Characters_RiggedRN.phl[73]";
connectAttr "L_shoulder_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[74]";
connectAttr "L_shoulder_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[75]";
connectAttr "L_shoulder_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[76]";
connectAttr "L_elbow_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[77]";
connectAttr "L_elbow_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[78]";
connectAttr "L_elbow_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[79]";
connectAttr "L_hand_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[80]";
connectAttr "L_hand_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[81]";
connectAttr "L_hand_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[82]";
connectAttr "R_clavicle_ctrl_R_arm_IK_FK_switch.o" "Characters_RiggedRN.phl[83]"
		;
connectAttr "R_clavicle_ctrl_rotateX.o" "Characters_RiggedRN.phl[84]";
connectAttr "R_clavicle_ctrl_rotateY.o" "Characters_RiggedRN.phl[85]";
connectAttr "R_clavicle_ctrl_rotateZ.o" "Characters_RiggedRN.phl[86]";
connectAttr "R_clavicle_ctrl_visibility.o" "Characters_RiggedRN.phl[87]";
connectAttr "R_clavicle_ctrl_divider00.o" "Characters_RiggedRN.phl[88]";
connectAttr "R_shoulder_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[89]";
connectAttr "R_shoulder_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[90]";
connectAttr "R_shoulder_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[91]";
connectAttr "R_elbow_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[92]";
connectAttr "R_elbow_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[93]";
connectAttr "R_elbow_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[94]";
connectAttr "R_hand_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[95]";
connectAttr "R_hand_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[96]";
connectAttr "R_hand_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[97]";
connectAttr "neck_ctrl_rotateX.o" "Characters_RiggedRN.phl[98]";
connectAttr "neck_ctrl_rotateY.o" "Characters_RiggedRN.phl[99]";
connectAttr "neck_ctrl_rotateZ.o" "Characters_RiggedRN.phl[100]";
connectAttr "neck_ctrl_visibility.o" "Characters_RiggedRN.phl[101]";
connectAttr "head_ctrl1_Orient_Neck.o" "Characters_RiggedRN.phl[102]";
connectAttr "head_ctrl1_rotateX.o" "Characters_RiggedRN.phl[103]";
connectAttr "head_ctrl1_rotateY.o" "Characters_RiggedRN.phl[104]";
connectAttr "head_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[105]";
connectAttr "head_ctrl1_visibility.o" "Characters_RiggedRN.phl[106]";
connectAttr "jaw_ctrl_rotateX.o" "Characters_RiggedRN.phl[107]";
connectAttr "jaw_ctrl_rotateY.o" "Characters_RiggedRN.phl[108]";
connectAttr "jaw_ctrl_rotateZ.o" "Characters_RiggedRN.phl[109]";
connectAttr "jaw_ctrl_visibility.o" "Characters_RiggedRN.phl[110]";
connectAttr "tongue_01_ctrl_translateX.o" "Characters_RiggedRN.phl[111]";
connectAttr "tongue_01_ctrl_translateY.o" "Characters_RiggedRN.phl[112]";
connectAttr "tongue_01_ctrl_translateZ.o" "Characters_RiggedRN.phl[113]";
connectAttr "tongue_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[114]";
connectAttr "tongue_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[115]";
connectAttr "tongue_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[116]";
connectAttr "tongue_01_ctrl_visibility.o" "Characters_RiggedRN.phl[117]";
connectAttr "tongue_02_ctrl_translateX.o" "Characters_RiggedRN.phl[118]";
connectAttr "tongue_02_ctrl_translateY.o" "Characters_RiggedRN.phl[119]";
connectAttr "tongue_02_ctrl_translateZ.o" "Characters_RiggedRN.phl[120]";
connectAttr "tongue_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[121]";
connectAttr "tongue_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[122]";
connectAttr "tongue_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[123]";
connectAttr "tongue_02_ctrl_scaleX.o" "Characters_RiggedRN.phl[124]";
connectAttr "tongue_02_ctrl_scaleY.o" "Characters_RiggedRN.phl[125]";
connectAttr "tongue_02_ctrl_scaleZ.o" "Characters_RiggedRN.phl[126]";
connectAttr "tongue_02_ctrl_visibility.o" "Characters_RiggedRN.phl[127]";
connectAttr "tongue_03_ctrl_translateX.o" "Characters_RiggedRN.phl[128]";
connectAttr "tongue_03_ctrl_translateY.o" "Characters_RiggedRN.phl[129]";
connectAttr "tongue_03_ctrl_translateZ.o" "Characters_RiggedRN.phl[130]";
connectAttr "tongue_03_ctrl_rotateX.o" "Characters_RiggedRN.phl[131]";
connectAttr "tongue_03_ctrl_rotateY.o" "Characters_RiggedRN.phl[132]";
connectAttr "tongue_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[133]";
connectAttr "tongue_03_ctrl_scaleX.o" "Characters_RiggedRN.phl[134]";
connectAttr "tongue_03_ctrl_scaleY.o" "Characters_RiggedRN.phl[135]";
connectAttr "tongue_03_ctrl_scaleZ.o" "Characters_RiggedRN.phl[136]";
connectAttr "tongue_03_ctrl_visibility.o" "Characters_RiggedRN.phl[137]";
connectAttr "tongue_04_ctrl_translateX.o" "Characters_RiggedRN.phl[138]";
connectAttr "tongue_04_ctrl_translateY.o" "Characters_RiggedRN.phl[139]";
connectAttr "tongue_04_ctrl_translateZ.o" "Characters_RiggedRN.phl[140]";
connectAttr "tongue_04_ctrl_rotateX.o" "Characters_RiggedRN.phl[141]";
connectAttr "tongue_04_ctrl_rotateY.o" "Characters_RiggedRN.phl[142]";
connectAttr "tongue_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[143]";
connectAttr "tongue_04_ctrl_scaleX.o" "Characters_RiggedRN.phl[144]";
connectAttr "tongue_04_ctrl_scaleY.o" "Characters_RiggedRN.phl[145]";
connectAttr "tongue_04_ctrl_scaleZ.o" "Characters_RiggedRN.phl[146]";
connectAttr "tongue_04_ctrl_visibility.o" "Characters_RiggedRN.phl[147]";
connectAttr "tongue_05_ctrl_translateX.o" "Characters_RiggedRN.phl[148]";
connectAttr "tongue_05_ctrl_translateY.o" "Characters_RiggedRN.phl[149]";
connectAttr "tongue_05_ctrl_translateZ.o" "Characters_RiggedRN.phl[150]";
connectAttr "tongue_05_ctrl_rotateX.o" "Characters_RiggedRN.phl[151]";
connectAttr "tongue_05_ctrl_rotateY.o" "Characters_RiggedRN.phl[152]";
connectAttr "tongue_05_ctrl_rotateZ.o" "Characters_RiggedRN.phl[153]";
connectAttr "tongue_05_ctrl_scaleX.o" "Characters_RiggedRN.phl[154]";
connectAttr "tongue_05_ctrl_scaleY.o" "Characters_RiggedRN.phl[155]";
connectAttr "tongue_05_ctrl_scaleZ.o" "Characters_RiggedRN.phl[156]";
connectAttr "tongue_05_ctrl_visibility.o" "Characters_RiggedRN.phl[157]";
connectAttr "R_knee_aim_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[158]";
connectAttr "R_knee_aim_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[159]";
connectAttr "R_knee_aim_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[160]";
connectAttr "R_knee_aim_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[161]";
connectAttr "R_knee_aim_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[162]";
connectAttr "R_knee_aim_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[163]";
connectAttr "R_knee_aim_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[164]";
connectAttr "R_knee_aim_ik_ctrl_scaleX.o" "Characters_RiggedRN.phl[165]";
connectAttr "R_knee_aim_ik_ctrl_scaleY.o" "Characters_RiggedRN.phl[166]";
connectAttr "R_knee_aim_ik_ctrl_scaleZ.o" "Characters_RiggedRN.phl[167]";
connectAttr "L_knee_aim_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[168]";
connectAttr "L_knee_aim_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[169]";
connectAttr "L_knee_aim_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[170]";
connectAttr "L_knee_aim_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[171]";
connectAttr "L_knee_aim_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[172]";
connectAttr "L_knee_aim_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[173]";
connectAttr "L_knee_aim_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[174]";
connectAttr "L_knee_aim_ik_ctrl_scaleX.o" "Characters_RiggedRN.phl[175]";
connectAttr "L_knee_aim_ik_ctrl_scaleY.o" "Characters_RiggedRN.phl[176]";
connectAttr "L_knee_aim_ik_ctrl_scaleZ.o" "Characters_RiggedRN.phl[177]";
connectAttr "R_foot_ik_ctrl_Heel_Rise.o" "Characters_RiggedRN.phl[178]";
connectAttr "R_foot_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[179]";
connectAttr "R_foot_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[180]";
connectAttr "R_foot_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[181]";
connectAttr "R_foot_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[182]";
connectAttr "R_foot_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[183]";
connectAttr "R_foot_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[184]";
connectAttr "R_foot_ik_ctrl_Toe_Roll.o" "Characters_RiggedRN.phl[185]";
connectAttr "R_foot_ik_ctrl_Foot_Bank.o" "Characters_RiggedRN.phl[186]";
connectAttr "R_foot_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[187]";
connectAttr "R_foot_ik_ctrl_divider00.o" "Characters_RiggedRN.phl[188]";
connectAttr "R_ball_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[189]";
connectAttr "R_ball_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[190]";
connectAttr "R_ball_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[191]";
connectAttr "R_ball_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[192]";
connectAttr "L_foot_ik_ctrl_Heel_Rise.o" "Characters_RiggedRN.phl[193]";
connectAttr "L_foot_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[194]";
connectAttr "L_foot_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[195]";
connectAttr "L_foot_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[196]";
connectAttr "L_foot_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[197]";
connectAttr "L_foot_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[198]";
connectAttr "L_foot_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[199]";
connectAttr "L_foot_ik_ctrl_Toe_Roll.o" "Characters_RiggedRN.phl[200]";
connectAttr "L_foot_ik_ctrl_Foot_Bank.o" "Characters_RiggedRN.phl[201]";
connectAttr "L_foot_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[202]";
connectAttr "L_foot_ik_ctrl_divider00.o" "Characters_RiggedRN.phl[203]";
connectAttr "L_ball_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[204]";
connectAttr "L_ball_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[205]";
connectAttr "L_ball_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[206]";
connectAttr "L_ball_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[207]";
connectAttr "L_pinky_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[208]";
connectAttr "L_pinky_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[209]";
connectAttr "L_pinky_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[210]";
connectAttr "L_pinky_01_ctrl_visibility.o" "Characters_RiggedRN.phl[211]";
connectAttr "L_pinky_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[212]";
connectAttr "L_pinky_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[213]";
connectAttr "L_pinky_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[214]";
connectAttr "L_pinky_02_ctrl_visibility.o" "Characters_RiggedRN.phl[215]";
connectAttr "L_pinky_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[216]";
connectAttr "L_pinky_03_ctrl_visibility.o" "Characters_RiggedRN.phl[217]";
connectAttr "L_pinky_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[218]";
connectAttr "L_pinky_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[219]";
connectAttr "L_ring_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[220]";
connectAttr "L_ring_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[221]";
connectAttr "L_ring_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[222]";
connectAttr "L_ring_01_ctrl_visibility.o" "Characters_RiggedRN.phl[223]";
connectAttr "L_ring_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[224]";
connectAttr "L_ring_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[225]";
connectAttr "L_ring_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[226]";
connectAttr "L_ring_02_ctrl_visibility.o" "Characters_RiggedRN.phl[227]";
connectAttr "L_ring_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[228]";
connectAttr "L_ring_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[229]";
connectAttr "L_ring_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[230]";
connectAttr "L_ring_04_ctrl_visibility.o" "Characters_RiggedRN.phl[231]";
connectAttr "L_index_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[232]";
connectAttr "L_index_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[233]";
connectAttr "L_index_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[234]";
connectAttr "L_index_01_ctrl_visibility.o" "Characters_RiggedRN.phl[235]";
connectAttr "L_index_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[236]";
connectAttr "L_index_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[237]";
connectAttr "L_index_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[238]";
connectAttr "L_index_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[239]";
connectAttr "L_index_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[240]";
connectAttr "L_index_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[241]";
connectAttr "L_index_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[242]";
connectAttr "L_index_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[243]";
connectAttr "L_middle_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[244]";
connectAttr "L_middle_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[245]";
connectAttr "L_middle_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[246]";
connectAttr "L_middle_01_ctrl_visibility.o" "Characters_RiggedRN.phl[247]";
connectAttr "L_middle_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[248]";
connectAttr "L_middle_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[249]";
connectAttr "L_middle_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[250]";
connectAttr "L_middle_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[251]";
connectAttr "L_middle_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[252]";
connectAttr "L_middle_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[253]";
connectAttr "L_middle_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[254]";
connectAttr "L_middle_04_ctrl_visibility.o" "Characters_RiggedRN.phl[255]";
connectAttr "L_thumb_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[256]";
connectAttr "L_thumb_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[257]";
connectAttr "L_thumb_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[258]";
connectAttr "L_thumb_01_ctrl_visibility.o" "Characters_RiggedRN.phl[259]";
connectAttr "L_thumb_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[260]";
connectAttr "L_thumb_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[261]";
connectAttr "L_thumb_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[262]";
connectAttr "L_thumb_02_ctrl_visibility.o" "Characters_RiggedRN.phl[263]";
connectAttr "L_thumb_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[264]";
connectAttr "L_thumb_03_ctrl_visibility.o" "Characters_RiggedRN.phl[265]";
connectAttr "L_thumb_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[266]";
connectAttr "L_thumb_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[267]";
connectAttr "L_thumb_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[268]";
connectAttr "L_thumb_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[269]";
connectAttr "L_thumb_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[270]";
connectAttr "L_thumb_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[271]";
connectAttr "L_thumb_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[272]";
connectAttr "L_thumb_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[273]";
connectAttr "L_thumb_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[274]";
connectAttr "L_thumb_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[275]";
connectAttr "L_index_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[276]";
connectAttr "L_index_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[277]";
connectAttr "L_index_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[278]";
connectAttr "L_index_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[279]";
connectAttr "L_index_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[280]";
connectAttr "L_index_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[281]";
connectAttr "L_index_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[282]";
connectAttr "L_index_02_ctrl_visibility.o" "Characters_RiggedRN.phl[283]";
connectAttr "L_index_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[284]";
connectAttr "L_index_03_ctrl_visibility.o" "Characters_RiggedRN.phl[285]";
connectAttr "L_index_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[286]";
connectAttr "L_index_04_ctrl_visibility.o" "Characters_RiggedRN.phl[287]";
connectAttr "L_middle_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[288]";
connectAttr "L_middle_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[289]";
connectAttr "L_middle_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[290]";
connectAttr "L_middle_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[291]";
connectAttr "L_middle_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[292]";
connectAttr "L_middle_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[293]";
connectAttr "L_middle_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[294]";
connectAttr "L_middle_02_ctrl_visibility.o" "Characters_RiggedRN.phl[295]";
connectAttr "L_middle_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[296]";
connectAttr "L_middle_03_ctrl_visibility.o" "Characters_RiggedRN.phl[297]";
connectAttr "L_middle_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[298]";
connectAttr "L_middle_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[299]";
connectAttr "L_ring_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[300]";
connectAttr "L_ring_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[301]";
connectAttr "L_ring_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[302]";
connectAttr "L_ring_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[303]";
connectAttr "L_ring_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[304]";
connectAttr "L_ring_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[305]";
connectAttr "L_ring_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[306]";
connectAttr "L_ring_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[307]";
connectAttr "L_ring_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[308]";
connectAttr "L_ring_03_ctrl_visibility.o" "Characters_RiggedRN.phl[309]";
connectAttr "L_ring_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[310]";
connectAttr "L_ring_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[311]";
connectAttr "L_pinky_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[312]";
connectAttr "L_pinky_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[313]";
connectAttr "L_pinky_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[314]";
connectAttr "L_pinky_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[315]";
connectAttr "L_pinky_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[316]";
connectAttr "L_pinky_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[317]";
connectAttr "L_pinky_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[318]";
connectAttr "L_pinky_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[319]";
connectAttr "L_pinky_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[320]";
connectAttr "L_pinky_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[321]";
connectAttr "L_pinky_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[322]";
connectAttr "L_pinky_04_ctrl_visibility.o" "Characters_RiggedRN.phl[323]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Knesittende_nakkeskade_pose.ma
