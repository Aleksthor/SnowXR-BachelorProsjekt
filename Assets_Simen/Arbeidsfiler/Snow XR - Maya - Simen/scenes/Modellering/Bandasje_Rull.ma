//Maya ASCII 2024 scene
//Name: Bandasje_Rull.ma
//Last modified: Wed, May 08, 2024 12:12:57 AM
//Codeset: 1252
requires maya "2024";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19045)";
fileInfo "UUID" "5A4F6888-4E18-0100-FAE9-EC9E0F7D5291";
createNode transform -s -n "persp";
	rename -uid "E9BC2B2C-4C2A-92B1-08EC-C59BBAD7C992";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3057416212659088 5.9436959014985273 7.6311872506218794 ;
	setAttr ".r" -type "double3" -30.338352729948532 1066.9999999995305 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "26C7E05D-4F61-CC6F-D898-79B1505E5A18";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.5740722318602565;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 0 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "61AAAB3C-4720-54D5-71F5-8E85C13E01EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DCB930B6-45CC-E120-C426-33BFA94868ED";
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
	rename -uid "25D3D438-4089-EFA8-E162-EC99B2D75CE8";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FA92BEFD-45C3-3735-DCF1-7A8B180EE378";
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
	rename -uid "75CB09DD-4A01-2995-60AC-6CBD01F0F6F4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "CCADD157-4CC9-5396-5249-FEA93644324C";
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
createNode transform -n "pCylinder1";
	rename -uid "9CB465AB-4645-7E9C-FA7A-AEB084E94CBE";
	setAttr ".t" -type "double3" 0 1.1510618207627747 0 ;
	setAttr ".s" -type "double3" 0.85394227283937674 1.154835974272302 0.85394227283937674 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "8B6C52F8-47B8-27B3-4282-799FC3BB1697";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.45838320255279541 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 72 ".pt";
	setAttr ".pt[22]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[51]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[80]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[109]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[138]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[167]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[196]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[225]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[254]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[283]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[312]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[341]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[370]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[399]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[428]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[457]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[486]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[515]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[544]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[573]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[602]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[631]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[660]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[689]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[718]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[747]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[776]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[805]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[834]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[863]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[892]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[899]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[900]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[945]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[946]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1003]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1004]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1061]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1062]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1119]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1120]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1177]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1178]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1235]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1236]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1293]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1294]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1351]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1352]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1409]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1410]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1467]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1468]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1525]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1526]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1583]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1584]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1641]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1642]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1699]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1700]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1715]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".pt[1716]" -type "float3" -1.8626451e-09 0 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "15186390-4EB2-D758-5948-6195C7504893";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "1A6DFFD9-4A7E-0CB1-C476-96B37C0E885B";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "47A1655D-4172-A3A6-B4E8-E6BF28D072F7";
createNode displayLayerManager -n "layerManager";
	rename -uid "EC40E900-4768-59B1-2151-5EB91F9AB3AB";
