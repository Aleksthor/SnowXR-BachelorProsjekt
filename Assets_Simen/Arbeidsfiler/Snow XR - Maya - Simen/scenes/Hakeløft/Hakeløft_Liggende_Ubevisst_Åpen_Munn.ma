//Maya ASCII 2024 scene
//Name: Hakeløft_Liggende_Ubevisst_Åpen_Munn.ma
//Last modified: Thu, May 16, 2024 10:50:46 PM
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
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "D863FA36-41FF-FE57-74E0-74B0C4F1E2C9";
createNode transform -s -n "persp";
	rename -uid "E76A97A8-4F5B-D8CF-EC18-3FBAD37EA8A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -164.01633236338384 45.581367391864944 -92.104106163796175 ;
	setAttr ".r" -type "double3" -9.9383527348198726 1696.5999999999026 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "80015F93-40CA-FA41-AAD0-469F69C81D2D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 174.60932151044759;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "4598E771-47F5-E3AA-5D1C-8AABFEF583A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FB381DB2-4904-C866-7BD5-57895D9C07DB";
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
	rename -uid "6E07D1CA-442E-432B-981B-F096CD012AB5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4765B88D-468E-40FF-CBD3-42BA4A4C840A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 44.349587802109014;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F4A500E9-49F6-9533-9590-DF8BE4C86077";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "EF27EF72-4FEE-3280-55E2-C8A373CBB47C";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E1846C6D-4618-71F1-0DD5-9487B27E87A7";
	setAttr -s 117 ".lnk";
	setAttr -s 117 ".slnk";
createNode lightEditor -n "lightEditor";
	rename -uid "8B8A9511-4941-720D-AB7E-84BAB72039BA";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "308A90BD-4701-38A5-B9C6-A09A1E71919F";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7CDD27E4-4603-954A-FE64-4CB42E77E549";
createNode displayLayerManager -n "layerManager";
	rename -uid "0F1D678F-4107-D436-7093-07BC77C0DBB7";
createNode displayLayer -n "defaultLayer";
	rename -uid "C274432C-4927-1F60-2BD3-ED82AB72FA08";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "C344522C-49F3-DB1B-8F5C-E88E5F0F587C";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F1F41C8E-4B4C-D5BE-BFE0-9AADDF117D8E";
	setAttr ".g" yes;
createNode renderSetup -n "renderSetup";
	rename -uid "D8910099-4897-5506-7CF5-7BB39799053C";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "2E76F67D-45E8-794D-09EF-54B25DF238DD";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "604229B1-4671-F637-B71F-34B5665CD7F9";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "AC8029D5-4B57-597E-0C1F-018A60FF7D5E";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "2CC590D5-4243-7C78-AA5C-A58DCA39249F";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode reference -n "Characters_RiggedRN";
	rename -uid "608B3971-4F4A-BA21-0EF3-21BCC4D03666";
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
		"Characters_RiggedRN" 405
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_hand_ik_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_hand_ik_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
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
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_pelvis_twist_grp|Characters_Rigged:L_pelvis_twist|Characters_Rigged:L_hip_twist|Characters_Rigged:L_knee_twist_start" 
		"rotate" " -type \"double3\" 0 60.57617446891659085 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt" 
		"rotate" " -type \"double3\" -12.86015496172771755 -59.35013711398865155 10.84674422515682934"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt" 
		"rotate" " -type \"double3\" -17.5046303463076427 -0.00018935267140776407 -0.015952387263008926"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt" 
		"rotate" " -type \"double3\" 26.20043511314876028 -10.1334169639793501 -3.83801344536423539"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt|Characters_Rigged:L_ball_ik_jnt" 
		"rotate" " -type \"double3\" 0 -1.0019154357609245e-08 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_pelvis_twist_grp|Characters_Rigged:R_pelvis_twist|Characters_Rigged:R_hip_twist|Characters_Rigged:R_knee_twist_start" 
		"rotate" " -type \"double3\" -6.1971856412167774e-07 58.07728946737503861 6.0310196299625039e-08"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt" 
		"rotate" " -type \"double3\" -13.91809570074600266 -56.90798445540541906 9.55793253354699246"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt" 
		"rotate" " -type \"double3\" -1.4713800373359871 -0.00020574388311478151 -0.021812606320775165"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt" 
		"rotate" " -type \"double3\" 14.10467173451972833 -22.65895090184613991 6.80743288557375337"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt|Characters_Rigged:R_ball_ik_jnt" 
		"rotate" " -type \"double3\" 0.00029989532146184971 8.3063828406670803e-05 0.029137999162009973"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt|Characters_Rigged:L_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64826965773642797 0 -2.53873396055059564"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_clavicle_twist_grp|Characters_Rigged:L_clavicle_twist|Characters_Rigged:L_shoulder_twist|Characters_Rigged:L_elbow_twist_start" 
		"rotate" " -type \"double3\" 0 -12.17539409224352731 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt|Characters_Rigged:R_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64885935783379978 0.00033314236064041285 -2.54187065782685506"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_clavicle_twist_grp|Characters_Rigged:R_clavicle_twist|Characters_Rigged:R_shoulder_twist|Characters_Rigged:R_elbow_twist_start" 
		"rotate" " -type \"double3\" 0.00028038525217937956 -20.72119028981802558 7.4886403683633302e-05"
		
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
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[13]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[14]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[15]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.visibility" 
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
	rename -uid "9A7313EC-45B4-5D2F-0A5B-BD86FCE763D7";
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1259\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n"
		+ "                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1259\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1259\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "302FF40B-4F1E-C63F-CF22-ADA15EF57992";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 120 ";
	setAttr ".st" 6;
createNode animCurveTL -n "global_ctrl_translateX";
	rename -uid "7E30A9B4-45CD-E78A-282D-8DA07D384F39";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "global_ctrl_translateY";
	rename -uid "AAEAF2D7-4F52-4B30-2D67-2699C83AA1C4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "global_ctrl_translateZ";
	rename -uid "E2AF8139-43F4-AF17-8170-2585812B5B6C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "L_foot_ik_ctrl_translateX";
	rename -uid "6B0E26BD-4E18-D90B-B129-A7A3A9A1B06B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -3.0636763227293926 30 -3.0636763227293926
		 60 -3.0636763227293926 90 -3.0636763227293926 120 -3.0636763227293926;
createNode animCurveTL -n "L_foot_ik_ctrl_translateY";
	rename -uid "C18164BB-433F-D992-59FD-9898BC66EE5C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -2.2006592520206532 30 -2.2006592520206532
		 60 -1.0284477852808251 90 -1.0284477852808251 120 -1.0284477852808251;
