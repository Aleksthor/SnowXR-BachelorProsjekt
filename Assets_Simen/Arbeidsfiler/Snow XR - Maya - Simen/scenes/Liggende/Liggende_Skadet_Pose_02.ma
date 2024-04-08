//Maya ASCII 2024 scene
//Name: Liggende_Skadet_Pose_02.ma
//Last modified: Mon, Feb 05, 2024 06:50:56 PM
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
fileInfo "UUID" "10E14F02-41FA-32FB-7C79-3C869EA164D2";
createNode transform -s -n "persp";
	rename -uid "E76A97A8-4F5B-D8CF-EC18-3FBAD37EA8A0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -184.66954716464318 94.032274178079575 29.351955980229722 ;
	setAttr ".r" -type "double3" -20.738352726964187 2086.6000000014119 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "80015F93-40CA-FA41-AAD0-469F69C81D2D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 167.52448078168007;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FC896191-472B-9A74-5466-ECB7FFC4CBC8";
	setAttr -s 117 ".lnk";
	setAttr -s 117 ".slnk";
createNode lightEditor -n "lightEditor";
	rename -uid "8B8A9511-4941-720D-AB7E-84BAB72039BA";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "87FB50CA-4880-F571-2F9B-A5AD862227A8";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AA5D4479-436B-5EDD-985E-A3A648AEBA22";
createNode displayLayerManager -n "layerManager";
	rename -uid "7EB5E4A6-453A-C7F0-9BEF-8E8F16837C0A";
createNode displayLayer -n "defaultLayer";
	rename -uid "C274432C-4927-1F60-2BD3-ED82AB72FA08";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6C0B71A6-45DB-6337-B89F-F69833A80105";
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
	setAttr -s 393 ".phl";
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
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Characters_RiggedRN"
		"Characters_RiggedRN" 0
		"Characters_RiggedRN" 583
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl" 
		"translate" " -type \"double3\" 0 -77.38849552770143703 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl" 
		"rotate" " -type \"double3\" -15.80206502349238207 -82.755768300160085 84.34938568583754659"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotate" " -type \"double3\" 1.18070466678536934 -11.40435041434739105 1.98592642974871048"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl" 
		"rotate" " -type \"double3\" 11.43302924180767555 -11.07045742544226563 2.26771261384302436"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl" 
		"translate" " -type \"double3\" -55.77238750924772148 -43.49279788283202208 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translate" " -type \"double3\" -56.04040336546123768 -25.94085375307953001 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"translate" " -type \"double3\" 0 5.40145666150665171 -59.14909807403848419"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"rotate" " -type \"double3\" 1.65420873746561603 79.31283678646532564 -93.60326056516655058"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"translate" " -type \"double3\" -6.68840431035520666 -4.23700552742997161 61.78727050311383096"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"rotate" " -type \"double3\" -4.82611692872413922 -46.58196737586457914 78.97662352768634264"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl" 
		"rotateZ" " -av"
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
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translate" " -type \"double3\" 0.40375642690358138 18.66027703510356162 2.29466988503752845"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotate" " -type \"double3\" -4.19796825107037286 -82.41902685815419716 85.33234243534292318"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:skeleton|Characters_Rigged:root|Characters_Rigged:cog_jnt" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translate" " -type \"double3\" 0.40375642690358138 18.66027703510356162 2.29466988503752845"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotate" " -type \"double3\" -82.42022288634335325 -4.07367880830861395 85.22354083204548658"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_pelvis_twist_grp|Characters_Rigged:L_pelvis_twist|Characters_Rigged:L_hip_twist|Characters_Rigged:L_knee_twist_start" 
		"rotate" " -type \"double3\" 0 10.42358605036178787 0"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt" 
		"rotate" " -type \"double3\" 42.90067728154164683 -3.29577639521981913 -18.01459195478863151"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt" 
		"rotate" " -type \"double3\" -78.52973302545490242 7.3668237525100825e-05 0.0047800595203488601"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt" 
		"rotate" " -type \"double3\" -3.38151036439937069 13.72842336001951224 12.29937626455698307"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_hip_ik_grp|Characters_Rigged:L_hip_ik_jnt|Characters_Rigged:L_knee_ik_jnt|Characters_Rigged:L_foot_ik_jnt|Characters_Rigged:L_ball_ik_jnt" 
		"rotate" " -type \"double3\" 2.8028487637067509e-05 -3.895062381235454e-06 -4.6183054917271888e-06"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translate" " -type \"double3\" -20.79992614821770758 -67.38387546075421142 -0.75765779951131296"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotate" " -type \"double3\" 35.2666368692505543 6.13195013546752321 -1.49062670005255282"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_leg|Characters_Rigged:L_reverse_foot_grp" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translate" " -type \"double3\" 0.40375642690358138 18.66027703510356162 2.29466988503752845"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotate" " -type \"double3\" -81.40052766036068022 -28.36555880995235412 57.12794662710027893"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_pelvis_twist_grp|Characters_Rigged:R_pelvis_twist|Characters_Rigged:R_hip_twist|Characters_Rigged:R_knee_twist_start" 
		"rotate" " -type \"double3\" -8.5608747569309655e-08 8.11590483479536751 -3.0184965396725074e-08"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt" 
		"rotate" " -type \"double3\" 66.22086118079243988 -13.89003405839642546 8.84387391085057395"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt" 
		"rotate" " -type \"double3\" -84.3372651264624551 7.856462196937016e-05 0.0063924645450189254"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt" 
		"rotate" " -type \"double3\" -14.14565592602795263 -0.03643689338028689 -3.90430355763824899"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_hip_ik_grp|Characters_Rigged:R_hip_ik_jnt|Characters_Rigged:R_knee_ik_jnt|Characters_Rigged:R_foot_ik_jnt|Characters_Rigged:R_ball_ik_jnt" 
		"rotate" " -type \"double3\" 0.0016988480680080508 2.5195792857403753e-05 0.029070104418821224"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translate" " -type \"double3\" 3.87386732401695966 60.40759469470815191 -24.78171065034517184"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_leg|Characters_Rigged:R_reverse_foot_grp" 
		"rotate" " -type \"double3\" 2.7394300370203033 6.03378228582764908 -8.19556739957340064"
		
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
		"translate" " -type \"double3\" 105.17748739271812042 28.77845201162657673 -31.15233757542300452"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_shoulder_ik_grp|Characters_Rigged:L_shoulder_ik_jnt|Characters_Rigged:L_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64826965773642797 0 -2.53873396055059564"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:L_arm|Characters_Rigged:L_clavicle_twist_grp|Characters_Rigged:L_clavicle_twist|Characters_Rigged:L_shoulder_twist|Characters_Rigged:L_elbow_twist_start" 
		"rotate" " -type \"double3\" 0 -18.31914064929699748 0"
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
		"translate" " -type \"double3\" -112.1086733924082921 -75.71811578788521047 24.80282512667578843"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"translateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotate" " -type \"double3\" 123.63343333675224756 153.5304969971016078 67.59338337086444426"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateX" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateY" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt" 
		"rotateZ" " -av"
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_shoulder_ik_grp|Characters_Rigged:R_shoulder_ik_jnt|Characters_Rigged:R_elbow_ik_jnt" 
		"rotate" " -type \"double3\" -34.64885935783379978 0.00033314236064041285 -2.54187065782685506"
		
		2 "|Characters_Rigged:Character_Group|Characters_Rigged:DO_NOT_TOUCH|Characters_Rigged:rig_systems|Characters_Rigged:R_arm|Characters_Rigged:R_clavicle_twist_grp|Characters_Rigged:R_clavicle_twist|Characters_Rigged:R_shoulder_twist|Characters_Rigged:R_elbow_twist_start" 
		"rotate" " -type \"double3\" -0.00068233655768410242 54.55317914005755142 0.00028519598269510668"
		
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
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[10]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[11]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.Eyes_Follow_Switch" 
		"Characters_RiggedRN.placeHolderList[12]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.Locators_Visability" 
		"Characters_RiggedRN.placeHolderList[13]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[14]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[15]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[16]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[17]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[18]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[19]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[20]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[21]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[22]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[23]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[24]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[25]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[26]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[27]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[28]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[29]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[30]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[31]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[32]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:L_eye_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[33]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[34]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[35]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[36]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[37]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[38]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[39]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[40]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[41]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[42]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[43]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:eyes_master_ctrl|Characters_Rigged:R_eye_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[44]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[45]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[46]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[47]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[48]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[49]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[50]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[51]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[52]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[53]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[54]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[55]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[56]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:waist_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[57]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[58]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[59]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[60]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[61]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[62]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[63]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[64]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[65]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[66]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[67]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[68]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[69]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[70]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[71]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[72]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[73]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[74]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[75]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[76]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[77]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.L_arm_IK_FK_switch" 
		"Characters_RiggedRN.placeHolderList[78]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[79]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[80]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[81]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[82]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[83]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[84]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[85]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[86]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[87]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[88]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[89]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[90]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[91]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[92]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[93]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[94]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[95]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:L_clavicle_ctrl|Characters_Rigged:L_shoulder_fk_ctrl|Characters_Rigged:L_elbow_fk_ctrl|Characters_Rigged:L_hand_fk_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[96]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.R_arm_IK_FK_switch" 
		"Characters_RiggedRN.placeHolderList[97]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[98]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[99]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[100]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[101]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[102]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[103]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[104]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[105]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[106]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[107]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[108]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[109]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[110]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[111]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[112]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[113]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[114]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:R_clavicle_ctrl|Characters_Rigged:R_shoulder_fk_ctrl|Characters_Rigged:R_elbow_fk_ctrl|Characters_Rigged:R_hand_fk_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[115]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[116]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[117]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[118]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[119]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[120]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.Orient_Neck" 
		"Characters_RiggedRN.placeHolderList[121]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[122]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[123]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[124]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[125]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[126]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[127]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[128]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[129]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[130]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[131]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[132]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[133]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[134]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[135]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[136]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[137]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[138]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[139]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[140]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[141]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[142]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[143]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[144]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[145]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[146]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[147]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[148]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[149]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[150]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[151]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[152]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[153]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[154]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[155]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[156]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[157]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[158]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[159]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[160]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[161]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[162]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[163]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[164]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[165]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[166]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[167]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[168]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[169]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[170]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[171]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[172]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[173]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[174]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[175]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[176]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[177]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[178]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[179]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[180]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[181]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[182]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:cog_ctrl|Characters_Rigged:spine_ctrl|Characters_Rigged:abdomen_ctrl|Characters_Rigged:sternum_ctrl|Characters_Rigged:shoulders_ctrl|Characters_Rigged:neck_ctrl|Characters_Rigged:head_ctrl1|Characters_Rigged:jaw_ctrl|Characters_Rigged:tongue_01_ctrl|Characters_Rigged:tongue_02_ctrl|Characters_Rigged:tongue_03_ctrl|Characters_Rigged:tongue_04_ctrl|Characters_Rigged:tongue_05_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[183]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[184]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[185]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[186]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[187]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[188]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[189]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[190]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[191]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[192]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[193]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_knee_aim_ik_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[194]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[195]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[196]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[197]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[198]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[199]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[200]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[201]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[202]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.scaleX" 
		"Characters_RiggedRN.placeHolderList[203]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.scaleY" 
		"Characters_RiggedRN.placeHolderList[204]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_knee_aim_ik_ctrl.scaleZ" 
		"Characters_RiggedRN.placeHolderList[205]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.Heel_Rise" 
		"Characters_RiggedRN.placeHolderList[206]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[207]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[208]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[209]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[210]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[211]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[212]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.Toe_Roll" 
		"Characters_RiggedRN.placeHolderList[213]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.Foot_Bank" 
		"Characters_RiggedRN.placeHolderList[214]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[215]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[216]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[217]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[218]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[219]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[220]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[221]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_foot_ik_ctrl|Characters_Rigged:R_ball_ik_grp|Characters_Rigged:R_ball_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[222]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.Heel_Rise" 
		"Characters_RiggedRN.placeHolderList[223]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.translateX" 
		"Characters_RiggedRN.placeHolderList[224]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.translateY" 
		"Characters_RiggedRN.placeHolderList[225]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.translateZ" 
		"Characters_RiggedRN.placeHolderList[226]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[227]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[228]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[229]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.Toe_Roll" 
		"Characters_RiggedRN.placeHolderList[230]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.Foot_Bank" 
		"Characters_RiggedRN.placeHolderList[231]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[232]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[233]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl.divider00" 
		"Characters_RiggedRN.placeHolderList[234]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[235]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[236]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[237]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[238]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_foot_ik_ctrl|Characters_Rigged:L_ball_ik_grp|Characters_Rigged:L_ball_ik_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[239]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[240]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[241]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[242]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[243]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[244]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[245]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[246]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[247]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[248]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[249]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[250]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[251]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[252]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[253]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[254]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_pinky_01_ctrl|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[255]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[256]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[257]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[258]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[259]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[260]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[261]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[262]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[263]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[264]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[265]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[266]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[267]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[268]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[269]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[270]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_ring_01_ctrl|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[271]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[272]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[273]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[274]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[275]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[276]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[277]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[278]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[279]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[280]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[281]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[282]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[283]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[284]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[285]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[286]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_index_01_ctrl|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[287]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[288]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[289]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[290]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[291]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[292]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[293]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[294]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[295]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[296]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[297]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[298]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[299]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[300]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[301]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[302]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_middle_01_ctrl|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[303]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[304]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[305]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[306]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[307]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[308]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[309]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[310]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[311]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[312]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[313]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[314]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[315]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:L_fingers_grp|Characters_Rigged:L_thumb_01_ctrl|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[316]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[317]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[318]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[319]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[320]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[321]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[322]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[323]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[324]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[325]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[326]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[327]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[328]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_thumb_01_ctrl1|Characters_Rigged:L_thumb_02_ctrl|Characters_Rigged:L_thumb_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[329]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[330]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[331]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[332]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[333]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[334]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[335]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[336]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[337]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[338]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[339]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[340]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[341]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[342]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[343]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[344]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_index_01_ctrl1|Characters_Rigged:L_index_02_ctrl|Characters_Rigged:L_index_03_ctrl|Characters_Rigged:L_index_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[345]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[346]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[347]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[348]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[349]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[350]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[351]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[352]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[353]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[354]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[355]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[356]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[357]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[358]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[359]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[360]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_middle_01_ctrl1|Characters_Rigged:L_middle_02_ctrl|Characters_Rigged:L_middle_03_ctrl|Characters_Rigged:L_middle_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[361]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[362]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[363]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[364]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[365]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[366]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[367]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[368]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[369]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[370]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[371]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[372]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[373]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[374]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[375]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[376]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_ring_01_ctrl1|Characters_Rigged:L_ring_02_ctrl|Characters_Rigged:L_ring_03_ctrl|Characters_Rigged:L_ring_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[377]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateX" 
		"Characters_RiggedRN.placeHolderList[378]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateY" 
		"Characters_RiggedRN.placeHolderList[379]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.rotateZ" 
		"Characters_RiggedRN.placeHolderList[380]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[381]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1.visibility" 
		"Characters_RiggedRN.placeHolderList[382]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateX" 
		"Characters_RiggedRN.placeHolderList[383]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateY" 
		"Characters_RiggedRN.placeHolderList[384]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[385]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[386]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[387]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[388]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[389]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[390]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.rotateZ" 
		"Characters_RiggedRN.placeHolderList[391]" ""
		5 3 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.instObjGroups" 
		"Characters_RiggedRN.placeHolderList[392]" ""
		5 4 "Characters_RiggedRN" "|Characters_Rigged:Character_Group|Characters_Rigged:Controllers|Characters_Rigged:global_ctrl|Characters_Rigged:R_finger_grp|Characters_Rigged:L_pinky_01_ctrl1|Characters_Rigged:L_pinky_02_ctrl|Characters_Rigged:L_pinky_03_ctrl|Characters_Rigged:L_pinky_04_ctrl.visibility" 
		"Characters_RiggedRN.placeHolderList[393]" "";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 832\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 832\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 832\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 1000 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "302FF40B-4F1E-C63F-CF22-ADA15EF57992";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 30 -ast 0 -aet 30 ";
	setAttr ".st" 6;
