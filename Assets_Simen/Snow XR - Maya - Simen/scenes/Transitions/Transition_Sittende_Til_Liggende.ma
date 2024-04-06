//Maya ASCII 2024 scene
//Name: Transition_Sittende_Til_Liggende.ma
//Last modified: Thu, Mar 14, 2024 03:25:53 AM
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
fileInfo "UUID" "49A2BF2C-4D69-2533-307F-08B1567F91C8";
createNode transform -s -n "persp";
	rename -uid "E76A97A8-4F5B-D8CF-EC18-3FBAD37EA8A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -421.72254567521344 180.35123070396503 364.05247807347553 ;
	setAttr ".r" -type "double3" -13.538352719370396 307.39999999998355 -1.3091377996339686e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "80015F93-40CA-FA41-AAD0-469F69C81D2D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 555.46979294691869;
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
	setAttr ".ow" 30;
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
createNode transform -n "pPlane1";
	rename -uid "5CB9F59E-4E33-3819-6D6C-DC8F75B73EE5";
	setAttr ".s" -type "double3" 357.20300508464163 357.20300508464163 357.20300508464163 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "989BF27C-4AA3-FBA0-9BE5-3089214B5EB2";
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
	rename -uid "46B76683-44D1-B496-DA2B-AABDCE1C9312";
	setAttr -s 117 ".lnk";
	setAttr -s 117 ".slnk";
createNode lightEditor -n "lightEditor";
	rename -uid "8B8A9511-4941-720D-AB7E-84BAB72039BA";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "315DA6A0-4EBA-F242-0967-FF9EEB5B8297";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AFE1CFD9-490E-530E-2FC0-898C02F62742";
createNode displayLayerManager -n "layerManager";
	rename -uid "6FE9A2BB-406E-DBD1-4BED-F590B30138B3";
createNode displayLayer -n "defaultLayer";
	rename -uid "C274432C-4927-1F60-2BD3-ED82AB72FA08";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "82DA57BD-4E87-B0D9-00DA-DF9F6D6312FD";
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
	setAttr -s 338 ".phl";
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
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Characters_RiggedRN"
		"Characters_RiggedRN" 0
		"Characters_RiggedRN" 482
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotate" " -type \"double3\" -11.88480246856641109 -7.98904036775177762 0.17336330153131899"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translate" " -type \"double3\" 12.42992017170658592 8.61009957102681511 11.93058085641897037"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_hand_ik_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_hand_ik_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_elbow_aim_ik_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" 0 27.53219914025163462 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt" 
		"rotate" " -type \"double3\" 68.95657336623739297 -111.00876962016918981 104.82728880468934562"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt" 
		"rotate" " -type \"double3\" -78.19411989317669054 7.2221997962816238e-05 0.0046862183831009631"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt" 
		"rotate" " -type \"double3\" 52.59820716280384545 3.5810931156085708 17.38593544742214192"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt|Characters_Rigged:L_ball_ik_jnt" 
		"rotate" " -type \"double3\" 3.1853863595393616e-05 -2.8541330201427737e-08 -3.3955555507336753e-08"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_leg_ikHandle" 
		"rotate" " -type \"double3\" 35.94983007801302932 11.80870063066099185 4.55382945065481692"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_leg_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_leg_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_leg_ikHandle" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_ball_ikHandle" 
		"rotate" " -type \"double3\" 35.94826245925469976 11.81893559726447229 4.54844406073008756"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_ball_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_ball_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_ball_ikHandle" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_toe_ikHandle" 
		"rotate" " -type \"double3\" 54.05178645196426857 -11.81964299894085002 -175.45167107698682685"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_toe_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_toe_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_leg_ikHandles|Characters_Rigged:L_toe_ikHandle" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_pelvis_twist_grp|Characters_Rigged:R_pelvis_twist|Characters_Rigged:R_hip_twist|Characters_Rigged:R_knee_twist_start" 
		"rotate" " -type \"double3\" -2.0504680208386496e-07 18.96443138581335219 -5.1116242099144217e-08"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt" 
		"rotate" " -type \"double3\" 57.71938675862403301 -39.14353713007670876 35.78769430719018629"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt" 
		"rotate" " -type \"double3\" -7.13195476129327055 -0.00018632141718820329 -0.019753470483435256"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt" 
		"rotate" " -type \"double3\" 1.82197501865859302 12.37070647057457506 -3.95029440545645416"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt|Characters_Rigged:R_ball_ik_jnt" 
		"rotate" " -type \"double3\" 0.0011439342880553997 -5.7617020665730143e-06 0.02903316359117997"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_leg_ikHandle" 
		"rotate" " -type \"double3\" -60.57638648904141121 -20.83362105238005668 13.09626021902678339"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_leg_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_leg_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_leg_ikHandle" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_ball_ikHandle" 
		"rotate" " -type \"double3\" 119.41981223246541788 -20.82720154131737544 13.1064503311048135"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_ball_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_ball_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_ball_ikHandle" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_toe_ikHandle" 
		"rotate" " -type \"double3\" -29.41952562306101271 20.82700914486611765 -166.89281142950221692"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_toe_ikHandle" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_toe_ikHandle" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_leg_ikHandles|Characters_Rigged:R_toe_ikHandle" 
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
		"translate" " -type \"double3\" 68.58354836907278695 39.72896077172104157 13.18004502831311697"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt|Characters_Rigged:L_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64826965773642797 0 -2.53873396055059564"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_clavicle_twist_grp|Characters_Rigged:L_clavicle_twist|Characters_Rigged:L_shoulder_twist|Characters_Rigged:L_elbow_twist_start" 
		"rotate" " -type \"double3\" 0 73.3947871335248152 0"
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
		"translate" " -type \"double3\" -67.7938523877736543 -42.23932433449715518 -4.31455347448335935"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotate" " -type \"double3\" 19.66365752944642153 3.95281222697176915 -42.03912765374906257"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt|Characters_Rigged:R_elbow_ik_jnt" 
		"rotate" " -type \"double3\" 41.02995235890713843 -0.00039397698462364036 3.19820177738462075"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_clavicle_twist_grp|Characters_Rigged:R_clavicle_twist|Characters_Rigged:R_shoulder_twist|Characters_Rigged:R_elbow_twist_start" 
		"rotate" " -type \"double3\" 4.1245414546138433e-05 -2.94570860576291604 4.383106746911195e-06"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_arm_ikHandles|Characters_Rigged:R_arm_ikHandle" 
		"rotate" " -type \"double3\" 80.2053632146792097 -54.29281749464339413 -141.0460721293526376"
		
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
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[208]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[209]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[210]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[211]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[212]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_hand_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[213]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[214]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[215]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[216]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[217]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[218]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[219]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[220]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[221]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_elbow_aim_ik_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[222]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[223]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[224]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[225]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[226]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[227]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[228]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[229]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[230]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[231]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[232]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[233]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[234]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[235]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[236]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[237]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[238]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[239]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[240]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[241]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[242]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[243]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[244]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[245]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[246]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[247]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[248]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[249]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[250]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[251]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[252]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[253]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[254]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[255]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[256]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[257]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[258]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[259]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[260]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[261]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[262]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[263]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[264]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[265]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[266]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[267]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[268]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[269]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[270]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[271]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[272]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[273]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[274]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[275]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[276]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[277]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[278]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[279]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[280]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[281]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[282]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[283]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[284]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[285]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[286]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[287]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[288]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[289]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[290]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[291]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[292]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[293]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[294]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[295]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[296]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[297]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[298]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[299]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[300]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[301]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[302]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[303]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[304]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[305]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[306]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[307]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[308]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[309]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[310]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[311]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[312]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[313]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[314]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[315]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[316]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[317]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[318]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[319]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[320]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[321]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[322]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[323]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[324]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[325]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[326]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[327]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[328]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[329]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[330]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[331]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[332]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[333]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[334]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[335]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[336]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[337]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[338]" "";
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
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1158\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n"
		+ "                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n"
		+ "                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n"
		+ "                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1158\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1158\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "302FF40B-4F1E-C63F-CF22-ADA15EF57992";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 60 -ast 0 -aet 60 ";
	setAttr ".st" 6;