createNode animCurveTL -n "L_foot_ik_ctrl_translateZ";
	rename -uid "3F1970C6-405F-ABDF-C724-50BC53BFF03A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 88.890826990362115 30 88.890826990362115
		 60 78.662983162927915 90 78.662983162927915 120 78.662983162927915;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateX";
	rename -uid "3AE27CF7-4074-FEA0-6068-7C92B85C007C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 32.928742185922523 30 32.928742185922523
		 60 32.928742185922523 90 32.928742185922523 120 32.928742185922523;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateY";
	rename -uid "22ABE292-40DD-2A08-3DD7-35A6A03440E2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.771771481945507 30 -13.771771481945507
		 60 -13.771771481945507 90 -13.771771481945507 120 -13.771771481945507;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateZ";
	rename -uid "F98976B4-4D43-B4C3-4D05-F8A20B7A5DEB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "R_foot_ik_ctrl_translateX";
	rename -uid "9356C020-496A-5C18-9AFD-008EC41F2A7B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "R_foot_ik_ctrl_translateY";
	rename -uid "27099EB4-434A-F4B9-5715-7B8C9BED758C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 2.515427386097715 30 2.515427386097715
		 60 2.515427386097715 90 2.515427386097715 120 2.515427386097715;
createNode animCurveTL -n "R_foot_ik_ctrl_translateZ";
	rename -uid "BBF04D63-4C1D-FC08-A8EF-59BED5D1E277";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -91.975929088512274 30 -91.975929088512274
		 60 -91.975929088512274 90 -91.975929088512274 120 -91.975929088512274;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateX";
	rename -uid "86463B4B-4A55-62B3-6DF3-F283D7BF3BBB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -20.588642798428225 30 -20.588642798428225
		 60 -20.588642798428225 90 -20.588642798428225 120 -20.588642798428225;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateY";
	rename -uid "16806638-4E5E-F4E6-7100-349A2CF3E77D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -31.12101513340928 30 -31.12101513340928
		 60 -31.12101513340928 90 -31.12101513340928 120 -31.12101513340928;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateZ";
	rename -uid "BA6EE9B2-47C5-B259-B19B-C4A04E397D93";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "cog_ctrl_translateX";
	rename -uid "53BBF08D-482F-E702-A460-A0950B0A092A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "cog_ctrl_translateY";
	rename -uid "70ED9111-42A0-FB38-8554-BFBC5856DAB8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -85.573015131001213 30 -85.573015131001213
		 60 -85.573015131001213 90 -85.573015131001213 120 -85.573015131001213;
createNode animCurveTL -n "cog_ctrl_translateZ";
	rename -uid "AF8021BD-432B-FC9E-FBDD-1F843C189059";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_01_ctrl_translateX";
	rename -uid "27A8A6F0-457F-6E9F-85EA-C5AEA2FD2B6B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_01_ctrl_translateY";
	rename -uid "BAC30F3F-4A69-8636-7728-0C98F4EA4A79";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_01_ctrl_translateZ";
	rename -uid "F4979E47-40B1-998F-564A-EF8AAE969E05";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_02_ctrl_translateX";
	rename -uid "507E70BE-4F1D-6349-E861-72A86EE9E795";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_02_ctrl_translateY";
	rename -uid "3F12A2B7-4AD9-BD85-7B08-F788623A4A70";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_02_ctrl_translateZ";
	rename -uid "0A5ADD74-4941-03C4-9F79-239292FDC1E9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_03_ctrl_translateX";
	rename -uid "3841C9CF-4433-0266-D011-ECBA4A32D73B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_03_ctrl_translateY";
	rename -uid "D1A03448-4D6A-D80C-BCFB-FC9E560EA868";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_03_ctrl_translateZ";
	rename -uid "1F50BF06-4546-E39F-42D6-378383C50518";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_04_ctrl_translateX";
	rename -uid "A2AC8A02-4998-5C8B-0612-D1B4108B6527";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_04_ctrl_translateY";
	rename -uid "CA3B3A2C-4C6D-19FB-2406-2D875C2F94A5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_04_ctrl_translateZ";
	rename -uid "BD45A477-45BB-579A-CD58-5685E2AA25D0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_05_ctrl_translateX";
	rename -uid "1A7F9DD4-45F1-1B5E-468A-B18590A9DDA4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_05_ctrl_translateY";
	rename -uid "F865ED5E-4B73-2013-45E6-49B62570550C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "tongue_05_ctrl_translateZ";
	rename -uid "F180B174-4A83-5DD7-3002-6187FC75F875";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "eyes_master_ctrl_translateX";
	rename -uid "B9BC4CA6-4B60-9425-68A8-96B73570E758";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "eyes_master_ctrl_translateY";
	rename -uid "43BE53C0-4209-5E2E-390C-E48BFB9CE9A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "eyes_master_ctrl_translateZ";
	rename -uid "9623C072-4B11-3763-08F1-DE8B531BAAF0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "L_eye_ctrl_translateX";
	rename -uid "DB8DE5A9-4A15-FF5C-9DF9-F9991792F3B0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "L_eye_ctrl_translateY";
	rename -uid "F5107F01-4D62-C064-F9FB-E69F672852CB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "L_eye_ctrl_translateZ";
	rename -uid "83876EA6-4905-78F4-AF8E-4E881D1D18CD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "R_eye_ctrl_translateX";
	rename -uid "D9BD8020-46EB-AE19-E5B6-59AACD596FD5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "R_eye_ctrl_translateY";
	rename -uid "76D9D4C5-4D70-F176-5E5A-53834A71B8F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "R_eye_ctrl_translateZ";
	rename -uid "8771467F-4938-922B-C052-98912F0BF29D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_01_ctrl1_visibility";
	rename -uid "5DDA2517-477B-469B-F154-968F78252073";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_01_ctrl1_rotateX";
	rename -uid "8B201F1E-4E7D-BD33-8B6F-ED99F5EBD480";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateY";
	rename -uid "0C88FFE5-4D6D-B236-B219-188110F6FDFC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateZ";
	rename -uid "1F81D255-4F82-52F4-8F3D-32AF3E49BFE5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateX";
	rename -uid "EA4137F9-4302-0240-EB7B-A291B3F3F8C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.57984876108647 15 13.413535501938155
		 30 20.57984876108647;
	setAttr -s 3 ".kit[1:2]"  18 16;
	setAttr -s 3 ".kot[1:2]"  18 16;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateY";
	rename -uid "0491543F-444A-7F28-6FA2-D0BAA5ACDF7D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 15.447600288035186 15 19.066448671917247
		 30 15.447600288035186;
	setAttr -s 3 ".kit[1:2]"  18 16;
	setAttr -s 3 ".kot[1:2]"  18 16;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateZ";
	rename -uid "2B1F504A-4FE4-A947-0DB9-318DD36CDB5E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -28.469383156488789 15 -28.932118580388888
		 30 -28.469383156488789;
	setAttr -s 3 ".kit[1:2]"  18 16;
	setAttr -s 3 ".kot[1:2]"  18 16;