createNode animCurveTU -n "L_index_03_ctrl_visibility";
	rename -uid "0B470E4E-4437-126D-8B4C-BFBF3AC8516B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ";
	rename -uid "464B7FDB-4445-5CDE-29E5-57AE4B6528E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "neck_ctrl_visibility";
	rename -uid "FD03BF24-463E-5565-E4C6-02A8C8AAA15B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "neck_ctrl_rotateX";
	rename -uid "F69449ED-4BA3-8C68-F709-B2B2A3291DB6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 3.4769667212196227 30 0;
createNode animCurveTA -n "neck_ctrl_rotateY";
	rename -uid "2507C030-479B-1BD3-BEE5-95990FABD7B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 1.2018325209321108 30 0;
createNode animCurveTA -n "neck_ctrl_rotateZ";
	rename -uid "5462B958-4FF9-B1A2-6FA0-41A799000773";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 19.044967485291345 15 19.081446329839071
		 30 19.044967485291345;
createNode animCurveTU -n "eyes_master_ctrl_visibility";
	rename -uid "A8369172-44D5-A1F6-3170-A1A715012A66";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "eyes_master_ctrl_translateX";
	rename -uid "E9826A6A-489B-A279-0F06-F4B25040F18E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "eyes_master_ctrl_translateY";
	rename -uid "5C936607-4A5A-6884-01CA-5FB99535B6C4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "eyes_master_ctrl_translateZ";
	rename -uid "2C5BA911-4A4F-296F-F6F9-AE904041F23C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateX";
	rename -uid "943D6CB5-43ED-A33C-DE66-F5B67C1B8AC8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateY";
	rename -uid "D2892A86-4E93-A9B5-DADD-7BBDC5DA19BC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "eyes_master_ctrl_rotateZ";
	rename -uid "E7285E9C-4E6E-1E17-539C-E1A2FB08E97D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "eyes_master_ctrl_divider00";
	rename -uid "AEDACB4B-4F30-A5FB-7771-5DA9803C48F9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "eyes_master_ctrl_Eyes_Follow_Switch";
	rename -uid "CC9941BA-4046-074D-4459-F381DC0E367B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "eyes_master_ctrl_Locators_Visability";
	rename -uid "D362E069-47C7-EB0E-7051-D88366992EF6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_ring_03_ctrl_visibility";
	rename -uid "DA81C053-4BA4-6B72-5816-EF9A9B7EFF44";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ";
	rename -uid "A4543FA8-4404-DF06-E44A-6BBCCED4387C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -14.88974934669252 15 -14.88974934669252
		 30 -14.88974934669252;
createNode animCurveTU -n "R_foot_ik_ctrl_visibility";
	rename -uid "AD43F68A-44D6-97C0-CBC6-F6A98DCF3453";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_foot_ik_ctrl_translateX";
	rename -uid "EB386EFC-4944-1BF6-2588-C6BAA0765737";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "R_foot_ik_ctrl_translateY";
	rename -uid "86C711C7-44C6-7F7E-D827-3486C364A99E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 5.4014566615066517 15 5.4014566615066517
		 30 5.4014566615066517;
createNode animCurveTL -n "R_foot_ik_ctrl_translateZ";
	rename -uid "0C870C6B-4DC5-1ACD-5497-D8803CA5D3C6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -59.149098074038484 15 -59.149098074038484
		 30 -59.149098074038484;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateX";
	rename -uid "23E7A3C6-44C3-DEA5-F51C-D8933A1BC687";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.654208737465616 15 1.654208737465616
		 30 1.654208737465616;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateY";
	rename -uid "73B75665-4322-5713-805F-9F90EDF60875";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 79.312836786465326 15 79.312836786465326
		 30 79.312836786465326;
createNode animCurveTA -n "R_foot_ik_ctrl_rotateZ";
	rename -uid "81B22648-452D-03B0-C406-528771F731D6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -93.603260565166551 15 -93.603260565166551
		 30 -93.603260565166551;
createNode animCurveTU -n "R_foot_ik_ctrl_divider00";
	rename -uid "5FC486D3-485F-D28B-C1A7-ADABA5230E83";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "R_foot_ik_ctrl_Toe_Roll";
	rename -uid "E3DC59ED-4575-0355-2212-839311A5ADB3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_foot_ik_ctrl_Foot_Bank";
	rename -uid "E63E00B5-4422-7A5C-A3E8-F49498DC8976";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_foot_ik_ctrl_Heel_Rise";
	rename -uid "3C373D2D-4104-8F59-A8CB-D281F663F942";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "cog_ctrl_visibility";
	rename -uid "E8A98676-45B5-15D3-0D16-CAAC09AD3F5E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "cog_ctrl_translateX";
	rename -uid "372DFF5A-422A-BB19-6182-2595EDCA23BF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "cog_ctrl_translateY";
	rename -uid "DB49DEF8-438D-B8CF-FBB9-8EA922710DFC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -77.388495527701437 15 -77.388495527701437
		 30 -77.388495527701437;
createNode animCurveTL -n "cog_ctrl_translateZ";
	rename -uid "F298B51F-4684-7C6A-8825-07A840358E34";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "cog_ctrl_rotateX";
	rename -uid "3E82129A-4D19-FCB7-2EB5-7FB2E1395EDF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -15.802065023492382 15 -15.802065023492382
		 30 -15.802065023492382;
createNode animCurveTA -n "cog_ctrl_rotateY";
	rename -uid "8E41863F-41D2-124E-C131-E1BC636E6755";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -82.755768300160085 15 -82.755768300160085
		 30 -82.755768300160085;
createNode animCurveTA -n "cog_ctrl_rotateZ";
	rename -uid "E9AA0938-4D0C-B120-56F0-EAA477F4ABC0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 84.349385685837547 15 84.349385685837547
		 30 84.349385685837547;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateX";
	rename -uid "420DB167-470B-AD09-A3DF-1382EB37ED81";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 37.818029292843264 15 37.611111687365728
		 30 37.818029292843264;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateY";
	rename -uid "2032716D-4191-43F5-BDAE-3E8AF9FF4D2E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 10.385442652108992 15 10.467637172173824
		 30 10.385442652108992;
createNode animCurveTA -n "L_shoulder_fk_ctrl_rotateZ";
	rename -uid "DF45DDFB-43BB-AD8B-9666-4B9AA94A3D6F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.88830555510367 15 -23.920276146434862
		 30 -22.88830555510367;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility";
	rename -uid "2F187142-4D18-1B76-EC6E-D595B15BF3FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ";
	rename -uid "A7AF62F4-4667-9E0A-453F-EF955823432F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -13.645156046223072 15 -13.645156046223072
		 30 -13.645156046223072;
createNode animCurveTU -n "sternum_ctrl_visibility";
	rename -uid "22909665-43F0-7F93-5846-7693373B0634";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "sternum_ctrl_rotateX";
	rename -uid "BE9A0E18-4DA6-4B02-4904-6C946ACF064E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.174302965972277 15 21.353184337512577
		 30 20.174302965972277;
createNode animCurveTA -n "sternum_ctrl_rotateY";
	rename -uid "2B76BBB5-4775-CC5C-3FE6-10A66CE88788";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0.20280645381838161 30 0;
createNode animCurveTA -n "sternum_ctrl_rotateZ";
	rename -uid "9E684089-4F04-3A56-189C-B58AC5F70987";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.9067259616483163 15 9.9046705826546084
		 30 9.9067259616483163;