createNode animCurveTU -n "tongue_03_ctrl_visibility";
	rename -uid "BB7851A3-48D6-4E61-9E67-F59802832B02";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "tongue_03_ctrl_translateX";
	rename -uid "3382F895-4B17-CD2F-DF5B-7C86FD304B0F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_03_ctrl_translateY";
	rename -uid "246443CD-4F18-6B74-CA64-6691784B52B7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_03_ctrl_translateZ";
	rename -uid "A2A45053-47B7-C6DA-2962-43A2DFC5C931";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateX";
	rename -uid "62B2E363-48CE-2B8A-82F9-86A8DCFA74BA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateY";
	rename -uid "A121131D-4D19-7377-6E88-E884A56F0288";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateZ";
	rename -uid "A22EF582-4EDD-3235-88E0-91BD4D06B846";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "tongue_03_ctrl_scaleX";
	rename -uid "F221F554-4EE1-0456-EA9D-A58598CB17A5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleY";
	rename -uid "3F969F06-45F2-2035-994B-0FB98F0091FD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleZ";
	rename -uid "91707FDD-448F-CBBA-7EF9-6089B833BCFF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "abdomen_ctrl_visibility";
	rename -uid "35C1558A-4F55-5248-0179-E5ACDFDFCA60";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "abdomen_ctrl_rotateX";
	rename -uid "B06A9481-43F0-D3F0-67E7-DA8FA25E2846";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.684114908787961 60 4.3480738336542437;
createNode animCurveTA -n "abdomen_ctrl_rotateY";
	rename -uid "5EC7E2A4-4230-0C7B-BE24-B09C276FAC4E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "abdomen_ctrl_rotateZ";
	rename -uid "2F84BC55-4B1F-1AAC-6611-80B79FC74D7B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility";
	rename -uid "AC93BAE5-4EF5-C937-C9C8-13971E57AD40";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ";
	rename -uid "190D2BE0-4D35-BADE-246C-DAA48CE6BC18";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_ring_04_ctrl_visibility";
	rename -uid "307F0B2C-4812-4A7D-4A4C-3983AB1EA018";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ";
	rename -uid "315338DC-42CA-8E7B-028A-9B9C1B77F00D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.9074041096861185;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateX";
	rename -uid "17B880E7-423E-6F21-878F-8185DCDF47A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 80.933694794514707 20 -3.8014175587171728
		 30 19.407637750868169 60 15.118660738751633;
	setAttr -s 4 ".kit[0:3]"  16 18 18 16;
	setAttr -s 4 ".kot[0:3]"  16 18 18 16;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateY";
	rename -uid "646A7051-49D1-3A5B-E151-22A3CC5BCDE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -16.91866896226944 20 9.0003110900512766
		 30 1.7168611117193571 60 4.2182607949776729;
	setAttr -s 4 ".kit[0:3]"  16 18 18 16;
	setAttr -s 4 ".kot[0:3]"  16 18 18 16;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateZ";
	rename -uid "4D69A704-4BB6-AD6B-25F8-7BBF6AED1A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -12.761244493809169 20 -16.386653039182093
		 30 -19.489235368107753 60 -20.671229027174899;
	setAttr -s 4 ".kit[0:3]"  16 18 18 16;
	setAttr -s 4 ".kot[0:3]"  16 18 18 16;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateX";
	rename -uid "D5296D3D-4AD0-A40D-772C-E18699AB048A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 8.6194452756063171 20 27.253943913735309
		 60 -18.29561232796846;
	setAttr -s 3 ".kit[1:2]"  18 16;
	setAttr -s 3 ".kot[1:2]"  18 16;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateY";
	rename -uid "CD84B06C-4D59-4D89-9A6C-C89C18EBCD42";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateZ";
	rename -uid "D84D3198-4F32-7254-8E69-1BA1E9F5BBDF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_index_03_ctrl_visibility";
	rename -uid "BA7A3539-4E72-AF10-E544-27BFD89F9AD0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ";
	rename -uid "0237F884-4091-D637-BA79-BAB7EA9B8269";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9686864260035004;
createNode animCurveTU -n "L_index_03_ctrl_visibility1";
	rename -uid "43AF5CD0-4F8F-BF54-FE39-5FA429364DEF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ1";
	rename -uid "4053C06A-4DEB-0B72-83CE-88B619F2E79D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -24.761619002702034;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateX";
	rename -uid "7A50876D-427E-28A2-86E0-D2BF8043F329";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.37777900996268;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateY";
	rename -uid "8BBB4D01-4F89-1C9D-2F56-2EA187DD2837";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.150053275912008;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateZ";
	rename -uid "E7217A76-4605-31BF-88AE-53B317F72B3D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -10.137353276154379;
createNode animCurveTU -n "spine_ctrl_visibility";
	rename -uid "9E585022-47CB-0C8E-2B41-BAAE8BF26EAA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "spine_ctrl_rotateX";
	rename -uid "841FDC67-4F60-7FCE-6913-1F9645275459";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.77813451106662601 60 2.7953500814538672;
createNode animCurveTA -n "spine_ctrl_rotateY";
	rename -uid "DDA5053B-46AA-E27C-D1D8-2C89DBB38249";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.9581797857135648 60 -8.9520732799330514;
createNode animCurveTA -n "spine_ctrl_rotateZ";
	rename -uid "F4FE5883-4B89-FA32-6745-4D8CB101FED3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.014473175941483471 60 0.33238123167368611;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility1";
	rename -uid "9159FAE4-4AF3-39CB-4908-60B5D5ACB502";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ1";
	rename -uid "5E86ED22-4B3B-37F4-7354-A3B2F31CF83F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -21.070552496531516;
createNode animCurveTU -n "eyes_master_ctrl_visibility";
	rename -uid "17E3447C-4C57-CC48-F616-3F9EBDE5D541";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "eyes_master_ctrl_translateX";
	rename -uid "69794D7D-4996-55FF-249C-F8919EE99F11";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "eyes_master_ctrl_translateY";
	rename -uid "7A97BA53-442D-2EFF-DC5D-B2882C8F942C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "eyes_master_ctrl_translateZ";
	rename -uid "484201C6-4495-3D5E-6813-36B3562F81B0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateX";
	rename -uid "6525784C-47F0-A738-2CD7-5095228FD2A3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateY";
	rename -uid "261F8D10-4288-789C-FCD2-759AAFC5431D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateZ";
	rename -uid "49D1A0EC-40DB-FEA6-8A7C-F5819F14E3C3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "eyes_master_ctrl_divider00";
	rename -uid "E85C701D-44D4-3989-71CF-A9BE9D4D5AB6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "eyes_master_ctrl_Eyes_Follow_Switch";
	rename -uid "99412338-4762-95CB-4894-9AB17343F686";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "eyes_master_ctrl_Locators_Visability";
	rename -uid "4FDFD1EB-460C-86A2-D51B-43A47CD94CC6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "R_foot_ik_ctrl_visibility";
	rename -uid "DB5C1B3E-4451-B86B-50BA-748A8924444C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTL -n "R_foot_ik_ctrl_translateX";
	rename -uid "7CB36D38-4D58-606E-38AA-2DB26E802627";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -29.622156430379647 60 -27.179606932524081;