createNode animCurveTU -n "shoulders_ctrl_visibility";
	rename -uid "9780CDBA-4B42-4E7A-11F5-209960C1994D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 15 1 30 1 60 1 90 1 120 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "shoulders_ctrl_rotateX";
	rename -uid "ECBAE730-479E-562F-1F3F-12826B1233F7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 -11.247860517796051 30 0 60 0 90 -2.7405871059978324
		 120 0;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "shoulders_ctrl_rotateY";
	rename -uid "20F7FC38-43F7-8EDB-1F8A-9F8E7A953D71";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -0.014831816627906894 15 -0.014546935461815427
		 30 -0.014831816627906894 60 -4.5558803415555023 90 -4.5506585859872599 120 -4.5558803415555023;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "shoulders_ctrl_rotateZ";
	rename -uid "072BB86F-4BD5-D058-49DA-A5A9B15561DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 -0.0028930007489570372 30 0 60 0
		 90 -0.21829421044400726 120 0;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTU -n "R_eye_ctrl_visibility";
	rename -uid "278F4329-44F5-68D8-53D7-82A802B9B71D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "R_eye_ctrl_rotateX";
	rename -uid "01BD09F8-4E85-6DC1-F6BF-A0B65D099221";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_eye_ctrl_rotateY";
	rename -uid "F49A8F94-4BBF-97E5-734F-B4A1A4B318E7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_eye_ctrl_rotateZ";
	rename -uid "FEF3263F-4C09-9F87-9A09-81A4D484E1CE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_eye_ctrl_scaleX";
	rename -uid "B49B8DD2-42CB-E59F-B8E6-F588D3FC9143";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "R_eye_ctrl_scaleY";
	rename -uid "4AC27D94-48D9-D825-84E8-3BB5C01B1973";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "R_eye_ctrl_scaleZ";
	rename -uid "C26DCE87-418D-E70C-B924-41BD82D21F58";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_middle_04_ctrl_visibility";
	rename -uid "3215E024-4F69-0058-9F50-47ADC53F9A91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ";
	rename -uid "410DE4E4-4E7B-871A-E601-428F6A242E67";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_04_ctrl_visibility";
	rename -uid "C74B048C-45CC-31EB-0A01-8A996515C615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ";
	rename -uid "EF3FB230-4C71-62C8-18A6-95A7348946E7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility";
	rename -uid "491E5510-4738-0805-1404-D0A924F0506C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX";
	rename -uid "E16FC748-4B0D-E34F-FD85-BDA3BF85078B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY";
	rename -uid "F54E41B6-41D4-8E1D-C3F7-5590EC5A7B23";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ";
	rename -uid "61D48CB5-4C9E-695D-DCF0-F7B38F6990B9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_middle_03_ctrl_visibility";
	rename -uid "FC94180B-45F7-A94C-7111-B386472F34D9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ";
	rename -uid "98EC5C0B-4FEA-2439-AF44-488F6F9CBEF1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_middle_04_ctrl_visibility1";
	rename -uid "80270FCA-4B86-2D4D-81E0-EF8F9BCA05CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ1";
	rename -uid "D1069212-427C-3C4E-E983-A49A90CFD573";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_ring_01_ctrl1_visibility";
	rename -uid "4602CE84-4755-B07C-5744-36B54E866C5E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateX";
	rename -uid "DBB91B21-49DD-5904-421F-A5B79F5C9EA1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateY";
	rename -uid "C2EEE990-4D09-0989-D9FE-978D4291E3A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateZ";
	rename -uid "1E0CF691-4BB5-0242-32AC-6187A1C6EE72";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "sternum_ctrl_visibility";
	rename -uid "6F16A768-49C8-3E22-6159-F194E758C8DC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 15 1 30 1 60 1 90 1 120 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "sternum_ctrl_rotateX";
	rename -uid "5E42B09A-47D1-941B-31DF-E6A7F963F970";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 7.5835115158363289 15 13.092055855562993
		 30 7.5835115158363289 60 7.5835115158363289 90 7.5835115158363289 120 7.5835115158363289;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "sternum_ctrl_rotateY";
	rename -uid "61FBB01A-406B-F8DF-8AB0-F9BFAB024664";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 0 30 0 60 0 90 0 120 0;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "sternum_ctrl_rotateZ";
	rename -uid "B46FCE34-41B1-BE16-6474-7E927933C1CA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 0 30 0 60 0 90 0 120 0;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility";
	rename -uid "3C903C3D-4A44-0C6A-3039-1E8ABD8AA1EC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ";
	rename -uid "690983FF-41F1-97F2-0421-A580D1E070DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "eyes_master_ctrl_visibility";
	rename -uid "9BD1398D-4DA9-C5F6-E245-28829DC8CB81";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "eyes_master_ctrl_rotateX";
	rename -uid "2388F722-4683-44B9-398A-BCA49422FA98";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateY";
	rename -uid "479A8882-4456-7709-A4D9-3A9A0FAD890C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateZ";
	rename -uid "C2DDC4A3-4190-ECE2-D5B2-ACBB8A63BBDB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "eyes_master_ctrl_divider00";
	rename -uid "576C302A-4233-1E38-3CC4-2981915B332D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "eyes_master_ctrl_Eyes_Follow_Switch";
	rename -uid "2B7B65E6-4903-90A2-1FAD-0D8E8D9206FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "eyes_master_ctrl_Locators_Visability";
	rename -uid "8F3EBF32-4551-1FD0-DCDA-EFAFAD00A42C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "L_index_03_ctrl_visibility";
	rename -uid "92B040C6-46AA-BA3D-8B2B-5EA3A737DA2E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ";
	rename -uid "41674E4D-4772-E621-4A2B-0DA960CA272C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility";
	rename -uid "CCAF4FC4-47A4-3BF1-DBC4-06A69B441E5F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX";
	rename -uid "49224CB6-45CE-CE58-F17D-7D87DDFE9011";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY";
	rename -uid "36E6EF59-4B6E-FD28-7218-2593B1CD331B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ";
	rename -uid "8F16B473-47D6-C19D-2292-15BF673D1CEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "waist_ctrl_visibility";
	rename -uid "B1D3B652-46EB-5460-76A9-DFA384A79A93";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "waist_ctrl_rotateX";
	rename -uid "92F7BE08-4346-4064-7056-98922CEB8985";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.119867637125042 30 -13.119867637125042
		 60 -13.119867637125042 90 -13.119867637125042 120 -13.119867637125042;
createNode animCurveTA -n "waist_ctrl_rotateY";
	rename -uid "21E54DEB-4271-DF09-2C7F-439E119F5F3C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -7.9909089471798014 30 -7.9909089471798014
		 60 -7.9909089471798014 90 -7.9909089471798014 120 -7.9909089471798014;
createNode animCurveTA -n "waist_ctrl_rotateZ";
	rename -uid "34C5935D-48F5-93E6-E64A-A7AEAB670A32";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "spine_ctrl_visibility";
	rename -uid "E2D060F7-4FC4-DB75-9838-FFBED19803B7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "spine_ctrl_rotateX";
	rename -uid "2184B477-4589-8AFB-71C2-E887FB57CC28";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 4.8340792495257805 30 4.8340792495257805
		 60 4.8340792495257805 90 4.8340792495257805 120 4.8340792495257805;
createNode animCurveTA -n "spine_ctrl_rotateY";
	rename -uid "A9AC431D-41F0-60D7-89C9-8F9F1A05609C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -11.256782409084538 30 -11.256782409084538
		 60 -11.256782409084538 90 -11.256782409084538 120 -11.256782409084538;
createNode animCurveTA -n "spine_ctrl_rotateZ";
	rename -uid "7B45887C-48F0-8647-930B-0EB7822CE804";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.96448810405507246 30 0.96448810405507246
		 60 0.96448810405507246 90 0.96448810405507246 120 0.96448810405507246;