createNode animCurveTU -n "L_index_01_ctrl1_visibility";
	rename -uid "FFE439D4-4671-1835-9FDB-F38DAC2356E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_01_ctrl1_rotateX";
	rename -uid "F0475FC3-40E2-AACB-F262-F8A36601D18C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateY";
	rename -uid "63DB1228-43EC-B3B5-6872-1EA06B9CFA1A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl1_rotateZ";
	rename -uid "E9DE9CF5-4099-891F-C202-77BADE12BDEF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_foot_ik_ctrl_visibility";
	rename -uid "8E64CA0F-423C-233E-CCB9-B19EBAE826B5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_foot_ik_ctrl_translateX";
	rename -uid "D453DB40-4958-C1C0-3A01-2DBF5FA3E063";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.6884043103552067 15 -6.6884043103552067
		 30 -6.6884043103552067;
createNode animCurveTL -n "L_foot_ik_ctrl_translateY";
	rename -uid "F06DE322-4381-7D29-4F30-3B82BC653AD3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.2370055274299716 15 -4.2370055274299716
		 30 -4.2370055274299716;
createNode animCurveTL -n "L_foot_ik_ctrl_translateZ";
	rename -uid "E2D85644-4728-510D-BE11-73B82A70209F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 61.787270503113831 15 61.787270503113831
		 30 61.787270503113831;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateX";
	rename -uid "76B5CCEB-4A59-D2E8-2888-5B8240E8664B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.8261169287241392 15 -4.8261169287241392
		 30 -4.8261169287241392;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateY";
	rename -uid "EF385BE3-4FC2-E006-D3D5-43B008F165DE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -46.581967375864579 15 -46.581967375864579
		 30 -46.581967375864579;
createNode animCurveTA -n "L_foot_ik_ctrl_rotateZ";
	rename -uid "222F3D2C-45FA-12EA-1C46-58B001695FEE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 78.976623527686343 15 78.976623527686343
		 30 78.976623527686343;
createNode animCurveTU -n "L_foot_ik_ctrl_divider00";
	rename -uid "1F50CA48-4E3E-7BE2-CB00-C79AE6FED46F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_foot_ik_ctrl_Toe_Roll";
	rename -uid "B713F9EB-4DAE-4EA8-CA18-409C6F5D1E0D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_foot_ik_ctrl_Foot_Bank";
	rename -uid "9FBBD390-459A-D8F4-2095-C4AC635F74DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_foot_ik_ctrl_Heel_Rise";
	rename -uid "59843158-4163-1240-5E35-118D896BE879";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_pinky_01_ctrl1_visibility";
	rename -uid "CDD817FE-4CCA-F466-C41D-3CBBCCE7EBDC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateX";
	rename -uid "70219401-4CF4-B960-03FF-C5AE8E66580B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateY";
	rename -uid "3EA48F47-45F0-81D5-374C-CDB1F7FE1262";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_01_ctrl1_rotateZ";
	rename -uid "054FA8D8-45FD-BD72-2360-DF8ED26CF3F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_clavicle_ctrl_visibility";
	rename -uid "61C57FF9-4089-B46F-B603-1FA327DDEBE4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "R_clavicle_ctrl_rotateX";
	rename -uid "134F494F-4950-850C-69D6-598899179D49";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateY";
	rename -uid "7DD8630C-4C44-DC14-C802-FCB5F5F02030";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_clavicle_ctrl_rotateZ";
	rename -uid "12D54E10-47F7-D338-7C4D-0B9F9F6C10D4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_clavicle_ctrl_divider00";
	rename -uid "A33951E9-454B-8712-B78E-DF96BA37F209";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "R_clavicle_ctrl_R_arm_IK_FK_switch";
	rename -uid "8C9743C4-4D2F-2709-8444-D78AA75B9064";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateX";
	rename -uid "DFEA0EDE-4085-E0FD-E856-4EA5EEBF83F8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.4666761323989341 15 -3.4666761323989341
		 30 -3.4666761323989341;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateY";
	rename -uid "AA943448-49F2-1434-73F4-18B888AA62C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.3770193855281683 15 9.3770193855281683
		 30 9.3770193855281683;
createNode animCurveTA -n "L_hand_fk_ctrl_rotateZ";
	rename -uid "D5E08EF6-4F0A-D521-B598-95AEA01E2A51";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -19.537300072544973 15 -19.537300072544973
		 30 -19.537300072544973;
createNode animCurveTU -n "L_pinky_04_ctrl_visibility1";
	rename -uid "89D4C1E8-421A-B687-32B9-428E2C6CF836";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_04_ctrl_rotateZ1";
	rename -uid "6BA29A8A-4BDD-4484-A4B8-6B83415ADBA0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "waist_ctrl_visibility";
	rename -uid "0329A9B9-4DF6-C554-FCF9-AD872982D637";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "waist_ctrl_rotateX";
	rename -uid "5767137B-4E96-AE1F-F7B3-7282044CDA4D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.1807046667853693 15 1.1807046667853693
		 30 1.1807046667853693;
createNode animCurveTA -n "waist_ctrl_rotateY";
	rename -uid "E06AAB43-49A7-5424-7ABA-9AB39B18D30B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -11.404350414347391 15 -11.404350414347391
		 30 -11.404350414347391;
createNode animCurveTA -n "waist_ctrl_rotateZ";
	rename -uid "90855EBB-4613-BD1A-5C70-83A41411A924";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.9859264297487105 15 1.9859264297487105
		 30 1.9859264297487105;
createNode animCurveTU -n "L_middle_04_ctrl_visibility";
	rename -uid "599353D5-4889-DD9F-44CA-0FB229F109CF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ";
	rename -uid "551E2EC9-415A-E971-17FB-508861C1B28A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_02_ctrl_visibility";
	rename -uid "8CFCFB20-4AB1-E224-2705-A0987F44D3FB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX";
	rename -uid "4990483C-4CF2-4A58-38C0-C79F6C4DEB14";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY";
	rename -uid "528ECAC0-4FC3-B8AE-8DB6-B1B61B70FF6C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ";
	rename -uid "352CCDA2-4239-9BD0-2F53-D49827CFC3BC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_index_04_ctrl_visibility";
	rename -uid "54DC6E03-45E7-9AD8-F5E7-B4B6EA84984D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ";
	rename -uid "14536B12-4A21-01AA-02F4-2DA43516CB83";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_03_ctrl_visibility";
	rename -uid "E51E95DB-4368-0233-59B9-6092A1F7191F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ";
	rename -uid "1DB6C10B-46BA-E9CD-3888-F1999ED1535E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.983322725845284 15 -10.983322725845284
		 30 -10.983322725845284;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility";
	rename -uid "2A83416F-4736-3EB6-5F37-9FB3DE4CC325";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ";
	rename -uid "8F3F66B1-4DD8-6D28-A90B-7B81A600B50C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_04_ctrl_visibility";
	rename -uid "23CADFB9-419F-4BD0-DC34-EBB8F452FAB6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_04_ctrl_translateX";
	rename -uid "9601FA88-475A-F081-4D4B-23A40B43513A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_04_ctrl_translateY";
	rename -uid "6540714E-42E4-87FB-278A-91BE4131A663";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_04_ctrl_translateZ";
	rename -uid "983E08DB-4277-3E6B-8D51-8383B27B9615";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateX";
	rename -uid "9B6A3380-42D1-41E1-B3EE-F89061AE44E8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateY";
	rename -uid "C4BA108A-4854-4850-AA82-46BFCB27B0F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_04_ctrl_rotateZ";
	rename -uid "9193B2A3-475B-207A-BB32-3B87A042C7AD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_04_ctrl_scaleX";
	rename -uid "6FC6A27A-49AF-633A-9735-39BD1534B127";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleY";
	rename -uid "63927440-413B-22AA-DFA4-E8BF9FF8BFD3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_04_ctrl_scaleZ";
	rename -uid "9F41CEA9-4CE5-209C-24A1-6E8529D133CF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "jaw_ctrl_visibility";
	rename -uid "4E989D6E-43CE-EEC5-9BBD-3DB30BEDB565";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "jaw_ctrl_rotateX";
	rename -uid "07EA2DB7-4547-85FA-FDD5-A3895A85236D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.9853261814615677 15 3.9853261814615677
		 30 3.9853261814615677;
createNode animCurveTA -n "jaw_ctrl_rotateY";
	rename -uid "A6785B11-48C5-0894-23C9-60A835355E8E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "jaw_ctrl_rotateZ";
	rename -uid "D9A163D8-4755-6C0C-763C-28BC7B844E14";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_03_ctrl_visibility";
	rename -uid "AE7E8E40-44E1-6F74-ED5C-CA915577ED77";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_03_ctrl_translateX";
	rename -uid "FF8C1E75-40A3-E271-3645-D4B746765B76";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_03_ctrl_translateY";
	rename -uid "3DEC6499-4A01-4C93-54AF-999DA9465FE6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_03_ctrl_translateZ";
	rename -uid "C550EC7F-4ECC-6EA8-8D3C-C2A4CDC4DCD9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateX";
	rename -uid "98E120C4-48CB-55A9-83CF-1A9094C38B5C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateY";
	rename -uid "971A2656-4796-D856-E4F4-E486C61C33DF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_03_ctrl_rotateZ";
	rename -uid "0AFE448E-4FD5-D963-CA37-4192FB88736C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_03_ctrl_scaleX";
	rename -uid "2F21964D-4018-BFDE-7839-CA8CC51B232A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleY";
	rename -uid "E4A02F71-42C0-E998-2752-29A4759F9871";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_03_ctrl_scaleZ";
	rename -uid "AA060E1D-4E33-B955-F18F-30B84D3347D3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "shoulders_ctrl_visibility";
	rename -uid "C479BA49-4D92-2B74-A3AC-E3B38D5357CC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "shoulders_ctrl_rotateX";
	rename -uid "AB4E0952-487A-996C-BFE8-77A9AD2B91F6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.98941695374195 15 10.730466055591599
		 30 12.98941695374195;
createNode animCurveTA -n "shoulders_ctrl_rotateY";
	rename -uid "36808F35-430A-5CB7-8E25-E2AFB1000E13";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.4390657382540812 15 -4.4760519935923968
		 30 -4.4390657382540812;
createNode animCurveTA -n "shoulders_ctrl_rotateZ";
	rename -uid "B1C4D9E5-4167-9737-FA6A-CF8D3A2E3047";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.0260840846254808 15 0.84998506855168066
		 30 1.0260840846254808;