createNode animCurveTL -n "R_foot_ik_ctrl_translateY";
	rename -uid "147FD471-47E6-CF7A-141B-F8A496ADB373";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.7286350510618931 60 6.5065405832037575;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTL -n "R_foot_ik_ctrl_translateZ";
	rename -uid "5C4F867F-451C-7360-8256-5E862A69DB20";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -81.526842218927712 60 -83.174463839089938;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateX";
	rename -uid "F5F4BC06-440F-06AA-2646-9886136D0A58";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -64.380034989582754 60 -62.364394475401589;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateY";
	rename -uid "C026BE4C-4302-A2D7-0775-0BBE714BBA5C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 102.53112196472892 60 133.48722206279936;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateZ";
	rename -uid "315C81C3-43D6-C5B8-9CF2-728C88FA4A4C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -84.160567758429565 60 -111.97192923791849;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "R_foot_ik_ctrl_divider00";
	rename -uid "F5EA2C8D-4855-E59B-716B-44B4D4BB2C5C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTU -n "R_foot_ik_ctrl_Toe_Roll";
	rename -uid "78A02795-475F-2209-35FF-99AF298553E1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "R_foot_ik_ctrl_Foot_Bank";
	rename -uid "FBE2DB24-4D68-0309-8E62-5ABD6AAD97D3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "R_foot_ik_ctrl_Heel_Rise";
	rename -uid "85333C22-40A9-DBA1-9A6E-A7BB34C1D94D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "global_ctrl_visibility";
	rename -uid "DB7EEA9C-41C9-AB3F-9CAD-238A7796E351";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "global_ctrl_translateX";
	rename -uid "A102E0D4-487B-7D58-74C8-439334B9B55F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "global_ctrl_translateY";
	rename -uid "F2154AAA-48D1-2202-DFAD-B689CE1809DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "global_ctrl_translateZ";
	rename -uid "4E147506-4941-28C2-40EE-1A9DE6B3BF8C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "global_ctrl_rotateX";
	rename -uid "B344301B-45C4-41ED-27ED-539C0FB5975D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "global_ctrl_rotateY";
	rename -uid "E1969F36-4B58-451C-DEC2-D7B0C4C1B540";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "global_ctrl_rotateZ";
	rename -uid "D0DC06A2-4A8A-630C-BC99-B9829D6FC88D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "global_ctrl_scaleX";
	rename -uid "E9B0085D-4AB3-1C1C-D94B-738E1D34E6A6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "global_ctrl_scaleY";
	rename -uid "DC1BE7AA-4DE5-A598-E85B-64AD3928D513";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "global_ctrl_scaleZ";
	rename -uid "1CDC8FCD-4E71-2644-BE63-62B336A55EF9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_middle_01_ctrl1_visibility";
	rename -uid "EE3EBA44-4BE3-B8D7-3F61-B9926F0B3E58";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateX";
	rename -uid "26EBED7A-46AB-1D59-478A-349B81280AE3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateY";
	rename -uid "94235F0C-4213-8D7D-2D91-DA825381B928";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateZ";
	rename -uid "0F3F95C3-4F64-33B5-3C24-1192CC7F4C3F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateX";
	rename -uid "D1948A3C-48ED-91A2-36DC-2090359A4299";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 57.374722900742604 60 -26.811629675711067;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateY";
	rename -uid "7E2AA4D8-43DA-669B-0E65-AA8CCE5A54BD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.84170412782061144 60 74.01365576102917;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateZ";
	rename -uid "652A20D9-4D28-5491-5F1F-0EAD1D7249CF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -74.775836726040296 60 -17.564719018384508;
createNode animCurveTU -n "waist_ctrl_visibility";
	rename -uid "820BBA5F-41F8-AE93-F410-E1B51FE0A7B0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "waist_ctrl_rotateX";
	rename -uid "537868B6-492A-FAEF-923A-11A0FE039CF2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -11.884802468566411;
createNode animCurveTA -n "waist_ctrl_rotateY";
	rename -uid "607D0701-4864-7D78-FE18-A389E5B82A70";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.9890403677517776;
createNode animCurveTA -n "waist_ctrl_rotateZ";
	rename -uid "399EE840-4A15-E8C9-3217-47BCA4E19ACC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.17336330153131899;
createNode animCurveTU -n "L_thumb_01_ctrl_visibility";
	rename -uid "4668C858-4842-80E1-D0E6-A1AF620CC771";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateX";
	rename -uid "92B4EA62-4937-F484-EE56-8E975C08AD6F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.072853594966473118;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateY";
	rename -uid "026BA949-4914-9414-7D9C-EFBB3775E8BE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.8446624541284322;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateZ";
	rename -uid "64F7B72E-445E-3DC0-C234-8DAC875DB581";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.31684028191997954;
createNode animCurveTU -n "R_ball_ik_ctrl_visibility";
	rename -uid "8B28B7D8-4AC8-455F-79E3-CE9E764024A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateX";
	rename -uid "F2A1234A-4D9C-43D9-032C-C599230D0861";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateY";
	rename -uid "266FCEEB-4A0C-80DD-4337-F1BEB1DA6BDC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateZ";
	rename -uid "DDE624E9-4DB6-983D-5B64-8E859BC8B8EF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "R_eye_ctrl_visibility";
	rename -uid "AE2400F7-42A6-6B3B-4A1C-169959696311";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "R_eye_ctrl_translateX";
	rename -uid "69821FB3-4A4E-D807-B9E6-D7BB9C33B697";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "R_eye_ctrl_translateY";
	rename -uid "8AA10CC0-4567-EDCD-8EF0-949A6723EA7E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "R_eye_ctrl_translateZ";
	rename -uid "0578A4A7-4226-16AF-DEDC-28B64BE347FE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_eye_ctrl_rotateX";
	rename -uid "C089F614-47B9-27C2-5285-C2916BA84B16";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_eye_ctrl_rotateY";
	rename -uid "A7426472-46C0-7D80-DFE2-8E995CDEF49A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_eye_ctrl_rotateZ";
	rename -uid "F8854B5D-4350-3EA9-A0D8-BC8281C69734";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "R_eye_ctrl_scaleX";
	rename -uid "B078F0D9-4ACE-7FE9-6AB0-A094C3BD72FC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "R_eye_ctrl_scaleY";
	rename -uid "FE512456-493B-87CD-5A95-05B4078BE12D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "R_eye_ctrl_scaleZ";
	rename -uid "EBFC5948-4E7B-DF7C-09F1-0298BBD16FA3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_04_ctrl_visibility";
	rename -uid "A7724C7F-4C4E-49C2-CF65-959CF6AC34C5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "tongue_04_ctrl_translateX";
	rename -uid "C0FDBBC0-4B61-D764-A2DE-DFBFAD150C96";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_04_ctrl_translateY";
	rename -uid "66807024-4DA4-1747-85B9-718804650AA9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_04_ctrl_translateZ";
	rename -uid "9C693719-49F6-0C11-9233-3288E5B2A632";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateX";
	rename -uid "1816904A-43E6-143E-F63C-3F8E5C124871";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateY";
	rename -uid "80644466-4822-294D-5E26-D3998CF1DBA4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateZ";
	rename -uid "487F404C-44B3-D964-6552-28B55DFD2857";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "tongue_04_ctrl_scaleX";
	rename -uid "4124820B-4761-54CD-E833-0C96BC52CE67";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleY";
	rename -uid "AEAEFFFC-400F-D2E9-100A-2FB27319BEF5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleZ";
	rename -uid "5E532457-47EF-F9DD-F2F6-F39AECCC495D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility";
	rename -uid "118B68D0-42C6-00A8-7CBA-1BBB0B0FF36A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX";
	rename -uid "16DC3CC4-4324-4BCC-05FC-CA9CB320128B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.0486522229831596;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY";
	rename -uid "5D23B2E1-4B3C-FFD5-E9A0-ED9F509099BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -8.1314847914952093;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ";
	rename -uid "65EEACE9-4B9A-EC87-F285-EEB82788196D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.680176381892;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_visibility";
	rename -uid "8BE51CD8-4082-D1E9-1106-86B1ACD56C48";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateX";
	rename -uid "551B106C-4240-740F-B728-A4BF42B0A339";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -26.066837416486834 60 -22.234568697821288;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateY";
	rename -uid "F1CCD5C1-4C15-88E6-0A80-16B75A0CB272";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.7276330798069992;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateZ";
	rename -uid "7711DA7E-45B5-8EFA-0304-7AA418589DFB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.86381923939291;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateX";
	rename -uid "343F38BF-4EAE-F59C-5FBD-58ABDC51C559";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateY";
	rename -uid "DA3D625A-4936-00AE-5554-A0A780C9A025";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateZ";
	rename -uid "A0213AE9-4D1C-35DD-5303-AFA96836ECB3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleX";
	rename -uid "4E4D3F65-45EF-B85A-CFEB-05BDDF992717";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleY";
	rename -uid "C813F6D5-452E-C9E5-9014-869658034C08";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleZ";
	rename -uid "BE3E2F79-4EB0-0BDC-F2D5-C881AED5DA0B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_middle_02_ctrl_visibility";
	rename -uid "10AE2988-45B1-A52F-6552-268ECB8D2638";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX";
	rename -uid "FFDCC315-4E1B-7634-FF5B-50912181A6BD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.803100531923985;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY";
	rename -uid "3EBCC02B-4446-3D5F-56B0-F0907A48E4D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.6938051661547391;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ";
	rename -uid "FD6CBC2B-4700-6175-FA68-2B8E3A9AA46D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.333997782380557;