createNode displayLayer -n "defaultLayer";
	rename -uid "818DA3C4-4864-19D8-D43A-FFA8D367382C";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BAA10575-41D1-EB1A-570B-3091D76AB811";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "ADA00885-45F9-C625-1F0B-DDB0C23E1092";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "583C60F0-459E-6292-BCE4-F795979FA503";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "C7FB50EF-41E4-31E0-AEA2-FF96BF01FE09";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "0B528795-442B-72DE-2152-39931A23B03C";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "F0F63DE3-49C2-E0FF-8D28-B987BCD73035";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "1701D0CB-48DC-8AB1-D889-5FA221B24930";
	setAttr ".sa" 30;
	setAttr ".sc" 30;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "06419085-49D2-D41E-E74F-5FB112B2C672";
	setAttr ".ics" -type "componentList" 15 "f[306]" "f[930:959]" "f[990:1019]" "f[1050:1079]" "f[1110:1139]" "f[1170:1199]" "f[1230:1259]" "f[1290:1319]" "f[1350:1379]" "f[1410:1439]" "f[1470:1499]" "f[1530:1559]" "f[1590:1619]" "f[1650:1679]" "f[1710:1739]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.3841858e-07 1 -2.682209e-07 ;
	setAttr ".rs" 35237;
	setAttr ".off" 0.0099999997764825821;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" -0.004999999888241291;
	setAttr ".cbn" -type "double3" -0.9666675329208374 0 -0.96137231588363647 ;
	setAttr ".cbx" -type "double3" 0.9666670560836792 2 0.9613717794418335 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "3AF09444-4A56-5727-1DC5-F6A64A8B49FD";
	setAttr ".ics" -type "componentList" 1 "f[891:897]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 1 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.43680954 1 0.60121691 ;
	setAttr ".rs" 40205;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.0099999997764825821;
	setAttr ".cbn" -type "double3" -0.10452855378389359 0 0.20791170001029968 ;
	setAttr ".cbx" -type "double3" 0.97814762592315674 2 0.99452215433120728 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "F4CAC17F-4E25-6CCB-1A2F-7985A96B214A";
	setAttr ".ics" -type "componentList" 1 "e[5348]";
	setAttr ".cv" yes;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "08B55B3A-4001-0F15-7A8A-06B2B9BF1DCB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2692]";
	setAttr ".ix" -type "matrix" 0.90142387002020385 0 0 0 0 1.0195067343740285 0 0 0 0 0.90142387002020385 0
		 0 1 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak1";
	rename -uid "8410433E-4EC5-61DB-2747-608E4487B705";
	setAttr ".uopa" yes;
	setAttr -s 1165 ".tk";
	setAttr ".tk[620]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[621]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[622]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[623]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[624]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[625]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[626]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[627]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[628]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[629]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[630]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[631]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[632]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[633]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[634]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[635]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[636]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[637]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[638]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[639]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[640]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[641]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[642]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[643]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[644]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[645]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[646]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[647]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[648]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[649]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[650]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[651]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[652]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[653]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[654]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[655]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[656]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[657]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[658]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[659]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[660]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[661]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[662]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[663]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[664]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[665]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[666]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[667]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[668]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[669]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[670]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[671]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[672]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[673]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[674]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[675]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[676]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[677]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[678]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[679]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[680]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[681]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[682]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[683]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[684]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[685]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[686]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[687]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[688]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[689]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[690]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[691]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[692]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[693]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[694]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[695]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[696]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[697]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[698]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[699]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[700]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[701]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[702]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[703]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[704]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[705]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[706]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[707]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[708]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[709]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[710]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[711]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[712]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[713]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[714]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[715]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[716]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[717]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[718]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[719]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[720]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[721]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[722]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[723]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[724]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[725]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[726]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[727]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[728]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[729]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[730]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[731]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[732]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[733]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[734]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[735]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[736]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[737]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[738]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[739]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[740]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[741]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[742]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[743]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[744]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[745]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[746]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[747]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[748]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[749]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[750]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[751]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[752]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[753]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[754]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[755]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[756]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[757]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[758]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[759]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[760]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[761]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[762]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[763]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[764]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[765]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[766]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[767]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[768]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[769]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[770]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[771]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[772]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[773]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[774]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[775]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[776]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[777]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[778]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[779]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[780]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[781]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[782]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[783]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[784]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[785]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[786]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[787]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[788]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[789]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[790]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[791]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[792]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[793]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[794]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[795]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[796]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[797]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[798]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[799]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[800]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[801]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[802]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[803]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[804]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[805]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[806]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[807]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[808]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[809]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[810]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[811]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[812]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[813]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[814]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[815]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[816]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[817]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[818]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[819]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[820]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[821]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[822]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[823]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[824]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[825]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[826]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[827]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[828]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[829]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[830]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[831]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[832]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[833]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[834]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[835]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[836]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[837]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[838]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[839]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[840]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[841]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[842]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[843]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[844]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[845]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[846]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[847]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[848]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[849]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[850]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[851]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[852]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[853]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[854]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[855]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[856]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[857]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[858]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[859]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[860]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[861]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[862]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[863]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[864]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[865]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[866]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[867]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[868]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[869]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[870]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[871]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[872]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[873]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[874]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[875]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[876]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[877]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[878]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[879]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[880]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[881]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[882]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[883]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[884]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[885]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[886]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[887]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[888]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[889]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[890]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[891]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[892]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[893]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[894]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[895]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[896]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[897]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[898]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[899]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[900]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[901]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[902]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[903]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[904]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[905]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[906]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[907]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[908]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[909]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[910]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[911]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[912]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[913]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[914]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[915]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[916]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[917]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[918]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[919]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[920]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[921]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[922]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[923]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[924]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[925]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[926]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[927]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[928]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[929]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[930]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[931]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[932]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[933]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[934]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[935]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[936]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[937]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[938]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[939]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[940]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[941]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[942]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[943]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[944]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[945]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[946]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[947]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[948]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[949]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[950]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[951]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[952]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[953]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[954]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[955]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[956]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[957]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[958]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[959]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[960]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[961]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[962]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[963]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[964]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[965]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[966]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[967]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[968]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[969]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[970]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[971]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[972]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[973]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[974]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[975]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[976]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[977]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[978]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[979]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[980]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[981]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[982]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[983]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[984]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[985]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[986]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[987]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[988]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[989]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[990]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[991]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[992]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[993]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[994]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[995]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[996]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[997]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[998]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[999]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1000]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1001]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1002]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1003]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1004]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1005]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1006]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1007]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1008]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1009]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1010]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1011]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1012]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1013]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1014]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1015]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1016]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1017]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1018]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1019]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1020]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1021]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1022]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1023]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1024]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1025]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1026]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1027]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1028]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1029]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1030]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1031]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1032]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1033]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1034]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1035]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1036]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1037]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1038]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1039]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1040]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1041]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1042]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1043]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1044]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1045]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1046]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1047]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1048]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1049]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1050]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1051]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1052]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1053]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1054]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1055]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1056]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1057]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1058]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1059]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1060]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1061]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1062]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1063]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1064]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1065]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1066]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1067]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1068]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1069]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1070]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1071]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1072]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1073]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1074]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1075]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1076]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1077]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1078]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1079]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1080]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1081]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1082]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1083]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1084]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1085]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1086]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1087]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1088]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1089]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1090]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1091]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1092]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1093]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1094]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1095]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1096]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1097]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1098]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1099]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1100]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1101]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1102]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1103]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1104]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1105]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1106]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1107]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1108]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1109]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1110]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1111]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1112]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1113]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1114]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1115]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1116]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1117]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1118]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1119]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1120]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1121]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1122]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1123]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1124]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1125]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1126]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1127]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1128]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1129]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1130]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1131]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1132]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1133]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1134]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1135]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1136]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1137]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1138]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1139]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1140]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1141]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1142]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1143]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1144]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1145]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1146]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1147]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1148]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1149]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1150]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1151]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1152]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1153]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1154]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1155]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1156]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1157]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1158]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1159]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1160]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1161]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1162]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1163]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1164]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1165]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1166]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1167]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1168]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1169]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1170]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1171]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1172]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1173]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1174]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1175]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1176]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1177]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1178]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1179]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1180]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1181]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1182]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1183]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1184]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1185]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1186]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1187]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1188]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1189]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1190]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1191]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1192]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1193]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1194]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1195]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1196]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1197]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1198]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1199]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[1201]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[1202]" -type "float3" -5.5879354e-09 0 5.5879354e-09 ;
	setAttr ".tk[1203]" -type "float3" -6.519258e-09 0 0 ;
	setAttr ".tk[1204]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".tk[1205]" -type "float3" -2.7939677e-09 0 5.5879354e-09 ;
	setAttr ".tk[1206]" -type "float3" -9.3132257e-10 0 4.6566129e-09 ;
	setAttr ".tk[1207]" -type "float3" 0 0 1.4901161e-08 ;
	setAttr ".tk[1208]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[1209]" -type "float3" 2.220446e-16 0 9.3132257e-09 ;
	setAttr ".tk[1210]" -type "float3" 2.220446e-16 0 1.8626451e-09 ;
	setAttr ".tk[1211]" -type "float3" 3.7252903e-09 0 1.1175871e-08 ;
	setAttr ".tk[1212]" -type "float3" 0 0 -8.3819032e-09 ;
	setAttr ".tk[1213]" -type "float3" 1.1175871e-08 0 3.7252903e-09 ;
	setAttr ".tk[1214]" -type "float3" 0 0 -6.519258e-09 ;
	setAttr ".tk[1215]" -type "float3" 3.7252903e-09 0 6.519258e-09 ;
	setAttr ".tk[1216]" -type "float3" -6.519258e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1217]" -type "float3" 9.3132257e-09 0 1.3969839e-09 ;
	setAttr ".tk[1218]" -type "float3" -2.7939677e-09 0 4.6566129e-09 ;
	setAttr ".tk[1219]" -type "float3" 2.4214387e-08 0 -1.110223e-15 ;
	setAttr ".tk[1220]" -type "float3" 5.5879354e-09 0 -1.110223e-15 ;
	setAttr ".tk[1221]" -type "float3" 9.3132257e-09 0 0 ;
	setAttr ".tk[1222]" -type "float3" -2.7939677e-09 0 0 ;
	setAttr ".tk[1223]" -type "float3" 2.0489097e-08 0 -3.7252903e-09 ;
	setAttr ".tk[1224]" -type "float3" -6.519258e-09 0 3.7252903e-09 ;
	setAttr ".tk[1225]" -type "float3" 6.519258e-09 0 -5.5879354e-09 ;
	setAttr ".tk[1226]" -type "float3" -2.7939677e-09 0 -1.2107193e-08 ;
	setAttr ".tk[1227]" -type "float3" -4.6566129e-10 0 -1.4901161e-08 ;
	setAttr ".tk[1228]" -type "float3" 2.7939677e-09 0 3.7252903e-09 ;
	setAttr ".tk[1229]" -type "float3" 3.3306691e-16 0 -9.3132257e-09 ;
	setAttr ".tk[1230]" -type "float3" -7.7715612e-16 0 -5.5879354e-09 ;
	setAttr ".tk[1231]" -type "float3" 4.6566129e-10 0 -1.1175871e-08 ;
	setAttr ".tk[1232]" -type "float3" 0 0 8.3819032e-09 ;
	setAttr ".tk[1233]" -type "float3" -1.1175871e-08 0 -4.6566129e-09 ;
	setAttr ".tk[1234]" -type "float3" 0 0 -4.6566129e-09 ;
	setAttr ".tk[1235]" -type "float3" -3.7252903e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1236]" -type "float3" 3.7252903e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1237]" -type "float3" -9.3132257e-09 0 2.3283064e-09 ;
	setAttr ".tk[1238]" -type "float3" 2.7939677e-09 0 3.7252903e-09 ;
	setAttr ".tk[1239]" -type "float3" -2.4214387e-08 0 -1.110223e-15 ;
	setAttr ".tk[1240]" -type "float3" -5.5879354e-09 0 -1.110223e-15 ;
	setAttr ".tk[1241]" -type "float3" 6.519258e-09 0 0 ;
	setAttr ".tk[1242]" -type "float3" -3.7252903e-09 0 1.7695129e-08 ;
	setAttr ".tk[1243]" -type "float3" 4.6566129e-09 0 4.6566129e-09 ;
	setAttr ".tk[1244]" -type "float3" -2.7939677e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1245]" -type "float3" -8.3819032e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1246]" -type "float3" 0 0 -1.8626451e-09 ;
	setAttr ".tk[1247]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[1248]" -type "float3" -9.3132257e-10 0 0 ;
	setAttr ".tk[1249]" -type "float3" 2.220446e-16 0 -5.5879354e-09 ;
	setAttr ".tk[1250]" -type "float3" 2.220446e-16 0 9.3132257e-10 ;
	setAttr ".tk[1251]" -type "float3" -4.1909516e-09 0 9.3132257e-10 ;
	setAttr ".tk[1252]" -type "float3" 0 0 8.3819032e-09 ;
	setAttr ".tk[1253]" -type "float3" -7.4505806e-09 0 -9.3132257e-09 ;
	setAttr ".tk[1254]" -type "float3" 2.7939677e-09 0 -3.7252903e-09 ;
	setAttr ".tk[1255]" -type "float3" -9.3132257e-09 0 -5.5879354e-09 ;
	setAttr ".tk[1256]" -type "float3" -3.7252903e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1257]" -type "float3" 6.519258e-09 0 4.6566129e-10 ;
	setAttr ".tk[1258]" -type "float3" 8.3819032e-09 0 1.3969839e-09 ;
	setAttr ".tk[1259]" -type "float3" -1.2107193e-08 0 -1.110223e-15 ;
	setAttr ".tk[1260]" -type "float3" -1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1261]" -type "float3" 6.519258e-09 0 4.6566129e-10 ;
	setAttr ".tk[1262]" -type "float3" 8.3819032e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1263]" -type "float3" -9.3132257e-09 0 -5.5879354e-09 ;
	setAttr ".tk[1264]" -type "float3" -6.519258e-09 0 -7.4505806e-09 ;
	setAttr ".tk[1265]" -type "float3" -5.5879354e-09 0 5.5879354e-09 ;
	setAttr ".tk[1266]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".tk[1267]" -type "float3" 2.3283064e-09 0 0 ;
	setAttr ".tk[1268]" -type "float3" 1.8626451e-09 0 -4.6566129e-09 ;
	setAttr ".tk[1269]" -type "float3" 1.3322676e-15 0 2.7939677e-09 ;
	setAttr ".tk[1270]" -type "float3" -3.3306691e-16 0 -9.3132257e-10 ;
	setAttr ".tk[1271]" -type "float3" 2.3283064e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1272]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[1273]" -type "float3" 7.4505806e-09 0 2.7939677e-09 ;
	setAttr ".tk[1274]" -type "float3" -4.6566129e-09 0 1.8626451e-09 ;
	setAttr ".tk[1275]" -type "float3" 9.3132257e-09 0 -1.0244548e-08 ;
	setAttr ".tk[1276]" -type "float3" 3.7252903e-09 0 -7.4505806e-09 ;
	setAttr ".tk[1277]" -type "float3" -6.519258e-09 0 2.7939677e-09 ;
	setAttr ".tk[1278]" -type "float3" -8.3819032e-09 0 9.3132257e-10 ;
	setAttr ".tk[1279]" -type "float3" 1.2107193e-08 0 -1.110223e-15 ;
	setAttr ".tk[1280]" -type "float3" -6.519258e-09 0 -1.110223e-15 ;
	setAttr ".tk[1281]" -type "float3" 8.3819032e-09 0 3.7252903e-09 ;
	setAttr ".tk[1282]" -type "float3" 2.7939677e-09 0 -8.3819032e-09 ;
	setAttr ".tk[1283]" -type "float3" -9.3132257e-09 0 9.3132257e-09 ;
	setAttr ".tk[1284]" -type "float3" 5.5879354e-09 0 3.259629e-09 ;
	setAttr ".tk[1285]" -type "float3" 9.3132257e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1286]" -type "float3" -4.6566129e-09 0 1.0244548e-08 ;
	setAttr ".tk[1287]" -type "float3" -9.3132257e-10 0 -2.7939677e-09 ;
	setAttr ".tk[1288]" -type "float3" -9.3132257e-10 0 4.6566129e-09 ;
	setAttr ".tk[1289]" -type "float3" 2.220446e-16 0 -4.6566129e-09 ;
	setAttr ".tk[1290]" -type "float3" 2.220446e-16 0 -7.4505806e-09 ;
	setAttr ".tk[1291]" -type "float3" -4.1909516e-09 0 -4.6566129e-09 ;
	setAttr ".tk[1292]" -type "float3" 0 0 5.5879354e-09 ;
	setAttr ".tk[1293]" -type "float3" -9.3132257e-10 0 -3.7252903e-09 ;
	setAttr ".tk[1294]" -type "float3" 7.4505806e-09 0 -5.5879354e-09 ;
	setAttr ".tk[1295]" -type "float3" -1.8626451e-09 0 -4.6566129e-09 ;
	setAttr ".tk[1296]" -type "float3" -5.5879354e-09 0 6.519258e-09 ;
	setAttr ".tk[1297]" -type "float3" -4.6566129e-09 0 9.3132257e-10 ;
	setAttr ".tk[1298]" -type "float3" 4.6566129e-09 0 9.3132257e-10 ;
	setAttr ".tk[1299]" -type "float3" -1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1300]" -type "float3" 9.3132257e-10 0 -1.110223e-15 ;
	setAttr ".tk[1301]" -type "float3" -4.6566129e-09 0 0 ;
	setAttr ".tk[1302]" -type "float3" 4.6566129e-09 0 9.3132257e-10 ;
	setAttr ".tk[1303]" -type "float3" -4.6566129e-09 0 9.3132257e-09 ;
	setAttr ".tk[1304]" -type "float3" -5.5879354e-09 0 -6.519258e-09 ;
	setAttr ".tk[1305]" -type "float3" -4.6566129e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1306]" -type "float3" 6.519258e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1307]" -type "float3" 1.8626451e-09 0 2.7939677e-09 ;
	setAttr ".tk[1308]" -type "float3" 1.3969839e-09 0 0 ;
	setAttr ".tk[1309]" -type "float3" -5.5511151e-16 0 4.6566129e-09 ;
	setAttr ".tk[1310]" -type "float3" 5.5511151e-16 0 -7.4505806e-09 ;
	setAttr ".tk[1311]" -type "float3" 3.259629e-09 0 2.7939677e-09 ;
	setAttr ".tk[1312]" -type "float3" 2.7939677e-09 0 0 ;
	setAttr ".tk[1313]" -type "float3" 9.3132257e-09 0 2.7939677e-09 ;
	setAttr ".tk[1314]" -type "float3" -9.3132257e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1315]" -type "float3" 1.8626451e-09 0 1.0244548e-08 ;
	setAttr ".tk[1316]" -type "float3" 5.5879354e-09 0 -5.5879354e-09 ;
	setAttr ".tk[1317]" -type "float3" 4.6566129e-09 0 9.3132257e-10 ;
	setAttr ".tk[1318]" -type "float3" -5.5879354e-09 0 9.3132257e-10 ;
	setAttr ".tk[1319]" -type "float3" 3.7252903e-09 0 -1.110223e-15 ;
	setAttr ".tk[1320]" -type "float3" 7.4505806e-09 0 -1.110223e-15 ;
	setAttr ".tk[1321]" -type "float3" -9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".tk[1322]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[1323]" -type "float3" 1.0244548e-08 0 -3.259629e-09 ;
	setAttr ".tk[1324]" -type "float3" 2.7939677e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1325]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[1326]" -type "float3" -2.7939677e-09 0 -1.0244548e-08 ;
	setAttr ".tk[1327]" -type "float3" 2.3283064e-09 0 9.3132257e-10 ;
	setAttr ".tk[1328]" -type "float3" 1.1641532e-09 0 0 ;
	setAttr ".tk[1329]" -type "float3" 2.220446e-16 0 3.7252903e-09 ;
	setAttr ".tk[1330]" -type "float3" 2.220446e-16 0 -1.8626451e-09 ;
	setAttr ".tk[1331]" -type "float3" 0 0 9.3132257e-09 ;
	setAttr ".tk[1332]" -type "float3" 1.6298145e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1333]" -type "float3" 0 0 -1.3969839e-08 ;
	setAttr ".tk[1334]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[1335]" -type "float3" -5.5879354e-09 0 3.259629e-09 ;
	setAttr ".tk[1336]" -type "float3" 0 0 -2.3283064e-09 ;
	setAttr ".tk[1337]" -type "float3" 9.3132257e-09 0 4.6566129e-10 ;
	setAttr ".tk[1338]" -type "float3" -9.3132257e-09 0 0 ;
	setAttr ".tk[1339]" -type "float3" 4.6566129e-09 0 -1.110223e-15 ;
	setAttr ".tk[1340]" -type "float3" 1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1341]" -type "float3" 9.3132257e-09 0 4.6566129e-10 ;
	setAttr ".tk[1342]" -type "float3" -9.3132257e-09 0 -2.3283064e-10 ;
	setAttr ".tk[1343]" -type "float3" -5.5879354e-09 0 -1.3969839e-09 ;
	setAttr ".tk[1344]" -type "float3" 9.3132257e-10 0 1.8626451e-09 ;
	setAttr ".tk[1345]" -type "float3" 4.6566129e-10 0 1.1175871e-08 ;
	setAttr ".tk[1346]" -type "float3" -2.3283064e-09 0 6.519258e-09 ;
	setAttr ".tk[1347]" -type "float3" 1.3969839e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1348]" -type "float3" 1.1641532e-09 0 6.519258e-09 ;
	setAttr ".tk[1349]" -type "float3" 0 0 -2.7939677e-09 ;
	setAttr ".tk[1350]" -type "float3" -2.220446e-16 0 9.3132257e-10 ;
	setAttr ".tk[1351]" -type "float3" 3.7252903e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1352]" -type "float3" 1.6298145e-09 0 0 ;
	setAttr ".tk[1353]" -type "float3" 3.259629e-09 0 5.5879354e-09 ;
	setAttr ".tk[1354]" -type "float3" 2.7939677e-09 0 6.519258e-09 ;
	setAttr ".tk[1355]" -type "float3" 7.4505806e-09 0 1.8626451e-09 ;
	setAttr ".tk[1356]" -type "float3" 1.0244548e-08 0 1.8626451e-09 ;
	setAttr ".tk[1357]" -type "float3" -9.3132257e-09 0 2.7939677e-09 ;
	setAttr ".tk[1358]" -type "float3" 1.8626451e-09 0 1.1641532e-09 ;
	setAttr ".tk[1359]" -type "float3" -3.7252903e-09 0 -1.110223e-15 ;
	setAttr ".tk[1360]" -type "float3" 1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1361]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".tk[1362]" -type "float3" 1.1175871e-08 0 1.8626451e-09 ;
	setAttr ".tk[1363]" -type "float3" -9.3132257e-10 0 -5.1222742e-09 ;
	setAttr ".tk[1364]" -type "float3" 1.0244548e-08 0 6.9849193e-10 ;
	setAttr ".tk[1365]" -type "float3" -2.3283064e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1366]" -type "float3" 1.3969839e-09 0 -7.4505806e-09 ;
	setAttr ".tk[1367]" -type "float3" 1.6298145e-09 0 5.5879354e-09 ;
	setAttr ".tk[1368]" -type "float3" 1.6298145e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1369]" -type "float3" 2.220446e-16 0 6.519258e-09 ;
	setAttr ".tk[1370]" -type "float3" 2.220446e-16 0 -6.519258e-09 ;
	setAttr ".tk[1371]" -type "float3" 1.6298145e-09 0 4.6566129e-09 ;
	setAttr ".tk[1372]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".tk[1373]" -type "float3" 1.3969839e-09 0 -4.6566129e-09 ;
	setAttr ".tk[1374]" -type "float3" -2.3283064e-09 0 0 ;
	setAttr ".tk[1375]" -type "float3" -4.6566129e-09 0 1.3969839e-09 ;
	setAttr ".tk[1376]" -type "float3" 9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".tk[1377]" -type "float3" 3.7252903e-09 0 1.3969839e-09 ;
	setAttr ".tk[1378]" -type "float3" -2.7939677e-09 0 1.1641532e-09 ;
	setAttr ".tk[1379]" -type "float3" 3.7252903e-09 0 -1.110223e-15 ;
	setAttr ".tk[1380]" -type "float3" -4.6566129e-09 0 -1.110223e-15 ;
	setAttr ".tk[1381]" -type "float3" 3.7252903e-09 0 1.6298145e-09 ;
	setAttr ".tk[1382]" -type "float3" -2.7939677e-09 0 1.6298145e-09 ;
	setAttr ".tk[1383]" -type "float3" -3.7252903e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1384]" -type "float3" 0 0 2.3283064e-09 ;
	setAttr ".tk[1385]" -type "float3" 2.7939677e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1386]" -type "float3" -1.8626451e-09 0 2.7939677e-09 ;
	setAttr ".tk[1387]" -type "float3" 1.1641532e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1388]" -type "float3" 6.9849193e-10 0 1.3038516e-08 ;
	setAttr ".tk[1389]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".tk[1390]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".tk[1391]" -type "float3" 1.3969839e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1392]" -type "float3" 1.6298145e-09 0 4.6566129e-09 ;
	setAttr ".tk[1393]" -type "float3" -1.8626451e-09 0 -1.8626451e-09 ;
	setAttr ".tk[1394]" -type "float3" 4.6566129e-10 0 2.7939677e-09 ;
	setAttr ".tk[1395]" -type "float3" 3.7252903e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1396]" -type "float3" 7.4505806e-09 0 3.7252903e-09 ;
	setAttr ".tk[1397]" -type "float3" -4.6566129e-09 0 1.1641532e-09 ;
	setAttr ".tk[1398]" -type "float3" 9.3132257e-10 0 9.3132257e-10 ;
	setAttr ".tk[1399]" -type "float3" -4.6566129e-09 0 -1.110223e-15 ;
	setAttr ".tk[1400]" -type "float3" 6.519258e-09 0 -1.110223e-15 ;
	setAttr ".tk[1401]" -type "float3" -5.5879354e-09 0 9.3132257e-10 ;
	setAttr ".tk[1402]" -type "float3" 4.6566129e-09 0 9.3132257e-10 ;
	setAttr ".tk[1403]" -type "float3" 0 0 2.3283064e-09 ;
	setAttr ".tk[1404]" -type "float3" 7.4505806e-09 0 6.9849193e-10 ;
	setAttr ".tk[1405]" -type "float3" -3.259629e-09 0 7.4505806e-09 ;
	setAttr ".tk[1406]" -type "float3" 2.3283064e-09 0 1.8626451e-09 ;
	setAttr ".tk[1407]" -type "float3" 1.1641532e-09 0 5.5879354e-09 ;
	setAttr ".tk[1408]" -type "float3" 9.3132257e-10 0 4.6566129e-09 ;
	setAttr ".tk[1409]" -type "float3" 2.220446e-16 0 4.6566129e-09 ;
	setAttr ".tk[1410]" -type "float3" 2.220446e-16 0 1.0244548e-08 ;
	setAttr ".tk[1411]" -type "float3" 9.3132257e-10 0 5.5879354e-09 ;
	setAttr ".tk[1412]" -type "float3" -2.3283064e-10 0 2.7939677e-09 ;
	setAttr ".tk[1413]" -type "float3" 9.3132257e-10 0 3.7252903e-09 ;
	setAttr ".tk[1414]" -type "float3" 2.7939677e-09 0 5.5879354e-09 ;
	setAttr ".tk[1415]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".tk[1416]" -type "float3" -1.8626451e-09 0 9.3132257e-10 ;
	setAttr ".tk[1417]" -type "float3" -1.8626451e-08 0 0 ;
	setAttr ".tk[1418]" -type "float3" 2.7939677e-09 0 6.9849193e-10 ;
	setAttr ".tk[1419]" -type "float3" 1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1420]" -type "float3" 5.5879354e-09 0 -1.110223e-15 ;
	setAttr ".tk[1421]" -type "float3" -1.8626451e-08 0 1.1641532e-09 ;
	setAttr ".tk[1422]" -type "float3" 2.7939677e-09 0 9.3132257e-10 ;
	setAttr ".tk[1423]" -type "float3" 2.7939677e-09 0 -2.3283064e-09 ;
	setAttr ".tk[1424]" -type "float3" 5.5879354e-09 0 2.7939677e-09 ;
	setAttr ".tk[1426]" -type "float3" 1.3969839e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1427]" -type "float3" 9.3132257e-10 0 -1.0244548e-08 ;
	setAttr ".tk[1428]" -type "float3" -2.3283064e-10 0 -6.519258e-09 ;
	setAttr ".tk[1429]" -type "float3" -1.110223e-16 0 -9.3132257e-10 ;
	setAttr ".tk[1430]" -type "float3" 3.3306691e-16 0 0 ;
	setAttr ".tk[1431]" -type "float3" -2.3283064e-10 0 -7.4505806e-09 ;
	setAttr ".tk[1432]" -type "float3" 1.3969839e-09 0 -6.519258e-09 ;
	setAttr ".tk[1433]" -type "float3" -2.7939677e-09 0 0 ;
	setAttr ".tk[1434]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[1435]" -type "float3" -7.4505806e-09 0 1.8626451e-09 ;
	setAttr ".tk[1436]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[1437]" -type "float3" -5.5879354e-09 0 9.3132257e-10 ;
	setAttr ".tk[1438]" -type "float3" -4.6566129e-09 0 4.6566129e-10 ;
	setAttr ".tk[1439]" -type "float3" -4.6566129e-09 0 -1.110223e-15 ;
	setAttr ".tk[1440]" -type "float3" -9.3132257e-09 0 -1.110223e-15 ;
	setAttr ".tk[1441]" -type "float3" 7.4505806e-09 0 4.6566129e-10 ;
	setAttr ".tk[1442]" -type "float3" 9.3132257e-10 0 2.3283064e-09 ;
	setAttr ".tk[1443]" -type "float3" -1.8626451e-09 0 -5.1222742e-09 ;
	setAttr ".tk[1444]" -type "float3" -1.2107193e-08 0 9.3132257e-10 ;
	setAttr ".tk[1445]" -type "float3" 9.3132257e-10 0 4.6566129e-09 ;
	setAttr ".tk[1446]" -type "float3" -4.6566129e-09 0 4.1909516e-09 ;
	setAttr ".tk[1447]" -type "float3" 4.6566129e-10 0 -2.7939677e-09 ;
	setAttr ".tk[1448]" -type "float3" 4.6566129e-10 0 1.0244548e-08 ;
	setAttr ".tk[1449]" -type "float3" 2.220446e-16 0 -5.5879354e-09 ;
	setAttr ".tk[1450]" -type "float3" 2.220446e-16 0 -1.8626451e-09 ;
	setAttr ".tk[1451]" -type "float3" 4.6566129e-10 0 -3.7252903e-09 ;
	setAttr ".tk[1452]" -type "float3" 4.6566129e-10 0 1.8626451e-09 ;
	setAttr ".tk[1453]" -type "float3" 2.3283064e-09 0 4.6566129e-09 ;
	setAttr ".tk[1454]" -type "float3" -6.0535967e-09 0 2.7939677e-09 ;
	setAttr ".tk[1455]" -type "float3" 4.6566129e-09 0 0 ;
	setAttr ".tk[1456]" -type "float3" 2.3283064e-09 0 -3.7252903e-09 ;
	setAttr ".tk[1457]" -type "float3" -5.5879354e-09 0 1.3969839e-09 ;
	setAttr ".tk[1458]" -type "float3" -6.519258e-09 0 9.3132257e-10 ;
	setAttr ".tk[1459]" -type "float3" -9.3132257e-09 0 -1.110223e-15 ;
	setAttr ".tk[1460]" -type "float3" -1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1461]" -type "float3" -5.5879354e-09 0 2.0954758e-09 ;
	setAttr ".tk[1462]" -type "float3" -6.519258e-09 0 4.6566129e-10 ;
	setAttr ".tk[1463]" -type "float3" 3.7252903e-09 0 1.3969839e-09 ;
	setAttr ".tk[1464]" -type "float3" 2.7939677e-09 0 -3.259629e-09 ;
	setAttr ".tk[1465]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".tk[1466]" -type "float3" -6.519258e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1467]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".tk[1468]" -type "float3" 9.3132257e-10 0 -7.4505806e-09 ;
	setAttr ".tk[1469]" -type "float3" -7.7715612e-16 0 -1.0244548e-08 ;
	setAttr ".tk[1470]" -type "float3" -8.8817842e-16 0 5.5879354e-09 ;
	setAttr ".tk[1471]" -type "float3" 1.3969839e-09 0 7.4505806e-09 ;
	setAttr ".tk[1472]" -type "float3" 1.1641532e-09 0 -7.4505806e-09 ;
	setAttr ".tk[1473]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".tk[1474]" -type "float3" -6.0535967e-09 0 4.6566129e-10 ;
	setAttr ".tk[1475]" -type "float3" -7.4505806e-09 0 2.3283064e-09 ;
	setAttr ".tk[1476]" -type "float3" -3.259629e-09 0 -3.259629e-09 ;
	setAttr ".tk[1477]" -type "float3" 2.7939677e-09 0 4.6566129e-10 ;
	setAttr ".tk[1478]" -type "float3" -1.0244548e-08 0 4.6566129e-10 ;
	setAttr ".tk[1479]" -type "float3" 5.5879354e-09 0 -1.110223e-15 ;
	setAttr ".tk[1480]" -type "float3" 7.4505806e-09 0 -1.110223e-15 ;
	setAttr ".tk[1481]" -type "float3" 0 0 2.7939677e-09 ;
	setAttr ".tk[1482]" -type "float3" -9.3132257e-10 0 -1.8626451e-09 ;
	setAttr ".tk[1483]" -type "float3" -1.8626451e-09 0 1.8626451e-09 ;
	setAttr ".tk[1484]" -type "float3" -4.6566129e-10 0 2.3283064e-09 ;
	setAttr ".tk[1485]" -type "float3" 3.7252903e-09 0 4.6566129e-10 ;
	setAttr ".tk[1486]" -type "float3" 1.3969839e-09 0 -4.6566129e-09 ;
	setAttr ".tk[1487]" -type "float3" 2.3283064e-10 0 9.3132257e-10 ;
	setAttr ".tk[1488]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".tk[1489]" -type "float3" 2.220446e-16 0 0 ;
	setAttr ".tk[1490]" -type "float3" 2.220446e-16 0 9.3132257e-10 ;
	setAttr ".tk[1491]" -type "float3" 2.3283064e-10 0 9.3132257e-10 ;
	setAttr ".tk[1492]" -type "float3" -2.3283064e-10 0 -2.7939677e-09 ;
	setAttr ".tk[1493]" -type "float3" -1.8626451e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1494]" -type "float3" 1.8626451e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1495]" -type "float3" -3.7252903e-09 0 -2.3283064e-09 ;
	setAttr ".tk[1496]" -type "float3" -1.3969839e-09 0 1.8626451e-09 ;
	setAttr ".tk[1497]" -type "float3" 9.3132257e-10 0 2.0954758e-09 ;
	setAttr ".tk[1498]" -type "float3" -3.7252903e-09 0 2.7939677e-09 ;
	setAttr ".tk[1499]" -type "float3" 0 0 -1.110223e-15 ;
	setAttr ".tk[1500]" -type "float3" 0 0 -1.110223e-15 ;
	setAttr ".tk[1501]" -type "float3" 9.3132257e-10 0 2.3283064e-10 ;
	setAttr ".tk[1502]" -type "float3" -3.7252903e-09 0 2.0954758e-09 ;
	setAttr ".tk[1503]" -type "float3" -4.6566129e-10 0 6.0535967e-09 ;
	setAttr ".tk[1504]" -type "float3" -4.6566129e-10 0 -4.6566129e-10 ;
	setAttr ".tk[1505]" -type "float3" -2.3283064e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1506]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[1507]" -type "float3" 2.7939677e-09 0 -7.4505806e-09 ;
	setAttr ".tk[1508]" -type "float3" 4.6566129e-10 0 1.3969839e-09 ;
	setAttr ".tk[1509]" -type "float3" 6.6613381e-16 0 2.7939677e-09 ;
	setAttr ".tk[1510]" -type "float3" -5.5511151e-16 0 -2.7939677e-09 ;
	setAttr ".tk[1511]" -type "float3" 1.8626451e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1512]" -type "float3" 1.1641532e-09 0 9.3132257e-10 ;
	setAttr ".tk[1513]" -type "float3" 3.7252903e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1514]" -type "float3" 1.3969839e-09 0 1.8626451e-09 ;
	setAttr ".tk[1515]" -type "float3" -3.7252903e-09 0 5.1222742e-09 ;
	setAttr ".tk[1516]" -type "float3" 2.3283064e-09 0 0 ;
	setAttr ".tk[1517]" -type "float3" -2.7939677e-09 0 0 ;
	setAttr ".tk[1518]" -type "float3" 2.3283064e-09 0 0 ;
	setAttr ".tk[1519]" -type "float3" 7.4505806e-09 0 -1.110223e-15 ;
	setAttr ".tk[1520]" -type "float3" -9.3132257e-10 0 -1.110223e-15 ;
	setAttr ".tk[1521]" -type "float3" -4.6566129e-10 0 2.7939677e-09 ;
	setAttr ".tk[1522]" -type "float3" 3.7252903e-09 0 5.1222742e-09 ;
	setAttr ".tk[1523]" -type "float3" -2.7939677e-09 0 2.7939677e-09 ;
	setAttr ".tk[1524]" -type "float3" 0 0 1.8626451e-09 ;
	setAttr ".tk[1526]" -type "float3" -1.8626451e-09 0 -2.3283064e-09 ;
	setAttr ".tk[1527]" -type "float3" 1.3969839e-09 0 2.7939677e-09 ;
	setAttr ".tk[1528]" -type "float3" 1.1641532e-09 0 3.259629e-09 ;
	setAttr ".tk[1529]" -type "float3" 2.220446e-16 0 3.7252903e-09 ;
	setAttr ".tk[1530]" -type "float3" 2.220446e-16 0 -2.3283064e-09 ;
	setAttr ".tk[1531]" -type "float3" -4.6566129e-10 0 1.8626451e-09 ;
	setAttr ".tk[1532]" -type "float3" 1.1641532e-09 0 3.259629e-09 ;
	setAttr ".tk[1533]" -type "float3" 5.1222742e-09 0 -5.1222742e-09 ;
	setAttr ".tk[1534]" -type "float3" 3.259629e-09 0 -2.3283064e-09 ;
	setAttr ".tk[1535]" -type "float3" -5.1222742e-09 0 5.5879354e-09 ;
	setAttr ".tk[1536]" -type "float3" -9.3132257e-10 0 -5.5879354e-09 ;
	setAttr ".tk[1537]" -type "float3" 1.8626451e-09 0 1.3969839e-09 ;
	setAttr ".tk[1538]" -type "float3" 1.3969839e-09 0 2.0954758e-09 ;
	setAttr ".tk[1539]" -type "float3" 2.7939677e-09 0 -1.110223e-15 ;
	setAttr ".tk[1540]" -type "float3" -2.3283064e-09 0 -1.110223e-15 ;
	setAttr ".tk[1541]" -type "float3" 1.8626451e-09 0 3.0267984e-09 ;
	setAttr ".tk[1542]" -type "float3" 1.3969839e-09 0 1.8626451e-09 ;
	setAttr ".tk[1543]" -type "float3" -5.1222742e-09 0 -3.7252903e-09 ;
	setAttr ".tk[1544]" -type "float3" -2.3283064e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1545]" -type "float3" 3.259629e-09 0 9.3132257e-10 ;
	setAttr ".tk[1546]" -type "float3" -5.1222742e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1547]" -type "float3" 2.7939677e-09 0 -4.1909516e-09 ;
	setAttr ".tk[1548]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[1549]" -type "float3" -2.220446e-16 0 -3.259629e-09 ;
	setAttr ".tk[1550]" -type "float3" -1.110223e-16 0 4.1909516e-09 ;
	setAttr ".tk[1551]" -type "float3" 9.3132257e-10 0 -4.1909516e-09 ;
	setAttr ".tk[1552]" -type "float3" 6.9849193e-10 0 -2.3283064e-09 ;
	setAttr ".tk[1553]" -type "float3" -1.3969839e-09 0 9.3132257e-10 ;
	setAttr ".tk[1554]" -type "float3" -4.6566129e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1555]" -type "float3" 3.259629e-09 0 -3.7252903e-09 ;
	setAttr ".tk[1556]" -type "float3" 2.7939677e-09 0 -3.259629e-09 ;
	setAttr ".tk[1557]" -type "float3" -2.7939677e-09 0 -4.6566129e-10 ;
	setAttr ".tk[1558]" -type "float3" -2.3283064e-09 0 1.1641532e-09 ;
	setAttr ".tk[1559]" -type "float3" -1.8626451e-09 0 -1.110223e-15 ;
	setAttr ".tk[1560]" -type "float3" 4.6566129e-10 0 -1.110223e-15 ;
	setAttr ".tk[1561]" -type "float3" 9.3132257e-10 0 1.5133992e-09 ;
	setAttr ".tk[1562]" -type "float3" 5.1222742e-09 0 -2.0954758e-09 ;
	setAttr ".tk[1563]" -type "float3" -4.6566129e-10 0 -1.6298145e-09 ;
	setAttr ".tk[1564]" -type "float3" 5.1222742e-09 0 1.0477379e-09 ;
	setAttr ".tk[1565]" -type "float3" -1.3969839e-09 0 -2.7939677e-09 ;
	setAttr ".tk[1566]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".tk[1567]" -type "float3" -2.3283064e-10 0 -2.3283064e-09 ;
	setAttr ".tk[1568]" -type "float3" 2.3283064e-10 0 -2.7939677e-09 ;
	setAttr ".tk[1569]" -type "float3" 2.220446e-16 0 -3.7252903e-09 ;
	setAttr ".tk[1570]" -type "float3" 2.220446e-16 0 0 ;
	setAttr ".tk[1571]" -type "float3" -1.1641532e-10 0 -2.7939677e-09 ;
	setAttr ".tk[1572]" -type "float3" 4.6566129e-10 0 -4.6566129e-10 ;
	setAttr ".tk[1573]" -type "float3" -1.6298145e-09 0 -2.3283064e-09 ;
	setAttr ".tk[1574]" -type "float3" 6.9849193e-10 0 1.8626451e-09 ;
	setAttr ".tk[1575]" -type "float3" -2.3283064e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1576]" -type "float3" 2.3283064e-09 0 0 ;
	setAttr ".tk[1577]" -type "float3" -2.7939677e-09 0 -2.3283064e-10 ;
	setAttr ".tk[1578]" -type "float3" -4.6566129e-10 0 6.9849193e-10 ;
	setAttr ".tk[1579]" -type "float3" -1.3969839e-09 0 -1.110223e-15 ;
	setAttr ".tk[1580]" -type "float3" 0 0 -1.110223e-15 ;
	setAttr ".tk[1581]" -type "float3" -2.7939677e-09 0 5.8207661e-10 ;
	setAttr ".tk[1582]" -type "float3" -4.6566129e-10 0 1.0477379e-09 ;
	setAttr ".tk[1583]" -type "float3" -2.3283064e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1584]" -type "float3" 1.8626451e-09 0 6.9849193e-10 ;
	setAttr ".tk[1585]" -type "float3" -2.7939677e-09 0 3.7252903e-09 ;
	setAttr ".tk[1586]" -type "float3" -2.3283064e-10 0 1.3969839e-09 ;
	setAttr ".tk[1587]" -type "float3" 8.1490725e-10 0 3.7252903e-09 ;
	setAttr ".tk[1588]" -type "float3" 1.2805685e-09 0 6.0535967e-09 ;
	setAttr ".tk[1589]" -type "float3" -2.220446e-16 0 0 ;
	setAttr ".tk[1590]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[1591]" -type "float3" 5.8207661e-10 0 0 ;
	setAttr ".tk[1592]" -type "float3" 4.6566129e-10 0 6.519258e-09 ;
	setAttr ".tk[1593]" -type "float3" 1.3969839e-09 0 3.259629e-09 ;
	setAttr ".tk[1594]" -type "float3" 1.8626451e-09 0 1.3969839e-09 ;
	setAttr ".tk[1595]" -type "float3" 0 0 -9.3132257e-10 ;
	setAttr ".tk[1596]" -type "float3" 3.7252903e-09 0 6.9849193e-10 ;
	setAttr ".tk[1597]" -type "float3" 4.6566129e-09 0 -2.3283064e-10 ;
	setAttr ".tk[1598]" -type "float3" 4.6566129e-10 0 1.1641532e-09 ;
	setAttr ".tk[1599]" -type "float3" -9.3132257e-10 0 -1.110223e-15 ;
	setAttr ".tk[1600]" -type "float3" 3.259629e-09 0 -1.110223e-15 ;
	setAttr ".tk[1601]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[1602]" -type "float3" 0 0 2.3283064e-09 ;
	setAttr ".tk[1603]" -type "float3" 0 0 -1.1641532e-09 ;
	setAttr ".tk[1604]" -type "float3" -4.6566129e-10 0 -2.3283064e-10 ;
	setAttr ".tk[1605]" -type "float3" 6.9849193e-10 0 -9.3132257e-10 ;
	setAttr ".tk[1606]" -type "float3" -2.3283064e-10 0 9.3132257e-10 ;
	setAttr ".tk[1607]" -type "float3" 6.9849193e-10 0 -4.6566129e-10 ;
	setAttr ".tk[1608]" -type "float3" 9.3132257e-10 0 -3.259629e-09 ;
	setAttr ".tk[1609]" -type "float3" 2.220446e-16 0 5.5879354e-09 ;
	setAttr ".tk[1610]" -type "float3" 2.220446e-16 0 -2.7939677e-09 ;
	setAttr ".tk[1611]" -type "float3" 0 0 -4.6566129e-10 ;
	setAttr ".tk[1612]" -type "float3" 3.4924597e-10 0 -4.1909516e-09 ;
	setAttr ".tk[1613]" -type "float3" 2.3283064e-09 0 5.5879354e-09 ;
	setAttr ".tk[1614]" -type "float3" -1.8626451e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1615]" -type "float3" 3.7252903e-09 0 1.1641532e-09 ;
	setAttr ".tk[1616]" -type "float3" 9.3132257e-10 0 -4.6566129e-10 ;
	setAttr ".tk[1617]" -type "float3" -4.6566129e-10 0 5.8207661e-10 ;
	setAttr ".tk[1618]" -type "float3" -4.1909516e-09 0 2.3283064e-10 ;
	setAttr ".tk[1619]" -type "float3" 4.6566129e-09 0 -1.110223e-15 ;
	setAttr ".tk[1620]" -type "float3" -2.7939677e-09 0 -1.110223e-15 ;
	setAttr ".tk[1621]" -type "float3" -4.6566129e-10 0 0 ;
	setAttr ".tk[1622]" -type "float3" -4.1909516e-09 0 -2.3283064e-10 ;
	setAttr ".tk[1623]" -type "float3" 3.259629e-09 0 4.6566129e-10 ;
	setAttr ".tk[1624]" -type "float3" 9.3132257e-10 0 -4.6566129e-10 ;
	setAttr ".tk[1625]" -type "float3" 1.6298145e-09 0 0 ;
	setAttr ".tk[1626]" -type "float3" -1.1641532e-09 0 -9.3132257e-10 ;
	setAttr ".tk[1627]" -type "float3" 1.7462298e-09 0 0 ;
	setAttr ".tk[1628]" -type "float3" 9.3132257e-10 0 -5.1222742e-09 ;
	setAttr ".tk[1629]" -type "float3" 2.220446e-16 0 4.6566129e-10 ;
	setAttr ".tk[1630]" -type "float3" 0 0 5.1222742e-09 ;
	setAttr ".tk[1631]" -type "float3" 4.6566129e-10 0 0 ;
	setAttr ".tk[1632]" -type "float3" 6.9849193e-10 0 -5.1222742e-09 ;
	setAttr ".tk[1633]" -type "float3" 2.0954758e-09 0 -3.7252903e-09 ;
	setAttr ".tk[1634]" -type "float3" -1.6298145e-09 0 -3.0267984e-09 ;
	setAttr ".tk[1635]" -type "float3" -4.6566129e-10 0 6.9849193e-10 ;
	setAttr ".tk[1636]" -type "float3" -4.6566129e-10 0 -1.1641532e-09 ;
	setAttr ".tk[1637]" -type "float3" -1.8626451e-09 0 8.1490725e-10 ;
	setAttr ".tk[1638]" -type "float3" -3.7252903e-09 0 1.1641532e-10 ;
	setAttr ".tk[1639]" -type "float3" -5.1222742e-09 0 -1.110223e-15 ;
	setAttr ".tk[1640]" -type "float3" 2.7939677e-09 0 -1.110223e-15 ;
	setAttr ".tk[1641]" -type "float3" 2.7939677e-09 0 -1.3969839e-09 ;
	setAttr ".tk[1642]" -type "float3" -2.0954758e-09 0 6.9849193e-10 ;
	setAttr ".tk[1643]" -type "float3" 6.9849193e-10 0 -2.0954758e-09 ;
	setAttr ".tk[1644]" -type "float3" 1.3969839e-09 0 -1.6298145e-09 ;
	setAttr ".tk[1645]" -type "float3" 1.3969839e-09 0 -1.1641532e-09 ;
	setAttr ".tk[1646]" -type "float3" -9.3132257e-10 0 -2.3283064e-10 ;
	setAttr ".tk[1647]" -type "float3" 9.3132257e-10 0 6.9849193e-10 ;
	setAttr ".tk[1648]" -type "float3" 4.6566129e-10 0 1.3969839e-09 ;
	setAttr ".tk[1649]" -type "float3" 2.220446e-16 0 1.8626451e-09 ;
	setAttr ".tk[1650]" -type "float3" 2.220446e-16 0 -6.9849193e-10 ;
	setAttr ".tk[1651]" -type "float3" 9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".tk[1652]" -type "float3" 8.1490725e-10 0 1.3969839e-09 ;
	setAttr ".tk[1653]" -type "float3" 1.6298145e-09 0 -1.6298145e-09 ;
	setAttr ".tk[1654]" -type "float3" -1.6298145e-09 0 2.3283064e-10 ;
	setAttr ".tk[1655]" -type "float3" -2.3283064e-10 0 2.3283064e-09 ;
	setAttr ".tk[1656]" -type "float3" -2.3283064e-10 0 -1.3969839e-09 ;
	setAttr ".tk[1657]" -type "float3" 6.9849193e-10 0 -1.0477379e-09 ;
	setAttr ".tk[1658]" -type "float3" 2.0954758e-09 0 -1.3969839e-09 ;
	setAttr ".tk[1659]" -type "float3" 3.7252903e-09 0 -1.110223e-15 ;
	setAttr ".tk[1660]" -type "float3" -9.3132257e-10 0 -1.110223e-15 ;
	setAttr ".tk[1661]" -type "float3" 6.9849193e-10 0 -1.5133992e-09 ;
	setAttr ".tk[1662]" -type "float3" 2.0954758e-09 0 -5.8207661e-10 ;
	setAttr ".tk[1663]" -type "float3" -1.1641532e-09 0 1.3969839e-09 ;
	setAttr ".tk[1664]" -type "float3" -2.3283064e-10 0 -6.9849193e-10 ;
	setAttr ".tk[1665]" -type "float3" 6.9849193e-10 0 -1.8626451e-09 ;
	setAttr ".tk[1666]" -type "float3" -2.3283064e-09 0 -2.5611371e-09 ;
	setAttr ".tk[1667]" -type "float3" 1.9790605e-09 0 -2.3283064e-10 ;
	setAttr ".tk[1668]" -type "float3" 1.5133992e-09 0 1.3969839e-09 ;
	setAttr ".tk[1669]" -type "float3" 2.4424907e-15 0 0 ;
	setAttr ".tk[1670]" -type "float3" 6.6613381e-16 0 -9.3132257e-10 ;
	setAttr ".tk[1671]" -type "float3" 1.0477379e-09 0 -2.3283064e-10 ;
	setAttr ".tk[1672]" -type "float3" 1.2805685e-09 0 1.1641532e-09 ;
	setAttr ".tk[1673]" -type "float3" -2.3283064e-10 0 -1.6298145e-09 ;
	setAttr ".tk[1674]" -type "float3" -9.3132257e-10 0 -2.3283064e-09 ;
	setAttr ".tk[1675]" -type "float3" 9.3132257e-10 0 2.3283064e-09 ;
	setAttr ".tk[1676]" -type "float3" -9.3132257e-10 0 -9.3132257e-10 ;
	setAttr ".tk[1677]" -type "float3" 6.9849193e-10 0 -9.3132257e-10 ;
	setAttr ".tk[1678]" -type "float3" 0 0 -1.1641532e-09 ;
	setAttr ".tk[1679]" -type "float3" -1.3969839e-09 0 -1.110223e-15 ;
	setAttr ".tk[1680]" -type "float3" 2.0954758e-09 0 -1.110223e-15 ;
	setAttr ".tk[1681]" -type "float3" -3.4924597e-09 0 -5.2386895e-10 ;
	setAttr ".tk[1682]" -type "float3" 2.0954758e-09 0 4.6566129e-10 ;
	setAttr ".tk[1683]" -type "float3" -2.3283064e-10 0 1.1641532e-10 ;
	setAttr ".tk[1684]" -type "float3" -4.6566129e-10 0 -1.1641532e-10 ;
	setAttr ".tk[1685]" -type "float3" 6.9849193e-10 0 -2.3283064e-10 ;
	setAttr ".tk[1686]" -type "float3" 0 0 -5.8207661e-10 ;
	setAttr ".tk[1687]" -type "float3" 3.4924597e-10 0 1.6298145e-09 ;
	setAttr ".tk[1688]" -type "float3" 1.1641532e-10 0 -2.3283064e-09 ;
	setAttr ".tk[1689]" -type "float3" 2.220446e-16 0 2.3283064e-10 ;
	setAttr ".tk[1690]" -type "float3" 2.220446e-16 0 9.3132257e-10 ;
	setAttr ".tk[1691]" -type "float3" 4.0745363e-10 0 1.1641532e-09 ;
	setAttr ".tk[1692]" -type "float3" 0 0 -2.3283064e-09 ;
	setAttr ".tk[1693]" -type "float3" 0 0 3.259629e-09 ;
	setAttr ".tk[1694]" -type "float3" -5.8207661e-10 0 -5.8207661e-10 ;
	setAttr ".tk[1695]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[1696]" -type "float3" -8.1490725e-10 0 5.8207661e-10 ;
	setAttr ".tk[1697]" -type "float3" 0 0 -5.8207661e-11 ;
	setAttr ".tk[1698]" -type "float3" -1.3969839e-09 0 2.910383e-10 ;
	setAttr ".tk[1699]" -type "float3" 1.1641532e-09 0 -1.110223e-15 ;
	setAttr ".tk[1700]" -type "float3" -9.3132257e-10 0 -1.110223e-15 ;
	setAttr ".tk[1701]" -type "float3" 0 0 -5.2386895e-10 ;
	setAttr ".tk[1702]" -type "float3" -1.3969839e-09 0 -3.4924597e-10 ;
	setAttr ".tk[1703]" -type "float3" -2.3283064e-10 0 4.6566129e-10 ;
	setAttr ".tk[1704]" -type "float3" -9.3132257e-10 0 5.8207661e-10 ;
	setAttr ".tk[1705]" -type "float3" 3.4924597e-10 0 2.0954758e-09 ;
	setAttr ".tk[1706]" -type "float3" 4.6566129e-10 0 -2.3283064e-10 ;
	setAttr ".tk[1707]" -type "float3" 1.7462298e-10 0 1.3969839e-09 ;
	setAttr ".tk[1708]" -type "float3" 0 0 -1.3969839e-09 ;
	setAttr ".tk[1709]" -type "float3" -2.220446e-15 0 9.3132257e-10 ;
	setAttr ".tk[1710]" -type "float3" 2.220446e-15 0 -2.5611371e-09 ;
	setAttr ".tk[1711]" -type "float3" 2.910383e-10 0 1.3969839e-09 ;
	setAttr ".tk[1712]" -type "float3" 4.0745363e-10 0 -1.3969839e-09 ;
	setAttr ".tk[1713]" -type "float3" 0 0 3.0267984e-09 ;
	setAttr ".tk[1714]" -type "float3" -2.3283064e-10 0 -6.9849193e-10 ;
	setAttr ".tk[1715]" -type "float3" 6.9849193e-10 0 6.9849193e-10 ;
	setAttr ".tk[1716]" -type "float3" -5.8207661e-10 0 8.1490725e-10 ;
	setAttr ".tk[1717]" -type "float3" 2.3283064e-09 0 -4.0745363e-10 ;
	setAttr ".tk[1718]" -type "float3" -3.0267984e-09 0 1.1641532e-10 ;
	setAttr ".tk[1719]" -type "float3" 2.3283064e-10 0 -1.110223e-15 ;
	setAttr ".tk[1720]" -type "float3" 2.0954758e-09 0 -1.110223e-15 ;
	setAttr ".tk[1721]" -type "float3" 1.0477379e-09 0 5.8207661e-11 ;
	setAttr ".tk[1722]" -type "float3" 5.8207661e-10 0 0 ;
	setAttr ".tk[1723]" -type "float3" 4.6566129e-10 0 -5.8207661e-11 ;
	setAttr ".tk[1724]" -type "float3" -1.1641532e-10 0 2.910383e-11 ;
	setAttr ".tk[1725]" -type "float3" 3.4924597e-10 0 5.8207661e-10 ;
	setAttr ".tk[1726]" -type "float3" 7.5669959e-10 0 -5.8207661e-11 ;
	setAttr ".tk[1727]" -type "float3" -4.6566129e-10 0 1.5133992e-09 ;
	setAttr ".tk[1728]" -type "float3" -5.8207661e-11 0 0 ;
	setAttr ".tk[1729]" -type "float3" 2.220446e-16 0 -5.8207661e-10 ;
	setAttr ".tk[1730]" -type "float3" 2.220446e-16 0 1.3969839e-09 ;
	setAttr ".tk[1731]" -type "float3" -4.0745363e-10 0 1.5133992e-09 ;
	setAttr ".tk[1732]" -type "float3" -1.7462298e-10 0 9.3132257e-10 ;
	setAttr ".tk[1733]" -type "float3" -5.8207661e-10 0 0 ;
	setAttr ".tk[1734]" -type "float3" 6.9849193e-10 0 0 ;
	setAttr ".tk[1735]" -type "float3" 0 0 9.3132257e-10 ;
	setAttr ".tk[1736]" -type "float3" -3.4924597e-10 0 -2.3283064e-10 ;
	setAttr ".tk[1737]" -type "float3" 4.6566129e-10 0 3.4924597e-10 ;
	setAttr ".tk[1738]" -type "float3" -3.4924597e-10 0 -1.4551915e-10 ;
	setAttr ".tk[1739]" -type "float3" -2.3283064e-10 0 -1.110223e-15 ;
	setAttr ".tk[1740]" -type "float3" 5.8207661e-10 0 -1.110223e-15 ;
	setAttr ".tk[1741]" -type "float3" 4.6566129e-10 0 6.9849193e-10 ;
	setAttr ".tk[1742]" -type "float3" -3.4924597e-10 0 2.910383e-11 ;
	setAttr ".tk[1743]" -type "float3" 0 0 1.1641532e-10 ;
	setAttr ".tk[1744]" -type "float3" -2.3283064e-10 0 -2.910383e-10 ;
	setAttr ".tk[1745]" -type "float3" -1.1641532e-10 0 4.6566129e-10 ;
	setAttr ".tk[1746]" -type "float3" 4.6566129e-10 0 2.910383e-10 ;
	setAttr ".tk[1747]" -type "float3" -4.6566129e-10 0 6.9849193e-10 ;
	setAttr ".tk[1748]" -type "float3" -5.8207661e-11 0 5.8207661e-10 ;
	setAttr ".tk[1749]" -type "float3" 1.7763568e-15 0 -2.3283064e-10 ;
	setAttr ".tk[1750]" -type "float3" -2.4424907e-15 0 -4.6566129e-10 ;
	setAttr ".tk[1751]" -type "float3" -5.8207661e-11 0 6.9849193e-10 ;
	setAttr ".tk[1752]" -type "float3" -5.8207661e-11 0 5.8207661e-10 ;
	setAttr ".tk[1753]" -type "float3" 0 0 4.6566129e-10 ;
	setAttr ".tk[1754]" -type "float3" -1.7462298e-10 0 6.9849193e-10 ;
	setAttr ".tk[1755]" -type "float3" -6.9849193e-10 0 4.6566129e-10 ;
	setAttr ".tk[1756]" -type "float3" 5.8207661e-11 0 -9.3132257e-10 ;
	setAttr ".tk[1757]" -type "float3" 3.4924597e-10 0 5.8207661e-11 ;
	setAttr ".tk[1758]" -type "float3" 0 0 1.4551915e-10 ;
	setAttr ".tk[1759]" -type "float3" 4.6566129e-10 0 -1.110223e-15 ;
	setAttr ".tk[1760]" -type "float3" -9.3132257e-10 0 -1.110223e-15 ;
	setAttr ".tk[1761]" -type "float3" -4.0745363e-10 0 2.910383e-11 ;
	setAttr ".tk[1762]" -type "float3" -2.0372681e-10 0 1.4551915e-10 ;
	setAttr ".tk[1763]" -type "float3" 2.220446e-16 0 -1.110223e-15 ;
	setAttr ".tk[1764]" -type "float3" 4.3655746e-10 0 -2.6193447e-10 ;
	setAttr ".tk[1765]" -type "float3" -1.1641532e-10 0 -6.9849193e-10 ;
	setAttr ".tk[1766]" -type "float3" 2.220446e-16 0 0 ;
	setAttr ".tk[1767]" -type "float3" -1.4551915e-11 0 -8.1490725e-10 ;
	setAttr ".tk[1768]" -type "float3" 2.910383e-11 0 2.910383e-11 ;
	setAttr ".tk[1769]" -type "float3" 3.4924597e-10 0 8.7311491e-11 ;
	setAttr ".tk[1770]" -type "float3" 8.1490725e-10 0 -1.4551915e-11 ;
	setAttr ".tk[1771]" -type "float3" -3.4924597e-10 0 -1.110223e-15 ;
	setAttr ".tk[1772]" -type "float3" 8.1490725e-10 0 -7.2759576e-11 ;
	setAttr ".tk[1773]" -type "float3" 1.1641532e-10 0 0 ;
	setAttr ".tk[1774]" -type "float3" 3.4924597e-10 0 -1.1641532e-10 ;
	setAttr ".tk[1775]" -type "float3" -1.3096724e-10 0 5.8207661e-11 ;
	setAttr ".tk[1776]" -type "float3" 2.8865799e-15 0 -3.4924597e-10 ;
	setAttr ".tk[1777]" -type "float3" 2.910383e-11 0 5.8207661e-11 ;
	setAttr ".tk[1778]" -type "float3" 1.4551915e-10 0 -1.1641532e-10 ;
	setAttr ".tk[1779]" -type "float3" 1.7462298e-10 0 0 ;
	setAttr ".tk[1780]" -type "float3" 4.0745363e-10 0 -4.3655746e-11 ;
	setAttr ".tk[1781]" -type "float3" 2.910383e-10 0 -1.110223e-15 ;
	setAttr ".tk[2646]" -type "float3" 0 0 0.0040741563 ;
	setAttr ".tk[2649]" -type "float3" 0 0 0.0040741563 ;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "4D1943E0-4A28-C49D-2413-A08C677F5C97";
	setAttr ".ics" -type "componentList" 1 "e[3204:3211]";
	setAttr ".cv" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6202AFD0-4C4D-B103-4B48-60B2ED9B1F18";
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
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1319\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -excludeObjectPreset \"All\" \n"
		+ "                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1319\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E64E6B52-437F-7D84-0D5E-C69EF9EC4E8B";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "4B071F50-4FE5-43FC-176D-C3B7F4EEB0EC";
	setAttr ".ics" -type "componentList" 1 "e[0:869]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "3A2FBBB7-4F19-0373-93EF-64A167108860";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[2642]" -type "float3" 0 0 0.0094894208 ;
	setAttr ".tk[2643]" -type "float3" 0 0 0.0032249775 ;
	setAttr ".tk[2644]" -type "float3" 0 0 0.0032249775 ;
	setAttr ".tk[2645]" -type "float3" 0 0 0.0094894208 ;