createNode animCurveTU -n "global_ctrl_visibility";
	rename -uid "3A5CF904-4B57-D961-F47C-A6B06C3C72E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "global_ctrl_translateX";
	rename -uid "61E57ECC-42EA-3B39-E07A-C197F0FC6208";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "global_ctrl_translateY";
	rename -uid "E3F14EFB-484F-7919-6529-E99537C635FD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "global_ctrl_translateZ";
	rename -uid "F86BF8C1-42CB-C891-CF93-D1804B133E75";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "global_ctrl_rotateX";
	rename -uid "BEB572C6-4046-776A-A265-56B3CA1534D1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "global_ctrl_rotateY";
	rename -uid "00F622F1-4FBA-0140-8FB6-858F9919AB5B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "global_ctrl_rotateZ";
	rename -uid "2DDA8D91-408F-B2F0-E43B-A5976B764134";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "global_ctrl_scaleX";
	rename -uid "DA2F36F7-475D-E141-5026-5AAB33A2C1C8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "global_ctrl_scaleY";
	rename -uid "E6E45BB9-437B-811B-E1C7-5EBD54B75902";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "global_ctrl_scaleZ";
	rename -uid "8BA17757-4EC8-34D9-A704-C5BC9E288EB0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_thumb_01_ctrl_visibility";
	rename -uid "C51A4710-4C3B-CF25-27C0-B18A335AB3E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateX";
	rename -uid "08269540-4EE7-F60E-A75D-E38B831D8F08";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.3789139019788799 15 -8.3789139019788799
		 30 -8.3789139019788799;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateY";
	rename -uid "EB019AE8-41F0-5CBD-87E4-6C9E5BAB45D2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_01_ctrl_rotateZ";
	rename -uid "58DB4D8C-47A7-590F-1438-52923A6F55E6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_02_ctrl_visibility";
	rename -uid "52CF0168-47E1-20BD-4D3A-B8822653843F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_02_ctrl_translateX";
	rename -uid "37B357F6-403D-B304-5282-239717158269";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_02_ctrl_translateY";
	rename -uid "CB57854F-477D-74A9-C765-7BBAF04FF763";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_02_ctrl_translateZ";
	rename -uid "4725F3D6-49D1-FDC8-AB76-37B42AC31E63";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateX";
	rename -uid "8151FD6C-43EF-3F44-0A26-17887DE66DC8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateY";
	rename -uid "C401F09E-4C64-DC01-C4CC-09BF0974660B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_02_ctrl_rotateZ";
	rename -uid "E7A70BCF-4EE6-0942-9AF5-8DA82A72876E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_02_ctrl_scaleX";
	rename -uid "B11C1F1E-4932-1A9D-4C7F-C98B959A53DC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleY";
	rename -uid "3C4766C1-4514-6C01-B462-AE9600836F7A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_02_ctrl_scaleZ";
	rename -uid "5FF61E2F-4B4A-9BDC-457E-8885B08C2B0E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_pinky_01_ctrl_visibility";
	rename -uid "6ED96CB8-4773-93C9-EA92-79A1A16F4F3F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateX";
	rename -uid "605E5327-47C4-9822-82BF-E88F7DD1DDD9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateY";
	rename -uid "76D121DA-43C7-5714-0E1B-28866041DFBF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_01_ctrl_rotateZ";
	rename -uid "3CAC27D4-4D63-2DAD-F4AE-0FB86985A4DA";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 3.9579282535203468 15 3.9579282535203468
		 30 3.9579282535203468;
createNode animCurveTU -n "L_ring_04_ctrl_visibility";
	rename -uid "321A6B88-4E72-CE71-7222-B9A01DA961C2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ";
	rename -uid "4D0DEFB5-4DE1-BD44-4289-FC8D70B3FF10";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -20.01356910588289 15 -20.01356910588289
		 30 -20.01356910588289;
createNode animCurveTU -n "L_ball_ik_ctrl_visibility";
	rename -uid "14A98C37-47BB-9D49-BD90-EBA4B075D272";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateX";
	rename -uid "A9F15382-437A-4CD5-C035-C9A6AA0B7A30";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateY";
	rename -uid "4490D72D-49EB-8B90-9439-439A91945ABE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ball_ik_ctrl_rotateZ";
	rename -uid "6DAAC458-4A0A-C8B9-C28E-CCA0B43E8205";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "spine_ctrl_visibility";
	rename -uid "B47EDE69-469B-462D-4088-C8A85F97E391";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "spine_ctrl_rotateX";
	rename -uid "6B97E963-47EA-AB90-2200-99A8AB3FC489";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 11.433029241807676 15 11.433029241807676
		 30 11.433029241807676;
createNode animCurveTA -n "spine_ctrl_rotateY";
	rename -uid "06B98B72-4958-4F79-4190-CC9682E38388";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -11.070457425442266 15 -11.070457425442266
		 30 -11.070457425442266;
createNode animCurveTA -n "spine_ctrl_rotateZ";
	rename -uid "6C779774-457A-78D4-8E7C-06BF9A9C67D9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 2.2677126138430244 15 2.2677126138430244
		 30 2.2677126138430244;
createNode animCurveTU -n "L_ring_04_ctrl_visibility1";
	rename -uid "DE62692E-4256-47EB-0759-C2948352938A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_04_ctrl_rotateZ1";
	rename -uid "2CAE106F-410A-231E-C40C-47A63B89BAE0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_index_03_ctrl_visibility1";
	rename -uid "4CF09815-4670-AAF4-E849-AFA0ADD8B377";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_03_ctrl_rotateZ1";
	rename -uid "94635172-45BF-5270-EF71-0081017E5450";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "abdomen_ctrl_visibility";
	rename -uid "DE758D06-491B-6845-9B16-D5AD33BB0881";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "abdomen_ctrl_rotateX";
	rename -uid "C3441B25-4FF4-B3C1-3AD8-9CBF254DB7AE";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.5610842391725326 15 5.2995353947235619
		 30 6.5610842391725326;
createNode animCurveTA -n "abdomen_ctrl_rotateY";
	rename -uid "FABA4E42-4B10-6BE1-6B8F-2B887C8B7D8A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "abdomen_ctrl_rotateZ";
	rename -uid "47D06981-48EB-DB89-5CE4-2584DA4F5586";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_ball_ik_ctrl_visibility";
	rename -uid "51808D94-4D47-72B1-FD88-E1A8278EF4FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateX";
	rename -uid "E6A7CE82-4923-DF57-E12B-8EB3D16B1375";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateY";
	rename -uid "9C7995AC-432A-3265-0FFE-73B0B0FA75F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_ball_ik_ctrl_rotateZ";
	rename -uid "5D247212-4EBB-CBC4-FCC3-23A88094B035";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_ring_01_ctrl1_visibility";
	rename -uid "6D859BB6-4E1E-4D6D-C0C6-A6B58D9B01C0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateX";
	rename -uid "8E079885-4D85-37D7-23AA-8F8FD1A19B83";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateY";
	rename -uid "CD470E47-46A3-151B-AE15-FCB9541E748E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl1_rotateZ";
	rename -uid "1E905D6E-4841-A691-097B-338A8F87DAF0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_03_ctrl_visibility1";
	rename -uid "34928627-4663-2E43-C62A-EDB5EB05C44F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_03_ctrl_rotateZ1";
	rename -uid "8D1C6579-4F43-A781-21E8-CA8AC9C0ACB0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.4063411781733732 15 -6.4063411781733732
		 30 -6.4063411781733732;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateX";
	rename -uid "A1F6EAB0-4921-E332-31B0-E2A276C6AE43";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 77.55846581588122 15 77.55846581588122
		 30 77.55846581588122;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateY";
	rename -uid "036C2691-4697-50E1-D30C-E1BE76286CAD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -22.784463764142007 15 -22.784463764142007
		 30 -22.784463764142007;
createNode animCurveTA -n "L_elbow_fk_ctrl_rotateZ";
	rename -uid "5E127B95-4478-BEAA-1BC9-61AF224DDC50";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -11.148957928548795 15 -11.148957928548795
		 30 -11.148957928548795;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility";
	rename -uid "CC040423-4B2E-44CC-9A6E-C78351D9B9C5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX";
	rename -uid "BA16E985-422A-9C40-8C5C-39AFACD4D357";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY";
	rename -uid "B9C30EFE-4B00-8A38-0C34-25AB016E643F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ";
	rename -uid "9D42E918-40B0-C583-336C-84A2AEF37E72";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 6.3752026469813989 15 6.3752026469813989
		 30 6.3752026469813989;
createNode animCurveTU -n "L_pinky_02_ctrl_visibility1";
	rename -uid "A71622E1-49BB-8092-B59E-9584CBFDA314";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateX1";
	rename -uid "20564C44-4095-E81B-CB11-B7A3DD136245";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateY1";
	rename -uid "3CAAF3E0-46EC-58CC-1C38-6D8DC70CDD7D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_pinky_02_ctrl_rotateZ1";
	rename -uid "299477AE-4D63-90FD-8206-CDA6A64E885E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.7261666719755393 15 -8.7261666719755393
		 30 -8.7261666719755393;
createNode animCurveTU -n "tongue_05_ctrl_visibility";
	rename -uid "FC179245-4568-1E94-1F95-F8862A8186BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_05_ctrl_translateX";
	rename -uid "2B3FC82C-42FB-A1F1-6701-D2A2144152F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_05_ctrl_translateY";
	rename -uid "81C7FAC9-4A6F-A726-03A6-35A679DF1873";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_05_ctrl_translateZ";
	rename -uid "CCD7FB6B-4ED8-F1C4-1959-10AD7CFD3C4A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateX";
	rename -uid "7F03C559-48F5-D76E-C9B1-F8B064897A1E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateY";
	rename -uid "11D1BA5E-4FC8-B668-1E17-3EB134DED07A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_05_ctrl_rotateZ";
	rename -uid "F9C451F5-4E8F-76F9-7E02-26AF669D48C6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_05_ctrl_scaleX";
	rename -uid "8233B69D-4592-EDF8-F637-A082F14481B6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleY";
	rename -uid "07E9A212-423A-E387-DA52-5D9F5AC25F33";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "tongue_05_ctrl_scaleZ";
	rename -uid "24077F63-4E78-8FE8-B41F-33B45DFE9587";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_middle_01_ctrl_visibility";
	rename -uid "BC76F1E5-44C3-F9CD-A6A6-07B9D41DCECD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_01_ctrl_rotateX";
	rename -uid "BBCD27B9-442B-2086-0420-928ACA95C7B8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateY";
	rename -uid "C24B9155-4370-D250-2757-429677522299";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl_rotateZ";
	rename -uid "35B03BC6-466C-0045-696E-E8A7FFB21188";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -3.068223390238574 15 -3.068223390238574
		 30 -3.068223390238574;
createNode animCurveTU -n "L_clavicle_ctrl_visibility";
	rename -uid "D515B491-49DA-BEC0-820E-BE9220639EEE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_clavicle_ctrl_rotateX";
	rename -uid "5FD25AF4-485B-653C-3C35-DBA251B355D5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateY";
	rename -uid "AB784170-429F-2F3F-856B-D5B70B816EA0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_clavicle_ctrl_rotateZ";
	rename -uid "8AFBFDC5-4962-801E-6DD4-0D9A85690D58";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_clavicle_ctrl_divider00";
	rename -uid "87A1BFB9-4B6C-58D3-FE65-E194206A8819";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "L_clavicle_ctrl_L_arm_IK_FK_switch";
	rename -uid "9D8CEDE3-49B6-A62A-8CAD-DB8230427967";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "head_ctrl1_visibility";
	rename -uid "76B280ED-4AB9-132E-2C8C-C6A3813F0B4F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "head_ctrl1_rotateX";
	rename -uid "0831865E-4C89-FCC1-195E-D5AAC89C62D2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "head_ctrl1_rotateY";
	rename -uid "36B9C20A-47C6-EE1C-E7B5-36A6FBC851C3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 20.631061569442533 15 20.631061569442533
		 30 20.631061569442533;
createNode animCurveTA -n "head_ctrl1_rotateZ";
	rename -uid "3BEB33FB-4FA9-B593-6A2B-16B8D8D73A5D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 9.3894543395623735 15 9.3894543395623735
		 30 9.3894543395623735;