createNode animCurveTU -n "tongue_02_ctrl_visibility";
	rename -uid "1F29E30A-42AE-B66B-3738-919402E65067";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "tongue_02_ctrl_translateX";
	rename -uid "29871F1C-450C-2AE0-6065-D399C0B2C7AB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_02_ctrl_translateY";
	rename -uid "37FB052B-4FF2-6C78-CE22-889C770C8AAE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_02_ctrl_translateZ";
	rename -uid "0754A7EE-4BC8-4ABF-1DED-B89C8DDD2D43";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateX";
	rename -uid "46F35E62-4F5A-3D3F-CBD4-71A2EB4AA638";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateY";
	rename -uid "3D93EB10-4440-AF93-DD7F-A380CD1D8C68";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateZ";
	rename -uid "CC985F3D-459A-7849-F4F2-D59765317C93";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "tongue_02_ctrl_scaleX";
	rename -uid "5936AF08-4699-A30F-863E-9C8AB83DE72A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleY";
	rename -uid "B223D520-4274-DB49-EC8F-73AF00A951A7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleZ";
	rename -uid "5B93337D-49DD-B78C-67E0-FE83B023B6EF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateX";
	rename -uid "67686419-44F9-4A63-83A1-D18901AA57B9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 72.665439845379794 60 -7.1899152165936036;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateY";
	rename -uid "D9DC608A-4140-46F2-1E64-25918DFC48D9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -50.433178466661204 60 -60.701865695868683;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateZ";
	rename -uid "E972C86D-4891-C71A-5BD9-32A14E880B93";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 30.87616691080639 60 -19.778943112053845;
createNode animCurveTU -n "L_index_04_ctrl_visibility";
	rename -uid "710385C6-4D33-F96E-AC59-459145177EAE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ";
	rename -uid "52BA405E-4880-C490-2B9B-198B55AD667C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -15.681332783326072;
createNode animCurveTU -n "jaw_ctrl_visibility";
	rename -uid "6027A7A1-4BB9-2EB2-74AF-8EA479663D3A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "jaw_ctrl_rotateX";
	rename -uid "2B937B19-40E5-F021-9EA5-17B57A3EB9AF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.0028364553290681;
createNode animCurveTA -n "jaw_ctrl_rotateY";
	rename -uid "FB643250-41F3-58FE-D210-C78A1F23A094";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "jaw_ctrl_rotateZ";
	rename -uid "C66185AA-4E79-8820-BB15-5EABA778013C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "shoulders_ctrl_visibility";
	rename -uid "EB695B6D-49E6-531B-B780-86AAED3CED40";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "shoulders_ctrl_rotateX";
	rename -uid "53EE13C3-4110-07B9-E714-1A8E808C24B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.512263450339454 60 -2.2296642913038709;
createNode animCurveTA -n "shoulders_ctrl_rotateY";
	rename -uid "0DA99CD0-4C82-4E6F-BD37-F98A40433599";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.754666140885929 60 -8.5601783711546044;
createNode animCurveTA -n "shoulders_ctrl_rotateZ";
	rename -uid "5D2FCA08-4287-F431-C76F-4EAD5C8F7A3C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.50275609887554695 60 -1.9093154532451475;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility";
	rename -uid "53E84F0F-4595-3A68-CB24-3EA6FFDE3346";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ";
	rename -uid "A94E4A8C-4A28-0929-28E2-BD8E6DE35DA0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -16.24873939525353;
createNode animCurveTU -n "L_middle_03_ctrl_visibility";
	rename -uid "9C5A5433-43E7-0E65-0FE2-E6B13565391A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ";
	rename -uid "C50B7F64-4D61-680E-739E-ABBE072A05A4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -11.126020444640025 60 3.9114130441661974;
createNode animCurveTU -n "L_ring_03_ctrl_visibility";
	rename -uid "0DCEEFEB-48B4-9DF8-D569-679A41E7165B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ";
	rename -uid "AAF1BEE1-48F1-EC68-2199-35882E7E530C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.776174264144339;
createNode animCurveTU -n "L_ball_ik_ctrl_visibility";
	rename -uid "F3757660-4D31-A998-353F-1D8FE31305EC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateX";
	rename -uid "B69C583E-454D-9592-B9FB-86B995138105";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateY";
	rename -uid "ED12989A-4363-CD6A-3EC0-59963053A675";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateZ";
	rename -uid "3F97C1DD-4DFC-8283-E051-D29AE76C6196";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility";
	rename -uid "B4CED162-4BEC-EE0F-7496-2B8EA7B3D07A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ";
	rename -uid "D5180F8B-491A-A1A1-283F-6691C8E8225A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -18.995369139974553;
createNode animCurveTU -n "L_index_02_ctrl_visibility";
	rename -uid "7B32B9DE-4AB5-3C57-88F1-81AFF730C296";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_02_ctrl_rotateX";
	rename -uid "4CAE6CBB-482B-01C4-91A1-E68D20ECB3F7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.9491302288221437;
createNode animCurveTA -n "L_index_02_ctrl_rotateY";
	rename -uid "4E8A19FC-40D2-4294-A9CE-729CB51A5044";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.4719378312424918;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ";
	rename -uid "32DB5C71-4BE0-674C-C83F-48980D07AFA6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -22.07263161924946;
createNode animCurveTU -n "sternum_ctrl_visibility";
	rename -uid "0AB1F0A4-4AAA-A889-10DE-3C8B8EA73AD0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "sternum_ctrl_rotateX";
	rename -uid "21F4BFA3-4A80-961F-A108-1E8C2CFC89A4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 23.054021403888463 60 10.864785677821105;