createNode animCurveTU -n "L_eye_ctrl_visibility";
	rename -uid "8293B4AC-43FB-8EAF-1EE1-F09B96BF0E52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_eye_ctrl_rotateX";
	rename -uid "D9E4A6B9-486B-4AC1-F88A-4EA4701B86F9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_eye_ctrl_rotateY";
	rename -uid "265F3027-4045-2207-1DC1-7B9DFCC6CC85";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_eye_ctrl_rotateZ";
	rename -uid "5D08196F-457E-7CF6-32F3-E9A2AE1BFFEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_eye_ctrl_scaleX";
	rename -uid "817143BD-4973-DCDF-092E-3B9306D14134";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_eye_ctrl_scaleY";
	rename -uid "FBAD0948-4F37-4B22-0436-F28F1CEFF9B5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_eye_ctrl_scaleZ";
	rename -uid "988C2C54-4645-6B6F-6199-9888B0AD13E2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_thumb_01_ctrl_visibility";
	rename -uid "5FFAB746-443C-4AA0-813D-5A9A7BC080A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateX";
	rename -uid "CA0A3AF2-49FB-E55A-400A-6998D143FE77";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateY";
	rename -uid "D1F0EB0F-49F3-F447-1F88-878ECA9C3F25";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateZ";
	rename -uid "92323FDC-4ACE-A7C0-24CB-9EB52E775D4C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility";
	rename -uid "6CEE0C59-4B81-2320-52EE-8E8817DD4FA5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ";
	rename -uid "58DD2A82-459D-2385-4641-9398CBAC2721";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_05_ctrl_visibility";
	rename -uid "B82C5CB1-4659-021D-CBD4-7D8E6B98C9F7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "tongue_05_ctrl_rotateX";
	rename -uid "C455B724-4DE1-00EE-75DF-D8A012EED3CF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateY";
	rename -uid "36612323-4DA5-8955-DDEB-919387BAE2A9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateZ";
	rename -uid "6844AF16-474A-010E-7A5B-89B325DE9D3F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_05_ctrl_scaleX";
	rename -uid "003D1261-424B-09EF-35C3-D8B1F38A90D0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleY";
	rename -uid "15EE8BC3-4DA1-34E8-6AC2-FF81000B24AF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleZ";
	rename -uid "B7677A20-4E13-9F96-F772-9AA69AD7CCC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_03_ctrl_visibility";
	rename -uid "18DCF9B9-4C03-C8BD-7B4C-6EA21150A7C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "tongue_03_ctrl_rotateX";
	rename -uid "8557AC33-475F-3808-D3C4-3A89A75E619F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateY";
	rename -uid "96486CCB-435A-1E09-A622-4A8839306477";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateZ";
	rename -uid "7BBF2DCE-404C-F60B-A035-75AAF6541109";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_03_ctrl_scaleX";
	rename -uid "2187C848-4420-B188-E63A-55B7A304CE86";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleY";
	rename -uid "2434AC8C-47BF-804C-AD53-8E99C186CFD6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleZ";
	rename -uid "4F3E5034-4FFA-5B45-6C40-92A5096E1CE5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_ring_03_ctrl_visibility";
	rename -uid "165DE011-4D6A-FD81-61D4-E098CBF80C07";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ";
	rename -uid "AEDDAC18-4B86-DE93-6C00-6CA622B395B5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility";
	rename -uid "7C0582C6-4024-4348-6EFC-20A9C2150EEC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ";
	rename -uid "B0BE45E0-414E-7064-EB81-249969950222";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "global_ctrl_visibility";
	rename -uid "DC9B475E-48D6-4E86-5D8D-0AA7D0B9DF72";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "global_ctrl_rotateX";
	rename -uid "BBB087C6-41BD-9F1D-ACB2-4091FF336858";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "global_ctrl_rotateY";
	rename -uid "928082E4-4329-37A8-9EDF-ED8282EC2CDE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "global_ctrl_rotateZ";
	rename -uid "A1890A10-40B8-E8DD-B8AA-BC997D5DAFDE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "global_ctrl_scaleX";
	rename -uid "20C3A328-4A35-8206-73FF-3C93383C1405";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "global_ctrl_scaleY";
	rename -uid "5600EBD4-4F59-2777-0909-29B1B513E506";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "global_ctrl_scaleZ";
	rename -uid "333C7C45-4199-3E02-8C05-D9A899173EC3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "jaw_ctrl_visibility";
	rename -uid "3772565E-4F95-3F36-78F4-5CBE44E25E49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "jaw_ctrl_rotateX";
	rename -uid "E726EE86-4369-19D6-92CF-6EAA166C8851";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -13.236492657176834 30 -13.236492657176834
		 60 3.9853261814615677 90 3.9853261814615677 120 3.9853261814615677;