createNode polyMapDel -n "polyMapDel1";
	rename -uid "A6D55992-4D8D-800B-9713-74B1D9C6CB25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1814]";
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "CE457E6C-49FF-B49F-B833-CEB583228B0F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1814]";
	setAttr ".ix" -type "matrix" 0.85394227283937674 0 0 0 0 1.154835974272302 0 0 0 0 0.85394227283937674 0
		 0 1.1510618207627747 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.0017628967761993408 1.1510617733001709 0.0073989033699035645 ;
	setAttr ".ro" -type "double3" -44.138351750115412 -13.400000091449852 -3.0737875833354245e-07 ;
	setAttr ".ps" -type "double2" 1.7073752045524773 2.8536827870761403 ;
	setAttr ".per" yes;
	setAttr ".cam" -type "matrix" 1.8915086984634399 0.19155611097812653 0.1663195937871933 0.16631627082824707
		 0 0.85181349515914917 -0.6964072585105896 -0.69639337062835693 0.45062091946601868 -0.80406838655471802 -0.69813656806945801 -0.69812262058258057
		 -0.45293396711349487 -0.59379595518112183 4.5271954536437988 4.7271027565002441;
	setAttr ".prgt" 492;
	setAttr ".ptop" 806;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "0D6EC131-498F-E627-6144-DD85135C3E7C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[0:20]" "e[28:50]" "e[58:59]" "e[981]" "e[3564]" "e[3566]" "e[3569:3571]" "e[3573]" "e[3576]" "e[3578]" "e[3581]" "e[3583]" "e[3586]" "e[3588]" "e[3591]" "e[3593]" "e[3596:3598]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "F2A26E20-4305-8A8F-534E-CCB2AD96E411";
	setAttr ".uopa" yes;
	setAttr -s 1852 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.054349214 -0.0085342824 -0.41102025
		 -0.11272009 -0.48435342 -0.085867539 -0.33140492 -0.13417923 -0.24693781 -0.14974353
		 -0.15900931 -0.15908921 -0.068965942 -0.16202778 0.021875858 -0.15847714 0.11220631
		 -0.1484478 0.20069411 -0.13204502 0.28596357 -0.10948561 0.36658052 -0.081130892
		 0.44105816 -0.047530651 0.50788963 -0.0094776154 0.56561917 0.031938866 0.61295706
		 0.075291231 0.64894068 0.11880299 0.67312801 0.16039015 0.68579578 0.1977739 0.68809211
		 0.22867024 0.6820904 0.25104243 0.67069614 0.26337278 0.0032761693 -0.0099676792
		 -0.098241091 -0.012069283 -0.19148955 -0.014880044 -0.27177581 -0.017564688 -0.33544448
		 -0.019190051 -0.38002929 -0.018945232 -0.40425128 -0.016317174 -0.6064688 -0.019190967
		 -0.54996383 -0.054352626 -0.059566081 0.04997474 -0.077372193 0.025953352 -0.043088317
		 0.072374046 -0.028424978 0.091514826 -0.015499294 0.1060192 -0.0037990808 0.11487615
		 0.0074648857 0.1175155 0.019181788 0.11384678 0.032157674 0.1042605 0.046934649 0.089594543
		 0.063624546 0.071064234 0.081771359 0.050155342 0.10026451 0.028482497 0.11733259
		 0.007617712 0.13065346 -0.01109612 0.13761538 -0.02672565 0.13574441 -0.038880765
		 0.12326582 -0.047755182 0.099692017 -0.054030657 0.066253677 -0.05863452 0.025966197
		 -0.062395811 0.11691031 -0.19670302 -0.71138358 0.1866639 -0.10026288 -0.011730854
		 -0.76977694 0.099233449 0.11714599 -0.19283772 -0.19413239 -0.01471428 -0.80789256
		 0.079864025 -0.27524391 -0.017495167 -0.83133048 0.053849518 -0.33953524 -0.019203603
		 -0.83636361 0.022925496 -0.38452178 -0.019009143 -0.82181573 -0.010407031 -0.40892327
		 -0.016386554 -0.78818107 -0.043929935 -0.11183798 -0.020023108 -0.095381796 0.0020602942
		 -0.058289528 0.047938645 -0.075329363 0.024812937 -0.042386413 0.06948626 -0.028106689
		 0.087894261 -0.015405446 0.10184634 -0.0038246214 0.11037534 0.0073566735 0.11293501
		 0.018954784 0.10943681 0.031706303 0.10025191 0.046096578 0.086178839 0.062202483
		 0.068375409 0.07956472 0.048255682 0.097110048 0.027354836 0.11315218 0.0071663857
		 0.12550318 -0.011033535 0.13172571 -0.026352942 0.12953672 -0.038405538 0.11732787
		 -0.047345102 0.094701305 -0.053772807 0.062853023 -0.058513641 0.024620295 -0.062304616
		 -0.01589933 -0.065489292 -0.057305247 -0.068376482 -0.054357916 -0.067884505 -0.091026425
		 -0.069569409 -0.0864788 -0.068730056 -0.11503279 -0.068135679 -0.1095134 -0.066982388
		 -0.12809962 -0.062948167 -0.12227184 -0.061620116 -0.13067174 -0.053229451 -0.12511367
		 -0.05194509 -0.12445676 -0.038790762 -0.11958557 -0.037797928 -0.10789031 -0.019568682
		 -0.092420518 0.0017758012 -0.07493943 0.026613772 -0.058133543 0.049331963 -0.057604313
		 0.048535824 -0.074109793 0.026168168 -0.042394936 0.070504606 -0.042094111 0.069374919
		 -0.028211117 0.08859843 -0.028066158 0.087181568 -0.015548974 0.10231864 -0.015499175
		 0.1006853 -0.0039702058 0.11071378 -0.003975451 0.10895175 0.007221818 0.11324638
		 0.0071757436 0.11145222 0.018817306 0.10982823 0.018716544 0.10810035 0.031528026
		 0.10082412 0.031332046 0.099252641 0.045818865 0.08701843 0.045465767 0.085678458
		 0.061753869 0.069548011 0.061168745 0.068492115 0.078871675 0.04980123 0.077979162
		 0.049053967 0.096111149 0.029283702 0.094851136 0.028838873 0.11181413 0.0094594955
		 0.11016011 0.0092805028 0.12383737 -0.0084224343 0.12181486 -0.0083974004 0.1298016
		 -0.023489594 0.12750293 -0.02333796 0.1274873 -0.035364151 0.12507682 -0.035165191
		 0.11534137 -0.044194639 0.1130452 -0.044011891 0.092995986 -0.050564349 0.09107244
		 -0.05043149 0.061636686 -0.055273235 0.060329169 -0.055185914 0.02404353 -0.05903399
		 0.023527145 -0.058953464 -0.015785426 -0.062178254 -0.015451401 -0.062048674 -0.053592205
		 -0.064524591 -0.052456826 -0.064291775 -0.085215718 -0.065333664 -0.083459795 -0.064972818
		 -0.10795468 -0.063590527 -0.10581684 -0.063115656 -0.1206302 -0.058300376 -0.11836368
		 -0.057765305 -0.12357396 -0.048782349 -0.12140107 -0.048270702 -0.11827934 -0.034879327
		 -0.11636329 -0.034486234 -0.10688961 -0.01697427 -0.10532439 -0.016794324 -0.091739833
		 0.0039868355 -0.09055382 0.0038769841 -0.074186027 0.023303747 -0.057805121 0.045353115
		 -0.056395054 0.043365121 -0.072023511 0.022190928 -0.042341888 0.065892458 -0.041512787
		 0.063072324 -0.02828753 0.08344233 -0.027864516 0.079905808 -0.015634239 0.096752524
		 -0.015470117 0.092675388 -0.0039845705 0.10490346 -0.0039816499 0.10050422 0.0073078871
		 0.10737437 0.0071837604 0.10289496 0.018979043 0.10407966 0.018693984 0.099763751
		 0.031689256 0.095370054 0.031144843 0.091443062 0.045860782 0.082001328 0.044906586
		 0.078650236 0.061530173 0.065069377 0.059985638 0.062425435 0.078230068 0.04591161
		 0.075915359 0.044036925 0.094920993 0.025977314 0.091695987 0.024858534 0.10999811
		 0.0066747665 0.105807 0.006224215 0.12140354 -0.010793626 0.11631913 -0.010725617
		 0.12686932 -0.025584698 0.1211274 -0.025185823 0.12429716 -0.037325084 0.11830702
		 -0.036786497 0.11223942 -0.046138346 0.10655705 -0.045614541 0.090385646 -0.052556932
		 0.085640296 -0.052130997 0.059901863 -0.057316124 0.056683034 -0.056981921 0.023460746
		 -0.061070919 0.022190452 -0.060741782 -0.015125155 -0.064123571 -0.014300406 -0.063671887
		 -0.051767111 -0.066295981 -0.048971802 -0.065600276 -0.082518756 -0.066899002 -0.07818377
		 -0.065905154 -0.10476673 -0.064984977 -0.099471211 -0.06373173 -0.11734957 -0.059626937
		 -0.11171079 -0.058247209 -0.12054324 -0.0501948 -0.11510861 -0.048892438 -0.11573803
		 -0.036550343 -0.11091352 -0.035557866 -0.10496074 -0.019073725 -0.10098636 -0.018620968
		 -0.090435088 0.001322031 -0.087390065 0.0010480285 -0.071618617 0.024008095 -0.056215525
		 0.044783831 -0.05563277 0.044007003 -0.070741117 0.023573756 -0.041495562 0.064125061
		 -0.041143596 0.063022316 -0.027946472 0.080651164 -0.027759433 0.079268157 -0.015598446
		 0.093193591 -0.015520394 0.091599047 -0.0041216612 0.10089111 -0.0041154325 0.09916997
		 0.0070439875 0.10325426 0.0069915354 0.10150117 0.018541962 0.10020059 0.018417805
		 0.098510861 0.030944854 0.092055321 0.030711398 0.090516984 0.044604167 0.07952255
		 0.044204369 0.078208923 0.05951488 0.063622236 0.058880642 0.062584221 0.075209729
		 0.045597434 0.074273922 0.044860125 0.090701349 0.026793778;
	setAttr ".uvtk[250:499]" 0.089413099 0.026352346 0.10449687 0.0085170269 0.10283835
		 0.0083383918 0.11470944 -0.0081174374 0.11271257 -0.0080903769 0.11928773 -0.022323132
		 0.11704664 -0.022161543 0.11636431 -0.033738196 0.11403842 -0.033514619 0.1046866
		 -0.042445183 0.10248945 -0.042218506 0.084042042 -0.048889875 0.082213268 -0.048692226
		 0.055545002 -0.053696752 0.05430761 -0.053526759 0.021647662 -0.057420015 0.021160513
		 -0.057247579 -0.014199913 -0.060310364 -0.0138807 -0.060090005 -0.048266977 -0.062198222
		 -0.047190011 -0.061886907 -0.077010244 -0.062479794 -0.075336516 -0.062059343 -0.098012447
		 -0.060324728 -0.095961452 -0.059811175 -0.1101622 -0.054923356 -0.10796922 -0.054368377
		 -0.1136421 -0.045731783 -0.11151767 -0.045213163 -0.10965514 -0.032643139 -0.10775715
		 -0.032250285 -0.10000753 -0.016026974 -0.098431587 -0.015847683 -0.086709619 0.0032666922
		 -0.085490048 0.0031610131 -0.070757091 0.020710886 -0.055773497 0.04082942 -0.054226339
		 0.038890719 -0.068472207 0.0196262 -0.041337252 0.059549153 -0.040376902 0.056798637
		 -0.027937591 0.075541615 -0.027406275 0.072092414 -0.01562655 0.087681532 -0.015389591
		 0.083704054 -0.004112184 0.095138371 -0.0040796697 0.09084487 0.0071186721 0.097439885
		 0.006978184 0.09306556 0.018658519 0.094505131 0.018313468 0.090287268 0.031032041
		 0.086646616 0.030391514 0.082804501 0.044551402 0.074540257 0.04347764 0.071256161
		 0.059187323 0.05916661 0.057517171 0.056568861 0.074469306 0.041719377 0.072044112
		 0.039870501 0.089433283 0.023490667 0.086136132 0.022381127 0.10263917 0.0057333708
		 0.098436065 0.0052835941 0.11228204 -0.01048094 0.10726149 -0.010407865 0.11641446
		 -0.024393141 0.11081611 -0.023969412 0.11327946 -0.035645366 0.1074997 -0.035045922
		 0.10171747 -0.044298351 0.09628062 -0.043666065 0.08156319 -0.050753474 0.077052236
		 -0.050168097 0.053908437 -0.055578887 0.0508627 -0.055042386 0.021104634 -0.059279263
		 0.019906968 -0.058724999 -0.013562709 -0.062079787 -0.012775362 -0.061405778 -0.046528339
		 -0.063815773 -0.043876648 -0.062927067 -0.074430734 -0.063925743 -0.070299357 -0.062785149
		 -0.094942629 -0.061638594 -0.089862823 -0.060290158 -0.10697293 -0.056205034 -0.1015175
		 -0.054776073 -0.11065805 -0.047125459 -0.10534376 -0.04580617 -0.10710949 -0.034311473
		 -0.10232973 -0.033319473 -0.09802705 -0.018128037 -0.094024777 -0.017677128 -0.085317552
		 0.00060540438 -0.082186878 0.00034189224 -0.068051636 0.021460056 -0.054022431 0.040335536
		 -0.053384662 0.039578557 -0.067125142 0.021036983 -0.040333211 0.057886302 -0.039928377
		 0.056812167 -0.027464986 0.072879851 -0.027234316 0.071532369 -0.015502214 0.084269583
		 -0.015394717 0.082715213 -0.004213959 0.091281593 -0.0041958094 0.089603245 0.0068332851
		 0.093474448 0.0067742169 0.091764092 0.018146396 0.090770662 0.01799807 0.089120686
		 0.030169159 0.083457947 0.029897034 0.081954181 0.04314974 0.072162211 0.042701885
		 0.070875525 0.057023719 0.057790101 0.056339011 0.056771159 0.071325399 0.04144603
		 0.070345372 0.04071933 0.085145399 0.024322629 0.083828188 0.023885012 0.097153328
		 0.007576406 0.095489703 0.0073981285 0.10570667 -0.0078027248 0.10373458 -0.0077736378
		 0.10905851 -0.021107733 0.10687334 -0.020936668 0.10566001 -0.03199178 0.10341587
		 -0.031744599 0.094521448 -0.04047972 0.09241946 -0.040211022 0.075556025 -0.046896935
		 0.073817849 -0.046637654 0.049798965 -0.051716149 0.048628271 -0.051468372 0.019396603
		 -0.055356145 0.018937528 -0.055097342 -0.012688279 -0.057997823 -0.012383729 -0.057691991
		 -0.043229192 -0.059486508 -0.042207509 -0.059100866 -0.069211274 -0.059333324 -0.067616433
		 -0.05885613 -0.088500023 -0.056869566 -0.086532772 -0.056319237 -0.10005856 -0.05144906
		 -0.097936869 -0.050874889 -0.10394865 -0.042648315 -0.10187095 -0.042123199 -0.10111821
		 -0.0304088 -0.099237561 -0.030016124 -0.093067586 -0.015083015 -0.091480255 -0.01490432
		 -0.081506431 0.0025679469 -0.080252588 0.0024663806 -0.067079365 0.018175781 -0.053463578
		 0.036406636 -0.051775396 0.034518957 -0.064669132 0.017120481 -0.040066302 0.053348482
		 -0.038970351 0.050670683 -0.027367622 0.067819297 -0.02672416 0.064460814 -0.015470982
		 0.078814149 -0.015158355 0.074940324 -0.0041796565 0.085589528 -0.0041164756 0.081406176
		 0.006896168 0.087720394 0.0067386329 0.083455861 0.018216163 0.085131228 0.017808944
		 0.081015587 0.030179769 0.078096926 0.029439807 0.074343145 0.042999327 0.067216635
		 0.041802213 0.064001918 0.05658944 0.053358614 0.054790124 0.050808966 0.070483878
		 0.037580371 0.067945555 0.035758257 0.083797827 0.021023095 0.080426678 0.019923151
		 0.095252901 0.0047938228 0.091036268 0.0043450594 0.10328452 -0.010158777 0.098325528
		 -0.010080993 0.10624214 -0.023153245 0.10078303 -0.022705793 0.10267673 -0.033846855
		 0.097100094 -0.033189595 0.091679886 -0.042246103 0.086478785 -0.041510582 0.073202923
		 -0.04863739 0.068915874 -0.047900736 0.048256069 -0.053445339 0.045375019 -0.052717745
		 0.018891811 -0.057046473 0.017763644 -0.056280136 -0.012074232 -0.059600472 -0.01132378
		 -0.058716774 -0.041572243 -0.060957551 -0.03905642 -0.059886694 -0.066744208 -0.06066525
		 -0.06280759 -0.059385478 -0.08554405 -0.058106244 -0.080671608 -0.056667447 -0.096957684
		 -0.052687287 -0.091679394 -0.051211536 -0.10100925 -0.04402405 -0.095811665 -0.042688966
		 -0.098567188 -0.032074332 -0.093830228 -0.031083167 -0.091034293 -0.017185688 -0.087002575
		 -0.01673615 -0.080025256 -8.9943409e-05 -0.076807022 -0.00034290552 -0.064232409
		 0.018971264 -0.051546574 0.035990655 -0.05085212 0.03525424 -0.063255548 0.018559992
		 -0.038899362 0.051794469 -0.038440108 0.050749421 -0.026758999 0.065291762 -0.026483059
		 0.063981116 -0.015254736 0.075554729 -0.015116811 0.074042559 -0.0042448342 0.081894398
		 -0.0042142272 0.080260754 0.006588459 0.083915949 0.0065225959 0.082249939 0.017626345
		 0.081546962 0.017452925 0.079938412 0.029194385 0.07503897 0.028882205 0.073570788
		 0.041448176 0.064942539 0.040950716 0.063683927 0.054273337 0.052055657 0.053536817
		 0.051055849 0.067213312 0.037349284 0.066187829 0.036633193 0.079439454 0.021871328
		 0.078092538 0.021437585 0.089780279 0.0066376328 0.088110931 0.006459713 0.096824341
		 -0.007479012 0.094876096 -0.0074481368 0.099105224 -0.019845665 0.096974216 -0.01966536
		 0.095359847 -0.030130386 0.093194574 -0.029860854 0.084826291 -0.038308799;
	setAttr ".uvtk[500:749]" 0.082815558 -0.038000107 0.067516938 -0.044602394
		 0.065865204 -0.044284642 0.044382006 -0.049353957 0.04327482 -0.049032688 0.017284274
		 -0.052868247 0.016852021 -0.052527547 -0.011249572 -0.055266619 -0.010959446 -0.054880023
		 -0.038463175 -0.056411028 -0.037493795 -0.055954993 -0.061801076 -0.055909634 -0.060281456
		 -0.055378854 -0.079401016 -0.053234577 -0.077514112 -0.052649319 -0.090307295 -0.04788208
		 -0.088254452 -0.047289848 -0.094485879 -0.03953433 -0.092453718 -0.039003313 -0.09266448
		 -0.028176367 -0.090800166 -0.027784228 -0.086066365 -0.014142275 -0.084467113 -0.013964117
		 -0.076126099 0.0018908978 -0.074837148 0.0017933846 -0.063146651 0.015700877 -0.05086726
		 0.032088518 -0.04903394 0.03025347 -0.060607553 0.014675558 -0.038520217 0.047296524
		 -0.037284374 0.044693828 -0.026569933 0.060282707 -0.025810152 0.057018578 -0.015161872
		 0.070159137 -0.014770806 0.066393375 -0.0041847825 0.07626617 -0.0040896237 0.072197974
		 0.0066390336 0.078225434 0.0064638853 0.074075341 0.017647505 0.075966239 0.017175704
		 0.071956992 0.029125541 0.069727898 0.028282702 0.066065967 0.041196823 0.060034931
		 0.039872453 0.056892633 0.053729206 0.047649324 0.051797107 0.045149267 0.066268191
		 0.03349632 0.063613698 0.031702101 0.078010648 0.018575728 0.074563414 0.017485917
		 0.087835908 0.0038561821 0.083603971 0.0034083724 0.094406135 -0.0098279715 0.089506134
		 -0.0097458363 0.09634351 -0.021867573 0.091019094 -0.021397471 0.092474356 -0.031935513
		 0.087093636 -0.031223118 0.082107052 -0.039991796 0.077132091 -0.039158344 0.06528382
		 -0.04622525 0.061210543 -0.045345306 0.042928189 -0.050937653 0.040203959 -0.050029874
		 0.01681602 -0.054398298 0.015754044 -0.053431749 -0.010658473 -0.056710839 -0.0099437535
		 -0.055629969 -0.036883533 -0.057742476 -0.034496546 -0.056499541 -0.059441626 -0.057132721
		 -0.055691093 -0.055721462 -0.076554477 -0.054397464 -0.071881443 -0.052873135 -0.087291598
		 -0.049078882 -0.082184613 -0.047558844 -0.091589451 -0.040893018 -0.086504877 -0.039543748
		 -0.090106547 -0.029839754 -0.085410118 -0.028849602 -0.08397913 -0.016246378 -0.079916298
		 -0.015798211 -0.074553907 -0.0007635355 -0.07124573 -0.0010057688 -0.06015414 0.016543627
		 -0.048779249 0.031752765 -0.048026383 0.031037807 -0.059125483 0.016144633 -0.037185133
		 0.045854509 -0.036669433 0.044840217 -0.025820225 0.057894588 -0.025497437 0.056622028
		 -0.014850348 0.067058206 -0.014680713 0.065589726 -0.004211843 0.072739244 -0.0041683316
		 0.071152508 0.0063082874 0.074588418 0.0062353015 0.072968721 0.016977042 0.072538376
		 0.016777575 0.07097286 0.028013408 0.066805661 0.027659744 0.065374792 0.039491355
		 0.057868898 0.03894262 0.056639612 0.05125618 0.046421885 0.050466284 0.045442462
		 0.062867299 0.033309042 0.061795279 0.032604337 0.073579147 0.019440651 0.072201625
		 0.019011259 0.082373962 0.0057008266 0.080698162 0.0055233836 0.08805722 -0.0071470737
		 0.086131737 -0.0071145892 0.089418665 -0.018539369 0.087340012 -0.018350244 0.085449263
		 -0.028159618 0.083359972 -0.027868807 0.075581878 -0.035942733 0.073658705 -0.035596371
		 0.059904382 -0.042022407 0.05833517 -0.04164952 0.03927803 -0.046632111 0.038231283
		 -0.046241403 0.015304178 -0.04998064 0.014897406 -0.04956305 -0.0098821223 -0.052141309
		 -0.0096059442 -0.051679015 -0.03395462 -0.052992046 -0.033034891 -0.05246985 -0.054762214
		 -0.052223802 -0.053314537 -0.051642418 -0.070699185 -0.049429417 -0.068889558 -0.048811197
		 -0.080896258 -0.044227839 -0.078909934 -0.043618858 -0.085246742 -0.036392748 -0.083258152
		 -0.035856366 -0.084289014 -0.025946975 -0.082440257 -0.025555074 -0.079000473 -0.013204336
		 -0.077388406 -0.013026595 -0.070563793 0.0012357235 -0.069238782 0.001142621 -0.058951676
		 0.013287783 -0.047975779 0.027878761 -0.045992792 0.026098669 -0.056280196 0.012293696
		 -0.036689699 0.041398764 -0.035309047 0.038874388 -0.025536001 0.052939534 -0.024655581
		 0.049773932 -0.01469335 0.061725318 -0.014220715 0.058072746 -0.004124999 0.067178488
		 -0.0039965808 0.063230574 0.0063459873 0.068964958 0.0061525404 0.064934552 0.016947567
		 0.067019463 0.016408801 0.063121498 0.027862191 0.061547458 0.02691263 0.057981372
		 0.03913559 0.053001821 0.037679657 0.049934745 0.050598904 0.042042196 0.048529938
		 0.039594233 0.061815858 0.029469788 0.059042007 0.027704477 0.072067142 0.016149521
		 0.068541408 0.01507026 0.08038421 0.0029206276 0.076134816 0.00247401 0.085641354
		 -0.0094892383 0.080797508 -0.0094031096 0.086709172 -0.020538509 0.081514701 -0.020047247
		 0.08265768 -0.029917061 0.077465519 -0.029152274 0.072979763 -0.037546456 0.068221569
		 -0.03662014 0.057785794 -0.043533564 0.053916425 -0.042518675 0.037909031 -0.048077881
		 0.035333931 -0.047000289 0.014870673 -0.051358938 0.01387164 -0.050204217 -0.0093132555
		 -0.053435624 -0.0086331666 -0.052169442 -0.032448381 -0.054191351 -0.030183762 -0.052786469
		 -0.052505493 -0.053343475 -0.048932582 -0.051808417 -0.06795761 -0.050522029 -0.063475907
		 -0.048916936 -0.077962458 -0.045385301 -0.073020518 -0.043823838 -0.082390964 -0.037735641
		 -0.077415347 -0.036373377 -0.081722796 -0.027608097 -0.077064455 -0.026619554 -0.076857567
		 -0.01530987 -0.072761536 -0.014863193 -0.06889838 -0.0014149547 -0.065497696 -0.0016461611
		 -0.0558092 0.014179587 -0.045711279 0.027626216 -0.044898152 0.026933372 -0.054727376
		 0.01379317 -0.035180569 0.040073335 -0.034606516 0.039090574 -0.024640024 0.050696373
		 -0.024268508 0.049463868 -0.014282703 0.058789849 -0.014080107 0.057367384 -0.0041123331
		 0.063827097 -0.0040553212 0.062289059 0.0059913397 0.065502346 0.005910933 0.063931644
		 0.01619342 0.063754439 0.015966862 0.062234282 0.02661863 0.058766365 0.026221931
		 0.057374477 0.037270576 0.050947666 0.036668867 0.049748957 0.047964081 0.040893495
		 0.047119096 0.039934993 0.058280811 0.02932781 0.05716072 0.028634965 0.067559436
		 0.017032146 0.066150263 0.016606867 0.074929968 0.0047662854 0.073246732 0.0045892
		 0.079399392 -0.0068079233 0.077495471 -0.0067738891 0.079989195 -0.017191529 0.077960938
		 -0.016994357 0.075913414 -0.026085734 0.073897228 -0.025774777 0.066769138 -0.033392549
		 0.064929783 -0.033010364 0.052698553 -0.039173603 0.051208109 -0.038748682 0.03447175
		 -0.043571889 0.033482432 -0.043115854 0.013449699 -0.046717942 0.013067216 -0.04622817
		 -0.0085834861 -0.048646331 -0.0083206892 -0.04811269 -0.029690325 -0.049250185;
	setAttr ".uvtk[750:999]" -0.028817803 -0.048666 -0.048077792 -0.048291445 -0.046698749
		 -0.047662258 -0.062378407 -0.045464218 -0.060642809 -0.044815004 -0.071812809 -0.040492237
		 -0.069890499 -0.039867222 -0.076222479 -0.033226371 -0.074276328 -0.032685161 -0.075986564
		 -0.023721099 -0.074152231 -0.023330092 -0.07186532 -0.01226902 -0.070239663 -0.012092054
		 -0.06481415 0.0006031394 -0.063451827 0.0005145669 -0.054486692 0.010939121 -0.044779718
		 0.023781776 -0.042641819 0.022058904 -0.051678598 0.0099774003 -0.034564614 0.035661817
		 -0.033033848 0.033219337 -0.024256885 0.0457986 -0.023251086 0.042736113 -0.014058918
		 0.053523719 -0.013501287 0.049989462 -0.0039976835 0.058337629 -0.0038345456 0.054515779
		 0.0060156584 0.059950054 0.0058031082 0.056044996 0.016111284 0.05830133 0.015502721
		 0.054519892 0.026381791 0.053563774 0.025321454 0.05009824 0.036806747 0.046123385
		 0.035214543 0.043134928 0.047190011 0.036542177 0.044979706 0.034148216 0.057119906
		 0.025503397 0.054223076 0.023768425 0.065961957 0.013745427 0.062354863 0.01267761
		 0.072893023 0.0019873381 0.068623707 0.001541853 0.076984018 -0.0091433525 0.072193071
		 -0.0090538859 0.077329203 -0.019169211 0.072259635 -0.018658161 0.0732117 -0.027797461
		 0.068200737 -0.0269835 0.064278945 -0.034920752 0.059728146 -0.033907235 0.050689042
		 -0.040578544 0.047014058 -0.039436698 0.033183306 -0.044886887 0.030749887 -0.04365015
		 0.013049245 -0.047952652 0.012109905 -0.046621799 -0.0080361366 -0.049799025 -0.007389158
		 -0.048359156 -0.028253824 -0.050324678 -0.026105344 -0.048767984 -0.045918941 -0.049312949
		 -0.042515546 -0.047661543 -0.059737265 -0.046490312 -0.055438876 -0.044809282 -0.068957567
		 -0.041612267 -0.064174175 -0.04001224 -0.073405147 -0.034554422 -0.068534195 -0.033180892
		 -0.073410273 -0.025380611 -0.068786979 -0.024394214 -0.069665074 -0.014376223 -0.06553328
		 -0.013930619 -0.063053012 -0.0020431876 -0.059556723 -0.0022628903 -0.051189363 0.011881471
		 -0.042332649 0.023615658 -0.041457087 0.022946 -0.050052464 0.011508226 -0.032875031
		 0.034457803 -0.032240331 0.03350842 -0.023208797 0.043706775 -0.022786677 0.042516232
		 -0.013545036 0.050760984 -0.013308108 0.04938674 -0.0039435625 0.055169702 -0.003872484
		 0.053683221 0.0056360662 0.056670129 0.0055479109 0.055150449 0.015270054 0.055206239
		 0.015015334 0.053733706 0.025001764 0.050930321 0.024560332 0.049579203 0.034776419
		 0.044185936 0.034119725 0.043019354 0.044387892 0.035475075 0.043485969 0.034538627
		 0.053446174 0.025408506 0.052276552 0.02472806 0.061374411 0.014646649 0.059932336
		 0.014226019 0.067442968 0.0038340688 0.065751195 0.0036575198 0.070844129 -0.0064624548
		 0.068960324 -0.0064272285 0.070806473 -0.015805304 0.068826452 -0.015600443 0.066737279
		 -0.023914933 0.064791113 -0.023585081 0.058369204 -0.030669212 0.056609944 -0.030253589
		 0.045880169 -0.036072135 0.044464618 -0.035598695 0.029948145 -0.040194511 0.029013425
		 -0.039677501 0.011714458 -0.043103933 0.011354893 -0.04254657 -0.007350862 -0.04480511
		 -0.0071009099 -0.04420507 -0.025657982 -0.045206308 -0.024830103 -0.04456389 -0.04173103
		 -0.044127882 -0.040417314 -0.04345417 -0.054422289 -0.041349411 -0.052757502 -0.040670991
		 -0.063044161 -0.036681056 -0.061183274 -0.03604126 -0.067404449 -0.030038536 -0.06549865
		 -0.029493153 -0.06775105 -0.021500468 -0.06592989 -0.021110356 -0.064655721 -0.011336684
		 -0.063015163 -0.011160254 -0.058870733 -5.4836273e-06 -0.057469845 -8.9406967e-05
		 -0.049742937 0.0086574554 -0.041268349 0.01980257 -0.038970202 0.018139541 -0.046793699
		 0.0077297091 -0.032134026 0.030093312 -0.030447245 0.027736783 -0.022722661 0.038869619
		 -0.021586359 0.035915375 -0.013251632 0.045565188 -0.012605399 0.042155623 -0.0037997365
		 0.049755931 -0.003600359 0.04606694 0.0056463182 0.051193118 0.0054139197 0.047420323
		 0.015132874 0.049822807 0.014451712 0.046164215 0.024675786 0.045786798 0.023500264
		 0.042426825 0.03420037 0.039407015 0.032466769 0.036501229 0.043493003 0.031153798
		 0.041136429 0.028816819 0.052172482 0.021599889 0.049148321 0.019896865 0.059688747
		 0.011365354 0.05599691 0.010309637 0.065356702 0.0010563731 0.061064258 0.00061225891
		 0.068426952 -0.0087918639 0.063685104 -0.0086994767 0.068192855 -0.017762661 0.063242719
		 -0.01723361 0.064121142 -0.025583386 0.059283525 -0.024723589 0.055985674 -0.03212595
		 0.051632777 -0.031030536 0.04397431 -0.037377179 0.040484071 -0.03611654 0.028736144
		 -0.041386485 0.026437104 -0.040001035 0.011345178 -0.044203699 0.010462254 -0.042708457
		 -0.0068240762 -0.045824766 -0.006208837 -0.044222832 -0.024287462 -0.046163023 -0.022249252
		 -0.044464767 -0.039665371 -0.045057058 -0.036423206 -0.043296993 -0.051877052 -0.042312264
		 -0.047753811 -0.04056108 -0.060263634 -0.03776598 -0.055632234 -0.036130846 -0.064622998
		 -0.031352878 -0.059851825 -0.029969811 -0.065162659 -0.023158729 -0.060570836 -0.022175312
		 -0.062395871 -0.013445258 -0.058225214 -0.013001204 -0.057010949 -0.0026475191 -0.053415358
		 -0.0028551221 -0.046284825 0.009652555 -0.038631856 0.019726634 -0.037691593 0.019081354
		 -0.045091033 0.0092930794 -0.030256659 0.029016137 -0.029558986 0.028101683 -0.021516114
		 0.036936224 -0.021041185 0.035789669 -0.012629986 0.042983592 -0.012357175 0.041660249
		 -0.0037022829 0.046780646 -0.0036165714 0.045348287 0.0052408278 0.048105001 0.0051445663
		 0.046639264 0.014200985 0.046906292 0.01391682 0.045483768 0.023153812 0.043307662
		 0.022665769 0.041999698 0.031998426 0.037591755 0.03128466 0.036458671 0.040517479
		 0.030172288 0.039556503 0.029259145 0.048354685 0.021554589 0.047133714 0.020887196
		 0.055016965 0.012286007 0.053540483 0.011870563 0.059906393 0.0029045939 0.058204636
		 0.0027285218 0.062383428 -0.0061120391 0.060518086 -0.0060758591 0.061859056 -0.01438427
		 0.059925005 -0.014172673 0.057904974 -0.021654189 0.056025729 -0.021306932 0.05036293
		 -0.027784467 0.048680037 -0.027337551 0.039430082 -0.032735288 0.038085669 -0.032216311
		 0.025692642 -0.036521375 0.024809599 -0.035947561 0.01009196 -0.039162755 0.0097540319
		 -0.038542807 -0.0061811805 -0.040641963 -0.0059434772 -0.039980054 -0.021845281 -0.040880978
		 -0.021059871 -0.040184617 -0.035705477 -0.039749146 -0.034453869 -0.039034009 -0.046814382
		 -0.037095428 -0.045217216 -0.036390483 -0.054576665 -0.032800972 -0.05277437 -0.032148242
		 -0.058782846 -0.0268327 -0.056915492 -0.02628386 -0.0595752 -0.019286156;
	setAttr ".uvtk[1000:1249]" -0.057765603 -0.018897474 -0.057365119 -0.01040715
		 -0.055708408 -0.010231376 -0.052725911 -0.00058937073 -0.05128479 -0.00066828728
		 -0.044710338 0.0064460635 -0.037429899 0.015947104 -0.034965158 0.014347076 -0.041614443
		 0.0055540204 -0.029385507 0.024701715 -0.027536213 0.022435427 -0.020922422 0.03216362
		 -0.019649804 0.029323637 -0.012263775 0.037863314 -0.011524796 0.034585178 -0.0035279989
		 0.041447759 -0.0032906532 0.037899137 0.0052364171 0.042708397 0.0049831867 0.039075136
		 0.014006317 0.041597188 0.013249189 0.038068116 0.022734791 0.038227379 0.021439046
		 0.034978926 0.031305581 0.032861292 0.029424816 0.030042708 0.039497316 0.025883377
		 0.036988765 0.0236063 0.046964258 0.017763197 0.043807894 0.016094208 0.053239942
		 0.009010911 0.049459189 0.0079682469 0.057768062 0.0001282692 0.053448588 -0.00031429529
		 0.059961691 -0.0084358454 0.055264324 -0.0083414316 0.059288368 -0.016322553 0.054451331
		 -0.015777349 0.055369824 -0.023282051 0.050697297 -0.022380233 0.048080534 -0.02917397
		 0.043915808 -0.028002918 0.037622333 -0.033946216 0.03430739 -0.032575667 0.024552792
		 -0.037598073 0.022380888 -0.036074877 0.0097520053 -0.040136099 0.0089223683 -0.038488746
		 -0.0056741834 -0.041536868 -0.0050890148 -0.039785326 -0.020537436 -0.041727543 -0.018603623
		 -0.039898396 -0.033728153 -0.040591776 -0.030639023 -0.038731635 -0.044360042 -0.03799969
		 -0.040403575 -0.036183953 -0.05186674 -0.03385365 -0.047380209 -0.032187045 -0.056033999
		 -0.028134942 -0.05135718 -0.026744485 -0.056972027 -0.02094388 -0.052407533 -0.019964278
		 -0.055042863 -0.012517214 -0.05082944 -0.012074769 -0.050763994 -0.0032263994 -0.047064692
		 -0.003421247 -0.041084528 0.0074964166 -0.034596056 0.015965283 -0.033588439 0.015345991
		 -0.039831281 0.0071515441 -0.027312398 0.023757637 -0.026548922 0.022880197 -0.019550264
		 0.030396879 -0.019020021 0.029297113 -0.011529386 0.035472512 -0.011218905 0.034202814
		 -0.003385216 0.038675547 -0.0032840371 0.037300706 0.0048037767 0.03982228 0.0046991408
		 0.038413823 0.012979537 0.038868785 0.012664616 0.037499309 0.02106455 0.035911024
		 0.02052778 0.034648538 0.028924763 0.0311746 0.028151453 0.030077219 0.03634119 0.024992049
		 0.035318792 0.024103463 0.042996079 0.017770171 0.041721553 0.017116666 0.048478276
		 0.0099526644 0.046965569 0.0095425844 0.052311927 0.0019779801 0.050598443 0.0018025041
		 0.054007739 -0.0057580471 0.052158847 -0.0057212114 0.053134248 -0.012932301 0.051243439
		 -0.012714863 0.049399793 -0.01931107 0.047584057 -0.018947959 0.042730778 -0.02475059
		 0.041120201 -0.024275005 0.03332898 -0.029180408 0.032051891 -0.028619707 0.021690547
		 -0.032575011 0.020856321 -0.031948984 0.0085757971 -0.034919381 0.0082582533 -0.034241617
		 -0.0050715208 -0.03618139 -0.0048454106 -0.035462618 -0.018240541 -0.036296248 -0.017495275
		 -0.035550058 -0.029984385 -0.035172462 -0.028791666 -0.034419596 -0.03953746 -0.032714963
		 -0.038004577 -0.031985819 -0.04639557 -0.028859973 -0.044648916 -0.0281955 -0.050346166
		 -0.023613393 -0.048514754 -0.023062229 -0.051449984 -0.017080307 -0.049650192 -0.016693473
		 -0.0499852 -0.0094807148 -0.048310548 -0.009305656 -0.046370387 -0.001146853 -0.044887155
		 -0.0012206435 -0.039376706 0.004309237 -0.033250779 0.012222171 -0.030612022 0.010688782
		 -0.036127478 0.0034549236 -0.026305199 0.019496977 -0.024286062 0.017326593 -0.018844008
		 0.025693774 -0.017428547 0.022974849 -0.011086702 0.030433118 -0.010250419 0.027294815
		 -0.0031788945 0.033429384 -0.0029016733 0.030030012 0.0047839582 0.034512103 0.004509002
		 0.031027615 0.012724549 0.033639312 0.011887848 0.030248344 0.020548165 0.030898452
		 0.019126594 0.027768373 0.028110027 0.026496291 0.026075542 0.023770511 0.035190582
		 0.020737827 0.032523423 0.018524945 0.041484267 0.013997555 0.03818962 0.012365162
		 0.046605974 0.0066841841 0.042730957 0.0056561232 0.050118133 -0.00079673529 0.045766547
		 -0.0012376308 0.051577955 -0.008077085 0.046919256 -0.0079814196 0.050602198 -0.014853477
		 0.045871019 -0.014294446 0.046940386 -0.020901561 0.042423934 -0.019961953 0.040543497
		 -0.026077628 0.036556721 -0.024837852 0.031613618 -0.030304074 0.028464109 -0.028832793
		 0.020618647 -0.0335446 0.018566459 -0.03189528 0.0082633197 -0.035775423 0.007483691
		 -0.033988774 -0.0045830905 -0.036960721 -0.0040265024 -0.035072267 -0.016991735 -0.037040532
		 -0.015156478 -0.035091937 -0.028090447 -0.035934985 -0.025146008 -0.033984125 -0.03716898
		 -0.033565164 -0.033370286 -0.03169167 -0.043751687 -0.029883146 -0.039401948 -0.02818954
		 -0.047626019 -0.024905384 -0.043037087 -0.023510098 -0.048828691 -0.018738508 -0.044286102
		 -0.017764091 -0.047597051 -0.011592388 -0.043335795 -0.011151671 -0.044302225 -0.003778398
		 -0.040493548 -0.0039594769 -0.035574734 0.0054180622 -0.030210257 0.012340128 -0.029132009
		 0.011748016 -0.03425917 0.0050886273 -0.02402696 0.018693864 -0.023194551 0.017855763
		 -0.017297953 0.024103165 -0.016709745 0.023053229 -0.01023373 0.028244436 -0.009883672
		 0.027032375 -0.0029882789 0.030872583 -0.0028708577 0.029559016 0.0043228567 0.031840444
		 0.0042094886 0.030493081 0.011598259 0.031110525 0.011250973 0.029797792 0.018722564
		 0.028754413 0.018134713 0.027540743 0.025541931 0.024945796 0.024706125 0.0238868
		 0.031845391 0.019942045 0.03075859 0.019079983 0.037357837 0.014060557 0.036027074
		 0.013422132 0.041747302 0.0076487064 0.040195823 0.007244885 0.044648975 0.0010545254
		 0.042921394 0.00088000298 0.04570505 -0.0054027438 0.043869942 -0.0053656101 0.044616997
		 -0.011454642 0.042766273 -0.011232257 0.041203171 -0.016894817 0.039447069 -0.016517818
		 0.0354518 -0.02158159 0.03390938 -0.021080315 0.027556956 -0.025427163 0.026343226
		 -0.024828553 0.01792708 -0.028379142 0.017138571 -0.02770561 0.0071594119 -0.030400097
		 0.0068610609 -0.029669762 -0.0040184259 -0.031449378 -0.0038032532 -0.030679166 -0.014831781
		 -0.031475127 -0.014124334 -0.030684114 -0.024550825 -0.030416727 -0.023413539 -0.029629767
		 -0.032573491 -0.028221428 -0.031100988 -0.027470887 -0.038484484 -0.024867058 -0.036790192
		 -0.024193048 -0.042080969 -0.020385981 -0.040282667 -0.019833624 -0.043364376 -0.014885783
		 -0.041571766 -0.014501214 -0.042505443 -0.0085578561 -0.040810496 -0.0083833933 -0.039792538
		 -0.001676023 -0.038264453 -0.0017441511 -0.033727467 0.0022516847 -0.028714776 0.0086363554
		 -0.025893062 0.0071743727 -0.03031683 0.0014381409 -0.022877038 0.014491558;
	setAttr ".uvtk[1250:1499]" -0.020679176 0.012423694 -0.016473383 0.019475281
		 -0.01490742 0.016886294 -0.0097106397 0.023292661 -0.0087715983 0.020304024 -0.0027483702
		 0.025720417 -0.0024287701 0.022481084 0.0042867661 0.026623785 0.003989011 0.02329874
		 0.011279702 0.025967658 0.010359228 0.022724569 0.018103868 0.023815632 0.016549855
		 0.020812988 0.024599314 0.02032429 0.022403181 0.017698407 0.030558079 0.015726209
		 0.027724296 0.013582766 0.035718918 0.010308981 0.032278389 0.0087164044 0.039774656
		 0.004388392 0.035798311 0.0033764839 0.042395085 -0.0017182827 0.038004547 -0.0021572113
		 0.043262482 -0.0077179074 0.038635105 -0.007622242 0.042118371 -0.01336062 0.037484229
		 -0.01279074 0.038813412 -0.018451512 0.034442633 -0.01747942 0.03335312 -0.022851765
		 0.029533118 -0.021551073 0.025927901 -0.02647078 0.022933364 -0.024909616 0.016918451
		 -0.029250622 0.01497829 -0.027487993 0.0068725348 -0.031148612 0.0061395764 -0.029236794
		 -0.0035475492 -0.032123208 -0.0030179322 -0.030111909 -0.013638258 -0.032126129 -0.011895508
		 -0.030070841 -0.022734702 -0.031106353 -0.019926071 -0.029075146 -0.030284911 -0.029023111
		 -0.026634246 -0.027099848 -0.035901129 -0.025864542 -0.031678975 -0.024149537 -0.039384693
		 -0.021670103 -0.034875602 -0.020273209 -0.040720254 -0.016545296 -0.036192626 -0.015577853
		 -0.040046751 -0.010671139 -0.035730779 -0.010232329 -0.037612736 -0.0043010116 -0.033687294
		 -0.0044673681 -0.029738456 0.0034229159 -0.025456101 0.0088605881 -0.024303108 0.008298099
		 -0.02835682 0.0031104684 -0.020382345 0.013838589 -0.01947698 0.013042867 -0.014743805
		 0.018073201 -0.014094055 0.017076969 -0.0087322891 0.021320224 -0.0083402693 0.020169854
		 -0.0025070012 0.023393869 -0.0023723841 0.022146463 0.0037958026 0.024181724 0.0036731064
		 0.022900283 0.010048389 0.023652315 0.0096669197 0.022400975 0.016114324 0.021856189
		 0.015472442 0.020695388 0.021833718 0.018919766 0.020932019 0.017902255 0.027013302
		 0.015033245 0.025858492 0.014199972 0.031424075 0.010432303 0.030033529 0.0098108649
		 0.034809291 0.0053780675 0.033215731 0.0049811006 0.036903143 0.00013512373 0.035158187
		 -3.8504601e-05 0.03745985 -0.005048573 0.035635054 -0.005011797 0.036289126 -0.0099573135
		 0.034474492 -0.0097314119 0.033293962 -0.014416397 0.031592876 -0.014027715 0.028503388
		 -0.018294036 0.027024269 -0.017770588 0.022092968 -0.02149719 0.020938188 -0.02086544
		 0.014386535 -0.023960173 0.013640702 -0.023244798 0.0058362484 -0.025633872 0.0055554807
		 -0.024857104 -0.0030184984 -0.026475191 -0.0028137267 -0.02565968 -0.011606604 -0.026443779
		 -0.010934323 -0.025613606 -0.019386411 -0.025503397 -0.018300891 -0.024687052 -0.025902212
		 -0.023631215 -0.024485946 -0.022862971 -0.030824453 -0.020833433 -0.029178321 -0.020152271
		 -0.033970535 -0.017157555 -0.032201767 -0.016605556 -0.035303444 -0.012705624 -0.033514768
		 -0.012324333 -0.034911484 -0.0076387525 -0.033192933 -0.0074650049 -0.032976985 -0.002174437
		 -0.031400621 -0.0022363067 -0.027743876 0.00028043985 -0.023802042 0.0052005053 -0.020785987
		 0.0038163066 -0.024160713 -0.00048851967 -0.019081652 0.0097005963 -0.01669392 0.0077441335
		 -0.013793975 0.01352793 -0.012068063 0.011079729 -0.0081239343 0.016464531 -0.0070755482
		 0.013638556 -0.0022313893 0.01834482 -0.0018667877 0.015279472 0.003742367 0.019067824
		 0.0034205317 0.015916049 0.009662509 0.018604577 0.0086531341 0.01552248 0.015387207
		 0.016998708 0.013692886 0.014134347 0.020755887 0.014361262 0.01838842 0.011844277
		 0.025581688 0.010860443 0.022570848 0.0087929964 0.029650569 0.0067049861 0.026054084
		 0.0051569939 0.032729387 0.002127409 0.028642088 0.001134038 0.034582675 -0.0026357174
		 0.030143589 -0.0030722022 0.034998059 -0.0073609948 0.030391663 -0.0072667599 0.033816934
		 -0.011851072 0.029268414 -0.011274219 0.030966312 -0.015943885 0.02672857 -0.014945865
		 0.026485592 -0.019514084 0.0228194 -0.018162251 0.020543158 -0.022469699 0.017692
		 -0.020831168 0.013436228 -0.024743974 0.01159966 -0.022883356 0.0055727363 -0.026286542
		 0.0048827231 -0.024265885 -0.0025641322 -0.027054787 -0.0020596385 -0.024937212 -0.010464162
		 -0.02701211 -0.0088072121 -0.024865329 -0.01764217 -0.026129007 -0.014959395 -0.024030149
		 -0.023686558 -0.024390996 -0.020172507 -0.022428095 -0.028294742 -0.021810234 -0.024188936
		 -0.020080745 -0.031291723 -0.01843679 -0.026851952 -0.017043233 -0.032630384 -0.014368355
		 -0.028107882 -0.013410211 -0.032375634 -0.0097539425 -0.027995378 -0.0093177557 -0.030678242
		 -0.0047917366 -0.02662608 -0.0049415231 -0.023553044 0.0015197992 -0.020309985 0.0055404305
		 -0.019076914 0.0050106049 -0.022099942 0.0012263656 -0.016356021 0.0092104673 -0.015372515
		 0.008461535 -0.011868566 0.012329876 -0.011153072 0.011392653 -0.0070117414 0.014726281
		 -0.0065748096 0.013644159 -0.0019358993 0.016268194 -0.0017825961 0.015093625 0.0032197833
		 0.016874552 0.003087163 0.015665591 0.0083194375 0.016520977 0.0079014897 0.01533699
		 0.013223201 0.015239656 0.012523681 0.01413703 0.017779917 0.013115883 0.016807765
		 0.012144089 0.021823347 0.010279775 0.02059558 0.0094788074 0.025173515 0.0068953037
		 0.023718238 0.0062929988 0.02764374 0.0031457543 0.026003361 0.0027570128 0.029054165
		 -0.00077962875 0.027287006 -0.0009521842 0.029250711 -0.0046991706 0.027431101 -0.004663527
		 0.028126955 -0.0084491968 0.026342928 -0.0082217455 0.02564615 -0.011889756 0.023994416
		 -0.01149267 0.02185899 -0.014908195 0.020437449 -0.014366984 0.016913235 -0.017417014
		 0.015812308 -0.016757965 0.011051953 -0.019349575 0.010344982 -0.018599033 0.0045987666
		 -0.020654738 0.0043342113 -0.019839168 -0.0020681918 -0.021292925 -0.001872927 -0.020439386
		 -0.0085512102 -0.021233916 -0.0079114437 -0.020371318 -0.014470726 -0.020458877 -0.013432592
		 -0.019619167 -0.019500077 -0.018965125 -0.018135041 -0.018183887 -0.023391902 -0.016774178
		 -0.021788746 -0.016089261 -0.025993049 -0.013937831 -0.02424863 -0.013388515 -0.027246654
		 -0.010545373 -0.025456995 -0.010168552 -0.027183086 -0.0067242384 -0.025436044 -0.0065516233
		 -0.025902331 -0.0026382208 -0.02427277 -0.0026931763 -0.021400124 -0.0015949607 -0.018486261
		 0.001930058 -0.015260398 0.00063240528 -0.017629236 -0.0023137331 -0.014894068 0.0051451325
		 -0.012302071 0.0033121705 -0.010784686 0.0078774095 -0.0088867247 0.0055853128 -0.0063123107
		 0.0099784732 -0.0051461458 0.007332623 -0.0016221106 0.011334717 -0.001208812 0.008461833
		 0.0031477213 0.011876106 0.0028001964 0.0089161992 0.0078613758 0.01158011;
	setAttr ".uvtk[1500:1749]" 0.0067567527 0.008676827 0.012380123 0.010473728 0.010535181
		 0.0077637434 0.016557425 0.0086287856 0.01400587 0.0062337518 0.020237148 0.0061562061
		 0.017035306 0.0041751266 0.023255199 0.0031963587 0.019488364 0.0016998053 0.025446743
		 -9.3102455e-05 0.021234214 -0.0010638833 0.026657522 -0.0035483837 0.022155493 -0.0039815307
		 0.026760101 -0.0070105195 0.022159874 -0.0069202781 0.025671393 -0.010334432 0.021192819
		 -0.0097565055 0.023370534 -0.013394415 0.019249558 -0.012379944 0.019912332 -0.016087055
		 0.016383976 -0.014696956 0.015434295 -0.018329799 0.012712508 -0.01663053 0.010153979
		 -0.020059168 0.00841102 -0.018119693 0.0043562651 -0.02122587 0.0037048459 -0.019117415
		 -0.0016288161 -0.021792531 -0.0011477172 -0.019589365 -0.0074550509 -0.021732748
		 -0.0058764815 -0.019513845 -0.012790769 -0.021031916 -0.010222197 -0.018882453 -0.017348528
		 -0.019692183 -0.013957143 -0.017702997 -0.020906508 -0.017736733 -0.016902179 -0.016003191
		 -0.023322254 -0.015216589 -0.01893723 -0.013833225 -0.024535298 -0.01221329 -0.020003647
		 -0.011268258 -0.024560392 -0.0088416934 -0.020101577 -0.0084087849 -0.023474634 -0.0052463412
		 -0.019280761 -0.0053774118 -0.016986042 -0.00027912855 -0.014739752 0.0023985505
		 -0.013418823 0.0019060373 -0.015453607 -0.00055104494 -0.011918008 0.0048354864 -0.010849297
		 0.0041393638 -0.0086472929 0.0069054961 -0.0078601837 0.0060349107 -0.0050552189
		 0.0084995031 -0.0045691431 0.0074943304 -0.0012677014 0.0095345378 -0.0010941923
		 0.0084421635 0.0025910735 0.0099586248 0.0024479032 0.0088316202 0.006397754 0.0097537637
		 0.0059402883 0.0086461902 0.010027558 0.0089376569 0.0092654228 0.0079011917 0.013353318
		 0.0075609684 0.012304515 0.0066418648 0.016245633 0.0057025552 0.014937818 0.0049389601
		 0.018575519 0.0034635663 0.01704812 0.0028838515 0.02022016 0.00095939636 0.018525362
		 0.00058072805 0.021071374 -0.00168854 0.019274443 -0.0018595457 0.021046013 -0.0043600798
		 0.019223869 -0.004326582 0.020097435 -0.0069422126 0.018335998 -0.0067161918 0.0182257
		 -0.0093348622 0.016615093 -0.0089340806 0.015485644 -0.011451602 0.014113963 -0.010899246
		 0.011989295 -0.013221502 0.010935634 -0.012543201 0.0079031289 -0.01458776 0.0072305799
		 -0.013811707 0.0034386814 -0.015506566 0.0031881332 -0.014662206 -0.001162976 -0.01594615
		 -0.0009765327 -0.015064716 -0.0056496263 -0.01588589 -0.0050388575 -0.015000403 -0.0097790062
		 -0.015318573 -0.0087827444 -0.014463842 -0.013337463 -0.014251411 -0.012016863 -0.013464034
		 -0.016155571 -0.012710154 -0.014588028 -0.012026787 -0.01811716 -0.010740757 -0.016389728
		 -0.010197639 -0.01916346 -0.0084120631 -0.017365366 -0.0080417991 -0.019289523 -0.005815506
		 -0.01750651 -0.0056445003 -0.018537402 -0.0030623078 -0.016846746 -0.0031089783 -0.01465863
		 -0.0033602118 -0.01273042 -0.0011526942 -0.0092728436 -0.0023508072 -0.010677397
		 -0.0040212274 -0.010280252 0.00085514784 -0.0074638128 -0.00083690882 -0.0074176192
		 0.0025610328 -0.005330801 0.00044637918 -0.0042565167 0.0038768649 -0.0029610991
		 0.0014353991 -0.00091251731 0.004735291 -0.0004453063 0.002080977 0.0024986267 0.0050936341
		 0.0021238625 0.0023521781 0.0058609843 0.0049372315 0.0046530366 0.0022375584 0.0090580285
		 0.0042788386 0.0070489049 0.00174582 0.011972994 0.0031582713 0.0092198551 0.00090432167
		 0.014489979 0.0016384721 0.011077374 -0.00024199486 0.016496897 -0.00019997358 0.012538791
		 -0.001634717 0.017890513 -0.0022639632 0.013531417 -0.0032063127 0.018583238 -0.0044545531
		 0.013996601 -0.0048828721 0.018511355 -0.0066729784 0.013895124 -0.0065898895 0.017643362
		 -0.0088253617 0.013211936 -0.0082541704 0.015987396 -0.010826409 0.011960477 -0.0098082423
		 0.013596505 -0.01260221 0.010184705 -0.011191726 0.01056987 -0.014090717 0.0079595149
		 -0.012352824 0.0070497394 -0.015241563 0.0053878427 -0.01324898 0.0032138824 -0.016015947
		 0.0025954843 -0.013847411 -0.00073695183 -0.016385615 -0.0002772212 -0.01412499 -0.0045932531
		 -0.016333938 -0.0030841827 -0.014069259 -0.0081532598 -0.015855551 -0.0056842864
		 -0.01367873 -0.011237413 -0.014959395 -0.0079503655 -0.012963295 -0.013700575 -0.013669014
		 -0.0097775459 -0.011946142 -0.015440017 -0.012025893 -0.01108861 -0.010663152 -0.016398817
		 -0.010089219 -0.011836708 -0.0091632009 -0.016564578 -0.0079357624 -0.012005448 -0.0075074434
		 -0.015964627 -0.0056581497 -0.011606902 -0.0057672262 -0.009988457 -0.0019552708
		 -0.0086979866 -0.00053572655 -0.0072777569 -0.00098443031 -0.0083648264 -0.0022013783
		 -0.0070255399 0.00075292587 -0.0058611035 0.00011861324 -0.0050453246 0.0018475056
		 -0.0041779578 0.001054585 -0.0028391182 0.0026939511 -0.0022980869 0.0017780662 -0.00049284101
		 0.0032507181 -0.00029611588 0.00225389 0.0019048452 0.0034912229 0.0017505288 0.0024598837
		 0.0042644739 0.0034050345 0.0037636757 0.0023869872 0.0064969063 0.0029991269 0.0056656003
		 0.0020406842 0.0085151494 0.0022960901 0.007380873 0.0014395714 0.010236084 0.0013331175
		 0.0088380873 0.00061488152 0.011583328 0.00015896559 0.0099728405 -0.00039255619
		 0.012490749 -0.0011693835 0.010730118 -0.001534462 0.012906373 -0.0025901198 0.011067778
		 -0.002758503 0.0127967 -0.0040394068 0.010959983 -0.0040098429 0.012150913 -0.0054556727
		 0.010400027 -0.0052350163 0.010983944 -0.0067813396 0.0094027817 -0.0063837767 0.0093382597
		 -0.0079643726 0.0080057383 -0.007409811 0.0072835684 -0.0089600682 0.0062682629 -0.00827384
		 0.0049143732 -0.0097314715 0.0042699277 -0.0089427829 0.0023450255 -0.010249913 0.0021055937
		 -0.0093908906 -0.00029754639 -0.010495543 -0.00011923909 -0.0096005201 -0.0028812885
		 -0.010457039 -0.0022954047 -0.0095621943 -0.0052784979 -0.010133147 -0.0043172538
		 -0.0092754364 -0.0073735118 -0.0095321536 -0.0060882568 -0.0087487698 -0.0090700686
		 -0.0086737275 -0.0075278282 -0.0080001354 -0.010295928 -0.0075882077 -0.0085742772
		 -0.0070573092 -0.011006027 -0.0063178539 -0.0091879666 -0.0059574246 -0.011182368
		 -0.0049141645 -0.0093516111 -0.0047459006 -0.010833025 -0.0034378767 -0.0090694427
		 -0.0034748316 -0.007462889 -0.0049935579 -0.0064807236 -0.0040136576 -0.0027916133
		 -0.0051170588 -0.0032744706 -0.0056007504 -0.0051919222 -0.0031240582 -0.0021489561
		 -0.0046793818 -0.0036536157 -0.0023669004 -0.0013746917 -0.0043074489 -0.0019304454
		 -0.0017787814 -0.00050199032 -0.0040184855 -9.1820955e-05 -0.001388371 0.00043237209
		 -0.0038257241 0.0017895997 -0.0012135506 0.0013895631 -0.0037380457 0.0036399961
		 -0.0012621284 0.0023299754 -0.0037592649 0.0053864121 -0.0015300512 0.0032143593
		 -0.003887713 0.006958276 -0.0020030737 0.0040055811 -0.00411731 0.0082896054 -0.0026567578
		 0.0046697259 -0.0044372678 0.0093216598 -0.0034591556 0.0051775873 -0.0048324466
		 0.010005176 -0.0043718815;
	setAttr ".uvtk[1750:1851]" 0.0055060089 -0.0052849054 0.010303438 -0.0053527951
		 0.0056387186 -0.0057740808 0.010194987 -0.0063585043 0.0055678785 -0.0062789321 0.0096759498
		 -0.0073458552 0.0052945912 -0.0067770481 0.0087617338 -0.0082740784 0.0048287809
		 -0.007247746 0.0074877143 -0.0091058016 0.0041897297 -0.0076710582 0.0059084296 -0.0098085999
		 0.0034052134 -0.0080293417 0.0040954947 -0.010355294 0.0025101006 -0.0083079934 0.0021339357
		 -0.010724962 0.001545012 -0.00849545 0.00011768937 -0.010902524 0.00055414438 -0.0085837841
		 -0.0018560886 -0.010880172 -0.00041714311 -0.0085693598 -0.003693223 -0.010657132
		 -0.0013241768 -0.0084519982 -0.005307436 -0.010240078 -0.0021259785 -0.0082363486
		 -0.0066252947 -0.0096438527 -0.0027867854 -0.0079308152 -0.0075905025 -0.0088903308
		 -0.003278017 -0.0075477958 -0.0081653893 -0.0080094934 -0.0035791993 -0.0071035028
		 -0.0083319545 -0.0070376992 -0.0036789775 -0.006616354 -0.0080914199 -0.0060173273
		 -0.0035751462 -0.0061081052 0.0009778738 -0.0061952472 -0.12593108 -0.039090157 -0.73357415
		 -0.075833857 -0.4079085 -0.011187002 -0.65545326 0.018621191 -0.13236094 -0.053614795
		 -0.69082594 0.05710192 -0.12987673 -0.063343525 -0.71444345 0.094173878 -0.11672038
		 -0.068473577 -0.7265954 0.1275599 -0.092419803 -0.069806695 -0.72843301 0.15492177
		 -0.058439016 -0.068539143 -0.72239947 0.17486937 0.00076180696 -0.0092560835 -0.1165323
		 0.19672617 -0.01790747 -0.065819085 -0.72238564 0.11086088 0.64714646 0.18913537
		 -0.016761184 -0.065705419 0.6573925 0.26489204 -0.11752403 0.19281454 -0.66809267
		 -0.10458899 -0.58998597 -0.12960494 0.69814467 0.18760365 0.74504799 0.17539614 0.78121537
		 0.15348911 0.80152988 0.12374961 0.80291736 0.088557601 0.78436321 0.050399005 0.7465477
		 0.011544764 0.69130576 -0.02613616 0.62109375 -0.061234236 0.53856909 -0.092768431
		 0.44631404 -0.12010729 0.34669068 -0.14287889 0.24179183 -0.16088563 0.13345698 -0.17403704
		 0.023324013 -0.1822992 -0.087099284 -0.18566304 -0.19635603 -0.18412834 -0.30295914
		 -0.17770094 -0.4053143 -0.16640657 -0.50165296 -0.15031898 -0.39171067 -0.0038418472
		 -0.35710233 0.005084902 0.10765064 -0.0091031473 0.20920447 -0.0095616905 0.30250141
		 -0.010970907 0.38280892 -0.012607254 0.44643071 -0.013590731 0.49087214 -0.013106197
		 0.51484483 -0.010591537 0.51815808 -0.0058522224 0.50154841 0.00090837479 0.46649599
		 0.0091343224 0.41505542 0.018014371 0.34971443 0.026606709 0.27327982 0.033968449
		 0.18878722 0.039275169 0.099425375 0.041916937 0.0084709823 0.041567296 -0.080773622
		 0.038218886 -0.1650393 0.032186419 -0.24115196 0.024075538 -0.30609861 0.014719248;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "1CBC89CB-4A63-3238-29B3-ECAA8A035626";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:1814]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "034FAFAE-4819-D9EA-F0AC-CDBD26E6EB77";
	setAttr ".uopa" yes;
	setAttr -s 1852 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.086898386 0.37820375 0.16265367 -0.22570002
		 0.1751212 -0.22570047 0.15018614 -0.22569957 0.13771862 -0.22569911 0.12525108 -0.22569866
		 0.11278355 -0.2256982 0.10031605 -0.22569774 0.087848485 -0.22569731 0.075380951
		 -0.22569685 0.062913477 -0.2256964 0.050445914 -0.22569594 0.037978411 -0.22569549
		 0.025510907 -0.22569504 0.013043344 -0.22569458 0.00057584047 -0.22569413 -0.011891723
		 -0.22569367 -0.024359226 -0.22569323 -0.03682673 -0.22569278 -0.049294293 -0.22569232
		 -0.061761737 -0.22569187 -0.0742293 -0.22569141 0.030050963 0.39668024 0.035134733
		 0.40809572 0.042480707 0.41820481 0.051768124 0.42656559 0.062590718 0.43281278 0.07447575
		 0.43667325 0.086903751 0.43797836 0.20005624 -0.22570138 0.18758869 -0.22570093 0.45032296
		 -0.35729972 0.43078819 -0.35524508 0.46985736 -0.35524759 0.4885377 -0.34917852 0.50554776
		 -0.33935836 0.5201441 -0.32621601 0.53168881 -0.3103261 0.5396775 -0.29238307 0.54376078
		 -0.27317125 0.5437603 -0.25353038 0.53967619 -0.23431882 0.53168678 -0.21637619 0.52014136
		 -0.20048681 0.50554454 -0.18734518 0.48853412 -0.17752573 0.46985373 -0.17145765
		 0.45031968 -0.16940627 0.43078569 -0.1714614 0.41210541 -0.17753354 0.39509502 -0.18735796
		 0.38049743 -0.20050716 -0.082751125 0.3541978 0.28815177 -0.22570458 0.034438133
		 0.40847474 0.27560055 -0.38700518 -0.082024932 0.35419708 0.042034149 0.41860697
		 0.26296628 -0.3870047 0.051414788 0.42705187 0.25037342 -0.38700423 0.062346339 0.43336186
		 0.23778051 -0.38700378 0.074350879 0.43726119 0.22518764 -0.38700333 0.086903811
		 0.43857938 0.21259476 -0.38700289 0.39508966 -0.33934382 0.41210631 -0.34917274 0.45032284
		 -0.35425732 0.43142059 -0.3522692 0.46922466 -0.35227171 0.48730013 -0.34639934 0.50375938
		 -0.3368971 0.51788306 -0.32418036 0.52905416 -0.30880499 0.53678381 -0.29144311 0.54073501
		 -0.27285343 0.54073477 -0.25384849 0.53678274 -0.23525909 0.52905202 -0.21789747
		 0.51788056 -0.2025227 0.5037564 -0.18980664 0.48729685 -0.18030512 0.46922138 -0.17443356
		 0.45031986 -0.17244864 0.43141839 -0.17443722 0.41334304 -0.18031281 0.3968834 -0.18981916
		 0.38275847 -0.20254269 0.37158182 -0.21793675 0.36097798 -0.23432782 0.36386976 -0.23526946
		 0.35689631 -0.25353509 0.35992095 -0.2538535 0.35689661 -0.27317339 0.35992137 -0.27285528
		 0.36097893 -0.29238045 0.36387143 -0.29144049 0.36896369 -0.31031805 0.37159774 -0.30879724
		 0.38049808 -0.32619926 0.38275978 -0.32416528 0.39687935 -0.33688375 0.41334358 -0.34639332
		 0.43165061 -0.3511875 0.45032296 -0.35315141 0.4503229 -0.35194585 0.43190131 -0.35000828
		 0.46899483 -0.35118988 0.46874413 -0.35001072 0.48685047 -0.34538898 0.48635998 -0.34428766
		 0.50310946 -0.33600238 0.50240076 -0.33502707 0.51706135 -0.32344025 0.51616549 -0.32263362
		 0.52809644 -0.30825192 0.52705228 -0.3076492 0.53573227 -0.29110116 0.5345856 -0.29072875
		 0.53963518 -0.27273768 0.53843617 -0.27261168 0.53963482 -0.25396401 0.5384357 -0.25409007
		 0.53573096 -0.23560068 0.5345844 -0.23597327 0.52809429 -0.21845031 0.52705026 -0.21905318
		 0.51705861 -0.20326257 0.51616275 -0.20406932 0.50310624 -0.19070125 0.50239778 -0.19167662
		 0.48684689 -0.18131536 0.48635665 -0.18241674 0.46899131 -0.17551526 0.46874073 -0.17669448
		 0.45031968 -0.17355454 0.4503198 -0.17476007 0.43164816 -0.17551899 0.43189886 -0.17669818
		 0.41379258 -0.18132314 0.41428301 -0.18242443 0.39753327 -0.19071391 0.39824197 -0.19168913
		 0.3835803 -0.20328265 0.38447627 -0.20408913 0.37254044 -0.21848786 0.37358531 -0.21908844
		 0.36492094 -0.23561177 0.36606696 -0.23598465 0.36102054 -0.25396937 0.36221913 -0.25409555
		 0.36102101 -0.27273989 0.3622196 -0.27261388 0.36492297 -0.29109895 0.36606923 -0.29072648
		 0.37255523 -0.30824459 0.37359908 -0.30764198 0.38358197 -0.32342601 0.38447818 -0.32262003
		 0.39752993 -0.33598968 0.39823905 -0.33501491 0.41379359 -0.34538308 0.4142839 -0.34428182
		 0.43213114 -0.34892741 0.45032308 -0.35084084 0.4503229 -0.34780535 0.43276218 -0.34595826
		 0.46851447 -0.34892979 0.46788332 -0.34596059 0.48591074 -0.34327814 0.48467591 -0.34050503
		 0.50175142 -0.334133 0.49996707 -0.33167723 0.51534438 -0.32189411 0.51308823 -0.31986302
		 0.52609539 -0.30709654 0.52346635 -0.30557889 0.53353477 -0.29038715 0.53064764 -0.28944916
		 0.5373373 -0.2724961 0.53431833 -0.27217895 0.53733683 -0.25420547 0.53431785 -0.25452286
		 0.53353322 -0.23631462 0.53064644 -0.2372528 0.52609324 -0.21960551 0.52346432 -0.22112343
		 0.51534152 -0.20480859 0.51308572 -0.20683989 0.50174809 -0.19257048 0.49996397 -0.1950264
		 0.48590705 -0.18342617 0.48467246 -0.18619934 0.46851078 -0.17777535 0.4678798 -0.18074459
		 0.45031962 -0.17586508 0.45031974 -0.17890066 0.43212846 -0.17777908 0.43275979 -0.18074828
		 0.41473231 -0.18343395 0.41596714 -0.18620697 0.39889142 -0.19258317 0.4006758 -0.1950388
		 0.38529739 -0.20482847 0.38755372 -0.20685884 0.37454298 -0.21963933 0.37717357 -0.22115284
		 0.36711743 -0.23632661 0.37000343 -0.23726508 0.3633177 -0.25421131 0.36633572 -0.25452894
		 0.36331823 -0.27249855 0.36633632 -0.27218133 0.36711994 -0.29038525 0.37000611 -0.28944743
		 0.37455592 -0.30708981 0.3771843 -0.30557257 0.38529965 -0.32188135 0.38755611 -0.31985158
		 0.39888909 -0.33412144 0.40067437 -0.33166674 0.4147335 -0.34327248 0.41596827 -0.34049949
		 0.43299183 -0.34487906 0.45032308 -0.34670201 0.45032302 -0.34549919 0.43324175 -0.34370264
		 0.46765402 -0.34488139 0.4674038 -0.34370485 0.48422727 -0.33949706 0.48373803 -0.33839831
		 0.49931863 -0.33078453 0.4986116 -0.32981154 0.51226854 -0.31912464 0.51137459 -0.31831986
		 0.52251101 -0.30502707 0.52146935 -0.30442584 0.52959836 -0.2891081 0.52845454 -0.28873652
		 0.53322101 -0.27206343 0.53202486 -0.27193779 0.53322053 -0.25463802 0.53202438 -0.2547639
		 0.52959704 -0.23759362 0.52845299 -0.23796532 0.52250874 -0.22167498 0.52146709 -0.22227648
		 0.51226568 -0.20757809;
	setAttr ".uvtk[250:499]" 0.51137185 -0.20838293 0.49931517 -0.19591895 0.49860832
		 -0.19689205 0.48422357 -0.18720725 0.48373446 -0.18830606 0.46765026 -0.18182382
		 0.46740028 -0.1830003 0.45031968 -0.18000397 0.45031968 -0.1812067 0.43298897 -0.18182752
		 0.43323913 -0.18300396 0.41641578 -0.18721497 0.41690508 -0.18831366 0.40132436 -0.1959314
		 0.40203133 -0.1969043 0.38837352 -0.20759699 0.38926759 -0.20840141 0.37812957 -0.22170326
		 0.37917182 -0.22230324 0.37105241 -0.23760632 0.37219587 -0.23797795 0.36743268 -0.25464451
		 0.36862853 -0.25477034 0.3674334 -0.27206618 0.36862925 -0.27194053 0.37105533 -0.28910679
		 0.37219891 -0.28873509 0.37813976 -0.30502123 0.37918112 -0.30442005 0.38837644 -0.31911391
		 0.3892704 -0.31830966 0.40132341 -0.33077458 0.40203074 -0.32980201 0.41641727 -0.3394917
		 0.41690645 -0.33839306 0.43347117 -0.34262434 0.45032319 -0.34439686 0.45032308 -0.34136871
		 0.43410072 -0.3396624 0.4671748 -0.3426266 0.46654513 -0.33966455 0.48328981 -0.33739111
		 0.48205796 -0.3346248 0.49796376 -0.32891956 0.49618372 -0.32646975 0.51055551 -0.31758213
		 0.50830495 -0.31555599 0.52051473 -0.30387449 0.517892 -0.30236042 0.52740586 -0.2883957
		 0.524526 -0.28746003 0.53092849 -0.27182239 0.52791679 -0.27150601 0.53092802 -0.25487894
		 0.52791631 -0.25519562 0.52740467 -0.23830584 0.52452457 -0.23924181 0.52051246 -0.22282752
		 0.51788998 -0.22434178 0.51055253 -0.20912051 0.50830209 -0.21114686 0.49796024 -0.1977838
		 0.49618027 -0.20023379 0.48328593 -0.18931311 0.48205432 -0.19207957 0.46717092 -0.18407854
		 0.46654144 -0.18704063 0.4503195 -0.18230915 0.45031968 -0.18533736 0.43346819 -0.1840823
		 0.43409798 -0.18704426 0.4173533 -0.1893208 0.41858521 -0.19208705 0.40267923 -0.19779617
		 0.40445945 -0.20024565 0.39008686 -0.20913887 0.39233765 -0.21116415 0.3801268 -0.22285333
		 0.38275054 -0.22436446 0.37324396 -0.23831883 0.37612346 -0.23925439 0.36972454 -0.25488579
		 0.37273547 -0.25520247 0.36972538 -0.27182549 0.37273619 -0.27150899 0.37324724 -0.28839475
		 0.3761265 -0.28745925 0.3801358 -0.30386919 0.38275793 -0.30235559 0.39008996 -0.31757259
		 0.39234075 -0.31554747 0.40267918 -0.32891062 0.4044598 -0.32646164 0.41735509 -0.3373861
		 0.41858694 -0.33461997 0.43432972 -0.33858588 0.45032325 -0.34026805 0.45032313 -0.33906826
		 0.43457916 -0.33741251 0.46631637 -0.33858791 0.46606699 -0.33741447 0.48161039 -0.33361921
		 0.48112234 -0.33252326 0.49553689 -0.32557917 0.49483159 -0.32460856 0.50748706 -0.31481934
		 0.50659549 -0.31401658 0.51693892 -0.30181003 0.5158999 -0.30121022 0.52347922 -0.28711981
		 0.52233815 -0.28674912 0.52682221 -0.2713908 0.52562904 -0.27126551 0.52682173 -0.25531048
		 0.52562857 -0.25543594 0.52347779 -0.23958179 0.52233684 -0.23995259 0.51693666 -0.22489193
		 0.51589763 -0.22549191 0.5074842 -0.21188322 0.50659251 -0.21268609 0.49553332 -0.20112413
		 0.49482819 -0.20209479 0.48160657 -0.19308496 0.48111859 -0.194181 0.46631244 -0.18811721
		 0.46606311 -0.1892907 0.4503195 -0.18643796 0.45031968 -0.18763769 0.43432674 -0.18812087
		 0.43457618 -0.18929434 0.41903272 -0.19309253 0.41952083 -0.19418842 0.40510628 -0.20113602
		 0.40581152 -0.20210645 0.3931556 -0.21190038 0.39404735 -0.21270272 0.38370386 -0.22491395
		 0.38474324 -0.22551283 0.37717 -0.23959455 0.37831077 -0.23996523 0.37382969 -0.25531769
		 0.37502262 -0.25544322 0.37383053 -0.27139425 0.37502351 -0.27126884 0.37717304 -0.28711939
		 0.37831387 -0.28674871 0.38371113 -0.30180568 0.38474992 -0.30120599 0.39315894 -0.31481153
		 0.39405069 -0.31400919 0.40510717 -0.32557166 0.40581253 -0.32460135 0.41903481 -0.33361468
		 0.41952291 -0.33251879 0.43480793 -0.33633688 0.45032337 -0.33796874 0.45032331 -0.33494845
		 0.43543586 -0.33338276 0.46583846 -0.33633885 0.46521047 -0.3333846 0.48067525 -0.33151868
		 0.47944668 -0.32875952 0.49418542 -0.32371891 0.49240991 -0.32127553 0.50577843 -0.31328076
		 0.50353372 -0.31125981 0.51494765 -0.30066025 0.51233184 -0.29915017 0.52129257 -0.28640926
		 0.51841986 -0.28547597 0.52453542 -0.27115035 0.5215317 -0.2708348 0.52453494 -0.2555508
		 0.52153099 -0.25586659 0.52129102 -0.24029222 0.51841843 -0.24122569 0.51494527 -0.22604159
		 0.5123297 -0.22755191 0.50577533 -0.2134217 0.50353086 -0.21544284 0.49418172 -0.20298427
		 0.49240652 -0.20542789 0.48067126 -0.19518545 0.47944286 -0.19794479 0.46583429 -0.19036624
		 0.46520647 -0.1933206 0.4503195 -0.18873727 0.45031956 -0.19175759 0.43480465 -0.19036987
		 0.43543282 -0.19332415 0.41996804 -0.19519296 0.42119667 -0.19795194 0.40645775 -0.20299602
		 0.40823337 -0.205439 0.39486453 -0.21343827 0.39710948 -0.21545812 0.38569579 -0.22606197
		 0.38831207 -0.22757003 0.37935641 -0.24030504 0.38222858 -0.24123785 0.37611601 -0.25555831
		 0.37911907 -0.25587398 0.3761169 -0.27115417 0.37912002 -0.27083844 0.37935945 -0.2864092
		 0.3822315 -0.28547609 0.38570228 -0.30065656 0.38831767 -0.29914689 0.39486805 -0.31327391
		 0.39711282 -0.31125385 0.4064593 -0.32371223 0.40823504 -0.32126951 0.41997042 -0.33151451
		 0.42119899 -0.32875559 0.43566439 -0.33230922 0.45032349 -0.33385089 0.45032343 -0.33265439
		 0.43591312 -0.33113888 0.46498236 -0.33231083 0.46473351 -0.33114055 0.4790003 -0.32775667
		 0.47851357 -0.32666364 0.49176487 -0.32038736 0.4910616 -0.31941944 0.50271809 -0.31052524
		 0.50182879 -0.30972469 0.51138139 -0.29860127 0.5103451 -0.29800308 0.51737595 -0.28513664
		 0.51623797 -0.28476697 0.52043998 -0.27071989 0.51925004 -0.27059495 0.52043939 -0.25598121
		 0.51924956 -0.25610632 0.51737452 -0.24156478 0.51623654 -0.24193451 0.511379 -0.22810057
		 0.51034284 -0.22869888 0.50271499 -0.21617723 0.50182581 -0.21697783 0.49176112 -0.20631588
		 0.4910579 -0.20728385 0.47899625 -0.19894749 0.47850969 -0.20004058 0.46497807 -0.19439429
		 0.46472946 -0.1955646 0.4503195 -0.19285524 0.4503195 -0.19405171 0.43566087 -0.19439778;
	setAttr ".uvtk[500:749]" 0.43590972 -0.19556811 0.42164305 -0.1989547 0.42212972
		 -0.20004764 0.40887842 -0.20632699 0.40958187 -0.20729479 0.39792529 -0.21619245
		 0.39881459 -0.21699259 0.38926288 -0.22811833 0.39029923 -0.22871587 0.38327238 -0.241577
		 0.38441011 -0.24194655 0.38021061 -0.2559889 0.3814002 -0.25611389 0.3802115 -0.27072394
		 0.38140121 -0.27059889 0.38327536 -0.28513718 0.38441297 -0.28476757 0.38926819 -0.29859847
		 0.3903043 -0.2980004 0.3979288 -0.31051981 0.39881805 -0.3097195 0.40888062 -0.32038188
		 0.40958402 -0.31941426 0.42164579 -0.32775298 0.42213246 -0.32666013 0.43614128 -0.33006641
		 0.45032361 -0.3315579 0.45032355 -0.32854614 0.43676749 -0.32712057 0.46450576 -0.3300679
		 0.46387938 -0.32712206 0.47806779 -0.32566178 0.47684261 -0.32291049 0.49041715 -0.31853223
		 0.48864672 -0.31609577 0.50101411 -0.30899078 0.49877575 -0.3069756 0.5093956 -0.2974546
		 0.50678718 -0.29594886 0.51519513 -0.28442794 0.51233065 -0.28349739 0.51815951 -0.27048016
		 0.51516414 -0.27016544 0.51815891 -0.25622082 0.51516366 -0.25653577 0.51519358 -0.24227324
		 0.51232922 -0.24320409 0.5093931 -0.229247 0.5067848 -0.23075303 0.50101078 -0.21771154
		 0.49877271 -0.21972695 0.49041322 -0.20817092 0.48864308 -0.21060768 0.47806349 -0.20104223
		 0.47683856 -0.20379376 0.46450135 -0.19663721 0.4638752 -0.19958317 0.45031932 -0.19514826
		 0.45031956 -0.19816002 0.43613753 -0.1966407 0.43676397 -0.19958654 0.42257562 -0.20104939
		 0.42380086 -0.2038005 0.41022637 -0.20818189 0.41199687 -0.21061793 0.3996295 -0.2177262
		 0.40186808 -0.21974039 0.39124897 -0.22926375 0.39385769 -0.23076805 0.38545278 -0.2422854
		 0.38831708 -0.24321547 0.38249061 -0.25622869 0.38548538 -0.25654334 0.3824915 -0.27048451
		 0.38548627 -0.27016973 0.38545576 -0.28442895 0.3883197 -0.28349853 0.39125404 -0.29745251
		 0.39386204 -0.29594713 0.3996332 -0.30898625 0.40187153 -0.30697179 0.41022894 -0.31852746
		 0.41199955 -0.31609154 0.42257878 -0.32565862 0.42380384 -0.32290757 0.4369953 -0.32605007
		 0.45032373 -0.32745174 0.45032373 -0.32625881 0.43724325 -0.32488334 0.46365198 -0.32605138
		 0.46340397 -0.32488459 0.47639766 -0.3219105 0.4759123 -0.32082081 0.48800352 -0.3152101
		 0.48730221 -0.3142451 0.49796245 -0.30624312 0.49707595 -0.30544496 0.50583935 -0.29540139
		 0.50480616 -0.29480505 0.51128972 -0.28315902 0.5101552 -0.28279048 0.51407552 -0.27005088
		 0.51288915 -0.26992625 0.51407504 -0.25664997 0.51288855 -0.25677478 0.51128817 -0.24354216
		 0.51015365 -0.24391088 0.50583673 -0.23130015 0.50480366 -0.23189673 0.49795911 -0.22045919
		 0.49707267 -0.22125748 0.48799959 -0.21149305 0.48729846 -0.2124581 0.47639331 -0.20479354
		 0.47590813 -0.20588335 0.46364751 -0.2006537 0.46339962 -0.20182055 0.45031938 -0.19925448
		 0.4503195 -0.20044741 0.43699136 -0.20065716 0.4372395 -0.20182386 0.42424592 -0.20480037
		 0.42473122 -0.20589006 0.41264012 -0.2115033 0.41334149 -0.21246818 0.40268144 -0.22047257
		 0.40356812 -0.22127041 0.39480558 -0.23131499 0.39583883 -0.23191091 0.38935778 -0.24355373
		 0.39049229 -0.24392214 0.3865737 -0.25665796 0.38775995 -0.25678247 0.3865746 -0.27005553
		 0.38776085 -0.2699309 0.38936058 -0.28316069 0.39049491 -0.28279203 0.39480993 -0.2954002
		 0.395843 -0.29480392 0.4026852 -0.30623984 0.4035717 -0.30544186 0.41264316 -0.31520641
		 0.41334441 -0.31424159 0.42424932 -0.32190788 0.4247345 -0.32081819 0.43747082 -0.32381403
		 0.45032385 -0.32516557 0.45032379 -0.32216316 0.43809506 -0.32087731 0.4631767 -0.32381517
		 0.4625524 -0.32087839 0.47546777 -0.31982189 0.47424647 -0.31707907 0.48665974 -0.31336051
		 0.48489472 -0.3109315 0.49626353 -0.30471325 0.49403211 -0.30270433 0.5038594 -0.29425824
		 0.50125897 -0.29275715 0.50911546 -0.2824524 0.5062598 -0.28152478 0.51180184 -0.26981181
		 0.50881577 -0.26949817 0.51180124 -0.25688887 0.50881517 -0.25720292 0.50911379 -0.24424854
		 0.50625825 -0.24517652 0.50385678 -0.23244324 0.50125659 -0.23394468 0.49626008 -0.22198889
		 0.4940289 -0.2239981 0.48665562 -0.21334252 0.48489097 -0.21577173 0.4754633 -0.20688209
		 0.47424224 -0.20962507 0.46317217 -0.20288995 0.46254799 -0.20582682 0.45031932 -0.20154065
		 0.4503195 -0.20454308 0.43746659 -0.20289329 0.43809107 -0.20583001 0.42517582 -0.20688882
		 0.42639729 -0.20963132 0.41398397 -0.21335253 0.41574916 -0.21578103 0.40438059 -0.22200179
		 0.40661225 -0.22400996 0.39678577 -0.23245725 0.39938626 -0.23395726 0.39153191 -0.24425992
		 0.39438739 -0.24518707 0.38884714 -0.25689697 0.3918328 -0.25721055 0.38884798 -0.26981682
		 0.39183351 -0.26950294 0.39153466 -0.28245455 0.39438978 -0.28152686 0.39678988 -0.2942577
		 0.39938983 -0.2927568 0.4043844 -0.30471069 0.40661576 -0.30270225 0.41398731 -0.31335741
		 0.41575238 -0.310929 0.42517945 -0.31981969 0.42640087 -0.3170771 0.43832216 -0.31981039
		 0.45032403 -0.32107222 0.45032397 -0.31988329 0.4385694 -0.31864733 0.46232584 -0.31981122
		 0.46207854 -0.31864822 0.47380289 -0.31608236 0.4733192 -0.31499618 0.48425367 -0.31004876
		 0.48355469 -0.30908686 0.49322143 -0.30197418 0.49233773 -0.30117857 0.50031435 -0.29221147
		 0.49928448 -0.29161704 0.5052222 -0.28118742 0.50409126 -0.28082007 0.50773072 -0.26938391
		 0.50654805 -0.26925969 0.50773013 -0.25731677 0.50654757 -0.25744116 0.50522065 -0.24551353
		 0.50408971 -0.24588105 0.50031161 -0.23448995 0.49928191 -0.23508456 0.49321792 -0.22472796
		 0.4923344 -0.22552368 0.48424956 -0.21665421 0.48355064 -0.21761626 0.47379825 -0.21062168
		 0.47331467 -0.21170798 0.46232095 -0.20689395 0.46207383 -0.20805708 0.45031938 -0.20563406
		 0.45031938 -0.20682311 0.43831775 -0.20689714 0.43856511 -0.20806012 0.42684087 -0.21062806
		 0.42732462 -0.21171412 0.41639021 -0.2166636 0.41708931 -0.21762532 0.40742299 -0.22473976
		 0.40830663 -0.22553501 0.40033099 -0.23450258 0.40136084 -0.23509672 0.39542481 -0.24552426;
	setAttr ".uvtk[750:999]" 0.39655575 -0.24589142 0.39291766 -0.25732476 0.39410004
		 -0.25744897 0.3929185 -0.26938915 0.39410082 -0.26926488 0.39542744 -0.2811901 0.39655808
		 -0.28082263 0.40033481 -0.29221171 0.40136448 -0.29161727 0.40742674 -0.30197263
		 0.40831032 -0.30117726 0.41639397 -0.31004667 0.41709289 -0.30908489 0.42684481 -0.31608069
		 0.42732844 -0.31499451 0.43879613 -0.31758165 0.45032421 -0.31879359 0.45032409 -0.31580144
		 0.43941823 -0.31465501 0.46185216 -0.31758231 0.46122989 -0.31465554 0.47287616 -0.31400061
		 0.47165886 -0.3112672 0.48291436 -0.30820525 0.48115537 -0.30578452 0.49152812 -0.30044931
		 0.48930421 -0.29844719 0.49834093 -0.29107207 0.49574926 -0.28957599 0.50305498 -0.28048319
		 0.50020909 -0.27955872 0.50546443 -0.26914561 0.50248849 -0.26883304 0.50546384 -0.25755489
		 0.5024879 -0.25786781 0.50305331 -0.24621758 0.50020742 -0.24714246 0.49833807 -0.23562929
		 0.49574682 -0.23712561 0.49152449 -0.2262527 0.48930082 -0.228255 0.48291001 -0.21849766
		 0.48115137 -0.22091866 0.47287133 -0.21270332 0.47165439 -0.215437 0.4618471 -0.20912278
		 0.46122518 -0.21204975 0.45031926 -0.20791271 0.4503195 -0.21090496 0.43879142 -0.20912594
		 0.43941388 -0.21205261 0.42776766 -0.21270958 0.42898503 -0.21544281 0.41772971 -0.21850681
		 0.41948882 -0.220927 0.40911636 -0.22626403 0.41134045 -0.22826537 0.4023045 -0.23564139
		 0.40489611 -0.23713657 0.39759198 -0.24622813 0.40043768 -0.24715212 0.39518365 -0.25756299
		 0.39815918 -0.25787538 0.39518443 -0.26915115 0.39815995 -0.26883835 0.39759436 -0.28048623
		 0.40043989 -0.27956176 0.40230826 -0.29107279 0.40489945 -0.28957707 0.40912029 -0.30044848
		 0.41134402 -0.29844677 0.41773364 -0.30820376 0.41949263 -0.30578339 0.42777196 -0.3139993
		 0.42898908 -0.31126612 0.43964455 -0.31359172 0.45032433 -0.31471443 0.45032439 -0.31352967
		 0.43989083 -0.31243289 0.46100411 -0.31359214 0.4607577 -0.31243324 0.47121689 -0.31027395
		 0.47073498 -0.3091917 0.48051652 -0.30490488 0.47982004 -0.30394644 0.48849645 -0.29771966
		 0.48761597 -0.29692692 0.49480793 -0.28903228 0.49378178 -0.28843999 0.49917516 -0.27922249
		 0.49804834 -0.27885658 0.50140727 -0.2687192 0.500229 -0.26859546 0.50140667 -0.2579813
		 0.50022829 -0.25810528 0.49917343 -0.24747822 0.49804661 -0.24784443 0.49480513 -0.23766896
		 0.49377915 -0.23826137 0.48849276 -0.2289823 0.48761234 -0.22977522 0.48051211 -0.22179806
		 0.47981581 -0.22275659 0.47121206 -0.21643007 0.47073022 -0.21751243 0.46099898 -0.21311301
		 0.46075276 -0.2142719 0.4503192 -0.21199206 0.45031938 -0.21317673 0.43963978 -0.21311599
		 0.43988612 -0.21427476 0.42942706 -0.21643588 0.42990908 -0.21751803 0.42012772 -0.22180644
		 0.4208242 -0.2227647 0.41214827 -0.22899273 0.41302881 -0.22978511 0.40583757 -0.23767999
		 0.40686366 -0.23827204 0.40147147 -0.24748805 0.40259823 -0.24785396 0.39924029 -0.25798923
		 0.40041843 -0.25811297 0.39924106 -0.26872492 0.40041921 -0.26860106 0.40147379 -0.27922606
		 0.40260038 -0.27886003 0.40584102 -0.28903383 0.406867 -0.2884416 0.41215214 -0.29771966
		 0.41303262 -0.29692709 0.42013177 -0.30490416 0.42082819 -0.3039459 0.42943159 -0.31027317
		 0.42991337 -0.30919099 0.44011685 -0.31137115 0.45032457 -0.31244409 0.45032445 -0.30946338
		 0.44073656 -0.30845565 0.46053222 -0.31137139 0.45991227 -0.30845571 0.47029355 -0.30819982
		 0.46908095 -0.30547673 0.47918203 -0.30306798 0.47742972 -0.30065656 0.48680916 -0.29620034
		 0.48459378 -0.29420584 0.49284163 -0.28789693 0.49025998 -0.2864067 0.4970158 -0.27852076
		 0.49418065 -0.27759987 0.49914923 -0.26848167 0.49618456 -0.26817036 0.49914858 -0.25821853
		 0.49618396 -0.25853032 0.49701402 -0.24817964 0.49417904 -0.24910107 0.49283877 -0.23880407
		 0.49025729 -0.24029478 0.48680535 -0.23050144 0.48459026 -0.23249629 0.47917745 -0.22363481
		 0.47742549 -0.22604653 0.47028849 -0.21850416 0.46907625 -0.22122741 0.46052679 -0.21533379
		 0.4599072 -0.21824956 0.45031914 -0.21426237 0.45031938 -0.21724319 0.44011167 -0.21533674
		 0.44073173 -0.21825224 0.43035045 -0.21850985 0.43156323 -0.22123265 0.42146227 -0.22364303
		 0.4232147 -0.22605398 0.41383556 -0.23051152 0.416051 -0.23250535 0.4078038 -0.2388148
		 0.41038552 -0.24030438 0.40363064 -0.24818948 0.40646562 -0.24911001 0.40149805 -0.25822663
		 0.40446243 -0.25853783 0.40149882 -0.26848781 0.4044632 -0.26817608 0.40363297 -0.27852482
		 0.40646771 -0.27760381 0.40780726 -0.28789908 0.41038874 -0.28640884 0.41383955 -0.29620099
		 0.41605482 -0.29420674 0.42146668 -0.30306786 0.42321882 -0.30065662 0.43035528 -0.30819941
		 0.43156776 -0.30547655 0.44096199 -0.30739659 0.45032468 -0.3083806 0.45032462 -0.30720073
		 0.44120726 -0.30624247 0.45968738 -0.30739659 0.45944187 -0.30624241 0.46864066 -0.30448741
		 0.46816072 -0.30340952 0.4767935 -0.29978037 0.47609976 -0.29882586 0.48378918 -0.29348117
		 0.48291227 -0.29269171 0.48932227 -0.28586513 0.48830035 -0.28527516 0.49315092 -0.27726507
		 0.49202862 -0.27690053 0.49510768 -0.26805699 0.49393412 -0.26793379 0.49510708 -0.25864333
		 0.49393347 -0.25876671 0.49314907 -0.24943545 0.4920269 -0.24980015 0.48931941 -0.24083593
		 0.48829755 -0.24142608 0.48378536 -0.23322061 0.48290852 -0.23401031 0.47678879 -0.22692248
		 0.47609529 -0.22787711 0.46863553 -0.22221652 0.46815565 -0.22329447 0.4596819 -0.21930858
		 0.45943668 -0.2204628 0.45031914 -0.21832594 0.45031932 -0.21950585 0.44095668 -0.21931136
		 0.44120213 -0.22046542 0.43200347 -0.22222182 0.43248352 -0.22329965 0.42385104 -0.22692999
		 0.42454466 -0.22788438 0.4168556 -0.23322985 0.41773269 -0.23401913 0.4113231 -0.24084577
		 0.41234514 -0.2414355 0.40749535 -0.24944469 0.40861753 -0.24980909 0.40553924 -0.25865114
		 0.40671274 -0.25877434 0.40553996 -0.26806319 0.4067134 -0.26793975 0.40749756 -0.27726948
		 0.40861961 -0.27690488 0.41132656 -0.28586787 0.4123483 -0.28527796 0.41685972 -0.2934826;
	setAttr ".uvtk[1000:1249]" 0.4177365 -0.29269314 0.42385557 -0.29978091 0.42454913
		 -0.2988264 0.43200842 -0.30448753 0.43248841 -0.30340964 0.44143233 -0.30518508 0.45032492
		 -0.30611956 0.45032474 -0.30315167 0.44204929 -0.30228204 0.45921746 -0.30518484
		 0.45860013 -0.30228186 0.46772113 -0.30242175 0.46651366 -0.29971039 0.47546443 -0.29795104
		 0.47371963 -0.29554999 0.48210886 -0.29196805 0.47990301 -0.28998226 0.48736414 -0.28473437
		 0.48479345 -0.28325057 0.49100038 -0.27656615 0.48817745 -0.27564925 0.4928588 -0.26782048
		 0.48990688 -0.26751047 0.4928582 -0.25887948 0.48990628 -0.25919002 0.49099854 -0.25013411
		 0.48817566 -0.25105155 0.48736104 -0.24196646 0.48479071 -0.24345073 0.48210481 -0.23473361
		 0.47989926 -0.23671988 0.47545955 -0.22875169 0.4737151 -0.23115304 0.46771571 -0.22428212
		 0.46650872 -0.22699371 0.45921162 -0.2215203 0.45859477 -0.22442353 0.45031908 -0.22058696
		 0.45031938 -0.22355494 0.44142666 -0.22152299 0.44204411 -0.22442594 0.43292311 -0.22428727
		 0.4341307 -0.22699842 0.42518005 -0.22875896 0.42692497 -0.23115966 0.41853598 -0.23474255
		 0.42074195 -0.23672792 0.41328135 -0.24197605 0.41585204 -0.24345937 0.40964571 -0.25014335
		 0.41246858 -0.25105989 0.40778777 -0.25888753 0.41073951 -0.25919747 0.40778854 -0.26782703
		 0.41074023 -0.26751661 0.40964797 -0.27657109 0.41247067 -0.2756539 0.41328475 -0.28473771
		 0.41585502 -0.28325385 0.41854027 -0.29197001 0.42074594 -0.28998423 0.42518494 -0.29795206
		 0.42692944 -0.29555112 0.43292841 -0.30242229 0.43413559 -0.29971105 0.44227377 -0.30122781
		 0.45032504 -0.30207378 0.45032504 -0.30089933 0.44251785 -0.30007905 0.45837632 -0.30122739
		 0.45813194 -0.30007863 0.46607551 -0.29872566 0.46559772 -0.29765278 0.47308627 -0.29467773
		 0.47239575 -0.29372758 0.4791021 -0.2892608 0.47822914 -0.28847498 0.48386011 -0.28271139
		 0.48284277 -0.28212422 0.48715225 -0.27531594 0.48603514 -0.27495307 0.48883483 -0.26739752
		 0.48766664 -0.26727486 0.48883423 -0.25930244 0.4876661 -0.25942534 0.48715034 -0.25138438
		 0.48603329 -0.25174743 0.48385701 -0.24398944 0.48283979 -0.24457684 0.47909799 -0.23744091
		 0.4782252 -0.23822692 0.47308126 -0.23202494 0.47239104 -0.23297521 0.46607003 -0.22797832
		 0.46559235 -0.22905138 0.45837048 -0.22547784 0.4581264 -0.22662672 0.45031908 -0.22463286
		 0.45031926 -0.2258074 0.44226798 -0.22548035 0.4425123 -0.22662917 0.43456885 -0.22798315
		 0.43504676 -0.22905591 0.42755845 -0.23203173 0.42824891 -0.23298177 0.42154291 -0.2374492
		 0.42241594 -0.23823479 0.41678539 -0.24399838 0.41780266 -0.24458542 0.41349372 -0.25139314
		 0.41461083 -0.25175583 0.4118115 -0.25931036 0.41297963 -0.25943291 0.41181222 -0.2674042
		 0.41298029 -0.26728129 0.41349581 -0.27532113 0.4146128 -0.27495807 0.41678873 -0.2827152
		 0.41780582 -0.28212792 0.4215472 -0.28926331 0.42242 -0.28847748 0.42756334 -0.29467928
		 0.42825362 -0.29372925 0.43457434 -0.2987265 0.43505201 -0.29765356 0.4427419 -0.29902667
		 0.45032528 -0.29982334 0.4503251 -0.29687011 0.44335589 -0.29613799 0.45790854 -0.29902607
		 0.4572942 -0.29613733 0.46516028 -0.2966696 0.46395877 -0.29397166 0.47176346 -0.29285693
		 0.47002724 -0.2904678 0.47742966 -0.28775471 0.4752346 -0.2857787 0.48191103 -0.28158599
		 0.47935304 -0.28010952 0.48501185 -0.27462029 0.48220274 -0.27370793 0.48659649 -0.26716214
		 0.48365918 -0.26685375 0.48659584 -0.25953752 0.48365852 -0.25984657 0.48500988 -0.25207973
		 0.48220089 -0.25299269 0.48190781 -0.24511465 0.47935 -0.24659166 0.47742531 -0.23894677
		 0.47523054 -0.2409232 0.47175828 -0.23384562 0.47002253 -0.23623511 0.46515444 -0.23003426
		 0.46395341 -0.23273239 0.45790228 -0.22767922 0.45728859 -0.23056802 0.45031896 -0.22688332
		 0.45031932 -0.22983667 0.44273576 -0.22768161 0.44335017 -0.23057023 0.4354842 -0.23003891
		 0.43668583 -0.23273662 0.42888126 -0.2338523 0.43061754 -0.23624107 0.42321542 -0.23895487
		 0.42541054 -0.24093041 0.4187344 -0.24512348 0.42129239 -0.24659953 0.41563407 -0.25208849
		 0.41844299 -0.2530005 0.41404966 -0.25954568 0.41698685 -0.2598539 0.41405043 -0.26716912
		 0.41698751 -0.26686013 0.41563627 -0.27462596 0.4184449 -0.27371323 0.41873792 -0.28159028
		 0.42129537 -0.28011364 0.42321983 -0.28775781 0.42541453 -0.28578168 0.42888638 -0.2928589
		 0.43062225 -0.29046983 0.43548998 -0.29667079 0.43669114 -0.29397297 0.44357911 -0.29508924
		 0.4503254 -0.29579782 0.45032528 -0.29462975 0.44382188 -0.29394662 0.45707157 -0.29508847
		 0.45682862 -0.29394585 0.46352288 -0.29299206 0.46304753 -0.29192489 0.46939716 -0.28960007
		 0.46871039 -0.2886551 0.47443792 -0.285061 0.4735696 -0.28427941 0.47842452 -0.27957308
		 0.47741273 -0.27898914 0.48118302 -0.27337629 0.48007187 -0.27301538 0.48259273 -0.26674139
		 0.4814308 -0.26661938 0.48259202 -0.25995833 0.4814302 -0.26008058 0.48118106 -0.25332373
		 0.48006997 -0.25368488 0.4784213 -0.24712756 0.47740963 -0.24771181 0.47443351 -0.24164054
		 0.47356543 -0.24242225 0.46939197 -0.23710248 0.46870539 -0.23804763 0.46351698 -0.23371181
		 0.46304193 -0.23477915 0.45706531 -0.23161682 0.45682266 -0.23275951 0.45031902 -0.2309089
		 0.45031914 -0.23207703 0.44357291 -0.23161909 0.44381586 -0.23276165 0.43712172 -0.23371628
		 0.43759701 -0.23478326 0.43124762 -0.23710874 0.43193439 -0.23805353 0.42620721 -0.24164805
		 0.42707548 -0.24242947 0.42222086 -0.24713585 0.42323264 -0.24771962 0.41946265 -0.25333214
		 0.4205738 -0.25369281 0.4180533 -0.25996625 0.41921499 -0.26008821 0.41805401 -0.26674843
		 0.41921577 -0.26662618 0.41946486 -0.27338219 0.42057583 -0.27302116 0.42222431 -0.27957785
		 0.42323592 -0.27899373 0.42621163 -0.28506458 0.42707971 -0.28428292 0.43125287 -0.28960258
		 0.43193945 -0.28865755 0.43712756 -0.29299361 0.43760267 -0.29192644 0.44404468 -0.29290009
		 0.45032558 -0.29355973 0.4503254 -0.29062361 0.44465497 -0.2900281 0.45660642 -0.29289913;
	setAttr ".uvtk[1250:1499]" 0.45599559 -0.2900272 0.46261266 -0.2909472 0.46141794
		 -0.28826505 0.46808168 -0.28778917 0.46635541 -0.28541398 0.47277454 -0.2835632 0.47059217
		 -0.28159869 0.47648612 -0.27845383 0.47394302 -0.27698606 0.47905424 -0.27268445
		 0.47626147 -0.27177745 0.48036662 -0.26650721 0.47744629 -0.26620072 0.48036584 -0.26019222
		 0.47744563 -0.26049942 0.4790521 -0.25401527 0.47625956 -0.25492299 0.47648266 -0.24824652
		 0.47393987 -0.24971497 0.47276995 -0.24313805 0.470588 -0.24510309 0.46807614 -0.23891321
		 0.46635053 -0.24128887 0.46260646 -0.23575655 0.46141246 -0.23843905 0.4565998 -0.2338061
		 0.45598963 -0.23667821 0.4503189 -0.23314705 0.4503192 -0.23608324 0.44403806 -0.23380837
		 0.44464901 -0.23668018 0.43803206 -0.2357609 0.43922684 -0.23844287 0.43256316 -0.23891935
		 0.43428949 -0.24129429 0.42787054 -0.24314561 0.43005297 -0.24510965 0.42415926 -0.24825481
		 0.42670235 -0.24972224 0.42159143 -0.25402373 0.42438409 -0.2549305 0.42027923 -0.26020032
		 0.42319939 -0.26050669 0.42027995 -0.26651466 0.4232001 -0.2662074 0.4215937 -0.27269083
		 0.42438605 -0.27178329 0.42416283 -0.27845907 0.42670551 -0.27699089 0.42787519 -0.28356731
		 0.43005714 -0.28160256 0.43256876 -0.28779215 0.43429449 -0.28541678 0.43803826 -0.29094911
		 0.43923238 -0.28826678 0.44487688 -0.28898597 0.4503257 -0.28955805 0.45032558 -0.28839743
		 0.4451181 -0.28785074 0.4557744 -0.28898484 0.455533 -0.28784961 0.46098486 -0.28729141
		 0.46051267 -0.28623116 0.46572945 -0.28455168 0.46504697 -0.28361279 0.46980056 -0.28088552
		 0.46893778 -0.28010887 0.47302029 -0.2764529 0.47201493 -0.27587271 0.47524801 -0.27144778
		 0.47414413 -0.27108932 0.47638646 -0.26608896 0.47523203 -0.26596779 0.47638574 -0.26061046
		 0.47523138 -0.260732 0.47524598 -0.25525194 0.4741421 -0.25561076 0.47301683 -0.25024748
		 0.47201172 -0.25082797 0.46979585 -0.24581584 0.46893337 -0.24659261 0.46572384 -0.24215081
		 0.46504167 -0.24308988 0.46097866 -0.23941234 0.46050665 -0.24047282 0.45576778 -0.2377204
		 0.45552662 -0.23885575 0.45031884 -0.23714879 0.45031914 -0.23830941 0.44487026 -0.23772249
		 0.44511172 -0.23885772 0.43965986 -0.23941639 0.44013211 -0.24047658 0.43491551 -0.24215648
		 0.43559793 -0.24309525 0.43084463 -0.24582288 0.43170723 -0.24659929 0.42762503 -0.25025523
		 0.42863032 -0.25083536 0.42539743 -0.25526005 0.42650136 -0.25561845 0.42425916 -0.26061845
		 0.42541352 -0.26073956 0.42425993 -0.26609635 0.42541423 -0.26597482 0.42539963 -0.27145439
		 0.42650345 -0.27109563 0.42762855 -0.27645844 0.42863372 -0.27587807 0.43084934 -0.28088993
		 0.43171176 -0.28011322 0.43492118 -0.28455502 0.43560323 -0.28361595 0.43966612 -0.28729361
		 0.44013813 -0.28623325 0.44533953 -0.28681105 0.450326 -0.28733456 0.45032564 -0.28441912
		 0.44594535 -0.28395933 0.45531234 -0.28680986 0.45470574 -0.28395826 0.46008059 -0.28525996
		 0.45889434 -0.28259677 0.46442249 -0.28275263 0.46270832 -0.2803942 0.46814808 -0.27939743
		 0.46598092 -0.27744687 0.47109458 -0.27534091 0.46856931 -0.27388358 0.47313324 -0.27076048
		 0.47036007 -0.26986003 0.47417495 -0.26585633 0.47127512 -0.26555204 0.47417411 -0.26084274
		 0.47127441 -0.26114798 0.47313097 -0.25593889 0.4703581 -0.25684035 0.47109088 -0.25135916
		 0.46856609 -0.25281733 0.46814319 -0.24730363 0.46597669 -0.24925485 0.46441659 -0.24394956
		 0.4627032 -0.24630859 0.46007398 -0.24144366 0.4588885 -0.24410734 0.45530519 -0.23989537
		 0.45469949 -0.24274728 0.45031872 -0.2393724 0.4503192 -0.24228778 0.44533244 -0.23989746
		 0.44593903 -0.24274907 0.44056419 -0.24144772 0.44175056 -0.24411079 0.43622246 -0.24395534
		 0.43793669 -0.24631354 0.43249699 -0.24731073 0.43466416 -0.24926093 0.42955074 -0.25136709
		 0.43207601 -0.25282419 0.42751214 -0.25594723 0.43028525 -0.25684756 0.42647061 -0.26085103
		 0.42937031 -0.26115519 0.42647144 -0.26586413 0.42937103 -0.2655589 0.42751446 -0.27076751
		 0.43028733 -0.26986629 0.42955443 -0.27534699 0.43207929 -0.27388895 0.43250206 -0.27940232
		 0.43466851 -0.27745134 0.43622836 -0.28275639 0.43794188 -0.28039759 0.44057086 -0.28526241
		 0.44175646 -0.28259897 0.44616565 -0.28292525 0.45032606 -0.28336179 0.45032588 -0.28221047
		 0.4464049 -0.28179902 0.45448628 -0.28292394 0.45424673 -0.28179771 0.45846471 -0.28163064
		 0.45799622 -0.28057885 0.46208712 -0.27953851 0.46141019 -0.27860713 0.46519545 -0.276739
		 0.46433958 -0.27596879 0.46765372 -0.27335453 0.46665642 -0.27277893 0.46935448 -0.2695328
		 0.46825936 -0.2691772 0.47022352 -0.26544106 0.46907833 -0.26532096 0.47022274 -0.26125807
		 0.46907768 -0.26137865 0.46935222 -0.25716662 0.46825722 -0.25752276 0.46765009 -0.25334567
		 0.46665296 -0.25392157 0.46519056 -0.24996203 0.46433493 -0.25073272 0.46208116 -0.24716374
		 0.46140459 -0.24809548 0.45845792 -0.24507311 0.45798984 -0.24612507 0.45447913 -0.24378142
		 0.45423999 -0.24490765 0.45031872 -0.24334511 0.45031896 -0.24449655 0.4461585 -0.24378338
		 0.44639811 -0.2449095 0.44218031 -0.24507686 0.4426488 -0.24612859 0.43855783 -0.24716923
		 0.43923488 -0.24810043 0.43544969 -0.24996871 0.43630543 -0.25073886 0.43299147 -0.25335318
		 0.43398884 -0.2539286 0.43129084 -0.25717461 0.43238601 -0.25753015 0.43042186 -0.26126617
		 0.43156698 -0.26138622 0.43042263 -0.26544881 0.43156776 -0.26532823 0.43129304 -0.26953989
		 0.43238816 -0.26918399 0.43299517 -0.27336073 0.4339923 -0.27278489 0.43545464 -0.27674425
		 0.43631014 -0.27597362 0.43856385 -0.27954251 0.43924049 -0.27861094 0.44218698 -0.28163326
		 0.44265506 -0.28058141 0.44662455 -0.2807681 0.45032635 -0.28115642 0.45032576 -0.27826691
		 0.44722477 -0.2779417 0.45402816 -0.28076661 0.45342663 -0.27794033 0.45756784 -0.27961576
		 0.45639196 -0.27697629 0.46079096 -0.27775413 0.45909193 -0.27541679 0.46355644 -0.27526307
		 0.46140859 -0.27333009 0.46574375 -0.27225155 0.46324083 -0.27080733 0.46725699 -0.26885104;
	setAttr ".uvtk[1500:1749]" 0.46450844 -0.26795876 0.46803012 -0.26521033 0.46515605
		 -0.26490897 0.46802923 -0.26148838 0.46515527 -0.26179105 0.46725449 -0.25784796
		 0.46450642 -0.2587415 0.46573982 -0.25444818 0.46323749 -0.25589359 0.46355125 -0.2514376
		 0.46140417 -0.25337166 0.46078458 -0.24894789 0.45908657 -0.25128597 0.45756063 -0.24708781
		 0.45638588 -0.24972779 0.45402041 -0.24593863 0.45342025 -0.24876514 0.45031849 -0.24555054
		 0.45031914 -0.24844006 0.4466168 -0.2459406 0.44721833 -0.24876681 0.44307712 -0.24709168
		 0.44425306 -0.249731 0.43985406 -0.24895337 0.44155321 -0.25129056 0.43708858 -0.25144446
		 0.43923655 -0.25337732 0.43490145 -0.25445598 0.4374043 -0.25590003 0.43338838 -0.25785631
		 0.43613675 -0.25874853 0.43261525 -0.2614969 0.43548927 -0.2617982 0.43261608 -0.26521856
		 0.43548992 -0.26491582 0.43339077 -0.26885867 0.4361389 -0.26796526 0.43490544 -0.27225834
		 0.43740764 -0.27081311 0.43709382 -0.27526879 0.4392409 -0.27333498 0.43986043 -0.27775854
		 0.44155857 -0.27542049 0.44308427 -0.27961874 0.44425908 -0.27697885 0.44744298 -0.27691799
		 0.45032641 -0.27722025 0.45032611 -0.27608091 0.44767955 -0.27580357 0.45320961 -0.27691638
		 0.45297244 -0.27580202 0.45596668 -0.27601981 0.45550296 -0.27497905 0.45847705 -0.27456963
		 0.45780715 -0.27364814 0.4606311 -0.2726292 0.45978412 -0.2718671 0.46233454 -0.2702834
		 0.46134767 -0.26971406 0.46351311 -0.26763469 0.46242926 -0.26728296 0.46411505 -0.26479888
		 0.46298185 -0.26468009 0.46411422 -0.26189989 0.46298108 -0.26201934 0.46351066 -0.25906444
		 0.46242711 -0.25941682 0.46233061 -0.25641638 0.46134403 -0.25698638 0.4606258 -0.25407159
		 0.45977929 -0.25483418 0.45847079 -0.25213248 0.45780137 -0.25305444 0.45595953 -0.25068378
		 0.4554964 -0.25172472 0.45320198 -0.24978882 0.45296541 -0.25090331 0.4503186 -0.24948671
		 0.4503189 -0.25062603 0.44743535 -0.24979067 0.44767258 -0.25090498 0.44467828 -0.25068742
		 0.44514206 -0.25172806 0.44216797 -0.25213766 0.44283786 -0.25305909 0.44001397 -0.25407809
		 0.44086096 -0.25484014 0.43831059 -0.25642389 0.43929747 -0.25699323 0.43713221 -0.25907254
		 0.43821588 -0.25942421 0.4365302 -0.26190823 0.43766335 -0.26202691 0.43653104 -0.26480705
		 0.43766418 -0.2646876 0.43713459 -0.26764238 0.43821809 -0.26729006 0.43831453 -0.27029026
		 0.43930116 -0.26972038 0.44001922 -0.27263504 0.44086578 -0.27187246 0.44217429 -0.27457416
		 0.44284377 -0.27365226 0.44468549 -0.27602291 0.44514868 -0.27498198 0.44789699 -0.27478415
		 0.45032671 -0.2750386 0.45032576 -0.27218294 0.44848976 -0.27199072 0.45275643 -0.27478236
		 0.45216164 -0.27198941 0.45507964 -0.27402669 0.45391712 -0.27141827 0.45719501 -0.27280444
		 0.45551553 -0.27049476 0.45900998 -0.27116913 0.45688692 -0.26925915 0.46044526 -0.26919228
		 0.45797148 -0.26776534 0.46143809 -0.2669602 0.45872173 -0.26607877 0.46194521 -0.26457053
		 0.45910481 -0.26427305 0.46194431 -0.26212764 0.45910409 -0.26242721 0.46143547 -0.25973833
		 0.45871964 -0.26062179 0.4604409 -0.25750697 0.45796821 -0.25893575 0.45900413 -0.25553113
		 0.45688251 -0.25744283 0.45718798 -0.25389725 0.45551017 -0.25620824 0.45507178 -0.25267667
		 0.45391116 -0.25528586 0.45274803 -0.25192267 0.45215526 -0.25471622 0.45031819 -0.25166833
		 0.45031926 -0.25452399 0.44788864 -0.25192469 0.44848344 -0.25471771 0.44556537 -0.25268048
		 0.44672796 -0.25528878 0.44345006 -0.25390273 0.4451296 -0.25621235 0.44163522 -0.25553799
		 0.44375816 -0.25744802 0.44019994 -0.25751495 0.44267365 -0.25894177 0.43920705 -0.25974691
		 0.44192347 -0.26062828 0.43869999 -0.26213652 0.44154033 -0.26243395 0.43870088 -0.26457936
		 0.44154105 -0.26427978 0.43920967 -0.26696855 0.4419255 -0.26608509 0.44020423 -0.26919985
		 0.44267699 -0.26777112 0.44164088 -0.27117562 0.44376257 -0.26926404 0.44345698 -0.27280945
		 0.44513485 -0.27049863 0.44557324 -0.27403009 0.44673386 -0.2714209 0.44870529 -0.27098161
		 0.45032677 -0.27115107 0.45032617 -0.27002811 0.44893822 -0.26988304 0.45194802 -0.27097988
		 0.45171395 -0.26988155 0.45349827 -0.27047521 0.45304087 -0.26944959 0.45490965 -0.2696594
		 0.45424911 -0.26875126 0.45612064 -0.26856792 0.4552857 -0.26781696 0.45707819 -0.26724857
		 0.45610532 -0.26668757 0.45774046 -0.26575899 0.45667222 -0.26541257 0.45807853 -0.26416427
		 0.45696166 -0.2640475 0.45807764 -0.26253408 0.45696089 -0.2626521 0.45773789 -0.26093972
		 0.45667002 -0.26128733 0.45707402 -0.25945091 0.45610169 -0.26001292 0.45611504 -0.25813264
		 0.45528081 -0.25888449 0.45490286 -0.25704247 0.45424327 -0.25795138 0.45349053 -0.25622821
		 0.45303431 -0.25725436 0.45193979 -0.25572532 0.45170686 -0.2568239 0.45031825 -0.25555587
		 0.45031884 -0.25667882 0.44869706 -0.25572723 0.44893119 -0.25682551 0.44714686 -0.25623184
		 0.44760421 -0.25725746 0.44573542 -0.25704765 0.44639596 -0.25795579 0.44452444 -0.25813913
		 0.44535944 -0.25889009 0.44356701 -0.25945854 0.44453982 -0.26001942 0.44290462 -0.26094812
		 0.44397286 -0.26129448 0.44256654 -0.26254272 0.44368353 -0.26265949 0.44256744 -0.26417285
		 0.44368419 -0.26405495 0.44290724 -0.26576722 0.44397518 -0.2654196 0.44357112 -0.26725602
		 0.44454351 -0.26669401 0.4445301 -0.2685743 0.44536427 -0.2678225 0.44574228 -0.26966441
		 0.44640192 -0.26875556 0.44715455 -0.27047867 0.44761077 -0.26945257 0.4491528 -0.26887929
		 0.45032737 -0.26900178 0.45032498 -0.26617759 0.4497377 -0.26611644 0.45150176 -0.26887733
		 0.45091221 -0.26611543 0.45262447 -0.26851147 0.4514735 -0.26593244 0.45364675 -0.2679202
		 0.45198461 -0.2656368 0.45452365 -0.26712936 0.45242313 -0.26524138 0.45521697 -0.26617342
		 0.45276973 -0.26476347 0.45569637 -0.26509428 0.45300946 -0.26422381 0.45594093 -0.26393902
		 0.45313171 -0.26364625 0.45593986 -0.2627582 0.45313129 -0.26305586 0.45569339 -0.26160342
		 0.45300791 -0.26247841 0.45521221 -0.26052511 0.45276734 -0.26193923 0.45451722 -0.25957042;
	setAttr ".uvtk[1750:1851]" 0.45241985 -0.26146191 0.45363894 -0.25878102 0.45198068
		 -0.26106721 0.45261577 -0.25819153 0.45146909 -0.26077247 0.45149234 -0.25782758
		 0.45090738 -0.26059049 0.45031771 -0.25770521 0.45032015 -0.26052928 0.44914344 -0.25782967
		 0.44973293 -0.26059157 0.44802055 -0.25819552 0.44917151 -0.26077455 0.44699839 -0.2587868
		 0.44866046 -0.26107019 0.44612148 -0.25957775 0.44822201 -0.26146567 0.44542816 -0.26053357
		 0.44787529 -0.26194358 0.44494876 -0.26161271 0.44763568 -0.26248318 0.4447042 -0.26276791
		 0.44751331 -0.26306075 0.44470522 -0.26394874 0.44751385 -0.26365119 0.44495174 -0.26510352
		 0.44763711 -0.26422852 0.44543293 -0.26618183 0.44787779 -0.26476771 0.44612792 -0.26713657
		 0.44822523 -0.26524502 0.44700614 -0.26792586 0.4486644 -0.26563966 0.44802931 -0.26851547
		 0.44917598 -0.26593447 0.45032254 -0.26335347 0.37981537 -0.32681313 0.20005038 -0.38700241
		 0.099331498 0.43667102 0.21260062 -0.22570184 0.36816868 -0.31077713 0.22519349 -0.22570229
		 0.36010578 -0.29266423 0.23778637 -0.22570273 0.35598353 -0.2732693 0.25037926 -0.22570319
		 0.35598329 -0.25343895 0.26297212 -0.22570366 0.35983649 -0.23392251 0.27560642 -0.22570413
		 0.028764248 0.39725322 -0.082107455 0.27084023 0.36697772 -0.21555054 0.2881459 -0.3870056
		 -0.086702704 -0.38699201 0.36894432 -0.21642211 -0.086696863 -0.22569096 -0.082833648
		 0.27084091 0.18758287 -0.38700196 0.17511535 -0.38700148 -0.074235141 -0.38699245
		 -0.061767638 -0.3869929 -0.049300134 -0.38699335 -0.036832571 -0.38699383 -0.024365067
		 -0.38699427 -0.011897504 -0.38699472 0.00056993961 -0.38699517 0.013037503 -0.38699561
		 0.025505066 -0.38699609 0.03797251 -0.38699654 0.050440073 -0.38699698 0.062907636
		 -0.38699743 0.07537511 -0.38699788 0.087842673 -0.38699836 0.10031015 -0.3869988
		 0.11277771 -0.38699925 0.12524521 -0.3869997 0.13771275 -0.38700011 0.15018028 -0.38700062
		 0.16264781 -0.38700107 0.11121583 0.4328084 0.12203738 0.42655933 0.027451694 0.38445723
		 0.027450562 0.371961 0.030047625 0.35973752 0.035129309 0.34832114 0.042473555 0.3382107
		 0.051759303 0.32984823 0.062580943 0.32359904 0.07446526 0.31973642 0.086893022 0.31842905
		 0.099320948 0.3197341 0.11120597 0.32359469 0.12202868 0.32984191 0.13131601 0.33820271
		 0.13866208 0.34831172 0.14374579 0.3597272 0.14634502 0.37195027 0.14634615 0.38444656
		 0.1437491 0.39666998 0.13866746 0.40808642 0.13132319 0.41819677;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "C65E6D86-4E7F-7AF2-63E6-A59F7C919523";
	setAttr ".sst" -type "string" "";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
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
connectAttr "polyTweakUV2.out" "pCylinderShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
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
connectAttr "polyCylinder1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace2.out" "polyDelEdge1.ip";
connectAttr "polyTweak1.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "polyDelEdge1.out" "polyTweak1.ip";
connectAttr "polySoftEdge1.out" "polyDelEdge2.ip";
connectAttr "polyTweak2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge2.out" "polyTweak2.ip";
connectAttr "polyDelEdge3.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyPlanarProj1.ip";
connectAttr "pCylinderShape1.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyTweakUV2.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Bandasje_Rull.ma