createNode animCurveTA -n "sternum_ctrl_rotateY";
	rename -uid "5BCF843B-4C37-13F5-9701-6395E4108E6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "sternum_ctrl_rotateZ";
	rename -uid "E1BC8954-4B4E-1C8F-36C7-12A50539EAC6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_clavicle_ctrl_visibility";
	rename -uid "E434D32A-4648-D657-2C2D-F487A35A388D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_clavicle_ctrl_rotateX";
	rename -uid "28D921C6-4DA5-3963-F197-FF814B64B94D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateY";
	rename -uid "BEC1BBAA-4B78-8A7C-649E-53B00206A2A1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateZ";
	rename -uid "18607326-4170-7032-CB51-7BB051F12FE9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_clavicle_ctrl_divider00";
	rename -uid "ADB8CC55-482E-FF94-16FB-6185439B5176";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_clavicle_ctrl_L_arm_IK_FK_switch";
	rename -uid "44C85816-429A-1013-0BED-888776154D3B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateX";
	rename -uid "5D60E096-47F6-5727-F0AB-08851000EEEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 18.763187909591608 20 57.483788075884895
		 30 19.985456920236732 60 7.2444892873752522;
	setAttr -s 4 ".kit[0:3]"  16 18 18 18;
	setAttr -s 4 ".kot[0:3]"  16 18 18 18;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateY";
	rename -uid "A6878617-4A5B-1822-699A-A8ACCF493F71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 20.776194202390354 20 88.92998821314562
		 30 71.316341022087826 60 84.736290817310618;
	setAttr -s 4 ".kit[0:3]"  16 18 18 18;
	setAttr -s 4 ".kot[0:3]"  16 18 18 18;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateZ";
	rename -uid "50CBD0EF-44D1-D47A-C73B-7B8F2E039715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 5.453638005356745 20 46.212711328530055
		 30 31.995801724913278 60 -15.888029858212708;
	setAttr -s 4 ".kit[0:3]"  16 18 18 18;
	setAttr -s 4 ".kot[0:3]"  16 18 18 18;
createNode animCurveTU -n "L_ring_01_ctrl_visibility";
	rename -uid "310872FC-479E-111A-05B5-19ADCF0B565F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_01_ctrl_rotateX";
	rename -uid "2EF48A71-4BCF-F495-84FE-B883B9562A3D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateY";
	rename -uid "B90ACE59-4C8A-798D-7B5C-93841448E4B8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateZ";
	rename -uid "653F7465-4B47-3067-77A1-A0833C77043C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility1";
	rename -uid "5580A24A-42BA-BE47-CA91-C0859B3A7E08";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ1";
	rename -uid "D7C3364E-4831-37B4-BC5A-F8B2D434A619";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.177491005247447;
createNode animCurveTU -n "L_middle_04_ctrl_visibility";
	rename -uid "D5EB68E8-423E-E3E0-AAA1-F286E72511CD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ";
	rename -uid "FABB666D-4C8D-6471-83B7-81B4C20A5598";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_ring_02_ctrl_visibility";
	rename -uid "715E6A87-4D02-3ECA-C736-F7B6E8AFE8A8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX";
	rename -uid "BD1EF436-4C91-7171-565F-55B84854202B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY";
	rename -uid "BD7FD972-465F-C7DA-C940-52A1E5726078";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ";
	rename -uid "C954E550-4496-7654-BB31-42B688A06FCD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.8795727189022182;
createNode animCurveTU -n "L_middle_01_ctrl_visibility";
	rename -uid "92E72337-416A-1C0A-F83E-A2A8814612A0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_01_ctrl_rotateX";
	rename -uid "191DDC43-4432-86DB-B581-66863F4A73D8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateY";
	rename -uid "6030A3B4-4298-D94C-A37A-8AA01562BCDD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateZ";
	rename -uid "5275F792-4945-3A7B-B0B6-EE971301EAFD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_middle_03_ctrl_visibility1";
	rename -uid "BA2D6B30-4036-875C-7ECE-9A83F97404F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ1";
	rename -uid "75B37EA2-4B82-3163-8A8F-278E9C94AC1C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -18.835468617956884;
createNode animCurveTU -n "L_eye_ctrl_visibility";
	rename -uid "73167F64-4CDD-A99E-3D6C-DCA6BF5BF550";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "L_eye_ctrl_translateX";
	rename -uid "44487F96-4507-E7B9-A4AD-29B802649692";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "L_eye_ctrl_translateY";
	rename -uid "7A53BB21-446C-5FDA-D643-61AFA726EFBC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "L_eye_ctrl_translateZ";
	rename -uid "70037F72-48FA-927C-2CC2-179969D0A53E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_eye_ctrl_rotateX";
	rename -uid "48858A3C-4667-1DAA-B347-4582F5674026";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_eye_ctrl_rotateY";
	rename -uid "23CDA852-4C6C-A52F-1EE7-578A33A2FF30";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_eye_ctrl_rotateZ";
	rename -uid "1FB042A2-426D-C19D-0627-9D9856E08DD0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_eye_ctrl_scaleX";
	rename -uid "74D0B52E-4B95-FF7A-EA01-F18ABCBC1412";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_eye_ctrl_scaleY";
	rename -uid "69D284B6-44A3-FDF7-C983-B2935DF76C46";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_eye_ctrl_scaleZ";
	rename -uid "D33810D5-4EF2-8CFD-3554-BE8F78502428";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_index_01_ctrl_visibility";
	rename -uid "9F6EBCFF-4076-4C22-E8E6-8EBD884444A5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_01_ctrl_rotateX";
	rename -uid "9AB0A60C-4CD6-D7A7-702E-198C026C64D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateY";
	rename -uid "A41F9564-4B44-F20D-D369-C0A4761B5E7C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateZ";
	rename -uid "DE795820-45E0-4A5E-3E28-44A4F69F0503";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility1";
	rename -uid "009455F9-450E-E8FF-0DBE-2EAD85FC0603";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX1";
	rename -uid "D66B409B-4368-7381-D1D5-2589BC7F9942";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY1";
	rename -uid "A3B5FEB9-42E4-4294-D84F-1B84A8E6A8FA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ1";
	rename -uid "A832D573-40F4-473F-310F-C99EE900996A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_ring_03_ctrl_visibility1";
	rename -uid "533BD958-4BC2-84F1-7E9B-A3A63F7F044B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ1";
	rename -uid "9C9A6A95-49CC-DAF8-40B5-C893BB0137B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -17.760160740874781;
createNode animCurveTU -n "L_middle_02_ctrl_visibility1";
	rename -uid "42D4592D-4DDA-7301-3636-6CA325F80F5C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX1";
	rename -uid "695574D2-45D5-AFFA-28C7-09A2598BF74C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.9799334012495788;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY1";
	rename -uid "A0C780D6-4F95-0893-B63B-63BAFE3895FB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.33736718423527284;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ1";
	rename -uid "D965FE9F-49C0-3973-651C-E59994613065";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -13.064328386454866;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility1";
	rename -uid "5346A2F4-4C1C-F0E9-F680-AAB39867095C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ1";
	rename -uid "362D50A0-4103-BE40-49FB-51918027AFFF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -18.485814060649417;
createNode animCurveTU -n "L_pinky_01_ctrl1_visibility";
	rename -uid "997EFB5C-43C7-E0CA-1CD8-0E80C429FA91";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateX";
	rename -uid "89996254-4E1A-C208-CB4D-FAA12ED9D7F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateY";
	rename -uid "4F2998ED-47CD-13F1-D6FB-3EB97D7E1800";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateZ";
	rename -uid "15667053-434B-DAE3-6574-CC8E18D9AA6A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "neck_ctrl_visibility";
	rename -uid "F79D71F4-4218-7EBA-5B32-49903507E4BD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "neck_ctrl_rotateX";
	rename -uid "3BDECE4B-4ED1-B022-2F2D-5AA582BB3AC1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -18.637050530732221 60 -41.389195030070795;
createNode animCurveTA -n "neck_ctrl_rotateY";
	rename -uid "1EEE8387-4790-262C-3A33-C19B76B2465E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 10.377018364943631 60 14.019519188211566;
createNode animCurveTA -n "neck_ctrl_rotateZ";
	rename -uid "C173918C-47F5-99BF-7491-40869B43715B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.0170903236537692 60 -8.8760387670036955;