createNode animCurveTA -n "jaw_ctrl_rotateY";
	rename -uid "EEB09960-4A1F-46FD-A4E4-878026FD9D4F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "jaw_ctrl_rotateZ";
	rename -uid "B435DED0-4CAE-FA2F-EB58-D28298705642";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_ring_04_ctrl_visibility";
	rename -uid "529C06B3-46B0-AE1F-75AF-C7AC2D7CD2EE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ";
	rename -uid "970CAC0C-41AA-6CFD-D2D0-278F4B2F37AA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateX";
	rename -uid "456B3B9C-4905-4110-1475-B190C13B847B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 5.4571154162048039 30 5.4571154162048039
		 60 5.4571154162048039 90 5.4571154162048039 120 5.4571154162048039;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateY";
	rename -uid "D415E343-48CB-C10F-4F58-FD928FA5CB1A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 51.725382410937826 30 51.725382410937826
		 60 51.725382410937826 90 51.725382410937826 120 51.725382410937826;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateZ";
	rename -uid "432DBB88-45A0-CE48-9E8B-9484C1D8C9BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0.70262775206122519 30 0.70262775206122519
		 60 0.70262775206122519 90 0.70262775206122519 120 0.70262775206122519;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateX";
	rename -uid "746A85DC-490F-5F84-F4DF-309A8DD585B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.7634993660423692 15 9.7154214265716803
		 30 5.7634993660423692 60 0.45482075423768842 90 0.45482075423768842 120 0.45482075423768842;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateY";
	rename -uid "4899E215-4B9F-BC72-D262-308A52D54935";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 72.199370395718105 15 81.653432287782024
		 30 72.199370395718105 60 -5.3499790037707546 90 -5.3499790037707546 120 -5.3499790037707546;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateZ";
	rename -uid "14F89E70-4392-BAEF-6C56-30A9A477C624";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 5.658957932302962 15 7.035326875780382
		 30 5.658957932302962 60 1.7356221379670957 90 1.7356221379670957 120 1.7356221379670957;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTU -n "L_middle_01_ctrl1_visibility";
	rename -uid "AE8CD1E4-4369-F0FB-1D7F-829A8CBB0915";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateX";
	rename -uid "4D227B32-498A-AFB5-2BF0-CF8CED677CA4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateY";
	rename -uid "2ADE9CC8-41D4-8AC3-4E73-3481FE4645CA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateZ";
	rename -uid "18C4C661-40EA-01DF-1007-269619C7B6AA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_ring_01_ctrl_visibility";
	rename -uid "28724E3A-43DD-4F5F-03ED-B18A5417F0FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_01_ctrl_rotateX";
	rename -uid "BE53300A-4B57-1F20-110D-4ABFFBC2C73B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateY";
	rename -uid "D842B110-4D63-895E-35E8-CEB306370166";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateZ";
	rename -uid "A0AA4032-41B8-B491-CE5A-668078F1B157";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_ball_ik_ctrl_visibility";
	rename -uid "629E9796-45C9-39A0-4A97-71BDA1E11DD4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateX";
	rename -uid "696975C3-4D9F-440F-3B23-D690B79B9751";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateY";
	rename -uid "13093BC4-4F5F-E3AD-AEF9-9E9B93FB363A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateZ";
	rename -uid "6E96F0AC-4760-9ED3-A97A-B984975D7E6B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_01_ctrl_visibility";
	rename -uid "F616BC08-4434-8016-DC87-FEB05428F7A5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_01_ctrl_rotateX";
	rename -uid "0D96F404-4EFD-2A5D-FD53-E3B8467D46B2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateY";
	rename -uid "7F80B148-4443-5D23-2454-4BB11035F7DE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateZ";
	rename -uid "95906D3E-45EC-495E-CEEE-42AD83883D71";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_visibility";
	rename -uid "AD30EBA1-4430-375A-13E8-4A82EF8D5EDF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateX";
	rename -uid "036A5ED0-4B60-C332-B4B8-D2A6E80DC613";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateY";
	rename -uid "A9313675-4D3B-56AA-8A5D-169A899D2031";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateZ";
	rename -uid "3EC265C2-4FB9-A8D9-6A80-D696997F3025";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleX";
	rename -uid "FB3BAD8A-420B-E6B6-C6BF-949B58543627";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleY";
	rename -uid "47A55B91-45CE-D034-541D-BD8333173141";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleZ";
	rename -uid "C4005C75-49D8-6D8F-ECED-3982E11B5607";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_ring_02_ctrl_visibility";
	rename -uid "BA35CAD2-43ED-9593-05CC-F799C8BD5C02";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX";
	rename -uid "97E039DC-4C10-FA8C-4387-64B9FE02507F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY";
	rename -uid "D89A0840-44FD-41E1-9310-2594F2EE0E92";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ";
	rename -uid "B664E72C-42C5-9BE9-C53D-44996BE90580";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "cog_ctrl_visibility";
	rename -uid "9F6221DA-4F76-9C29-A2DC-24AAA7670156";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "cog_ctrl_rotateX";
	rename -uid "0EEC3B7E-4B36-4C20-7BD5-A3911BF6E462";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -90 30 -90 60 -90 90 -90 120 -90;
createNode animCurveTA -n "cog_ctrl_rotateY";
	rename -uid "A36EA6F2-4221-F9A9-02B4-49BF7E728509";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "cog_ctrl_rotateZ";
	rename -uid "AAE5E971-40B8-BC96-A2A2-01AAA0C3B87C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_ring_03_ctrl_visibility1";
	rename -uid "FCDEFCAD-4599-9218-51DA-9D9BDD2E7C0A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ1";
	rename -uid "325AA790-474A-C863-0C00-6EBA959D7656";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_foot_ik_ctrl_visibility";
	rename -uid "8C96576D-4AB2-3F4A-E748-42A9CAAB13B7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateX";
	rename -uid "4DE68155-41AD-CAFD-806C-0C80761EE53A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -43.579062768930733 30 -43.579062768930733
		 60 -57.253622702245849 90 -57.253622702245849 120 -57.253622702245849;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateY";
	rename -uid "824CEED7-4AB4-1143-A9FE-A7B0405CF049";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 76.054684230235011 30 76.054684230235011
		 60 66.809794863704084 90 66.809794863704084 120 66.809794863704084;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateZ";
	rename -uid "A8AA02DB-491F-1E11-6BC7-419945AB6792";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -71.891252268005715 30 -71.891252268005715
		 60 -63.008112982579419 90 -63.008112982579419 120 -63.008112982579419;
createNode animCurveTU -n "R_foot_ik_ctrl_divider00";
	rename -uid "B633DB63-41C8-0625-1AD7-0BA432F6A419";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "R_foot_ik_ctrl_Toe_Roll";
	rename -uid "AE493CA4-40AD-4710-0D4A-6390BA2DFF91";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_foot_ik_ctrl_Foot_Bank";
	rename -uid "8888BAEE-42C0-E16A-8262-07A3F87C2DEE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_foot_ik_ctrl_Heel_Rise";
	rename -uid "76013FBC-4A54-E963-8745-40983E7EF2A6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_visibility";
	rename -uid "F6F30AFC-46CA-32B4-A5B5-AA887B709A50";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateX";
	rename -uid "1D3B0564-4903-25C7-8B5F-71ADD3DC59C8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateY";
	rename -uid "995D41E2-467E-C0DF-BE54-CCA89F53F595";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateZ";
	rename -uid "54EB6A0A-4528-7B32-9E92-D89C8C50DCFF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleX";
	rename -uid "E324A4E5-4706-8517-3B63-4596409F7E82";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleY";
	rename -uid "C957FE64-4B1E-D3DC-0184-8DA854736EEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleZ";
	rename -uid "B6F61B32-46B1-C0FA-A3AC-FC93F76484B8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_ring_04_ctrl_visibility1";
	rename -uid "6BF91686-410F-8BE3-6911-3395AA29DC9B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ1";
	rename -uid "0D2F18C0-41B2-6035-1CD0-169F43A086DE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateX";
	rename -uid "DB155EA2-42C9-4715-E5D3-1C81AB06BFC7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -11.247706239926499 15 -17.93308457838269
		 30 -11.247706239926499 60 -17.734458568628785 90 -20.053630320315513 120 -17.734458568628785;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateY";
	rename -uid "1CBB43F6-4D24-03E8-3439-14AB34562BD2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 14.003385520322485 15 16.021547462648371
		 30 14.003385520322485 60 16.006570722316777 90 16.826419517563195 120 16.006570722316777;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateZ";
	rename -uid "D5A9E1D5-4072-9678-0F6A-5DB88C92653B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -18.405369064240471 15 -16.693911117562131
		 30 -18.405369064240471 60 -21.018826021194453 90 -20.379547821438916 120 -21.018826021194453;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTU -n "L_pinky_01_ctrl_visibility";
	rename -uid "8327156C-430D-ED55-F72E-599C1AB8888B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateX";
	rename -uid "9FCC7B59-41E4-E83D-02FD-72B6C57EBA92";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateY";
	rename -uid "9AE8D112-4687-028D-AAE0-8EA3DF309994";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateZ";
	rename -uid "5145A873-409E-72DC-67A3-A6A500C6A654";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_04_ctrl_visibility";
	rename -uid "FD370A09-4E57-FA16-2676-1D8D93483C11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "tongue_04_ctrl_rotateX";
	rename -uid "B361F0E1-44B9-2BC5-118D-6AAE5A790398";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateY";
	rename -uid "7538126A-4032-427C-537D-1490469D233E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateZ";
	rename -uid "B3C3AD62-49AE-AC8F-84C2-C7AB736EF320";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_04_ctrl_scaleX";
	rename -uid "4B85B321-4D68-7F53-2F51-AEB5B6991121";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleY";
	rename -uid "78665EA0-4915-7E5A-E12A-CE97AE0F1A6E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleZ";
	rename -uid "FF83028D-4C5A-90CB-346F-51A997717188";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_foot_ik_ctrl_visibility";
	rename -uid "C1FFAFB5-4281-D34A-2E3A-42B8CFDA2831";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateX";
	rename -uid "499FE892-482B-9A59-3476-108590158388";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -36.317220267686203 30 -36.317220267686203
		 60 -19.634490525358821 90 -19.634490525358821 120 -19.634490525358821;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateY";
	rename -uid "F8FB6B31-4111-BD00-801F-7CAEEFE962F6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 46.205953494328774 30 46.205953494328774
		 60 15.711656073310012 90 15.711656073310012 120 15.711656073310012;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateZ";
	rename -uid "60120303-4B19-7309-8A72-9E836EBA15F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -65.571476880003971 30 -65.571476880003971
		 60 -51.81967001334953 90 -51.81967001334953 120 -51.81967001334953;