createNode animCurveTU -n "head_ctrl1_Orient_Neck";
	rename -uid "78447F22-4FE4-E848-D66C-5AA409CAFB9E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "tongue_01_ctrl_visibility";
	rename -uid "1898CA46-48D0-4C8A-787D-CB9270271350";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "tongue_01_ctrl_translateX";
	rename -uid "A52EFE02-4EB8-D6E2-2F9B-D69D5A4AB813";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_01_ctrl_translateY";
	rename -uid "83656786-40E7-B0E7-371F-0584AA9F2D9E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "tongue_01_ctrl_translateZ";
	rename -uid "DB26B996-4A1D-ADA6-8CD2-9C80BEDBBE10";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateX";
	rename -uid "6E2A5815-421B-7605-995D-9AAC25509DAF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateY";
	rename -uid "61DE553C-47E0-6BC7-E664-1895970D82D9";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "tongue_01_ctrl_rotateZ";
	rename -uid "7E4FB8D1-443F-F6B6-D359-469E79AAF464";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_middle_02_ctrl_visibility1";
	rename -uid "750D01C1-4243-6FAE-FA46-D4886AB5F995";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_02_ctrl_rotateX1";
	rename -uid "B1EC480E-4B3A-3CFE-79FC-CBBE9E55A69D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateY1";
	rename -uid "1D7B08B4-48FE-3920-AC31-3B8CD03E8714";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_02_ctrl_rotateZ1";
	rename -uid "367A5226-49EE-BBE7-2F7E-E9A96FE123F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.8427402736161165 15 -2.8427402736161165
		 30 -2.8427402736161165;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility";
	rename -uid "9F111E9B-481B-6770-8A5B-34B5202D0F01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX";
	rename -uid "A65B4A0C-4EC2-9497-5929-D396BEA27F1B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY";
	rename -uid "95E57C27-4630-27B6-BC83-91AE0AB69710";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ";
	rename -uid "6FE9B626-4F97-D177-2C6B-1B8F810FBE5D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_index_01_ctrl_visibility";
	rename -uid "F0552369-47BA-A5DB-5B20-1197596B10EB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_01_ctrl_rotateX";
	rename -uid "91E1CC48-410A-62A0-22CA-419A4C4FD50E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateY";
	rename -uid "A276A4A0-49E3-9166-2DCC-B397378827FB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_01_ctrl_rotateZ";
	rename -uid "4CCDB042-45C8-5351-59DF-D3BFFDEBF2B1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -4.922354770390295 15 -4.922354770390295
		 30 -4.922354770390295;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateX";
	rename -uid "049DD561-4AEE-7B08-5522-C4853918C6F0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -17.943784433665595 15 -17.943784433665595
		 30 -17.943784433665595;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateY";
	rename -uid "0CAEA754-4F33-1FE2-6C5E-B2BBD177E7A7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 36.652207996235262 15 36.652207996235262
		 30 36.652207996235262;
createNode animCurveTA -n "R_elbow_fk_ctrl_rotateZ";
	rename -uid "7E1C2C4B-4CD8-8827-F1D4-6B8ECAEA41F8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -15.47135672520327 15 -15.47135672520327
		 30 -15.47135672520327;
createNode animCurveTU -n "L_middle_01_ctrl1_visibility";
	rename -uid "9CDED51C-4512-0A94-5EA7-C4ADF3624782";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateX";
	rename -uid "298867BF-4BFB-6611-6925-10A300B3CFFC";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateY";
	rename -uid "ED5BFC67-4686-2E21-B3E9-179AFD0DA5F3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_middle_01_ctrl1_rotateZ";
	rename -uid "384D096A-459E-0028-A340-7B8CC2110BF7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_index_02_ctrl_visibility";
	rename -uid "9A146DCB-46E1-31AE-A4EC-08853369ED9C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_02_ctrl_rotateX";
	rename -uid "EF19A394-46B9-CBB2-FFC4-2E875E77CED2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateY";
	rename -uid "3C885BC0-422C-F445-6CE4-CFBFAC256472";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ";
	rename -uid "9E2C05B7-4E88-85A1-64B3-1C8063BF9B3F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateX";
	rename -uid "C4D31287-4E43-2BE8-D573-4888B12C1E29";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.45482075423768842 15 0.45482075423768842
		 30 0.45482075423768842;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateY";
	rename -uid "8C2C4F38-4F80-D440-840F-ABBABA6B1FD1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -5.3499790037707546 15 -5.3499790037707546
		 30 -5.3499790037707546;
createNode animCurveTA -n "R_hand_fk_ctrl_rotateZ";
	rename -uid "C0295DFE-4D45-EBAE-7DB0-E3BE57A34274";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1.7356221379670957 15 1.7356221379670957
		 30 1.7356221379670957;
createNode animCurveTU -n "L_thumb_01_ctrl1_visibility";
	rename -uid "E1EA2157-43D6-EAC4-5681-54B072C5EAC9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateX";
	rename -uid "14194D17-4C40-BCEE-4D29-08804D9D2E2C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateY";
	rename -uid "D97CB7C7-48C2-76BB-A2C6-DA8254E32EF7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_01_ctrl1_rotateZ";
	rename -uid "36EE7F72-48E2-4B1F-84B2-C481C7D8D198";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_ring_01_ctrl_visibility";
	rename -uid "FEC5118B-4C72-E81F-3DFF-A6B65EEFA9F5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_01_ctrl_rotateX";
	rename -uid "D633A0C7-4072-6BCE-26E5-549D415E86F8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateY";
	rename -uid "E199EA01-46FE-D6E9-839E-1DB2862CC7FD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_01_ctrl_rotateZ";
	rename -uid "13D4A167-408B-A902-9FFF-31AE248E9117";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_thumb_02_ctrl_visibility1";
	rename -uid "B074145C-4850-51ED-C6DE-909FAEE3D4B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateX1";
	rename -uid "D2177FE3-494F-C217-C039-1C820E1ED169";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.1587466942734075 15 -6.1587466942734075
		 30 -6.1587466942734075;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateY1";
	rename -uid "EB5ADFE4-4E22-AC8D-FA31-F6974F753673";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_thumb_02_ctrl_rotateZ1";
	rename -uid "B79CA5CA-45F4-4CF9-0828-E3B1F12515F8";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -8.1479084901746912 15 -8.1479084901746912
		 30 -8.1479084901746912;
createNode animCurveTU -n "L_middle_04_ctrl_visibility1";
	rename -uid "51DBF217-4E1C-DEA3-A99F-E0ABB1B4F328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_middle_04_ctrl_rotateZ1";
	rename -uid "D4E5A1FD-435F-BCC6-9EFD-848E7B1C0B6B";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_ring_03_ctrl_visibility1";
	rename -uid "32972257-4CAD-F7CF-14BA-26883DB544B7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_03_ctrl_rotateZ1";
	rename -uid "9F589AF3-408A-1B2A-CF18-0B9156F2C619";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_ring_02_ctrl_visibility";
	rename -uid "AF37C1A4-4D39-ABC7-8E1D-88A497A8A71A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX";
	rename -uid "5656AB31-4DC8-9280-9AF9-BB8243C76150";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY";
	rename -uid "0BDF9E3F-456E-26BD-799F-7690C064FB9E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ";
	rename -uid "37325D40-46DA-E60B-B312-86B46CFA8204";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -6.3407084781458369 15 -6.3407084781458369
		 30 -6.3407084781458369;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility";
	rename -uid "EF367C98-480D-93DF-B924-AEBA1415DB3D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ";
	rename -uid "D4612248-4994-3AD8-9DC5-9A8B24EBB17F";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateX";
	rename -uid "455E738E-4421-F701-F8AF-DFA9BDAB48E3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 109.3669886283013 15 107.19274575669914
		 30 109.3669886283013;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateY";
	rename -uid "E359FD72-4EFF-63B3-05EE-D583936FEBA2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -37.527212877426926 15 -37.952598625358647
		 30 -37.527212877426926;
createNode animCurveTA -n "R_shoulder_fk_ctrl_rotateZ";
	rename -uid "9BE56852-457B-4665-0298-7AABDC45BA0A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 12.105367975447388 15 10.45475501822216
		 30 12.105367975447388;
createNode animCurveTU -n "L_eye_ctrl_visibility";
	rename -uid "BA49ECB9-418B-6271-6E20-6DAE3F6557FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_eye_ctrl_translateX";
	rename -uid "6E4E3980-4441-4B25-F82E-D2A9700A7329";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "L_eye_ctrl_translateY";
	rename -uid "3DC42895-4245-5F07-F35E-E586B7CA9D23";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "L_eye_ctrl_translateZ";
	rename -uid "786DF4EA-4F3D-ABEB-956D-949A9FF898A7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_eye_ctrl_rotateX";
	rename -uid "F7B54638-494F-A69C-DDE5-F1AFFBC36756";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_eye_ctrl_rotateY";
	rename -uid "75B23189-4100-4F15-B5A8-018D25E9A310";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_eye_ctrl_rotateZ";
	rename -uid "CA5F85BF-4677-122F-CD7C-C98DD3ABFB36";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_eye_ctrl_scaleX";
	rename -uid "32A78869-47B8-EE37-8D9E-D48F59E46C34";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_eye_ctrl_scaleY";
	rename -uid "7C22FDE5-4C39-D2D4-8F64-ABBA7666BA08";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_eye_ctrl_scaleZ";
	rename -uid "4BE855D7-4DFD-6526-DDBE-1FA4A77077C7";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_thumb_03_ctrl_visibility1";
	rename -uid "22C0970E-425C-CD09-A0B1-6BB4A034EF0C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_thumb_03_ctrl_rotateZ1";
	rename -uid "EFF0B868-4744-9E62-B92E-E899B8CE96A1";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -16.030938897153856 15 -16.030938897153856
		 30 -16.030938897153856;
createNode animCurveTU -n "L_ring_02_ctrl_visibility1";
	rename -uid "0AE9BD8E-4256-CB06-670A-E097827FE411";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_ring_02_ctrl_rotateX1";
	rename -uid "A9FC3409-483F-D291-A951-119047FDA2B3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateY1";
	rename -uid "2662B2D5-4716-70C4-5F62-29815C5D68F2";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_ring_02_ctrl_rotateZ1";
	rename -uid "BEA1A2B6-438E-92E1-0001-8D9BE5B31E5E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_visibility";
	rename -uid "66467CE2-4982-7989-A5A9-BAA9D0371A97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateX";
	rename -uid "1D7B08DB-4B8B-F3C2-3284-0AA2C493181C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -55.772387509247721 15 -55.772387509247721
		 30 -55.772387509247721;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateY";
	rename -uid "3B019649-4DAB-7D4C-B14E-DAAB79400BC6";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -43.492797882832022 15 -43.492797882832022
		 30 -43.492797882832022;
createNode animCurveTL -n "R_knee_aim_ik_ctrl_translateZ";
	rename -uid "7DCAAEF1-48A5-BED6-F4D5-3D9B918D3C5E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateX";
	rename -uid "5D6B7D04-443B-88B8-168E-BA859F6623A3";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateY";
	rename -uid "414CB0E2-431A-2248-2336-5980B9EBE8F4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_knee_aim_ik_ctrl_rotateZ";
	rename -uid "1189C61B-41D9-1F10-5EBD-9C94DE245BE4";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleX";
	rename -uid "E6612D0D-4A57-ED19-C3CD-B5BA9DB02A0C";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleY";
	rename -uid "C73E45FF-4580-F3D8-D124-54AEE5D93BF5";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_knee_aim_ik_ctrl_scaleZ";
	rename -uid "7A0D2501-488C-1BFD-3ED7-23921735A75D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_eye_ctrl_visibility";
	rename -uid "9047DEDA-4A1A-FCE7-D4D1-DDA7D1516312";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "R_eye_ctrl_translateX";
	rename -uid "E7F10FF5-4683-4516-BD6E-3EA77E158E7A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "R_eye_ctrl_translateY";
	rename -uid "0C3CE3C2-48C3-9202-73EE-71A12586B560";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTL -n "R_eye_ctrl_translateZ";
	rename -uid "EE8135EC-4804-3884-3058-BCB2E0074D33";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_eye_ctrl_rotateX";
	rename -uid "9126C21D-4E88-B531-C455-4ABF605D8C17";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_eye_ctrl_rotateY";
	rename -uid "D8BFCC84-497D-7C86-A713-89A6AD02D2C0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "R_eye_ctrl_rotateZ";
	rename -uid "D1AF0CB6-4693-DEE9-BB2E-D79C74F7B229";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "R_eye_ctrl_scaleX";
	rename -uid "4392EA42-45FE-FB58-013A-BBA06652C78D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_eye_ctrl_scaleY";
	rename -uid "19DA2C9E-4CB1-FD9D-207D-30AE64B4DA78";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "R_eye_ctrl_scaleZ";
	rename -uid "AB12A164-4FDA-5E75-74CD-448E5F041345";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_visibility";
	rename -uid "CD6FE9C4-4F58-A2EB-B618-088BB474DB60";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateX";
	rename -uid "D9D06192-4BB3-D3DD-E8EA-B6A8FF0AD6CB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -56.040403365461238 15 -56.040403365461238
		 30 -56.040403365461238;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateY";
	rename -uid "7AF2193B-419C-662F-E517-B6B299710E6D";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -25.94085375307953 15 -25.94085375307953
		 30 -25.94085375307953;