createNode animCurveTU -n "tongue_05_ctrl_visibility";
	rename -uid "B4C82AD9-4D9D-7412-C45C-A1A401CB053F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "tongue_05_ctrl_translateX";
	rename -uid "BE183AD8-478D-EAD4-F7D9-2B98BD145E3A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_05_ctrl_translateY";
	rename -uid "5C5CBCE1-469A-403A-9F29-328939F8F71D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_05_ctrl_translateZ";
	rename -uid "D853E30C-4259-191A-8DF5-10BE6CA682DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateX";
	rename -uid "0CE45E17-4921-579E-755F-4DBF3C34F554";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateY";
	rename -uid "F3217661-459F-D83E-8EE6-F3A570A78C24";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateZ";
	rename -uid "3CAEE118-45C1-99E5-DA23-8E99AE7DEE64";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "tongue_05_ctrl_scaleX";
	rename -uid "1034FA09-428C-ED88-9BA0-B69981464B42";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleY";
	rename -uid "C42A0EDD-41F2-3FB9-A653-E68732A99311";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleZ";
	rename -uid "3E6A7B57-4D4A-FAD0-D786-CE87B455193B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_pinky_01_ctrl_visibility";
	rename -uid "9B66E198-4A4A-D491-6A7C-F5A3AF7B4826";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateX";
	rename -uid "98FF65E6-4495-D984-C698-8E913ACFA228";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateY";
	rename -uid "20880530-4269-DE16-6F1B-C68D7B9C6AD7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateZ";
	rename -uid "13AEE4F4-494B-4A8D-9870-96AE7DC8034E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility";
	rename -uid "C0EF479A-4326-641C-06E0-248AB9876551";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX";
	rename -uid "09191265-4138-8B1B-B11C-109C7AF6C42E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.549615840874424;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY";
	rename -uid "A1A9DCBF-4BAC-3C7A-B271-0CA7098EEE38";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.7590689989974084;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ";
	rename -uid "0D0D269B-4E46-B156-3EC4-DDB53E7056CA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.6015441418147489;
createNode animCurveTU -n "head_ctrl1_visibility";
	rename -uid "99158702-4E36-9381-12E1-BAABE6B31C92";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "head_ctrl1_rotateX";
	rename -uid "86CE21FD-4410-7BDA-0232-6B890FCFB363";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 25.265303388522835;
createNode animCurveTA -n "head_ctrl1_rotateY";
	rename -uid "9F8418A4-44B9-0AC0-0F26-B5811DE9ACE2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.0441563181499456;
createNode animCurveTA -n "head_ctrl1_rotateZ";
	rename -uid "9BEA8781-44D7-7C62-2FB1-6A87A1BFBE4C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.9184371638407123;
createNode animCurveTU -n "head_ctrl1_Orient_Neck";
	rename -uid "320208E8-4D0F-CE96-B4E0-73B3E07B69BB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "tongue_01_ctrl_visibility";
	rename -uid "E027DCD3-47A7-285B-3B0E-4A8BDBEC7A90";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "tongue_01_ctrl_translateX";
	rename -uid "1D582FEF-4825-305C-4FBE-F89ECA2B7F9B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_01_ctrl_translateY";
	rename -uid "96D23396-4B02-140C-8F50-DB9AF6302BC5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "tongue_01_ctrl_translateZ";
	rename -uid "1D2C4999-44F7-1BD0-5059-7D97D32DC663";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateX";
	rename -uid "504C0115-464E-E06F-1DCE-A3B454BC6F43";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateY";
	rename -uid "2182412D-4F37-04EF-8D96-C1ACE5D764A6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateZ";
	rename -uid "055ECF47-4491-BE84-CED8-C2A42E007858";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_index_01_ctrl1_visibility";
	rename -uid "69709ACB-4C18-56E9-D9F1-3198A436B45B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_01_ctrl1_rotateX";
	rename -uid "08049FAD-4318-AD8C-2EFF-B5A86BD8C74D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateY";
	rename -uid "602055D4-43C6-1584-E241-1ABB767097CA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateZ";
	rename -uid "00A62BC8-47FC-9110-CEA8-199EAB8B4C44";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "R_clavicle_ctrl_visibility";
	rename -uid "0CFDC06D-4B40-962D-CAF1-B4B68F0CBEDE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "R_clavicle_ctrl_rotateX";
	rename -uid "DDA1B846-4DF0-9579-F242-BF92914B0891";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateY";
	rename -uid "2BB7A7C7-4416-7333-7723-7AAD3E287917";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateZ";
	rename -uid "A901E824-4F1A-89E5-0519-039BA7B05DF8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "R_clavicle_ctrl_divider00";
	rename -uid "6F1A0AE6-46E5-0C8E-AE1E-78BECC4ED5DB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "R_clavicle_ctrl_R_arm_IK_FK_switch";
	rename -uid "668CE1BD-45A6-E569-DDE5-D98686E09E67";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTU -n "L_ring_04_ctrl_visibility1";
	rename -uid "6AA2261D-48B6-4DC7-0E9B-D29EB2F2C2F5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ1";
	rename -uid "921E637E-4EF1-7268-0BB1-8199C8125310";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_ring_01_ctrl1_visibility";
	rename -uid "C6F3D6D0-4F1C-C0B7-2EB3-1FA53F92427D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateX";
	rename -uid "CD4F300B-42E0-9474-54ED-37B3384A5FD4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateY";
	rename -uid "9128FABC-4F17-6D69-C72B-0598E54392E0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateZ";
	rename -uid "643A3A45-4902-4DDD-226F-B48FEC6C5B45";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "cog_ctrl_visibility";
	rename -uid "947F9ED3-44D4-94F0-675D-10BD14352E4E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "cog_ctrl_translateX";
	rename -uid "13246465-48A8-FF4D-6B05-558793ECB0E7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "cog_ctrl_translateY";
	rename -uid "D3B60E2F-4241-D68A-2402-3E98ACDBDA96";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -81.819372920566678 60 -85.39688763302307;
createNode animCurveTL -n "cog_ctrl_translateZ";
	rename -uid "2962DFC4-46A5-596B-DA5E-D98396F079F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "cog_ctrl_rotateX";
	rename -uid "F113EFF6-40E7-859B-09E8-A1BC22AA7CC2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -20.536152380220415 60 -98.302834887880238;
createNode animCurveTA -n "cog_ctrl_rotateY";
	rename -uid "A956E3DD-46E7-ABD8-5B86-AFAE841FA61A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 -66.817858075116348;
createNode animCurveTA -n "cog_ctrl_rotateZ";
	rename -uid "71FD405A-4F59-DB4C-A3E7-3FAC0FD367BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 66.824732969256019;
createNode animCurveTU -n "L_foot_ik_ctrl_visibility";
	rename -uid "1B02193A-4782-8AC3-779E-469C79A3F39F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 60 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTL -n "L_foot_ik_ctrl_translateX";
	rename -uid "1D586E18-47DD-AE5F-A0F3-8AB60914DD51";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.3456930959999944 60 2.3456930959999944;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTL -n "L_foot_ik_ctrl_translateY";
	rename -uid "B60E2A01-4392-2593-166C-1F86357B05CA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.0284477852808251 60 -0.29893111078942525;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTL -n "L_foot_ik_ctrl_translateZ";
	rename -uid "ADDFF6F6-4B94-2D35-4A6E-2F9B6C3A3EC3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 66.052521474028197 60 73.971452098432962;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateX";
	rename -uid "419CFAAF-489D-076C-FBCC-C986326605C6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.7332392101410274 60 2.7332392101410274;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateY";
	rename -uid "C1A2E268-43F7-5B38-2F8C-62A040EBC6B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.4982943256300345 60 5.4982943256300345;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateZ";
	rename -uid "47A71C9D-463A-F6F0-1D61-DABAFE54DF96";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.3661895717322812 60 1.3661895717322812;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "L_foot_ik_ctrl_divider00";
	rename -uid "D71AA24B-4843-45E9-4FA3-3B8A2936883E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTU -n "L_foot_ik_ctrl_Toe_Roll";
	rename -uid "DBCF1BA8-4ADF-5598-6670-C297AB973AFF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "L_foot_ik_ctrl_Foot_Bank";
	rename -uid "5D92F12B-4DC1-152C-333F-48979594E765";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 0;
	setAttr -s 2 ".kit[1]"  18;
	setAttr -s 2 ".kot[1]"  18;