createNode animCurveTU -n "L_foot_ik_ctrl_divider00";
	rename -uid "9F3C41F8-4455-ABBE-F85A-4D9CAF471A40";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "L_foot_ik_ctrl_Toe_Roll";
	rename -uid "8EDB4E40-4D36-BDA9-4B45-43B1420B5390";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_foot_ik_ctrl_Foot_Bank";
	rename -uid "578C824A-4AA1-48DA-0F48-778609BCEDA3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_foot_ik_ctrl_Heel_Rise";
	rename -uid "043A38DF-4AB4-FEEE-E222-7692676D60C8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_middle_03_ctrl_visibility1";
	rename -uid "65774DE2-4FE4-725D-4747-B1AF6C8A08A5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ1";
	rename -uid "3CAA5FE8-4F1B-5727-CF5A-BB8D77F85FE2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_03_ctrl_visibility1";
	rename -uid "A8226162-4BDE-22A6-254C-A3B915297E12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ1";
	rename -uid "1F50E6A8-4BA3-90C9-5943-9AAB7806BC29";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_02_ctrl_visibility";
	rename -uid "1CAA40C9-4CC6-3AE8-5921-FF8AEF0D6760";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "tongue_02_ctrl_rotateX";
	rename -uid "9B5786BD-4ED5-B007-6D87-3E8880F211FD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateY";
	rename -uid "DD5D96AB-4020-304A-130C-C7AB29B16B50";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateZ";
	rename -uid "5D9BFCF1-4530-FD8E-157B-A49A75ABE632";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "tongue_02_ctrl_scaleX";
	rename -uid "3714A175-4AA7-0DED-FB37-C9AA666F42F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleY";
	rename -uid "77B6266C-4A25-3ABE-1680-CB85822A6EB5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleZ";
	rename -uid "6D453FCE-4B83-54A2-D2EC-0BBED27FD118";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "L_pinky_01_ctrl1_visibility";
	rename -uid "80EBC110-4C3E-5118-3A12-79BE86033660";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateX";
	rename -uid "738FB803-4AD9-D24A-91FF-BAB6C73F2B5D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateY";
	rename -uid "928EFC13-434A-A3C7-5D7E-B0904B6A844F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateZ";
	rename -uid "17F810D3-4B42-4A35-2AFD-4480D8F3D0BB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_thumb_01_ctrl1_visibility";
	rename -uid "6A0C8D54-4F2F-26AF-217B-13BC0454ED86";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateX";
	rename -uid "C5DC40E4-40F8-88A1-5BBA-E4B63BF0E0EC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateY";
	rename -uid "E7AF9E45-4AB2-A6DF-C105-6CA511F11035";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateZ";
	rename -uid "617641E2-4CEB-1425-B605-98B9AFF019BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility1";
	rename -uid "7F9C1FB3-4BDA-F56A-9998-3A8BE336DFF4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ1";
	rename -uid "DCC84F6B-4EA2-AA29-C998-7AB6860FBE63";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_ring_02_ctrl_visibility1";
	rename -uid "120DE583-4EF4-B40F-67D0-B7B6850649F3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX1";
	rename -uid "6A9DE68D-4351-B235-908C-B38070DB482A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY1";
	rename -uid "6F020728-494F-A5B3-80FD-819FB23A6612";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ1";
	rename -uid "B25CD2FE-4C52-2500-9EB9-EE979D445119";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_clavicle_ctrl_visibility";
	rename -uid "22A7517B-4521-C3E4-93EA-45B736C01CC3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "R_clavicle_ctrl_rotateX";
	rename -uid "BA5A9537-4329-6B62-CECF-A9A072EEF011";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateY";
	rename -uid "1C35A99A-4E28-DAA5-0183-33A43F76A06C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateZ";
	rename -uid "72623D69-471D-02C7-80B1-0B9EE1A05183";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "R_clavicle_ctrl_divider00";
	rename -uid "82DBD36D-4284-7BDF-235C-63835C0065A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "R_clavicle_ctrl_R_arm_IK_FK_switch";
	rename -uid "52C6C6D8-4E32-85CF-E939-9F81ADA4250E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 30 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility1";
	rename -uid "96936063-460C-4EB5-B3B0-599FA8054E79";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ1";
	rename -uid "6365C041-4553-527E-59AC-F8A865943941";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility1";
	rename -uid "D47D85D2-4F22-10E7-45E0-D888CF88881A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX1";
	rename -uid "1ACDE9D4-45E9-54D0-2FC2-249D86C005AE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY1";
	rename -uid "D0A476AF-40ED-1502-20DC-8AAA1E1989DB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ1";
	rename -uid "276BF26E-47F5-1E47-B19D-2CB6BBBF830B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_middle_02_ctrl_visibility";
	rename -uid "5C3CC0FA-4159-8839-613A-E7A6BAABF40F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX";
	rename -uid "ACF4B020-4D5E-DAA7-9CC7-7BA39210D00C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY";
	rename -uid "848AF491-4094-2D1F-238F-819CC3035E2F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ";
	rename -uid "9AF09518-48EE-6437-D67A-6298BBFE3EFC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateX";
	rename -uid "4314B5D8-40ED-B7B4-8E67-E49742E10EAB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -28.942057509060845 30 -28.942057509060845
		 60 99.450704901315419 90 99.450704901315419 120 99.450704901315419;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateY";
	rename -uid "E444EE03-4E12-47DB-0DAE-07ABEC31B8D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 -44.667113555797741 90 -44.667113555797741
		 120 -44.667113555797741;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateZ";
	rename -uid "B9884C5E-41D9-1D72-7303-1580A8C86D8D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 15 -2.1084839097367718 30 0 60 -22.637589123119454
		 90 -22.637589123119454 120 -22.637589123119454;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTU -n "tongue_01_ctrl_visibility";
	rename -uid "1B0F43E9-4C11-2F80-27A4-2C889C48BF5B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "tongue_01_ctrl_rotateX";
	rename -uid "991D52BE-443E-F85C-70F8-79A967ACBAD6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateY";
	rename -uid "F2AA87BC-44B4-F6B6-F012-5F99F03F3B36";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateZ";
	rename -uid "2AFCF1CD-4CA0-2427-F245-BA846882A0A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_middle_02_ctrl_visibility1";
	rename -uid "B4E1CCB8-4FD3-0EE3-2F9E-F2B57C1D5F49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX1";
	rename -uid "3FDB35E3-425C-579F-1D58-B7A3A7A60344";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY1";
	rename -uid "A7DBD4D0-43D4-0B50-78D3-5B8B9755CB5A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ1";
	rename -uid "00A6DD88-4ADB-0360-9B0A-0394CA92178A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility1";
	rename -uid "1251F50A-4F4C-3318-08F7-94BAF9E0A015";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX1";
	rename -uid "6530A45F-4887-1984-F359-E198C8BD9131";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY1";
	rename -uid "F48ACB04-4B42-7AA8-D0AF-AA855C369629";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ1";
	rename -uid "FC28FBA5-4D51-7967-614E-20BB59CEC214";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_02_ctrl_visibility";
	rename -uid "4585AC13-4430-57C6-550F-04A9247F3CFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_02_ctrl_rotateX";
	rename -uid "B526B29E-460A-0F5C-E4D5-F1B48B07E3AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateY";
	rename -uid "B8BA3F58-4AE6-8C30-3F7B-F3A1E633AE12";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ";
	rename -uid "B00292B1-4200-5F7B-3AC9-65B1D0C856AE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_04_ctrl_visibility1";
	rename -uid "26940F31-4BDD-2C20-C796-588E99333EAE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ1";
	rename -uid "41F0FE2F-4636-BA31-E544-8D80DE8B042B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_middle_01_ctrl_visibility";
	rename -uid "14E5A560-4F14-6BB8-8B85-A6809D288EB0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_middle_01_ctrl_rotateX";
	rename -uid "76838799-44EA-18B2-7951-4581E86579D9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateY";
	rename -uid "EFCB4DF5-47E6-F17D-0419-D1808C061238";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateZ";
	rename -uid "B7E53AC4-482E-7826-42F7-F1B272071ED2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "neck_ctrl_visibility";
	rename -uid "236D43B1-44AF-986F-A709-FDBAF5C257A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "neck_ctrl_rotateX";
	rename -uid "7F709462-4C85-53D3-FA20-96A09086610F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -33.505893733289241 15 -26.648787889139587
		 30 -32.520634077374503 60 -38.682075739071259 90 -35.480742163237331 120 -38.682075739071259;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "neck_ctrl_rotateY";
	rename -uid "2EAAF3D6-4495-0CBE-E536-EF802DCA6CF9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 -22.367603711379321 15 -19.494688230437621
		 30 -9.1303835280912562 60 8.8878848123145673 90 9.0203110844782444 120 8.8878848123145673;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTA -n "neck_ctrl_rotateZ";
	rename -uid "F9A61A6B-4AF6-DBF6-528F-878CCDB07F1A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 20.664476171344212 15 16.560860801132876
		 30 13.052503398370796 60 1.9303132619354806 90 1.8504357607706707 120 1.9303132619354806;
	setAttr -s 6 ".kit[1:5]"  18 16 16 16 16;
	setAttr -s 6 ".kot[1:5]"  18 16 16 16 16;