createNode animCurveTL -n "L_knee_aim_ik_ctrl_translateZ";
	rename -uid "032491D4-4079-8E3F-FA2A-34A8903E7EDF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateX";
	rename -uid "9CC6A7BC-4C6E-71D9-43F5-9DAF130B8A3A";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateY";
	rename -uid "F1AF2E6F-4DA6-9A22-AA6A-4C9042BE3CCB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTA -n "L_knee_aim_ik_ctrl_rotateZ";
	rename -uid "D280BFA8-4374-600D-FDB1-C2867BCB9FFB";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleX";
	rename -uid "0A47158B-434B-B0A9-6DF1-52897E082DDD";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleY";
	rename -uid "9DCA394A-4150-7D5D-0C97-FBABEFFB1844";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_knee_aim_ik_ctrl_scaleZ";
	rename -uid "818375E5-442B-AB59-E950-4CADC0A16E47";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
createNode animCurveTU -n "L_index_02_ctrl_visibility1";
	rename -uid "AA99FFD5-4968-76C1-2AD5-C899316CF0A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_02_ctrl_rotateX1";
	rename -uid "8E440F83-483C-B641-A36C-AC987373560E";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -0.75721469697809818 15 -0.75721469697809818
		 30 -0.75721469697809818;
createNode animCurveTA -n "L_index_02_ctrl_rotateY1";
	rename -uid "405A82DB-4905-583D-7C94-449FA6BF0EBF";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.43786005479622886 15 0.43786005479622886
		 30 0.43786005479622886;
createNode animCurveTA -n "L_index_02_ctrl_rotateZ1";
	rename -uid "95D34DF5-46CE-C46F-583A-779865716AB0";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -2.2821564826815761 15 -2.2821564826815761
		 30 -2.2821564826815761;
createNode animCurveTU -n "L_pinky_03_ctrl_visibility1";
	rename -uid "F1F5D9B7-4720-99E2-B2B1-6AAD71DE2434";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_pinky_03_ctrl_rotateZ1";
	rename -uid "F90BE2A3-4F16-354A-047E-B1903ACEBE01";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 -10.393156721373652 15 -10.393156721373652
		 30 -10.393156721373652;
createNode animCurveTU -n "L_index_04_ctrl_visibility1";
	rename -uid "807F3E56-4282-2807-3931-6DBC52C1533A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 15 1 30 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "L_index_04_ctrl_rotateZ1";
	rename -uid "C0EA1BE3-4CA3-A754-1D51-8D8F05C64749";
	setAttr ".tan" 16;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 15 0 30 0;
createNode objectSet -n "Cntrls";
	rename -uid "DBD0A8D2-40F8-3CFC-F207-0E97488C53AA";
	setAttr ".ihi" 0;
	setAttr -s 70 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "7E84149E-4D02-FCF9-BCF1-41B02B215DC9";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".ich" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "D456A100-4B82-AF39-DF0A-7CB4A48C6BFF";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".ssn" -type "string" "";
	setAttr ".ac[0].acn" -type "string" "Liggende_Sidelengs_Skadet";
	setAttr ".ac[0].ace" 30;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "C:/Users/simen/OneDrive/Skrivebord/Snow_XR/Snow XR - Maya - Simen//scenes/Liggende";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "A6470A55-4B7F-8D59-C7C3-64BD3AF71B11";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "5553B6E9-4083-AA06-F51B-0DBE2A857FD9";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 0;
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
connectAttr "Characters_RiggedRN.phl[10]" "Cntrls.dsm" -na;
connectAttr "global_ctrl_visibility.o" "Characters_RiggedRN.phl[11]";
connectAttr "eyes_master_ctrl_Eyes_Follow_Switch.o" "Characters_RiggedRN.phl[12]"
		;
connectAttr "eyes_master_ctrl_Locators_Visability.o" "Characters_RiggedRN.phl[13]"
		;
connectAttr "Characters_RiggedRN.phl[14]" "Cntrls.dsm" -na;
connectAttr "eyes_master_ctrl_translateX.o" "Characters_RiggedRN.phl[15]";
connectAttr "eyes_master_ctrl_translateY.o" "Characters_RiggedRN.phl[16]";
connectAttr "eyes_master_ctrl_translateZ.o" "Characters_RiggedRN.phl[17]";
connectAttr "eyes_master_ctrl_visibility.o" "Characters_RiggedRN.phl[18]";
connectAttr "eyes_master_ctrl_rotateX.o" "Characters_RiggedRN.phl[19]";
connectAttr "eyes_master_ctrl_rotateY.o" "Characters_RiggedRN.phl[20]";
connectAttr "eyes_master_ctrl_rotateZ.o" "Characters_RiggedRN.phl[21]";
connectAttr "eyes_master_ctrl_divider00.o" "Characters_RiggedRN.phl[22]";
connectAttr "L_eye_ctrl_translateX.o" "Characters_RiggedRN.phl[23]";
connectAttr "L_eye_ctrl_translateY.o" "Characters_RiggedRN.phl[24]";
connectAttr "L_eye_ctrl_translateZ.o" "Characters_RiggedRN.phl[25]";
connectAttr "Characters_RiggedRN.phl[26]" "Cntrls.dsm" -na;
connectAttr "L_eye_ctrl_visibility.o" "Characters_RiggedRN.phl[27]";
connectAttr "L_eye_ctrl_rotateX.o" "Characters_RiggedRN.phl[28]";
connectAttr "L_eye_ctrl_rotateY.o" "Characters_RiggedRN.phl[29]";
connectAttr "L_eye_ctrl_rotateZ.o" "Characters_RiggedRN.phl[30]";
connectAttr "L_eye_ctrl_scaleX.o" "Characters_RiggedRN.phl[31]";
connectAttr "L_eye_ctrl_scaleY.o" "Characters_RiggedRN.phl[32]";
connectAttr "L_eye_ctrl_scaleZ.o" "Characters_RiggedRN.phl[33]";
connectAttr "R_eye_ctrl_translateX.o" "Characters_RiggedRN.phl[34]";
connectAttr "R_eye_ctrl_translateY.o" "Characters_RiggedRN.phl[35]";
connectAttr "R_eye_ctrl_translateZ.o" "Characters_RiggedRN.phl[36]";
connectAttr "Characters_RiggedRN.phl[37]" "Cntrls.dsm" -na;
connectAttr "R_eye_ctrl_visibility.o" "Characters_RiggedRN.phl[38]";
connectAttr "R_eye_ctrl_rotateX.o" "Characters_RiggedRN.phl[39]";
connectAttr "R_eye_ctrl_rotateY.o" "Characters_RiggedRN.phl[40]";
connectAttr "R_eye_ctrl_rotateZ.o" "Characters_RiggedRN.phl[41]";
connectAttr "R_eye_ctrl_scaleX.o" "Characters_RiggedRN.phl[42]";
connectAttr "R_eye_ctrl_scaleY.o" "Characters_RiggedRN.phl[43]";
connectAttr "R_eye_ctrl_scaleZ.o" "Characters_RiggedRN.phl[44]";
connectAttr "Characters_RiggedRN.phl[45]" "Cntrls.dsm" -na;
connectAttr "cog_ctrl_translateX.o" "Characters_RiggedRN.phl[46]";
connectAttr "cog_ctrl_translateY.o" "Characters_RiggedRN.phl[47]";
connectAttr "cog_ctrl_translateZ.o" "Characters_RiggedRN.phl[48]";
connectAttr "cog_ctrl_rotateX.o" "Characters_RiggedRN.phl[49]";
connectAttr "cog_ctrl_rotateY.o" "Characters_RiggedRN.phl[50]";
connectAttr "cog_ctrl_rotateZ.o" "Characters_RiggedRN.phl[51]";
connectAttr "cog_ctrl_visibility.o" "Characters_RiggedRN.phl[52]";
connectAttr "waist_ctrl_rotateX.o" "Characters_RiggedRN.phl[53]";
connectAttr "waist_ctrl_rotateY.o" "Characters_RiggedRN.phl[54]";
connectAttr "waist_ctrl_rotateZ.o" "Characters_RiggedRN.phl[55]";
connectAttr "Characters_RiggedRN.phl[56]" "Cntrls.dsm" -na;
connectAttr "waist_ctrl_visibility.o" "Characters_RiggedRN.phl[57]";
connectAttr "spine_ctrl_rotateX.o" "Characters_RiggedRN.phl[58]";
connectAttr "spine_ctrl_rotateY.o" "Characters_RiggedRN.phl[59]";
connectAttr "spine_ctrl_rotateZ.o" "Characters_RiggedRN.phl[60]";
connectAttr "Characters_RiggedRN.phl[61]" "Cntrls.dsm" -na;
connectAttr "spine_ctrl_visibility.o" "Characters_RiggedRN.phl[62]";
connectAttr "abdomen_ctrl_rotateX.o" "Characters_RiggedRN.phl[63]";
connectAttr "abdomen_ctrl_rotateY.o" "Characters_RiggedRN.phl[64]";
connectAttr "abdomen_ctrl_rotateZ.o" "Characters_RiggedRN.phl[65]";
connectAttr "Characters_RiggedRN.phl[66]" "Cntrls.dsm" -na;
connectAttr "abdomen_ctrl_visibility.o" "Characters_RiggedRN.phl[67]";
connectAttr "sternum_ctrl_rotateX.o" "Characters_RiggedRN.phl[68]";
connectAttr "sternum_ctrl_rotateY.o" "Characters_RiggedRN.phl[69]";
connectAttr "sternum_ctrl_rotateZ.o" "Characters_RiggedRN.phl[70]";
connectAttr "Characters_RiggedRN.phl[71]" "Cntrls.dsm" -na;
connectAttr "sternum_ctrl_visibility.o" "Characters_RiggedRN.phl[72]";
connectAttr "shoulders_ctrl_rotateX.o" "Characters_RiggedRN.phl[73]";
connectAttr "shoulders_ctrl_rotateY.o" "Characters_RiggedRN.phl[74]";
connectAttr "shoulders_ctrl_rotateZ.o" "Characters_RiggedRN.phl[75]";
connectAttr "Characters_RiggedRN.phl[76]" "Cntrls.dsm" -na;
connectAttr "shoulders_ctrl_visibility.o" "Characters_RiggedRN.phl[77]";
connectAttr "L_clavicle_ctrl_L_arm_IK_FK_switch.o" "Characters_RiggedRN.phl[78]"
		;
connectAttr "L_clavicle_ctrl_rotateX.o" "Characters_RiggedRN.phl[79]";
connectAttr "L_clavicle_ctrl_rotateY.o" "Characters_RiggedRN.phl[80]";
connectAttr "L_clavicle_ctrl_rotateZ.o" "Characters_RiggedRN.phl[81]";
connectAttr "Characters_RiggedRN.phl[82]" "Cntrls.dsm" -na;
connectAttr "L_clavicle_ctrl_visibility.o" "Characters_RiggedRN.phl[83]";
connectAttr "L_clavicle_ctrl_divider00.o" "Characters_RiggedRN.phl[84]";
connectAttr "L_shoulder_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[85]";
connectAttr "L_shoulder_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[86]";
connectAttr "L_shoulder_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[87]";
connectAttr "Characters_RiggedRN.phl[88]" "Cntrls.dsm" -na;
connectAttr "L_elbow_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[89]";
connectAttr "L_elbow_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[90]";
connectAttr "L_elbow_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[91]";
connectAttr "Characters_RiggedRN.phl[92]" "Cntrls.dsm" -na;
connectAttr "L_hand_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[93]";
connectAttr "L_hand_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[94]";
connectAttr "L_hand_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[95]";
connectAttr "Characters_RiggedRN.phl[96]" "Cntrls.dsm" -na;
connectAttr "R_clavicle_ctrl_R_arm_IK_FK_switch.o" "Characters_RiggedRN.phl[97]"
		;