createNode animCurveTU -n "L_foot_ik_ctrl_Heel_Rise";
	rename -uid "A02E8487-4384-F4D6-FDC2-96B22A79574D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 60 12.340740740740744;
createNode animCurveTU -n "L_ring_02_ctrl_visibility1";
	rename -uid "69D9043A-466F-7B26-0089-89B8DCD3EEB0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX1";
	rename -uid "C41C8EC7-4DA3-1E84-C6A4-B38898AD815B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.8188147017079235;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY1";
	rename -uid "A233BD35-44E2-F3AD-24D4-F2B6B1BDB929";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.547881217689385;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ1";
	rename -uid "1F00845C-4AC2-13DF-C0A7-DC819391647C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -19.379064667583656;
createNode animCurveTU -n "L_middle_04_ctrl_visibility1";
	rename -uid "CBA9D2B9-447A-B133-66FE-338717D9124A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ1";
	rename -uid "1386B0EC-44F1-235B-D807-1B88AA8F5D9E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_index_04_ctrl_visibility1";
	rename -uid "F25FE9ED-4C09-9809-9DBF-0187A4FEDE15";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ1";
	rename -uid "744CD65F-4EEE-4854-8278-F2B6FE1C8AEE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.994427484519028;
createNode animCurveTU -n "L_thumb_01_ctrl1_visibility";
	rename -uid "1E85912F-494E-4BF7-BD6B-EAA54DB52C00";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateX";
	rename -uid "C756C30F-4F10-50F1-0E9B-B08A3F0729AB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.7978981579016473;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateY";
	rename -uid "648FFEA1-4721-7A1F-6A8D-86832478BF63";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.5467457604288173;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateZ";
	rename -uid "4FDC9AD0-4895-9F01-B77C-5A9018AA50D7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.291819195618273;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility1";
	rename -uid "6DDE0F6F-44EA-3707-C00A-FD8726CE6FEA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX1";
	rename -uid "587840ED-4BFC-5B38-3F16-82879A2597DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY1";
	rename -uid "47CE5932-489B-61B9-FBBE-FD91BCEB87C2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ1";
	rename -uid "04FCF2A6-470F-94D7-98D0-43952D150C6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.7653325760404108;
createNode animCurveTU -n "L_index_02_ctrl_visibility1";
	rename -uid "15F1814B-47CE-CE4B-ECD6-5A87F01ABEBC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTA -n "L_index_02_ctrl_rotateX1";
	rename -uid "4C558758-40F0-1C7D-21C2-B4B3B6490B68";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateY1";
	rename -uid "03EE1C8E-4184-98D9-FE0A-549D49A6DE6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ1";
	rename -uid "C057500D-473A-7A63-5060-A8ABA08F85AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -23.691032078804358;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_visibility";
	rename -uid "FA32B7CC-43C5-5E6C-AC7D-39B06D554FD2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateX";
	rename -uid "0BE13CBC-4572-18FD-0E53-FA8312EB263F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.429920171706586;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateY";
	rename -uid "4498141C-401A-7E3F-0071-80A57F8F0F02";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.6100995710268151;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateZ";
	rename -uid "959A56B9-4F27-63F1-B0E6-1CB58275A3CE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.93058085641897;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateX";
	rename -uid "45105CAF-448B-8CC8-82CE-8D878092C297";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateY";
	rename -uid "9B21B7C8-4A28-D709-3309-BFB08D836894";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateZ";
	rename -uid "3384D26B-4AF3-201F-9DF0-2785DA779E18";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleX";
	rename -uid "B97E7A06-4A53-938D-D2C9-37B1AAA73916";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleY";
	rename -uid "21D95605-43C6-1A7F-7783-069612DCA58D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleZ";
	rename -uid "DAFF2DEE-4C09-2661-602B-CDA74DD95272";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "332209D1-48D3-9FFF-7099-8490FC3FCC23";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "B787E42A-4A31-2963-81A6-F2BABC13BD66";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".ac[0].acn" -type "string" "Transition_Sittende_Liggende";
	setAttr ".ac[0].ace" 60;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/simen/OneDrive/Skrivebord/Snow_XR/Snow XR - Maya - Simen/scenes/Transitions";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "28D802C7-46EF-1761-21B8-1D8246BBD890";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode polyPlane -n "polyPlane1";
	rename -uid "247CA1CF-4E4D-2CDB-291F-7BBA6D1F1CF1";
	setAttr ".cuv" 2;
createNode animCurveTL -n "R_hand_ik_ctrl_translateX";
	rename -uid "CAC7E8D3-47AF-6C4C-C2AE-05BE8983DC96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -92.994832623563312 8 -87.391702945974544
		 20 -105.56238927208474 60 -103.91336038659743;
createNode animCurveTL -n "R_hand_ik_ctrl_translateY";
	rename -uid "43DAF66E-4BCB-53E5-2AFA-3A9DDCEEF621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -16.334751497513047 8 -14.341960616664615
		 20 -25.001370016365598 60 -29.954152912172574;
createNode animCurveTL -n "R_hand_ik_ctrl_translateZ";
	rename -uid "6B17B730-4BE4-3BE1-19FC-04885008BD71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -14.486225674828825 8 -0.87913937722903646
		 20 31.447123654400709 60 17.764999675938672;
createNode animCurveTA -n "R_hand_ik_ctrl_rotateX";
	rename -uid "2B27814A-4C61-0558-54BE-4DABB420A48F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 87.093027568319684 20 43.540028932628637
		 60 49.149009546999856;
createNode animCurveTA -n "R_hand_ik_ctrl_rotateY";
	rename -uid "C6C4CB7A-48A8-5D62-1BD1-83BA9563B0CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 26.494130545006772 20 37.741216585455845
		 60 39.02628484923116;
createNode animCurveTA -n "R_hand_ik_ctrl_rotateZ";
	rename -uid "1AA0872C-4EB9-F7B0-54F9-CDA4BD6AE993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.438857636807478 20 35.475006094841433
		 60 18.57809501042939;
createNode animCurveTL -n "R_elbow_aim_ik_ctrl_translateX";
	rename -uid "5D19A5B8-4CF3-974D-A73C-39A1364BC0C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.6914322339099073 20 8.6914322339099073;
createNode animCurveTL -n "R_elbow_aim_ik_ctrl_translateY";
	rename -uid "9BC9F6AB-4FCA-966F-C906-4882DEF2DDD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -93.262049679486225 20 -93.262049679486225
		 60 -114.8611917336133;
createNode animCurveTL -n "R_elbow_aim_ik_ctrl_translateZ";
	rename -uid "91176BE6-4BF2-66B9-2909-8AA43FF8E077";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -20.871149681591618 20 -20.871149681591618;
createNode animCurveTA -n "R_elbow_aim_ik_ctrl_rotateX";
	rename -uid "EF72B358-47AE-E572-6971-D6B60CE18A26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "R_elbow_aim_ik_ctrl_rotateY";
	rename -uid "F77274DB-4ECB-8C69-5838-908CECCA5711";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTA -n "R_elbow_aim_ik_ctrl_rotateZ";
	rename -uid "79782865-48AD-3479-6CA4-6EA87AFE640A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 20 0;
createNode animCurveTU -n "R_elbow_aim_ik_ctrl_scaleX";
	rename -uid "87EAF748-4162-A527-64B8-86B37287AB33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.9999999999999998e-13 20 9.9999999999999998e-13;