createNode animCurveTU -n "L_clavicle_ctrl_visibility";
	rename -uid "3E23B87D-4B61-5561-BF03-8CAD6603B5AA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_clavicle_ctrl_rotateX";
	rename -uid "F3D45D6E-45C1-C83A-E9AE-058FD506B26B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateY";
	rename -uid "987D1DEB-4277-B6DB-25DB-E482A69F6CAC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateZ";
	rename -uid "8F96A98C-4FD4-0A3D-BCC9-AC9D83A675ED";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_clavicle_ctrl_divider00";
	rename -uid "D0D4FDFE-4CAF-3B67-5DDE-19A5367F826B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "L_clavicle_ctrl_L_arm_IK_FK_switch";
	rename -uid "277EA69A-423E-8829-0D3D-9498721E7A77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "abdomen_ctrl_visibility";
	rename -uid "4334809E-4E3B-B5C0-8CF0-E2B1E5983E66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "abdomen_ctrl_rotateX";
	rename -uid "1990BACD-498C-FC92-9344-51BEEED80D5B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "abdomen_ctrl_rotateY";
	rename -uid "AD51AAC5-4A13-E98E-EE23-A694BCE81D29";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "abdomen_ctrl_rotateZ";
	rename -uid "450170C3-470B-79C8-056C-E1A9FB3580CC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_index_02_ctrl_visibility1";
	rename -uid "F5A2BA61-489D-9520-0E84-35A2BD7DEE56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_index_02_ctrl_rotateX1";
	rename -uid "231DAC82-44DB-4745-AC12-8B89462ADB81";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateY1";
	rename -uid "2F479D3F-4B80-D7A6-BAF7-63B5E48E1D13";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ1";
	rename -uid "F3D8AA27-472C-0E69-782A-4882DCEB465A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility1";
	rename -uid "042002E9-4CB5-8540-3A81-8C9F61C33035";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ1";
	rename -uid "8A2393A2-41D1-7AB6-4675-FC81C5938162";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateX";
	rename -uid "262B8EEA-4283-89DB-DDF0-DBA3F949DACF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -1.5845176418086304 30 -1.5845176418086304
		 60 -1.5845176418086304 90 -1.5845176418086304 120 -1.5845176418086304;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateY";
	rename -uid "4DEA4AEF-43CA-A2F5-3C65-6581195CEF54";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 15.56505844592759 30 15.56505844592759
		 60 15.56505844592759 90 15.56505844592759 120 15.56505844592759;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateZ";
	rename -uid "6171B4F8-4C91-7693-0C4B-97BDE503A0D3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -15.969166747138132 30 -15.969166747138132
		 60 -15.969166747138132 90 -15.969166747138132 120 -15.969166747138132;
createNode animCurveTA -n "head_ctrl1_rotateX";
	rename -uid "D3126F9E-4CD7-470D-B563-32A419527FCF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 3.0760693563228783 30 -1.1493344087103521
		 60 6.7225214373759545 120 6.9500256992227172;
	setAttr -s 4 ".kit[1:3]"  18 16 16;
	setAttr -s 4 ".kot[1:3]"  18 16 16;
createNode animCurveTA -n "head_ctrl1_rotateY";
	rename -uid "253C43B7-42D4-61BD-CC9E-41BC4AE89797";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -52.391915130932865 30 16.831631386903794
		 60 36.104884550167853 120 -38.591239895317628;
	setAttr -s 4 ".kit[1:3]"  18 16 16;
	setAttr -s 4 ".kot[1:3]"  18 16 16;
createNode animCurveTA -n "head_ctrl1_rotateZ";
	rename -uid "6A54FF4E-476C-C234-CB6E-AB927CCEE943";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0.30655289078617681 30 3.3122279442548361
		 60 3.9732453798731178 120 -4.348170212203307;
	setAttr -s 4 ".kit[1:3]"  18 16 16;
	setAttr -s 4 ".kot[1:3]"  18 16 16;