connectAttr "R_clavicle_ctrl_rotateX.o" "Characters_RiggedRN.phl[98]";
connectAttr "R_clavicle_ctrl_rotateY.o" "Characters_RiggedRN.phl[99]";
connectAttr "R_clavicle_ctrl_rotateZ.o" "Characters_RiggedRN.phl[100]";
connectAttr "Characters_RiggedRN.phl[101]" "Cntrls.dsm" -na;
connectAttr "R_clavicle_ctrl_visibility.o" "Characters_RiggedRN.phl[102]";
connectAttr "R_clavicle_ctrl_divider00.o" "Characters_RiggedRN.phl[103]";
connectAttr "R_shoulder_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[104]";
connectAttr "R_shoulder_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[105]";
connectAttr "R_shoulder_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[106]";
connectAttr "Characters_RiggedRN.phl[107]" "Cntrls.dsm" -na;
connectAttr "R_elbow_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[108]";
connectAttr "R_elbow_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[109]";
connectAttr "R_elbow_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[110]";
connectAttr "Characters_RiggedRN.phl[111]" "Cntrls.dsm" -na;
connectAttr "R_hand_fk_ctrl_rotateX.o" "Characters_RiggedRN.phl[112]";
connectAttr "R_hand_fk_ctrl_rotateY.o" "Characters_RiggedRN.phl[113]";
connectAttr "R_hand_fk_ctrl_rotateZ.o" "Characters_RiggedRN.phl[114]";
connectAttr "Characters_RiggedRN.phl[115]" "Cntrls.dsm" -na;
connectAttr "neck_ctrl_rotateX.o" "Characters_RiggedRN.phl[116]";
connectAttr "neck_ctrl_rotateY.o" "Characters_RiggedRN.phl[117]";
connectAttr "neck_ctrl_rotateZ.o" "Characters_RiggedRN.phl[118]";
connectAttr "Characters_RiggedRN.phl[119]" "Cntrls.dsm" -na;
connectAttr "neck_ctrl_visibility.o" "Characters_RiggedRN.phl[120]";
connectAttr "head_ctrl1_Orient_Neck.o" "Characters_RiggedRN.phl[121]";
connectAttr "head_ctrl1_rotateX.o" "Characters_RiggedRN.phl[122]";
connectAttr "head_ctrl1_rotateY.o" "Characters_RiggedRN.phl[123]";
connectAttr "head_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[124]";
connectAttr "Characters_RiggedRN.phl[125]" "Cntrls.dsm" -na;
connectAttr "head_ctrl1_visibility.o" "Characters_RiggedRN.phl[126]";
connectAttr "jaw_ctrl_rotateX.o" "Characters_RiggedRN.phl[127]";
connectAttr "jaw_ctrl_rotateY.o" "Characters_RiggedRN.phl[128]";
connectAttr "jaw_ctrl_rotateZ.o" "Characters_RiggedRN.phl[129]";
connectAttr "Characters_RiggedRN.phl[130]" "Cntrls.dsm" -na;
connectAttr "jaw_ctrl_visibility.o" "Characters_RiggedRN.phl[131]";
connectAttr "tongue_01_ctrl_translateX.o" "Characters_RiggedRN.phl[132]";
connectAttr "tongue_01_ctrl_translateY.o" "Characters_RiggedRN.phl[133]";
connectAttr "tongue_01_ctrl_translateZ.o" "Characters_RiggedRN.phl[134]";
connectAttr "tongue_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[135]";
connectAttr "tongue_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[136]";
connectAttr "tongue_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[137]";
connectAttr "Characters_RiggedRN.phl[138]" "Cntrls.dsm" -na;
connectAttr "tongue_01_ctrl_visibility.o" "Characters_RiggedRN.phl[139]";
connectAttr "tongue_02_ctrl_translateX.o" "Characters_RiggedRN.phl[140]";
connectAttr "tongue_02_ctrl_translateY.o" "Characters_RiggedRN.phl[141]";
connectAttr "tongue_02_ctrl_translateZ.o" "Characters_RiggedRN.phl[142]";
connectAttr "tongue_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[143]";
connectAttr "tongue_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[144]";
connectAttr "tongue_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[145]";
connectAttr "tongue_02_ctrl_scaleX.o" "Characters_RiggedRN.phl[146]";
connectAttr "tongue_02_ctrl_scaleY.o" "Characters_RiggedRN.phl[147]";
connectAttr "tongue_02_ctrl_scaleZ.o" "Characters_RiggedRN.phl[148]";
connectAttr "Characters_RiggedRN.phl[149]" "Cntrls.dsm" -na;
connectAttr "tongue_02_ctrl_visibility.o" "Characters_RiggedRN.phl[150]";
connectAttr "tongue_03_ctrl_translateX.o" "Characters_RiggedRN.phl[151]";
connectAttr "tongue_03_ctrl_translateY.o" "Characters_RiggedRN.phl[152]";
connectAttr "tongue_03_ctrl_translateZ.o" "Characters_RiggedRN.phl[153]";
connectAttr "tongue_03_ctrl_rotateX.o" "Characters_RiggedRN.phl[154]";
connectAttr "tongue_03_ctrl_rotateY.o" "Characters_RiggedRN.phl[155]";
connectAttr "tongue_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[156]";
connectAttr "tongue_03_ctrl_scaleX.o" "Characters_RiggedRN.phl[157]";
connectAttr "tongue_03_ctrl_scaleY.o" "Characters_RiggedRN.phl[158]";
connectAttr "tongue_03_ctrl_scaleZ.o" "Characters_RiggedRN.phl[159]";
connectAttr "Characters_RiggedRN.phl[160]" "Cntrls.dsm" -na;
connectAttr "tongue_03_ctrl_visibility.o" "Characters_RiggedRN.phl[161]";
connectAttr "tongue_04_ctrl_translateX.o" "Characters_RiggedRN.phl[162]";
connectAttr "tongue_04_ctrl_translateY.o" "Characters_RiggedRN.phl[163]";
connectAttr "tongue_04_ctrl_translateZ.o" "Characters_RiggedRN.phl[164]";
connectAttr "tongue_04_ctrl_rotateX.o" "Characters_RiggedRN.phl[165]";
connectAttr "tongue_04_ctrl_rotateY.o" "Characters_RiggedRN.phl[166]";
connectAttr "tongue_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[167]";
connectAttr "tongue_04_ctrl_scaleX.o" "Characters_RiggedRN.phl[168]";
connectAttr "tongue_04_ctrl_scaleY.o" "Characters_RiggedRN.phl[169]";
connectAttr "tongue_04_ctrl_scaleZ.o" "Characters_RiggedRN.phl[170]";
connectAttr "Characters_RiggedRN.phl[171]" "Cntrls.dsm" -na;
connectAttr "tongue_04_ctrl_visibility.o" "Characters_RiggedRN.phl[172]";
connectAttr "tongue_05_ctrl_translateX.o" "Characters_RiggedRN.phl[173]";
connectAttr "tongue_05_ctrl_translateY.o" "Characters_RiggedRN.phl[174]";
connectAttr "tongue_05_ctrl_translateZ.o" "Characters_RiggedRN.phl[175]";
connectAttr "tongue_05_ctrl_rotateX.o" "Characters_RiggedRN.phl[176]";
connectAttr "tongue_05_ctrl_rotateY.o" "Characters_RiggedRN.phl[177]";
connectAttr "tongue_05_ctrl_rotateZ.o" "Characters_RiggedRN.phl[178]";
connectAttr "tongue_05_ctrl_scaleX.o" "Characters_RiggedRN.phl[179]";
connectAttr "tongue_05_ctrl_scaleY.o" "Characters_RiggedRN.phl[180]";
connectAttr "tongue_05_ctrl_scaleZ.o" "Characters_RiggedRN.phl[181]";
connectAttr "Characters_RiggedRN.phl[182]" "Cntrls.dsm" -na;
connectAttr "tongue_05_ctrl_visibility.o" "Characters_RiggedRN.phl[183]";
connectAttr "R_knee_aim_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[184]";
connectAttr "R_knee_aim_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[185]";
connectAttr "R_knee_aim_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[186]";
connectAttr "Characters_RiggedRN.phl[187]" "Cntrls.dsm" -na;
connectAttr "R_knee_aim_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[188]";
connectAttr "R_knee_aim_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[189]";
connectAttr "R_knee_aim_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[190]";
connectAttr "R_knee_aim_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[191]";
connectAttr "R_knee_aim_ik_ctrl_scaleX.o" "Characters_RiggedRN.phl[192]";
connectAttr "R_knee_aim_ik_ctrl_scaleY.o" "Characters_RiggedRN.phl[193]";
connectAttr "R_knee_aim_ik_ctrl_scaleZ.o" "Characters_RiggedRN.phl[194]";
connectAttr "L_knee_aim_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[195]";
connectAttr "L_knee_aim_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[196]";
connectAttr "L_knee_aim_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[197]";
connectAttr "Characters_RiggedRN.phl[198]" "Cntrls.dsm" -na;
connectAttr "L_knee_aim_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[199]";
connectAttr "L_knee_aim_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[200]";
connectAttr "L_knee_aim_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[201]";
connectAttr "L_knee_aim_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[202]";
connectAttr "L_knee_aim_ik_ctrl_scaleX.o" "Characters_RiggedRN.phl[203]";
connectAttr "L_knee_aim_ik_ctrl_scaleY.o" "Characters_RiggedRN.phl[204]";
connectAttr "L_knee_aim_ik_ctrl_scaleZ.o" "Characters_RiggedRN.phl[205]";
connectAttr "R_foot_ik_ctrl_Heel_Rise.o" "Characters_RiggedRN.phl[206]";
connectAttr "R_foot_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[207]";
connectAttr "R_foot_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[208]";
connectAttr "R_foot_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[209]";
connectAttr "R_foot_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[210]";
connectAttr "R_foot_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[211]";
connectAttr "R_foot_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[212]";
connectAttr "R_foot_ik_ctrl_Toe_Roll.o" "Characters_RiggedRN.phl[213]";
connectAttr "R_foot_ik_ctrl_Foot_Bank.o" "Characters_RiggedRN.phl[214]";
connectAttr "Characters_RiggedRN.phl[215]" "Cntrls.dsm" -na;
connectAttr "R_foot_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[216]";
connectAttr "R_foot_ik_ctrl_divider00.o" "Characters_RiggedRN.phl[217]";
connectAttr "R_ball_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[218]";
connectAttr "R_ball_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[219]";
connectAttr "R_ball_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[220]";
connectAttr "Characters_RiggedRN.phl[221]" "Cntrls.dsm" -na;
connectAttr "R_ball_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[222]";
connectAttr "L_foot_ik_ctrl_Heel_Rise.o" "Characters_RiggedRN.phl[223]";
connectAttr "L_foot_ik_ctrl_translateX.o" "Characters_RiggedRN.phl[224]";
connectAttr "L_foot_ik_ctrl_translateY.o" "Characters_RiggedRN.phl[225]";
connectAttr "L_foot_ik_ctrl_translateZ.o" "Characters_RiggedRN.phl[226]";
connectAttr "L_foot_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[227]";
connectAttr "L_foot_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[228]";
connectAttr "L_foot_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[229]";
connectAttr "L_foot_ik_ctrl_Toe_Roll.o" "Characters_RiggedRN.phl[230]";
connectAttr "L_foot_ik_ctrl_Foot_Bank.o" "Characters_RiggedRN.phl[231]";
connectAttr "Characters_RiggedRN.phl[232]" "Cntrls.dsm" -na;
connectAttr "L_foot_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[233]";
connectAttr "L_foot_ik_ctrl_divider00.o" "Characters_RiggedRN.phl[234]";
connectAttr "L_ball_ik_ctrl_rotateX.o" "Characters_RiggedRN.phl[235]";
connectAttr "L_ball_ik_ctrl_rotateY.o" "Characters_RiggedRN.phl[236]";
connectAttr "L_ball_ik_ctrl_rotateZ.o" "Characters_RiggedRN.phl[237]";
connectAttr "Characters_RiggedRN.phl[238]" "Cntrls.dsm" -na;
connectAttr "L_ball_ik_ctrl_visibility.o" "Characters_RiggedRN.phl[239]";
connectAttr "L_pinky_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[240]";
connectAttr "L_pinky_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[241]";
connectAttr "L_pinky_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[242]";
connectAttr "Characters_RiggedRN.phl[243]" "Cntrls.dsm" -na;
connectAttr "L_pinky_01_ctrl_visibility.o" "Characters_RiggedRN.phl[244]";
connectAttr "L_pinky_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[245]";
connectAttr "L_pinky_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[246]";
connectAttr "L_pinky_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[247]";
connectAttr "Characters_RiggedRN.phl[248]" "Cntrls.dsm" -na;
connectAttr "L_pinky_02_ctrl_visibility.o" "Characters_RiggedRN.phl[249]";
connectAttr "L_pinky_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[250]";
connectAttr "Characters_RiggedRN.phl[251]" "Cntrls.dsm" -na;
connectAttr "L_pinky_03_ctrl_visibility.o" "Characters_RiggedRN.phl[252]";
connectAttr "L_pinky_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[253]";
connectAttr "Characters_RiggedRN.phl[254]" "Cntrls.dsm" -na;
connectAttr "L_pinky_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[255]";
connectAttr "L_ring_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[256]";
connectAttr "L_ring_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[257]";
connectAttr "L_ring_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[258]";
connectAttr "Characters_RiggedRN.phl[259]" "Cntrls.dsm" -na;
connectAttr "L_ring_01_ctrl_visibility.o" "Characters_RiggedRN.phl[260]";
connectAttr "L_ring_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[261]";
connectAttr "L_ring_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[262]";
connectAttr "L_ring_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[263]";
connectAttr "Characters_RiggedRN.phl[264]" "Cntrls.dsm" -na;
connectAttr "L_ring_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[265]";
connectAttr "L_ring_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[266]";
connectAttr "Characters_RiggedRN.phl[267]" "Cntrls.dsm" -na;
connectAttr "L_ring_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[268]";
connectAttr "L_ring_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[269]";
connectAttr "Characters_RiggedRN.phl[270]" "Cntrls.dsm" -na;
connectAttr "L_ring_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[271]";
connectAttr "L_index_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[272]";
connectAttr "L_index_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[273]";
connectAttr "L_index_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[274]";
connectAttr "Characters_RiggedRN.phl[275]" "Cntrls.dsm" -na;
connectAttr "L_index_01_ctrl_visibility.o" "Characters_RiggedRN.phl[276]";
connectAttr "L_index_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[277]";
connectAttr "L_index_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[278]";
connectAttr "L_index_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[279]";
connectAttr "Characters_RiggedRN.phl[280]" "Cntrls.dsm" -na;
connectAttr "L_index_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[281]";
connectAttr "L_index_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[282]";
connectAttr "Characters_RiggedRN.phl[283]" "Cntrls.dsm" -na;
connectAttr "L_index_03_ctrl_visibility.o" "Characters_RiggedRN.phl[284]";
connectAttr "L_index_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[285]";
connectAttr "Characters_RiggedRN.phl[286]" "Cntrls.dsm" -na;
connectAttr "L_index_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[287]";
connectAttr "L_middle_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[288]";
connectAttr "L_middle_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[289]";
connectAttr "L_middle_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[290]";
connectAttr "Characters_RiggedRN.phl[291]" "Cntrls.dsm" -na;
connectAttr "L_middle_01_ctrl_visibility.o" "Characters_RiggedRN.phl[292]";
connectAttr "L_middle_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[293]";
connectAttr "L_middle_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[294]";
connectAttr "L_middle_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[295]";
connectAttr "Characters_RiggedRN.phl[296]" "Cntrls.dsm" -na;
connectAttr "L_middle_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[297]";
connectAttr "L_middle_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[298]";
connectAttr "Characters_RiggedRN.phl[299]" "Cntrls.dsm" -na;
connectAttr "L_middle_03_ctrl_visibility.o" "Characters_RiggedRN.phl[300]";
connectAttr "L_middle_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[301]";
connectAttr "Characters_RiggedRN.phl[302]" "Cntrls.dsm" -na;
connectAttr "L_middle_04_ctrl_visibility.o" "Characters_RiggedRN.phl[303]";
connectAttr "L_thumb_01_ctrl_rotateX.o" "Characters_RiggedRN.phl[304]";
connectAttr "L_thumb_01_ctrl_rotateY.o" "Characters_RiggedRN.phl[305]";
connectAttr "L_thumb_01_ctrl_rotateZ.o" "Characters_RiggedRN.phl[306]";
connectAttr "Characters_RiggedRN.phl[307]" "Cntrls.dsm" -na;
connectAttr "L_thumb_01_ctrl_visibility.o" "Characters_RiggedRN.phl[308]";
connectAttr "L_thumb_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[309]";
connectAttr "L_thumb_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[310]";
connectAttr "L_thumb_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[311]";
connectAttr "Characters_RiggedRN.phl[312]" "Cntrls.dsm" -na;
connectAttr "L_thumb_02_ctrl_visibility.o" "Characters_RiggedRN.phl[313]";
connectAttr "L_thumb_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[314]";
connectAttr "Characters_RiggedRN.phl[315]" "Cntrls.dsm" -na;
connectAttr "L_thumb_03_ctrl_visibility.o" "Characters_RiggedRN.phl[316]";
connectAttr "L_thumb_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[317]";
connectAttr "L_thumb_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[318]";
connectAttr "L_thumb_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[319]";
connectAttr "Characters_RiggedRN.phl[320]" "Cntrls.dsm" -na;
connectAttr "L_thumb_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[321]";
connectAttr "L_thumb_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[322]";
connectAttr "L_thumb_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[323]";
connectAttr "L_thumb_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[324]";
connectAttr "Characters_RiggedRN.phl[325]" "Cntrls.dsm" -na;
connectAttr "L_thumb_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[326]";
connectAttr "L_thumb_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[327]";
connectAttr "Characters_RiggedRN.phl[328]" "Cntrls.dsm" -na;
connectAttr "L_thumb_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[329]";
connectAttr "L_index_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[330]";
connectAttr "L_index_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[331]";
connectAttr "L_index_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[332]";
connectAttr "Characters_RiggedRN.phl[333]" "Cntrls.dsm" -na;
connectAttr "L_index_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[334]";
connectAttr "L_index_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[335]";
connectAttr "L_index_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[336]";
connectAttr "L_index_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[337]";
connectAttr "Characters_RiggedRN.phl[338]" "Cntrls.dsm" -na;
connectAttr "L_index_02_ctrl_visibility.o" "Characters_RiggedRN.phl[339]";
connectAttr "L_index_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[340]";
connectAttr "Characters_RiggedRN.phl[341]" "Cntrls.dsm" -na;
connectAttr "L_index_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[342]";
connectAttr "L_index_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[343]";
connectAttr "Characters_RiggedRN.phl[344]" "Cntrls.dsm" -na;
connectAttr "L_index_04_ctrl_visibility.o" "Characters_RiggedRN.phl[345]";
connectAttr "L_middle_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[346]";
connectAttr "L_middle_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[347]";
connectAttr "L_middle_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[348]";
connectAttr "Characters_RiggedRN.phl[349]" "Cntrls.dsm" -na;
connectAttr "L_middle_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[350]";
connectAttr "L_middle_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[351]";
connectAttr "L_middle_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[352]";
connectAttr "L_middle_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[353]";
connectAttr "Characters_RiggedRN.phl[354]" "Cntrls.dsm" -na;
connectAttr "L_middle_02_ctrl_visibility.o" "Characters_RiggedRN.phl[355]";
connectAttr "L_middle_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[356]";
connectAttr "Characters_RiggedRN.phl[357]" "Cntrls.dsm" -na;
connectAttr "L_middle_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[358]";
connectAttr "L_middle_04_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[359]";
connectAttr "Characters_RiggedRN.phl[360]" "Cntrls.dsm" -na;
connectAttr "L_middle_04_ctrl_visibility1.o" "Characters_RiggedRN.phl[361]";
connectAttr "L_ring_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[362]";
connectAttr "L_ring_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[363]";
connectAttr "L_ring_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[364]";
connectAttr "Characters_RiggedRN.phl[365]" "Cntrls.dsm" -na;
connectAttr "L_ring_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[366]";
connectAttr "L_ring_02_ctrl_rotateX.o" "Characters_RiggedRN.phl[367]";
connectAttr "L_ring_02_ctrl_rotateY.o" "Characters_RiggedRN.phl[368]";
connectAttr "L_ring_02_ctrl_rotateZ.o" "Characters_RiggedRN.phl[369]";
connectAttr "Characters_RiggedRN.phl[370]" "Cntrls.dsm" -na;
connectAttr "L_ring_02_ctrl_visibility.o" "Characters_RiggedRN.phl[371]";
connectAttr "L_ring_03_ctrl_rotateZ.o" "Characters_RiggedRN.phl[372]";
connectAttr "Characters_RiggedRN.phl[373]" "Cntrls.dsm" -na;
connectAttr "L_ring_03_ctrl_visibility.o" "Characters_RiggedRN.phl[374]";
connectAttr "L_ring_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[375]";
connectAttr "Characters_RiggedRN.phl[376]" "Cntrls.dsm" -na;
connectAttr "L_ring_04_ctrl_visibility.o" "Characters_RiggedRN.phl[377]";
connectAttr "L_pinky_01_ctrl1_rotateX.o" "Characters_RiggedRN.phl[378]";
connectAttr "L_pinky_01_ctrl1_rotateY.o" "Characters_RiggedRN.phl[379]";
connectAttr "L_pinky_01_ctrl1_rotateZ.o" "Characters_RiggedRN.phl[380]";
connectAttr "Characters_RiggedRN.phl[381]" "Cntrls.dsm" -na;
connectAttr "L_pinky_01_ctrl1_visibility.o" "Characters_RiggedRN.phl[382]";
connectAttr "L_pinky_02_ctrl_rotateX1.o" "Characters_RiggedRN.phl[383]";
connectAttr "L_pinky_02_ctrl_rotateY1.o" "Characters_RiggedRN.phl[384]";
connectAttr "L_pinky_02_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[385]";
connectAttr "Characters_RiggedRN.phl[386]" "Cntrls.dsm" -na;
connectAttr "L_pinky_02_ctrl_visibility1.o" "Characters_RiggedRN.phl[387]";
connectAttr "L_pinky_03_ctrl_rotateZ1.o" "Characters_RiggedRN.phl[388]";
connectAttr "Characters_RiggedRN.phl[389]" "Cntrls.dsm" -na;
connectAttr "L_pinky_03_ctrl_visibility1.o" "Characters_RiggedRN.phl[390]";
connectAttr "L_pinky_04_ctrl_rotateZ.o" "Characters_RiggedRN.phl[391]";
connectAttr "Characters_RiggedRN.phl[392]" "Cntrls.dsm" -na;
connectAttr "L_pinky_04_ctrl_visibility.o" "Characters_RiggedRN.phl[393]";
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
// End of Liggende_Skadet_Pose_02.ma