createNode animCurveTU -n "R_elbow_aim_ik_ctrl_scaleY";
	rename -uid "13739574-4893-1FEB-2D39-C994487EBFCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.9999999999999998e-13 20 9.9999999999999998e-13;
createNode animCurveTU -n "R_elbow_aim_ik_ctrl_scaleZ";
	rename -uid "D79BAD35-45A9-5987-275B-CC8551CCF769";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.9999999999999998e-13 20 9.9999999999999998e-13;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "5405F9AB-444E-C819-71CB-A5B52858D01F";
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
connectAttr "R_hand_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[208]";
connectAttr "R_hand_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[209]";
connectAttr "R_hand_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[210]";
connectAttr "R_hand_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[211]";
connectAttr "R_hand_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[212]";
connectAttr "R_hand_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[213]";
connectAttr "R_elbow_aim_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[214]";
connectAttr "R_elbow_aim_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[215]";
connectAttr "R_elbow_aim_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[216]";
connectAttr "R_elbow_aim_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[217]";
connectAttr "R_elbow_aim_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[218]";
connectAttr "R_elbow_aim_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[219]";
connectAttr "R_elbow_aim_ik_ctrl_scaleX.o" "Characters_RiggedRN.phl[220]";
connectAttr "R_elbow_aim_ik_ctrl_scaleY.o" "Characters_RiggedRN.phl[221]";
connectAttr "R_elbow_aim_ik_ctrl_scaleZ.o" "Characters_RiggedRN.phl[222]";
connectAttr "L_pinky_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[223]";
connectAttr "L_pinky_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[224]";
connectAttr "L_pinky_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[225]";
connectAttr "L_pinky_01_ctrl_visibility.o" "Characters_RiggedRN.phl[226]";
connectAttr "L_pinky_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[227]";
connectAttr "L_pinky_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[228]";
connectAttr "L_pinky_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[229]";
connectAttr "L_pinky_02_ctrl_visibility.o" "Characters_RiggedRN.phl[230]";
connectAttr "L_pinky_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[231]";
connectAttr "L_pinky_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[232]";
connectAttr "L_pinky_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[233]";
connectAttr "L_pinky_04_ctrl_visibility.o" "Characters_RiggedRN.phl[234]";
connectAttr "L_ring_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[235]";
connectAttr "L_ring_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[236]";
connectAttr "L_ring_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[237]";
connectAttr "L_ring_01_ctrl_visibility.o" "Characters_RiggedRN.phl[238]";
connectAttr "L_ring_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[239]";
connectAttr "L_ring_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[240]";
connectAttr "L_ring_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[241]";
connectAttr "L_ring_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[242]";
connectAttr "L_ring_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[243]";
connectAttr "L_ring_03_ctrl_visibility.o" "Characters_RiggedRN.phl[244]";
connectAttr "L_ring_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[245]";
connectAttr "L_ring_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[246]";
connectAttr "L_index_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[247]";
connectAttr "L_index_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[248]";
connectAttr "L_index_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[249]";
connectAttr "L_index_01_ctrl_visibility.o" "Characters_RiggedRN.phl[250]";
connectAttr "L_index_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[251]";
connectAttr "L_index_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[252]";
connectAttr "L_index_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[253]";
connectAttr "L_index_02_ctrl_visibility.o" "Characters_RiggedRN.phl[254]";
connectAttr "L_index_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[255]";
connectAttr "L_index_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[256]";
connectAttr "L_index_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[257]";
connectAttr "L_index_04_ctrl_visibility.o" "Characters_RiggedRN.phl[258]";
connectAttr "L_middle_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[259]";
connectAttr "L_middle_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[260]";
connectAttr "L_middle_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[261]";
connectAttr "L_middle_01_ctrl_visibility.o" "Characters_RiggedRN.phl[262]";
connectAttr "L_middle_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[263]";
connectAttr "L_middle_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[264]";
connectAttr "L_middle_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[265]";
connectAttr "L_middle_02_ctrl_visibility.o" "Characters_RiggedRN.phl[266]";
connectAttr "L_middle_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[267]";
connectAttr "L_middle_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[268]";
connectAttr "L_middle_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[269]";
connectAttr "L_middle_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[270]";
connectAttr "L_thumb_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[271]";
connectAttr "L_thumb_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[272]";
connectAttr "L_thumb_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[273]";
connectAttr "L_thumb_01_ctrl_visibility.o" "Characters_RiggedRN.phl[274]";
connectAttr "L_thumb_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[275]";
connectAttr "L_thumb_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[276]";
connectAttr "L_thumb_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[277]";
connectAttr "L_thumb_02_ctrl_visibility.o" "Characters_RiggedRN.phl[278]";
connectAttr "L_thumb_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[279]";
connectAttr "L_thumb_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[280]";
connectAttr "L_thumb_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[281]";
connectAttr "L_thumb_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[282]";
connectAttr "L_thumb_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[283]";
connectAttr "L_thumb_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[284]";
connectAttr "L_thumb_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[285]";
connectAttr "L_thumb_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[286]";
connectAttr "L_thumb_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[287]";
connectAttr "L_thumb_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[288]";
connectAttr "L_thumb_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[289]";
connectAttr "L_thumb_03_ctrl_visibility.o" "Characters_RiggedRN.phl[290]";
connectAttr "L_index_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[291]";
connectAttr "L_index_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[292]";
connectAttr "L_index_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[293]";
connectAttr "L_index_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[294]";
connectAttr "L_index_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[295]";
connectAttr "L_index_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[296]";
connectAttr "L_index_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[297]";
connectAttr "L_index_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[298]";
connectAttr "L_index_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[299]";
connectAttr "L_index_03_ctrl_visibility.o" "Characters_RiggedRN.phl[300]";
connectAttr "L_index_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[301]";
connectAttr "L_index_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[302]";
connectAttr "L_middle_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[303]";
connectAttr "L_middle_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[304]";
connectAttr "L_middle_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[305]";
connectAttr "L_middle_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[306]";
connectAttr "L_middle_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[307]";
connectAttr "L_middle_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[308]";
connectAttr "L_middle_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[309]";
connectAttr "L_middle_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[310]";
connectAttr "L_middle_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[311]";
connectAttr "L_middle_03_ctrl_visibility.o" "Characters_RiggedRN.phl[312]";
connectAttr "L_middle_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[313]";
connectAttr "L_middle_04_ctrl_visibility.o" "Characters_RiggedRN.phl[314]";
connectAttr "L_ring_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[315]";
connectAttr "L_ring_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[316]";
connectAttr "L_ring_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[317]";
connectAttr "L_ring_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[318]";
connectAttr "L_ring_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[319]";
connectAttr "L_ring_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[320]";
connectAttr "L_ring_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[321]";
connectAttr "L_ring_02_ctrl_visibility.o" "Characters_RiggedRN.phl[322]";
connectAttr "L_ring_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[323]";
connectAttr "L_ring_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[324]";
connectAttr "L_ring_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[325]";
connectAttr "L_ring_04_ctrl_visibility.o" "Characters_RiggedRN.phl[326]";
connectAttr "L_pinky_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[327]";
connectAttr "L_pinky_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[328]";
connectAttr "L_pinky_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[329]";
connectAttr "L_pinky_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[330]";
connectAttr "L_pinky_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[331]";
connectAttr "L_pinky_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[332]";
connectAttr "L_pinky_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[333]";
connectAttr "L_pinky_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[334]";
connectAttr "L_pinky_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[335]";
connectAttr "L_pinky_03_ctrl_visibility.o" "Characters_RiggedRN.phl[336]";
connectAttr "L_pinky_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[337]";
connectAttr "L_pinky_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[338]";
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
// End of Transition_Sittende_Til_Liggende.ma