createNode animCurveTU -n "head_ctrl1_visibility";
	rename -uid "12330BEB-4FC3-33FD-D01F-0CA354CF5E88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 1 30 1 60 1 120 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "head_ctrl1_Orient_Neck";
	rename -uid "4E53D8AE-469C-6EAE-F305-5B8EFBB34E29";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 0 30 0 60 0 120 0;
	setAttr -s 4 ".kit[1:3]"  18 16 16;
	setAttr -s 4 ".kot[1:3]"  18 16 16;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "1084A6C0-4284-2C0E-1EC3-F198F12B9CF2";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "12FE886C-4DA5-753A-EB33-F6878C00E604";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".ac[0].acn" -type "string" "Hakeløft_Liggende_Ubevisst_Åpen_Munn";
	setAttr ".ac[0].ace" 30;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/Simen/OneDrive/Documents/GitHub/SnowXR-BachelorProsjekt/Assets_Simen/Arbeidsfiler/Snow XR - Maya - Simen//scenes/Hakeløft";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "422A949E-496F-8354-9BE4-B6BFC4846A92";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode animCurveTU -n "R_ball_ik_ctrl_visibility";
	rename -uid "59E3EB46-4ADE-EDF0-B600-3EB2FD522FFC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateX";
	rename -uid "53EEBA23-4D9D-CD26-47A1-0D8F9B3E2BF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateY";
	rename -uid "80E50A37-4AB5-A897-FFA5-9DA2D6D1A954";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateZ";
	rename -uid "64315E3E-440E-F569-AC5D-E7A2B51E7EF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  30 0;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "4E17EC7C-4ACE-25BF-742D-B8AEA6D7E63B";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 30;
	setAttr ".unw" 30;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 117 ".st";
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
	setAttr -s 120 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
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
	setAttr -k on ".cch";
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
	setAttr ".ro" yes;
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off ".eeaa";
	setAttr -k off ".engm";
	setAttr -k off ".mes";
	setAttr -k off ".emb";
	setAttr -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off ".twa";
	setAttr -k off ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
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
connectAttr "eyes_master_ctrl_translateX.o" "Characters_RiggedRN.phl[13]";
connectAttr "eyes_master_ctrl_translateY.o" "Characters_RiggedRN.phl[14]";
connectAttr "eyes_master_ctrl_translateZ.o" "Characters_RiggedRN.phl[15]";
connectAttr "eyes_master_ctrl_visibility.o" "Characters_RiggedRN.phl[16]";
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
connectAttr "L_pinky_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[212]";
connectAttr "L_pinky_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[213]";
connectAttr "L_pinky_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[214]";
connectAttr "L_pinky_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[215]";
connectAttr "L_pinky_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[216]";
connectAttr "L_pinky_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[217]";
connectAttr "L_pinky_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[218]";
connectAttr "L_pinky_04_ctrl_visibility.o" "Characters_RiggedRN.phl[219]";
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
connectAttr "L_ring_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[230]";
connectAttr "L_ring_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[231]";
connectAttr "L_index_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[232]";
connectAttr "L_index_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[233]";
connectAttr "L_index_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[234]";
connectAttr "L_index_01_ctrl_visibility.o" "Characters_RiggedRN.phl[235]";
connectAttr "L_index_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[236]";
connectAttr "L_index_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[237]";
connectAttr "L_index_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[238]";
connectAttr "L_index_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[239]";
connectAttr "L_index_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[240]";
connectAttr "L_index_03_ctrl_visibility.o" "Characters_RiggedRN.phl[241]";
connectAttr "L_index_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[242]";
connectAttr "L_index_04_ctrl_visibility.o" "Characters_RiggedRN.phl[243]";
connectAttr "L_middle_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[244]";
connectAttr "L_middle_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[245]";
connectAttr "L_middle_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[246]";
connectAttr "L_middle_01_ctrl_visibility.o" "Characters_RiggedRN.phl[247]";
connectAttr "L_middle_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[248]";
connectAttr "L_middle_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[249]";
connectAttr "L_middle_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[250]";
connectAttr "L_middle_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[251]";
connectAttr "L_middle_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[252]";
connectAttr "L_middle_03_ctrl_visibility.o" "Characters_RiggedRN.phl[253]";
connectAttr "L_middle_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[254]";
connectAttr "L_middle_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[255]";
connectAttr "L_thumb_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[256]";
connectAttr "L_thumb_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[257]";
connectAttr "L_thumb_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[258]";
connectAttr "L_thumb_01_ctrl_visibility.o" "Characters_RiggedRN.phl[259]";
connectAttr "L_thumb_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[260]";
connectAttr "L_thumb_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[261]";
connectAttr "L_thumb_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[262]";
connectAttr "L_thumb_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[263]";
connectAttr "L_thumb_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[264]";
connectAttr "L_thumb_03_ctrl_visibility.o" "Characters_RiggedRN.phl[265]";
connectAttr "L_thumb_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[266]";
connectAttr "L_thumb_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[267]";
connectAttr "L_thumb_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[268]";
connectAttr "L_thumb_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[269]";
connectAttr "L_thumb_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[270]";
connectAttr "L_thumb_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[271]";
connectAttr "L_thumb_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[272]";
connectAttr "L_thumb_02_ctrl_visibility.o" "Characters_RiggedRN.phl[273]";
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
connectAttr "L_index_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[284]";
connectAttr "L_index_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[285]";
connectAttr "L_index_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[286]";
connectAttr "L_index_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[287]";
connectAttr "L_middle_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[288]";
connectAttr "L_middle_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[289]";
connectAttr "L_middle_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[290]";
connectAttr "L_middle_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[291]";
connectAttr "L_middle_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[292]";
connectAttr "L_middle_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[293]";
connectAttr "L_middle_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[294]";
connectAttr "L_middle_02_ctrl_visibility.o" "Characters_RiggedRN.phl[295]";
connectAttr "L_middle_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[296]";
connectAttr "L_middle_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[297]";
connectAttr "L_middle_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[298]";
connectAttr "L_middle_04_ctrl_visibility.o" "Characters_RiggedRN.phl[299]";
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
connectAttr "L_ring_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[310]";
connectAttr "L_ring_04_ctrl_visibility.o" "Characters_RiggedRN.phl[311]";
connectAttr "L_pinky_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[312]";
connectAttr "L_pinky_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[313]";
connectAttr "L_pinky_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[314]";
connectAttr "L_pinky_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[315]";
connectAttr "L_pinky_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[316]";
connectAttr "L_pinky_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[317]";
connectAttr "L_pinky_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[318]";
connectAttr "L_pinky_02_ctrl_visibility.o" "Characters_RiggedRN.phl[319]";
connectAttr "L_pinky_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[320]";
connectAttr "L_pinky_03_ctrl_visibility.o" "Characters_RiggedRN.phl[321]";
connectAttr "L_pinky_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[322]";
connectAttr "L_pinky_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[323]";
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
// End of Hakeløft_Liggende_Ubevisst_Åpen_Munn.ma
