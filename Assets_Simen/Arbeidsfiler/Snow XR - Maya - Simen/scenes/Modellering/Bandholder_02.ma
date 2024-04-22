//Maya ASCII 2024 scene
//Name: Bandholder_02.ma
//Last modified: Fri, Apr 19, 2024 02:37:32 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
requires -nodeType "mayaUsdLayerManager" -dataType "pxrUsdStageData" "mayaUsdPlugin" "0.25.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "EFD3D5CA-433F-5F9E-79B2-64B894C55CEF";
createNode transform -s -n "persp";
	rename -uid "8741576F-47C0-7FCE-3F2A-339C3E1D629B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.4602244294154283 16.680950407066092 2.905470020181764 ;
	setAttr ".r" -type "double3" 330.26164728735722 -403.00000000016536 2.1744298787512321e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "75EB8960-4AA4-BEAF-583E-BAA497CE4E86";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.7070419633850058;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 14.264366278516015 -0.17882156372070312 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CD5B7B7C-4EC1-19B0-F3BB-D2B396164189";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F531B9F5-49C2-0119-9B99-D2A11F68A6AB";
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
	rename -uid "C8720F1F-48A8-FFBF-6A21-F2B1325A21AD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.13787788149599967 13.502657054178874 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "EC923DBA-45C7-70BE-77A0-5D98842C3174";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.4798112220265756;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "E5884061-45ED-6338-FDD9-D6A4426C1581";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 14.236463894382231 -0.43548044190354696 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6DF850E2-46DD-ACA6-A8AC-C3B89453A1FD";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 3.2312933566357533;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pPlane1";
	rename -uid "777B1AF5-4EDD-D7D7-C5E7-C398585D9FC1";
	setAttr ".t" -type "double3" 0 14.264366278516015 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.1957675317511984 1 1.7689534511495406 ;
createNode transform -n "transform1" -p "pPlane1";
	rename -uid "97A3B896-4517-2038-79A5-A5BE75E4FD9E";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape1" -p "transform1";
	rename -uid "13FA8C9D-4F12-84DE-4727-519E3FDFE281";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50422730296850204 0.5851517915725708 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 59 ".pt";
	setAttr ".pt[1]" -type "float3" 0 1.4901161e-08 0 ;
	setAttr ".pt[2]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[4]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[6]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[46]" -type "float3" 0 0 -3.7252903e-09 ;
	setAttr ".pt[48]" -type "float3" -7.4505806e-09 -6.4074993e-07 2.9802322e-08 ;
	setAttr ".pt[49]" -type "float3" 7.4505877e-09 -6.4065392e-07 1.4901161e-08 ;
	setAttr ".pt[50]" -type "float3" 3.7252939e-09 -6.4065392e-07 -7.4505877e-09 ;
	setAttr ".pt[51]" -type "float3" -7.4505806e-09 -6.4065392e-07 3.7252939e-09 ;
	setAttr ".pt[52]" -type "float3" 7.4505806e-09 -6.4065392e-07 2.9802322e-08 ;
	setAttr ".pt[53]" -type "float3" 7.4505806e-09 -6.4065392e-07 -7.4505877e-09 ;
	setAttr ".pt[54]" -type "float3" 0 -6.4065392e-07 -7.4505806e-09 ;
	setAttr ".pt[55]" -type "float3" -7.4505806e-09 -6.4065392e-07 -7.4505806e-09 ;
	setAttr ".pt[56]" -type "float3" 7.4505806e-09 -6.4065392e-07 -7.4505806e-09 ;
	setAttr ".pt[57]" -type "float3" -7.4505806e-09 -6.4065392e-07 1.4901161e-08 ;
	setAttr ".pt[58]" -type "float3" -1.4901161e-08 -6.4065392e-07 1.4901161e-08 ;
	setAttr ".pt[59]" -type "float3" -1.4901161e-08 -6.4084594e-07 1.4901161e-08 ;
	setAttr ".pt[60]" -type "float3" -1.4901161e-08 -6.4084594e-07 0 ;
	setAttr ".pt[61]" -type "float3" 7.4505806e-09 -6.4086191e-07 1.4901161e-08 ;
	setAttr ".pt[62]" -type "float3" 0 -6.4086191e-07 1.4901161e-08 ;
	setAttr ".pt[63]" -type "float3" 1.4901161e-08 -6.4086191e-07 2.9802322e-08 ;
	setAttr ".pt[64]" -type "float3" 1.4901161e-08 -6.4086191e-07 1.4901161e-08 ;
	setAttr ".pt[65]" -type "float3" -1.4901161e-08 -6.4086191e-07 -7.4505806e-09 ;
	setAttr ".pt[66]" -type "float3" -1.4901161e-08 -6.4086191e-07 -1.4901161e-08 ;
	setAttr ".pt[67]" -type "float3" 1.4901161e-08 -6.4084594e-07 -7.4505806e-09 ;
	setAttr ".pt[68]" -type "float3" 1.4901161e-08 -6.4084594e-07 0 ;
	setAttr ".pt[69]" -type "float3" -7.4505806e-09 -6.4084594e-07 -1.4901161e-08 ;
	setAttr ".pt[70]" -type "float3" 7.4505877e-09 -6.4084594e-07 -1.4901161e-08 ;
	setAttr ".pt[71]" -type "float3" 7.4505806e-09 -6.4086191e-07 -1.4901161e-08 ;
	setAttr ".pt[72]" -type "float3" 1.4901161e-08 -6.4086191e-07 -1.4901161e-08 ;
	setAttr ".pt[73]" -type "float3" -3.7252903e-09 -4.0745363e-10 3.7252903e-09 ;
	setAttr ".pt[74]" -type "float3" -7.4505806e-09 -3.4924597e-10 3.7252903e-09 ;
	setAttr ".pt[75]" -type "float3" -3.7252903e-09 -3.4924597e-10 3.7252903e-09 ;
	setAttr ".pt[76]" -type "float3" 3.7252903e-09 -3.4924597e-10 7.4505806e-09 ;
	setAttr ".pt[77]" -type "float3" 7.4505806e-09 -3.4924597e-10 7.4505806e-09 ;
	setAttr ".pt[78]" -type "float3" 0 -3.4924597e-10 3.7252903e-09 ;
	setAttr ".pt[79]" -type "float3" 0 -3.4924597e-10 7.4505806e-09 ;
	setAttr ".pt[80]" -type "float3" -3.7252903e-09 -3.4924597e-10 7.4505806e-09 ;
	setAttr ".pt[81]" -type "float3" -7.4505806e-09 -3.4924597e-10 7.4505806e-09 ;
	setAttr ".pt[82]" -type "float3" 7.4505806e-09 -4.0745363e-10 -7.4505806e-09 ;
	setAttr ".pt[83]" -type "float3" 3.7252903e-09 0 -7.4505806e-09 ;
	setAttr ".pt[84]" -type "float3" 7.4505806e-09 0 3.7252903e-09 ;
	setAttr ".pt[85]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[86]" -type "float3" -3.7252903e-09 0 -7.4505806e-09 ;
	setAttr ".pt[87]" -type "float3" -7.4505806e-09 0 -7.4505806e-09 ;
	setAttr ".pt[88]" -type "float3" -7.4505806e-09 0 3.7252903e-09 ;
	setAttr ".pt[89]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".pt[90]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".pt[91]" -type "float3" 7.4505806e-09 0 3.7252903e-09 ;
	setAttr ".pt[92]" -type "float3" -7.4505806e-09 0 3.7252903e-09 ;
	setAttr ".pt[93]" -type "float3" 7.4505806e-09 0 7.4505806e-09 ;
	setAttr ".pt[94]" -type "float3" 3.7252903e-09 0 7.4505806e-09 ;
	setAttr ".pt[95]" -type "float3" 0 0 7.4505806e-09 ;
	setAttr ".pt[96]" -type "float3" -3.7252903e-09 0 7.4505806e-09 ;
	setAttr ".pt[97]" -type "float3" -7.4505806e-09 0 7.4505806e-09 ;
createNode transform -n "pPlane2";
	rename -uid "B12D36BA-41A6-D74E-AEBB-7595EDCB158E";
	setAttr ".t" -type "double3" 0 14.264366278516015 -0.13843867383516528 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 1.1957675317511984 1 1.7689534511495406 ;
createNode mesh -n "polySurfaceShape1" -p "pPlane2";
	rename -uid "36D420F8-4347-12AA-824A-CEB36FEDDE20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 10 "e[7:10]" "e[13:14]" "e[17:18]" "e[34]" "e[38]" "e[44]" "e[51:52]" "e[59]" "e[65]" "e[69]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[20:23]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[0]" "e[2:4]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 4 "e[1]" "e[6]" "e[12]" "e[16]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 4 "e[5]" "e[11]" "e[15]" "e[19]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 4 "e[0:6]" "e[11:12]" "e[15:16]" "e[19:23]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 9.9840254e-05 9.9840639e-05
		 0.25002322 2.3224413e-05 0.5 0 0.74997675 2.3224413e-05 0.99990016 9.9840639e-05
		 2.3224346e-05 0.25002301 0.99997675 0.25002301 0 0.50000012 1 0.50000012 2.3224322e-05
		 0.74997681 0.99997675 0.74997681 9.9840254e-05 0.99990016 0.25002322 0.99997675 0.5
		 1 0.74997675 0.99997675 0.99990016 0.99990016 0 0 0.25 0 0 0.25 0.5 0 0.5 0.25 0.25
		 0.25 0.75 0 0.75 0.25 1 0 1 0.25 0.25 0.5 0 0.5 1 0.5 0.75 0.5 0.25 0.75 0 0.75 1
		 0.75 0.75 0.75 0.25 1 0 1 0.5 0.75 0.5 1 0.75 1 1 1 0 0 1 0 1.13402259 1.17023826
		 -0.14328898 1.17114389 0 0 1 0 1.14247882 1.17030358 -0.13489464 1.17101598 0 0 1
		 0 1.13489723 1.171013 -0.1424786 1.17030048 0 0 1 0 1.13402295 1.17024136 -0.14328647
		 1.17114687 0 0 1 0 1.14328766 1.17114687 -0.13402422 1.17024136 0 0 1 0 1.14328766
		 1.17114687 -0.13402422 1.17024136 0 0 1 0 1.14247918 1.17030275 -0.13489662 1.17101526
		 0 0 1 0 1.13489664 1.17101526 -0.14247921 1.17030275 0.50490457 1.17022657 0.49529514
		 1.17022622 0.50320828 1.17019272 0.50409859 1.17022538 0.49544054 1.17018974 0.50559556
		 1.17018771 0.49676338 1.17022097 0.49564061 1.17018783;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".pt[48:97]" -type "float3"  -7.4505806e-09 -6.4074993e-07 
		2.9802322e-08 7.4505877e-09 -6.4065392e-07 1.4901161e-08 3.7252939e-09 -6.4065392e-07 
		-7.4505877e-09 -7.4505806e-09 -6.4065392e-07 3.7252939e-09 7.4505806e-09 -6.4065392e-07 
		2.9802322e-08 7.4505806e-09 -6.4065392e-07 -7.4505877e-09 0 -6.4065392e-07 -7.4505806e-09 
		-7.4505806e-09 -6.4065392e-07 -7.4505806e-09 7.4505806e-09 -6.4065392e-07 -7.4505806e-09 
		-7.4505806e-09 -6.4065392e-07 1.4901161e-08 -1.4901161e-08 -6.4065392e-07 1.4901161e-08 
		-1.4901161e-08 -6.4084594e-07 1.4901161e-08 -1.4901161e-08 -6.4084594e-07 0 7.4505806e-09 
		-6.4086191e-07 1.4901161e-08 0 -6.4086191e-07 1.4901161e-08 1.4901161e-08 -6.4086191e-07 
		2.9802322e-08 1.4901161e-08 -6.4086191e-07 1.4901161e-08 -1.4901161e-08 -6.4086191e-07 
		-7.4505806e-09 -1.4901161e-08 -6.4086191e-07 -1.4901161e-08 1.4901161e-08 -6.4084594e-07 
		-7.4505806e-09 1.4901161e-08 -6.4084594e-07 0 -7.4505806e-09 -6.4084594e-07 -1.4901161e-08 
		7.4505877e-09 -6.4084594e-07 -1.4901161e-08 7.4505806e-09 -6.4086191e-07 -1.4901161e-08 
		1.4901161e-08 -6.4086191e-07 -1.4901161e-08 -3.7252903e-09 -4.0745363e-10 3.7252903e-09 
		-7.4505806e-09 -3.4924597e-10 3.7252903e-09 -3.7252903e-09 -3.4924597e-10 3.7252903e-09 
		3.7252903e-09 -3.4924597e-10 7.4505806e-09 7.4505806e-09 -3.4924597e-10 7.4505806e-09 
		0 -3.4924597e-10 3.7252903e-09 0 -3.4924597e-10 7.4505806e-09 -3.7252903e-09 -3.4924597e-10 
		7.4505806e-09 -7.4505806e-09 -3.4924597e-10 7.4505806e-09 7.4505806e-09 -4.0745363e-10 
		-7.4505806e-09 3.7252903e-09 0 -7.4505806e-09 7.4505806e-09 0 3.7252903e-09 0 0 -7.4505806e-09 
		-3.7252903e-09 0 -7.4505806e-09 -7.4505806e-09 0 -7.4505806e-09 -7.4505806e-09 0 
		3.7252903e-09 7.4505806e-09 0 0 -7.4505806e-09 0 0 7.4505806e-09 0 3.7252903e-09 
		-7.4505806e-09 0 3.7252903e-09 7.4505806e-09 0 7.4505806e-09 3.7252903e-09 0 7.4505806e-09 
		0 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -7.4505806e-09 0 7.4505806e-09;
	setAttr -s 48 ".vt[0:47]"  -0.5 0 0.5 -0.25 0 0.5 0 0 0.5 0.25 0 0.5
		 0.5 0 0.5 -0.5 0 0.25000048 -0.25 0 0.25000048 0 0 0.25000048 0.25 0 0.25000048 0.5 0 0.25000048
		 -0.5 0 0 -0.25 0 0 0.25 0 0 0.5 0 0 -0.5 0 -0.25 -0.25 0 -0.25 0 0 -0.25 0.25 0 -0.25
		 0.5 0 -0.25 -0.5 0 -0.5 -0.25 0 -0.5 0 0 -0.5 0.25 0 -0.5 0.5 0 -0.5 -0.5 0.017592657 0.5
		 -0.25 0.017592657 0.5 -0.25 0.017592657 0.25000048 -0.5 0.017592657 0.25000048 0 0.017592657 0.5
		 0 0.017592657 0.25000048 0.25 0.017592657 0.5 0.25 0.017592657 0.25000048 0.5 0.017592657 0.5
		 0.5 0.017592657 0.25000048 -0.25 0.017592657 0 -0.5 0.017592657 0 0.5 0.017592657 0
		 0.25 0.017592657 0 -0.25 0.017592657 -0.25 -0.5 0.017592657 -0.25 0.5 0.017592657 -0.25
		 0.25 0.017592657 -0.25 -0.25 0.017592657 -0.5 -0.5 0.017592657 -0.5 0 0.017592657 -0.25
		 0 0.017592657 -0.5 0.25 0.017592657 -0.5 0.5 0.017592017 -0.49999997;
	setAttr -s 92 ".ed[0:91]"  0 1 0 0 5 0 1 2 0 2 3 0 3 4 0 4 9 0 5 10 0
		 6 7 0 6 11 0 7 8 0 8 12 0 9 13 0 10 14 0 11 15 0 12 17 0 13 18 0 14 19 0 15 16 0
		 16 17 0 18 23 0 19 20 0 20 21 0 21 22 0 22 23 0 0 24 0 1 25 0 24 25 0 25 26 1 5 27 0
		 27 26 1 24 27 0 2 28 0 25 28 0 28 29 1 26 29 0 3 30 0 28 30 0 30 31 1 29 31 0 4 32 0
		 30 32 0 9 33 0 32 33 0 31 33 1 26 34 0 10 35 0 35 34 1 27 35 0 13 36 0 33 36 0 37 36 1
		 31 37 0 34 38 0 14 39 0 39 38 0 35 39 0 18 40 0 36 40 0 41 40 1 37 41 0 20 42 0 38 42 0
		 19 43 0 43 42 0 39 43 0 38 44 0 21 45 0 44 45 1 42 45 0 44 41 0 22 46 0 41 46 1 45 46 0
		 23 47 0 40 47 0 46 47 0 6 0 0 7 2 0 11 10 0 8 4 0 12 13 0 15 19 0 17 23 0 16 21 0
		 15 14 1 8 9 1 6 5 1 17 18 1 17 22 1 15 20 1 6 1 1 8 3 1;
	setAttr -s 44 -ch 168 ".fc[0:43]" -type "polyFaces" 
		f 4 26 27 -30 -31
		mu 0 4 16 17 21 18
		f 4 32 33 -35 -28
		mu 0 4 17 19 20 21
		f 4 36 37 -39 -34
		mu 0 4 19 22 23 20
		f 4 40 42 -44 -38
		mu 0 4 22 24 25 23
		f 4 29 44 -47 -48
		mu 0 4 18 21 26 27
		f 4 43 49 -51 -52
		mu 0 4 23 25 28 29
		f 4 46 52 -55 -56
		mu 0 4 27 26 30 31
		f 4 50 57 -59 -60
		mu 0 4 29 28 32 33
		f 4 54 61 -64 -65
		mu 0 4 31 30 34 35
		f 4 65 67 -69 -62
		mu 0 4 30 36 37 34
		f 4 69 71 -73 -68
		mu 0 4 36 33 38 37
		f 4 58 74 -76 -72
		mu 0 4 33 32 39 38
		f 4 0 25 -27 -25
		mu 0 4 0 1 17 16
		f 4 -2 24 30 -29
		mu 0 4 5 0 16 18
		f 4 2 31 -33 -26
		mu 0 4 1 2 19 17
		f 4 3 35 -37 -32
		mu 0 4 2 3 22 19
		f 4 4 39 -41 -36
		mu 0 4 3 4 24 22
		f 4 5 41 -43 -40
		mu 0 4 4 6 25 24
		f 4 -7 28 47 -46
		mu 0 4 7 5 18 27
		f 4 11 48 -50 -42
		mu 0 4 6 8 28 25
		f 4 -13 45 55 -54
		mu 0 4 9 7 27 31
		f 4 15 56 -58 -49
		mu 0 4 8 10 32 28
		f 4 -21 62 63 -61
		mu 0 4 12 11 35 34
		f 4 -17 53 64 -63
		mu 0 4 11 9 31 35
		f 4 -22 60 68 -67
		mu 0 4 13 12 34 37
		f 4 -23 66 72 -71
		mu 0 4 14 13 37 38
		f 4 19 73 -75 -57
		mu 0 4 10 15 39 32
		f 4 -24 70 75 -74
		mu 0 4 15 14 38 39
		f 3 90 -1 -77
		mu 0 3 40 78 43
		f 4 86 6 -79 -9
		mu 0 4 44 74 46 45
		f 4 9 91 -4 -78
		mu 0 4 48 49 79 51
		f 3 85 -6 -80
		mu 0 3 52 73 55
		f 3 84 16 -82
		mu 0 3 57 72 58
		f 4 14 87 -16 -81
		mu 0 4 60 61 75 63
		f 4 89 21 -84 -18
		mu 0 4 64 77 66 65
		f 3 88 23 -83
		mu 0 3 69 76 70
		f 4 78 12 -85 -14
		mu 0 4 56 59 72 57
		f 4 10 80 -12 -86
		mu 0 4 52 53 54 73
		f 3 76 1 -87
		mu 0 3 44 47 74
		f 3 -88 82 -20
		mu 0 3 75 61 62
		f 4 83 22 -89 -19
		mu 0 4 68 71 76 69
		f 3 81 20 -90
		mu 0 3 64 67 77
		f 4 7 77 -3 -91
		mu 0 4 40 41 42 78
		f 3 -92 79 -5
		mu 0 3 79 49 50;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform2" -p "pPlane2";
	rename -uid "5932EF27-4233-409B-6F15-DD909E1B98E8";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape2" -p "transform2";
	rename -uid "2878A515-49E7-804A-7481-2FAF2FDFEAEB";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".pt[48:97]" -type "float3"  -7.4505806e-09 -6.4074993e-07 
		2.9802322e-08 7.4505877e-09 -6.4065392e-07 1.4901161e-08 3.7252939e-09 -6.4065392e-07 
		-7.4505877e-09 -7.4505806e-09 -6.4065392e-07 3.7252939e-09 7.4505806e-09 -6.4065392e-07 
		2.9802322e-08 7.4505806e-09 -6.4065392e-07 -7.4505877e-09 0 -6.4065392e-07 -7.4505806e-09 
		-7.4505806e-09 -6.4065392e-07 -7.4505806e-09 7.4505806e-09 -6.4065392e-07 -7.4505806e-09 
		-7.4505806e-09 -6.4065392e-07 1.4901161e-08 -1.4901161e-08 -6.4065392e-07 1.4901161e-08 
		-1.4901161e-08 -6.4084594e-07 1.4901161e-08 -1.4901161e-08 -6.4084594e-07 0 7.4505806e-09 
		-6.4086191e-07 1.4901161e-08 0 -6.4086191e-07 1.4901161e-08 1.4901161e-08 -6.4086191e-07 
		2.9802322e-08 1.4901161e-08 -6.4086191e-07 1.4901161e-08 -1.4901161e-08 -6.4086191e-07 
		-7.4505806e-09 -1.4901161e-08 -6.4086191e-07 -1.4901161e-08 1.4901161e-08 -6.4084594e-07 
		-7.4505806e-09 1.4901161e-08 -6.4084594e-07 0 -7.4505806e-09 -6.4084594e-07 -1.4901161e-08 
		7.4505877e-09 -6.4084594e-07 -1.4901161e-08 7.4505806e-09 -6.4086191e-07 -1.4901161e-08 
		1.4901161e-08 -6.4086191e-07 -1.4901161e-08 -3.7252903e-09 -4.0745363e-10 3.7252903e-09 
		-7.4505806e-09 -3.4924597e-10 3.7252903e-09 -3.7252903e-09 -3.4924597e-10 3.7252903e-09 
		3.7252903e-09 -3.4924597e-10 7.4505806e-09 7.4505806e-09 -3.4924597e-10 7.4505806e-09 
		0 -3.4924597e-10 3.7252903e-09 0 -3.4924597e-10 7.4505806e-09 -3.7252903e-09 -3.4924597e-10 
		7.4505806e-09 -7.4505806e-09 -3.4924597e-10 7.4505806e-09 7.4505806e-09 -4.0745363e-10 
		-7.4505806e-09 3.7252903e-09 0 -7.4505806e-09 7.4505806e-09 0 3.7252903e-09 0 0 -7.4505806e-09 
		-3.7252903e-09 0 -7.4505806e-09 -7.4505806e-09 0 -7.4505806e-09 -7.4505806e-09 0 
		3.7252903e-09 7.4505806e-09 0 0 -7.4505806e-09 0 0 7.4505806e-09 0 3.7252903e-09 
		-7.4505806e-09 0 3.7252903e-09 7.4505806e-09 0 7.4505806e-09 3.7252903e-09 0 7.4505806e-09 
		0 0 7.4505806e-09 -3.7252903e-09 0 7.4505806e-09 -7.4505806e-09 0 7.4505806e-09;
createNode transform -n "pPlane3";
	rename -uid "E5466839-4FC0-47DE-980D-2AAB32DC873F";
	setAttr ".rp" -type "double3" 0 14.264366278516015 -0.060423328669811927 ;
	setAttr ".sp" -type "double3" 0 14.264366278516015 -0.060423328669811927 ;
createNode mesh -n "pPlane3Shape" -p "pPlane3";
	rename -uid "19F28221-460D-8065-F5B4-2E8304AE766B";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.58511310815811157 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 73 ".pt";
	setAttr ".pt[1]" -type "float3" 0.00015665863 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.0037285965 0 0 ;
	setAttr ".pt[4]" -type "float3" 0 -0.0010265785 0 ;
	setAttr ".pt[5]" -type "float3" 0.0011833983 0.002026733 0 ;
	setAttr ".pt[6]" -type "float3" 0.0053017586 0.002026733 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.002026733 0 ;
	setAttr ".pt[8]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[9]" -type "float3" 0.0011833983 0.21689394 0 ;
	setAttr ".pt[10]" -type "float3" 0.0053017586 0.21689394 0 ;
	setAttr ".pt[11]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[13]" -type "float3" 0.0011833983 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.0053017586 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.00015665863 0 0 ;
	setAttr ".pt[18]" -type "float3" -0.14735319 -0.083253354 0 ;
	setAttr ".pt[19]" -type "float3" 0 -0.00065646175 0 ;
	setAttr ".pt[20]" -type "float3" 0.0037285965 0 0 ;
	setAttr ".pt[21]" -type "float3" 0.14781491 -0.083253354 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.0020173723 0 ;
	setAttr ".pt[24]" -type "float3" -0.14735319 0.21658154 0 ;
	setAttr ".pt[25]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[26]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[27]" -type "float3" 0.14781491 0.21658154 0 ;
	setAttr ".pt[28]" -type "float3" -0.14735319 0 0 ;
	setAttr ".pt[30]" -type "float3" 0.14781488 0 0 ;
	setAttr ".pt[32]" -type "float3" 0 0.21658154 0 ;
	setAttr ".pt[35]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[36]" -type "float3" 0 0.002026733 0 ;
	setAttr ".pt[39]" -type "float3" 0 -0.083253354 0 ;
	setAttr ".pt[42]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[43]" -type "float3" 0 -0.0010265785 0 ;
	setAttr ".pt[46]" -type "float3" 0 -0.083907284 0 ;
	setAttr ".pt[47]" -type "float3" 0 0.21658154 0 ;
	setAttr ".pt[48]" -type "float3" -0.14735319 0 0 ;
	setAttr ".pt[53]" -type "float3" 0.00015665863 0 0 ;
	setAttr ".pt[54]" -type "float3" 0.0037285965 0 0 ;
	setAttr ".pt[59]" -type "float3" 0.14781491 0 0 ;
	setAttr ".pt[61]" -type "float3" 0.00015665863 0 0 ;
	setAttr ".pt[62]" -type "float3" 0.0037285965 0 0 ;
	setAttr ".pt[64]" -type "float3" 0 -0.00065646175 0 ;
	setAttr ".pt[65]" -type "float3" -0.056820195 -0.083875589 -1.5579704e-11 ;
	setAttr ".pt[66]" -type "float3" 0.056922778 -0.083875589 1.5579701e-11 ;
	setAttr ".pt[67]" -type "float3" 0 0.0020173723 0 ;
	setAttr ".pt[68]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[69]" -type "float3" -0.056820083 0.082306191 1.5579701e-11 ;
	setAttr ".pt[70]" -type "float3" 0.056922778 0.082306191 1.5579701e-11 ;
	setAttr ".pt[71]" -type "float3" 0 0.21689394 0 ;
	setAttr ".pt[73]" -type "float3" -0.00042461598 0 0 ;
	setAttr ".pt[74]" -type "float3" -0.0002348322 0 0 ;
	setAttr ".pt[77]" -type "float3" -0.00087297545 0 0 ;
	setAttr ".pt[78]" -type "float3" -0.00042431362 -0.00044607217 0 ;
	setAttr ".pt[79]" -type "float3" 0 -0.00039141739 0 ;
	setAttr ".pt[80]" -type "float3" 0.004693388 0 0 ;
	setAttr ".pt[81]" -type "float3" 0.00072941213 -0.00044607217 0 ;
	setAttr ".pt[83]" -type "float3" 0 0.0020173723 0 ;
	setAttr ".pt[84]" -type "float3" -0.00042431362 0 0 ;
	setAttr ".pt[87]" -type "float3" 0.00072941207 0 0 ;
	setAttr ".pt[88]" -type "float3" -0.00042461598 0 0 ;
	setAttr ".pt[90]" -type "float3" -0.0002348322 0 0 ;
	setAttr ".pt[92]" -type "float3" 0 -0.083907284 0 ;
	setAttr ".pt[93]" -type "float3" 0 0.21658154 0 ;
	setAttr ".pt[96]" -type "float3" 0 -0.00039141739 0 ;
	setAttr ".pt[102]" -type "float3" 0 0.0020173723 0 ;
	setAttr ".pt[106]" -type "float3" 0 0.21658154 0 ;
	setAttr ".pt[107]" -type "float3" 0 -0.083253354 0 ;
	setAttr ".pt[111]" -type "float3" 0.004693388 0 0 ;
	setAttr ".pt[112]" -type "float3" -0.00087297545 0 0 ;
	setAttr ".pt[116]" -type "float3" 0.14781491 0 0 ;
	setAttr ".pt[117]" -type "float3" -0.14735319 0 0 ;
	setAttr ".pt[124]" -type "float3" 0.0011833983 0 0 ;
	setAttr ".pt[125]" -type "float3" -0.14735319 0 0 ;
	setAttr ".pt[126]" -type "float3" 0.0053017586 0 0 ;
	setAttr ".pt[127]" -type "float3" 0.14781488 0 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2803FB58-41DF-D7DF-34E5-EABFA618EA9E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D7FC45B0-4376-6DA4-12DD-9EADBC0176A0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "83E9B0DD-44AD-C68F-5F14-799CDDF17E60";
createNode displayLayerManager -n "layerManager";
	rename -uid "B81D2AEA-4867-ADF3-9F18-AC9142496067";
createNode displayLayer -n "defaultLayer";
	rename -uid "C96D647A-464E-7ED1-46A9-319A1C5D56A6";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "57EA03BE-478B-5D28-D24E-DA94C02C2AD1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "495277B3-4F9E-6ED0-C25F-1F8E7D46AC03";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "2260A7F7-4891-3B45-218B-5EAE0D545E10";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "4B5A72AB-42A8-BDE4-1D8A-E9B2EDD4CFB2";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "85A3C803-490D-1533-4B1B-AB94C72021F0";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "3A74F523-4CCE-6C8A-3982-7E9AC3DAF5D2";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "00F089AE-444E-4646-9552-0185421C7C4C";
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".cuv" 2;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "DF375671-4DC6-F0E6-92B8-23B91F829587";
	setAttr ".ics" -type "componentList" 3 "f[0:4]" "f[7:8]" "f[11:15]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 14.264366 0 ;
	setAttr ".rs" 57447;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.59788376587559922 13.379889552941243 0 ;
	setAttr ".cbx" -type "double3" 0.59788376587559922 15.148843004090786 0 ;
	setAttr ".raf" no;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "BE29D49C-42F6-F402-AC90-8DB699AF4E13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[7:9]" "e[11]" "e[15]" "e[18]" "e[21:22]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 14.264366 0 ;
	setAttr ".rs" 57349;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.29894188293779961 13.822127072225893 0 ;
	setAttr ".cbx" -type "double3" 0.29894188293779961 14.7066046413034 0 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "7D2B7CEF-4640-9336-F2FB-A09310BA7F5B";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[25:48]" -type "float3"  0 0.017592657 0 0 0.017592657
		 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0
		 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0
		 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657
		 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0 0 0.017592657 0
		 0 0.017592657 0;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "0374E0F7-4CB4-6BA8-6AA4-6BACED2D1FE1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[75]" -type "float2" 0.14247921 0.17030272 ;
	setAttr ".uvtk[80]" -type "float2" -0.14247921 0.17030272 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "6D7231C5-4C66-F6BC-482A-489622F7DAE8";
	setAttr ".ics" -type "componentList" 2 "vtx[22]" "vtx[56]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "FCBFB43D-419C-3EC9-774F-B1A638CEAAF0";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[49:56]" -type "float3"  -0.21327427 0 0.21327442 0
		 0 0.21327442 -0.21327427 0 -2.0339419e-07 0.21327427 0 0.21327442 0.21327427 0 -2.0339419e-07
		 -0.21327427 0 -0.21327442 0.21327427 0 -0.21327442 0 0 -0.25;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "70B5D911-4310-09B3-AA6C-20B7B13414DA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[24]" -type "float2" -9.9840254e-05 -9.9840254e-05 ;
	setAttr ".uvtk[71]" -type "float2" 0.14328769 0.1711469 ;
	setAttr ".uvtk[79]" -type "float2" 0.13489662 0.1710152 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "93858848-43A0-713B-1010-039CF1A2BC91";
	setAttr ".ics" -type "componentList" 2 "vtx[24]" "vtx[55]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak3";
	rename -uid "88D613EF-4476-8B5A-A8EC-ECACDF13EB6B";
	setAttr ".uopa" yes;
	setAttr ".tk[55]" -type "float3"  0.03672573 0 -0.036725581;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "DF6D66F0-47BC-A1AB-C6FA-BA9B2B92E9A8";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 9.9840254e-05 -9.9840254e-05 ;
	setAttr ".uvtk[67]" -type "float2" 0.14328769 0.1711469 ;
	setAttr ".uvtk[76]" -type "float2" -0.13489662 0.1710152 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "C6B0992A-4498-D8C1-EB57-D6AA40A5A046";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[54]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak4";
	rename -uid "73D7F6A2-4E2F-D30C-180D-31919DC11FD7";
	setAttr ".uopa" yes;
	setAttr ".tk[54]" -type "float3"  -0.03672573 0 -0.036725581;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "DEF7921B-4606-36AE-EB5B-6CAE7EC74672";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" 0 1.19162e-07 ;
	setAttr ".uvtk[55]" -type "float2" 0.14247881 0.17030354 ;
	setAttr ".uvtk[68]" -type "float2" -0.13402422 0.17024133 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "48DA5D17-4362-E8B8-D4AB-979826E366DA";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[51]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak5";
	rename -uid "28C95507-406D-2682-4095-41AF5EA0CB86";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  -0.03672573 0 2.0339419e-07;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "A27A13DA-478D-4764-3CAA-B9AC0E07829E";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 9.9840254e-05 9.9840639e-05 ;
	setAttr ".uvtk[52]" -type "float2" -0.14328898 0.17114386 ;
	setAttr ".uvtk[56]" -type "float2" -0.13489464 0.17101602 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "D52CDA46-4057-8A8C-0A6A-19AF18B97417";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak6";
	rename -uid "BEA286D6-4823-ADA8-9F5F-75AC497C4EE8";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  -0.03672573 0 0.036725104;
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "33C07C2D-408D-D0DB-37F8-3B8E92C3D551";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[51]" -type "float2" 0.13402258 0.1702383 ;
	setAttr ".uvtk[60]" -type "float2" -0.1424786 0.1703005 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "725CA340-4D53-8B7D-F4E7-23A98A2472B1";
	setAttr ".ics" -type "componentList" 2 "vtx[2]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak7";
	rename -uid "9D07AF01-4F43-6445-09AB-E292F45596C4";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0 0 0.036725104;
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "CB95133A-4ECA-2DA2-85C6-AEB5C6CFCF79";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -9.9840254e-05 9.9840639e-05 ;
	setAttr ".uvtk[59]" -type "float2" 0.13489725 0.17101297 ;
	setAttr ".uvtk[64]" -type "float2" -0.14328647 0.1711469 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "D339C54E-4386-1302-FD7E-0E9B9CAF8BC6";
	setAttr ".ics" -type "componentList" 2 "vtx[4]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "9038BFC6-426B-2C5E-0301-68B8C21B16ED";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0.03672573 0 0.036725104;
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "2322BD97-411C-A7E6-FDF3-05949D1A4D66";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[14]" -type "float2" 0 1.19162e-07 ;
	setAttr ".uvtk[63]" -type "float2" 0.13402298 0.17024134 ;
	setAttr ".uvtk[72]" -type "float2" -0.13402422 0.17024133 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "214276A1-4FDD-DEBC-824E-1895A576D0CE";
	setAttr ".ics" -type "componentList" 2 "vtx[14]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak9";
	rename -uid "386D7F10-4E10-DD0D-6486-79BEC65A9797";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0.03672573 0 2.0339419e-07;
createNode polyNormal -n "polyNormal1";
	rename -uid "BC685BF7-43FA-6EA9-018B-68BDC7259F86";
	setAttr ".ics" -type "componentList" 4 "f[12]" "f[41]" "f[44]" "f[46:47]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal2";
	rename -uid "7F8011D0-4E02-1D4C-E8D9-7BADA78BF445";
	setAttr ".ics" -type "componentList" 1 "f[12]";
	setAttr ".unm" no;
createNode polySplit -n "polySplit1";
	rename -uid "CBB4D992-4085-C36D-1428-E78D8B2DD07B";
	setAttr -s 2 ".e[0:1]"  1 0.498763;
	setAttr -s 2 ".d[0:1]"  -2147483633 -2147483550;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "6BF03DB8-44F5-7D37-9EF9-1583F3F477A1";
	setAttr -s 2 ".e[0:1]"  0 0.498997;
	setAttr -s 2 ".d[0:1]"  -2147483637 -2147483552;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "CFBA3E57-44E4-107F-3F30-93AD36D06314";
	setAttr -s 2 ".e[0:1]"  0 0.50464797;
	setAttr -s 2 ".d[0:1]"  -2147483640 -2147483556;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "58544FC4-47A0-9F5F-6D07-E694FD618D63";
	setAttr -s 2 ".e[0:1]"  1 0.50774097;
	setAttr -s 2 ".d[0:1]"  -2147483630 -2147483548;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "7A813969-4049-1135-3F1C-2EA856665EFE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[19]" -type "float2" -2.3223751e-05 -2.3196015e-05 ;
	setAttr ".uvtk[84]" -type "float2" -0.010420757 -0.00047569891 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "5FDB7CDD-49EA-9C68-6CA2-B6A33DA2D051";
	setAttr ".ics" -type "componentList" 2 "vtx[19]" "vtx[52]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak10";
	rename -uid "9DEE1A30-4DCD-0F7C-13BB-2DA658A3F3C3";
	setAttr ".uopa" yes;
	setAttr ".tk[52]" -type "float3"  0 0 0.0038704872;
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "2ED821AE-48BA-5931-908E-2DB958E6035A";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[9]" -type "float2" -2.3223774e-05 2.3013843e-05 ;
	setAttr ".uvtk[82]" -type "float2" 0.0012080309 -0.00046881579 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "8815E201-41A0-308A-C63A-97929DB36D72";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "56500D7D-43DC-D1D9-406A-1F9D57695EFF";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 0 -0.00050103664;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "E066046F-4B89-E224-FF3B-36897E8E5060";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 2.3224346e-05 2.3013843e-05 ;
	setAttr ".uvtk[83]" -type "float2" -0.006520987 -0.0004637792 ;
createNode polyMergeVert -n "polyMergeVert11";
	rename -uid "0998213E-46C2-4871-8F90-1AA955911390";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "13F21E50-4B8F-4D84-2EE9-508F1EEAB072";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0 0 0.0023244619;
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "19A630F4-4867-E782-8861-2A863DDB9DDE";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[15]" -type "float2" 2.3224322e-05 -2.3196015e-05 ;
	setAttr ".uvtk[81]" -type "float2" 0.0018528857 -0.00046652052 ;
createNode polyMergeVert -n "polyMergeVert12";
	rename -uid "60FDEA75-4FA3-F74B-EDB0-11804873030F";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "1CC0D2A4-43BC-D6A2-028C-33BB8C478B7A";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  0 0 -0.0006185025;
createNode polySplit -n "polySplit5";
	rename -uid "52DB63CB-4511-76A9-52AE-6BB6CD6FD020";
	setAttr -s 2 ".e[0:1]"  1 0.51039898;
	setAttr -s 2 ".d[0:1]"  -2147483626 -2147483549;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "28484963-47D9-C810-C5D9-46A752B0DE64";
	setAttr -s 2 ".e[0:1]"  0 0.47804499;
	setAttr -s 2 ".d[0:1]"  -2147483627 -2147483550;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "B57C9F85-4433-476E-13E8-F191831BB41F";
	setAttr -s 2 ".e[0:1]"  0 0.48263401;
	setAttr -s 2 ".d[0:1]"  -2147483641 -2147483558;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "F07D8B1F-44E9-3C88-11D5-BCA882C068E7";
	setAttr -s 2 ".e[0:1]"  1 0.50817603;
	setAttr -s 2 ".d[0:1]"  -2147483639 -2147483555;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "8BBC38D3-4F8B-7638-ED99-2E9907D9B5A2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[3]" -type "float2" -2.3223747e-05 2.3224413e-05 ;
	setAttr ".uvtk[88]" -type "float2" -0.011012598 -0.0004748514 ;
createNode polyMergeVert -n "polyMergeVert13";
	rename -uid "3634B942-4DE2-5427-6DE2-C390870FA8F7";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[52]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "9EC6606B-48F1-9B62-A913-8992D2677A55";
	setAttr ".uopa" yes;
	setAttr ".tk[52]" -type "float3"  -0.0040880144 0 0;
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "B95F52E8-45C8-A0DA-876C-77AD8C8E58BB";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" 2.3224324e-05 2.3224413e-05 ;
	setAttr ".uvtk[87]" -type "float2" 0.023578379 -0.00048576441 ;
createNode polyMergeVert -n "polyMergeVert14";
	rename -uid "53FE262F-45A1-A7D9-C7F7-94A3279ECC1B";
	setAttr ".ics" -type "componentList" 2 "vtx[1]" "vtx[51]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "F7C778A8-4060-F6BA-8B2C-67BFF4436BEF";
	setAttr ".uopa" yes;
	setAttr ".tk[51]" -type "float3"  0.008682996 0 0;
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "61F8B653-4398-297B-0831-DB8957EE1182";
	setAttr ".uopa" yes;
	setAttr -s 2 ".uvtk";
	setAttr ".uvtk[21]" -type "float2" 2.3224324e-05 -2.3223747e-05 ;
	setAttr ".uvtk[86]" -type "float2" 0.029849038 -0.00048686506 ;
createNode polyMergeVert -n "polyMergeVert15";
	rename -uid "6E34718C-4682-1D53-4CE4-4282A8AF9475";
	setAttr ".ics" -type "componentList" 2 "vtx[21]" "vtx[50]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "30632A48-469C-7DFA-1993-83991D063960";
	setAttr ".uopa" yes;
	setAttr ".tk[50]" -type "float3"  0.010977507 0 0;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "89D07567-4FAF-4603-2BED-0CB2444DDA32";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[23]" -type "float2" -2.3223747e-05 -2.3223747e-05 ;
	setAttr ".uvtk[85]" -type "float2" -0.014051631 -0.00047676705 ;
createNode polyMergeVert -n "polyMergeVert16";
	rename -uid "C691F731-4C1F-F65C-52B6-5EAD1C82213F";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[49]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak17";
	rename -uid "F52D85E2-4FC8-B47A-1B99-ACB28DF58D10";
	setAttr ".uopa" yes;
	setAttr ".tk[49]" -type "float3"  -0.005199492 0 0;
createNode objectSet -n "set1";
	rename -uid "BB5B439F-49F2-518A-52B8-168724A6790D";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr -s 2 ".gn";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "4D0D5C2E-49B3-E742-A7A0-248EEAF05FB5";
	setAttr ".ics" -type "componentList" 7 "e[34]" "e[38]" "e[44]" "e[51:52]" "e[59]" "e[65]" "e[69]";
createNode groupId -n "groupId1";
	rename -uid "A8F3AD48-4DDE-999B-EED5-D1A77CEAC623";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D278A9A8-4CBB-5AED-2E19-C5BA84330D75";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "e[7:10]" "e[13:14]" "e[17:18]" "e[34]" "e[38]" "e[44]" "e[51:52]" "e[59]" "e[65]" "e[69]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "0B3A9DDD-4D08-6B0D-352D-0591C0144275";
	setAttr ".ics" -type "componentList" 3 "e[7:10]" "e[13:14]" "e[17:18]";
createNode polySplit -n "polySplit9";
	rename -uid "426CAB07-4A45-262C-25D3-EAAA29E76286";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483631 -2147483639;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "D663FA2C-4289-081B-492C-A39B31557317";
	setAttr -s 3 ".e[0:2]"  0 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483634 -2147483556 -2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "74991E14-4DC5-0F4B-4E31-AD8699CFA0A1";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483604 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "FCDE3463-4ED0-529C-01B6-51A3DCDBD4AB";
	setAttr -s 3 ".e[0:2]"  1 0.5 1;
	setAttr -s 3 ".d[0:2]"  -2147483583 -2147483552 -2147483614;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "69D52582-40A8-AA20-4770-32A2B52FB887";
	setAttr ".ics" -type "componentList" 3 "e[76]" "e[79]" "e[81:82]";
	setAttr ".cv" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0818F566-4620-921D-5E86-90AD2A786EEA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 576\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 575\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 576\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1158\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -ufeFilter \"USD\" \"InactivePrims\" -ufeFilterValue 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
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
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1158\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1158\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "68340E1D-4A25-BD49-8FD8-4CB3524AA9F0";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 240 -ast 0 -aet 240 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "CADD3971-49F8-D16E-2228-66A1817CE654";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[90]" "e[96]" "e[98]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.65160089731216431;
	setAttr ".dr" no;
	setAttr ".re" 96;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "97994DEC-4FC5-8C45-B3EF-12BD68BABCB5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[0]" "e[24]" "e[30]" "e[34]" "e[54]" "e[64]" "e[74]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.32052871584892273;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "89172F49-4776-753E-89D3-BFAC4CFAAD44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[4]" "e[27]" "e[47]" "e[50]" "e[59]" "e[69]" "e[87]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.31767261028289795;
	setAttr ".re" 27;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "B7937288-4E1C-0BD6-8F96-1E9515C267AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[92]" "e[97]" "e[99]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.60905200242996216;
	setAttr ".dr" no;
	setAttr ".re" 99;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "F0C00DD6-4A32-ACD0-078B-59B0A9F342B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[20]" "e[23]" "e[72]" "e[75]" "e[79]" "e[83]" "e[86]" "e[124]" "e[137]" "e[150]" "e[163]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.53533774614334106;
	setAttr ".dr" no;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "885A9F75-4D62-ADE3-DE4A-DB971BB33113";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[95]" "e[100:101]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.57975971698760986;
	setAttr ".dr" no;
	setAttr ".re" 100;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "F6BAA9D6-46AA-A094-46A8-D087E1A7518E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1]" "e[5]" "e[32]" "e[35]" "e[39]" "e[44]" "e[49]" "e[118]" "e[131]" "e[144]" "e[157]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.60759449005126953;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "799FE0A8-43F5-5287-BB29-138191E03ECA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[89]" "e[102:103]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 0 1;
	setAttr ".wt" 0.507423996925354;
	setAttr ".dr" no;
	setAttr ".re" 103;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "7DF49BB8-4299-0053-A5C1-2491FC2D5431";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[4]" "e[23]" "e[40]" "e[43]" "e[50]" "e[58]" "e[75]" "e[78]" "e[81]" "e[83]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 -0.34619474524044525 1;
	setAttr ".wt" 0.64290440082550049;
	setAttr ".dr" no;
	setAttr ".re" 58;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "41908792-4F2B-19B0-BF2A-B6B9C99FEF34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0]" "e[20]" "e[26]" "e[29]" "e[46]" "e[54]" "e[63]" "e[77]" "e[80]" "e[82]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 -0.34619474524044525 1;
	setAttr ".wt" 0.60015231370925903;
	setAttr ".dr" no;
	setAttr ".re" 63;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "841C982F-4320-C643-9F17-1CB791907504";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[16]" "e[19]" "e[61]" "e[64]" "e[67]" "e[71]" "e[74]" "e[79]" "e[84:85]" "e[98]" "e[102]" "e[118]" "e[122]" "e[140]" "e[155]" "e[160]" "e[175]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 -0.34619474524044525 1;
	setAttr ".wt" 0.65912264585494995;
	setAttr ".dr" no;
	setAttr ".re" 67;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "55BA4C1A-4A22-6121-CC70-42A2D8B7F6D4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[1]" "e[5]" "e[27]" "e[30]" "e[33]" "e[37]" "e[42]" "e[76]" "e[86:87]" "e[108]" "e[112]" "e[128]" "e[132]" "e[146]" "e[150]" "e[166]" "e[170]";
	setAttr ".ix" -type "matrix" 1.1957675317511984 0 0 0 0 0 1 0 0 -1.7689534511495406 0 0
		 0 14.264366278516015 -0.34619474524044525 1;
	setAttr ".wt" 0.54434418678283691;
	setAttr ".dr" no;
	setAttr ".re" 33;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "028D514E-4AC8-7012-F3FE-50A84034EBA2";
	setAttr ".ics" -type "componentList" 17 "e[138]" "e[140]" "e[142]" "e[144]" "e[146]" "e[148]" "e[150]" "e[152]" "e[154:155]" "e[179]" "e[189]" "e[215]" "e[225]" "e[251]" "e[261]" "e[287]" "e[297]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "B27936B4-4767-3797-8925-3B9E3B07DE1C";
	setAttr ".ics" -type "componentList" 15 "e[190]" "e[192]" "e[194]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210]" "e[212]" "e[214]" "e[216]" "e[218:219]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge4";
	rename -uid "0EC7A4F4-434E-2ABC-AB4E-6C940745751B";
	setAttr ".ics" -type "componentList" 15 "e[108]" "e[110]" "e[112]" "e[114]" "e[116]" "e[118]" "e[120]" "e[122:123]" "e[161]" "e[171]" "e[186]" "e[205]" "e[215]" "e[237]" "e[247]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge5";
	rename -uid "8152343F-41E6-59D3-0112-4285817B5658";
	setAttr ".ics" -type "componentList" 13 "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[188]" "e[190:191]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge6";
	rename -uid "61D17B96-4FD4-9010-1B83-3AAE30A5B332";
	setAttr ".ics" -type "componentList" 13 "e[127]" "e[129]" "e[131]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151:152]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge7";
	rename -uid "88D015B1-4B8E-0D46-63A7-13A0AFEA3F85";
	setAttr ".ics" -type "componentList" 2 "e[111]" "e[113]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge8";
	rename -uid "CBE75A67-4B13-3A6E-041B-BB9B6ABA3929";
	setAttr ".ics" -type "componentList" 2 "e[272]" "e[274]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge9";
	rename -uid "0AA73CB0-4C44-AD22-1DB3-41887204A1A0";
	setAttr ".ics" -type "componentList" 2 "e[218]" "e[220]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge10";
	rename -uid "45FF935C-4941-D6A5-47B1-908DAC93C852";
	setAttr ".ics" -type "componentList" 2 "e[164]" "e[166]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge11";
	rename -uid "BB62F249-4DFF-A291-D698-69896A662D52";
	setAttr ".ics" -type "componentList" 10 "e[144]" "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[167]" "e[188]" "e[216]" "e[237]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge12";
	rename -uid "BB121154-4DDD-FA88-B660-659CB6F0B0B9";
	setAttr ".ics" -type "componentList" 24 "e[101]" "e[103]" "e[105]" "e[107]" "e[109]" "e[111]" "e[160]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178:180]" "e[182]" "e[184]" "e[186]" "e[196]" "e[198]" "e[200]" "e[202]" "e[204:206]" "e[208]" "e[210]" "e[212]" "e[224]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit13";
	rename -uid "FB256F37-42FF-8425-B0CA-F0B900CF50D5";
	setAttr -s 3 ".e[0:2]"  1 0.66666502 0;
	setAttr -s 3 ".d[0:2]"  -2147483623 -2147483567 -2147483527;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "1F7B0045-4209-E7E2-DB08-368698081F99";
	setAttr -s 3 ".e[0:2]"  0 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483520 -2147483464 -2147483564;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "00DDFB2B-4496-123E-06A6-10880AC8DECA";
	setAttr -s 3 ".e[0:2]"  1 0.66666502 0;
	setAttr -s 3 ".d[0:2]"  -2147483565 -2147483569 -2147483543;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "37518592-4A39-C42C-15D1-2F891548408B";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483488 -2147483459 -2147483471;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "1F27A217-4DF9-8A05-33D0-D48DABE36F12";
	setAttr -s 3 ".e[0:2]"  0 0.666664 0;
	setAttr -s 3 ".d[0:2]"  -2147483562 -2147483570 -2147483555;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "445D27E1-4C62-8AF8-336B-84A5DA8548AC";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483563 -2147483570 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge13";
	rename -uid "349F1858-455D-D449-D3E7-629E18E1635D";
	setAttr ".ics" -type "componentList" 2 "e[78]" "e[194]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge14";
	rename -uid "6934562E-4B1E-C184-0BFA-9EB566D7C72F";
	setAttr ".ics" -type "componentList" 1 "e[78]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge15";
	rename -uid "86ECBA89-4FE0-315E-43D9-649AF32A6FBA";
	setAttr ".ics" -type "componentList" 1 "e[187]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge16";
	rename -uid "BDEA2F2A-4C78-5DF5-A731-FD858D004018";
	setAttr ".ics" -type "componentList" 2 "e[79]" "e[182]";
	setAttr ".cv" yes;
createNode polySplit -n "polySplit19";
	rename -uid "76DB8DE6-4AC6-7590-2C9C-3EA7524AF355";
	setAttr -s 3 ".e[0:2]"  0 0.66666698 1;
	setAttr -s 3 ".d[0:2]"  -2147483498 -2147483570 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "7553435B-40D7-821D-E4B4-E8ADFFED624F";
	setAttr -s 3 ".e[0:2]"  1 1 1;
	setAttr -s 3 ".d[0:2]"  -2147483626 -2147483454 -2147483569;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge17";
	rename -uid "83FBB926-4B00-7F2E-2C66-039E182B4E13";
	setAttr ".ics" -type "componentList" 2 "e[78]" "e[193]";
	setAttr ".cv" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "B5EB261A-489E-951C-3BA0-A3B5421C9636";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId2";
	rename -uid "B870F876-464E-3B9D-93F7-768C340A5C03";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "0CD4ACEE-4709-4D74-7749-3381937F42C8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:81]";
createNode groupId -n "groupId3";
	rename -uid "D4C53BAF-464E-883F-56BE-3AAAF44BD5EC";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "C1F109A8-4CD6-5C38-E6A5-CDBEF6E8E49D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "9A6A0D2F-4E97-E47D-573C-3E9ECF17BD6B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:99]";
createNode groupId -n "groupId5";
	rename -uid "4472B672-48CC-733F-73CD-198776A0AF35";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "721BB8CA-4C36-AC5E-FFC5-03979A576B92";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "E8891BB9-4BB7-DE53-E162-9C8C5227BC4A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "e[7:10]" "e[13:14]" "e[16:17]" "e[31]" "e[35]" "e[40]" "e[46:47]" "e[53]" "e[57]" "e[61]";
createNode groupId -n "groupId7";
	rename -uid "C1BBD807-4C98-FB4C-50D1-2CA6DF5BF62A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "E9055B22-461B-44D5-1A51-7B8D1D7D39C0";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:181]";
createNode polyDelEdge -n "polyDelEdge18";
	rename -uid "D0558917-4D51-1E10-4C54-BB83B505ECCF";
	setAttr ".ics" -type "componentList" 12 "e[290]" "e[292]" "e[294]" "e[296]" "e[298]" "e[300]" "e[302]" "e[304]" "e[315]" "e[317]" "e[346:347]" "e[356:357]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "FB608977-4C1B-58FB-CCE0-86BF8F36400A";
	setAttr ".dc" -type "componentList" 8 "f[0:4]" "f[6]" "f[8]" "f[48]" "f[55:57]" "f[64]" "f[70]" "f[79]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "B4AC5975-41E7-5E1C-1338-21B5A0D844BB";
	setAttr ".dc" -type "componentList" 6 "f[115]" "f[117]" "f[120:121]" "f[134:135]" "f[144:149]" "f[151:152]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "932870DC-4C86-CDF4-F2DE-2C8EEBC570C2";
	setAttr ".ics" -type "componentList" 37 "e[23]" "e[25]" "e[27]" "e[30]" "e[34]" "e[38]" "e[40]" "e[44]" "e[46]" "e[50]" "e[74]" "e[85]" "e[87:88]" "e[93]" "e[107]" "e[111]" "e[113]" "e[115:116]" "e[122:123]" "e[127:130]" "e[145]" "e[147]" "e[149:156]" "e[162:163]" "e[169]" "e[172]" "e[231:232]" "e[235]" "e[247]" "e[257]" "e[259]" "e[263:264]" "e[267:268]" "e[279]" "e[294]" "e[296:297]" "e[300:305]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 66;
	setAttr ".sv2" 136;
	setAttr ".d" 1;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "A60D907B-4AF6-4041-6413-AC9DEB282A21";
	setAttr ".ics" -type "componentList" 5 "f[15]" "f[17:18]" "f[20]" "f[41]" "f[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 15.148843 -0.062672846 ;
	setAttr ".rs" 61643;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.59788376092910767 15.148842811584473 -0.071469493210315704 ;
	setAttr ".cbx" -type "double3" 0.59788376092910767 15.148842811584473 -0.053876198828220367 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak18";
	rename -uid "F5417AFB-4CA1-FFF8-FDC9-F6A239AC5931";
	setAttr ".uopa" yes;
	setAttr -s 128 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[1]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[6]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[11]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[15]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[20]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[25]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[26]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[27]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[28]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[32]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[34]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[35]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[36]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[38]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[39]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[41]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[42]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[48]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[50]" -type "float3" 0.044158474 0 0.066969819 ;
	setAttr ".tk[51]" -type "float3" 0.044158474 0 0.066969819 ;
	setAttr ".tk[52]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[53]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[54]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[55]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[56]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[57]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[58]" -type "float3" 0.044158466 0 0.066969819 ;
	setAttr ".tk[59]" -type "float3" 0.044158466 0 0.066969819 ;
	setAttr ".tk[60]" -type "float3" -0.044158474 0 0.066969819 ;
	setAttr ".tk[61]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[62]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[63]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[64]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[65]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[66]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[67]" -type "float3" -0.044158474 0 0.066969819 ;
	setAttr ".tk[68]" -type "float3" -0.044158474 0 0.066969819 ;
	setAttr ".tk[69]" -type "float3" -0.044158474 0 0.066969819 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[71]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[72]" -type "float3" -0.044158474 0 0.066969819 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[75]" -type "float3" -0.043660704 0 0.066969819 ;
	setAttr ".tk[76]" -type "float3" 5.9604645e-08 0 0.066969819 ;
	setAttr ".tk[77]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[78]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[79]" -type "float3" 0.043660704 0 0.066969819 ;
	setAttr ".tk[80]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[81]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[82]" -type "float3" 0.044158474 0 0.066969819 ;
	setAttr ".tk[83]" -type "float3" 0 0 0.066969819 ;
	setAttr ".tk[85]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[90]" -type "float3" -0.090532906 -0.13393039 -0.0026639244 ;
	setAttr ".tk[91]" -type "float3" 0 -0.13393039 -0.0026639299 ;
	setAttr ".tk[92]" -type "float3" 0.090533026 -0.13393039 -0.0026639316 ;
	setAttr ".tk[95]" -type "float3" -0.090533026 0 -0.0026639316 ;
	setAttr ".tk[97]" -type "float3" 0.090533026 0 -0.0026639316 ;
	setAttr ".tk[100]" -type "float3" -0.090533026 0.13393039 -0.0026639316 ;
	setAttr ".tk[101]" -type "float3" 0 0.13393039 -0.0026639316 ;
	setAttr ".tk[102]" -type "float3" 0.090533026 0.13393039 -0.0026639316 ;
	setAttr ".tk[110]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.090533026 -0.13393039 0.002663926 ;
	setAttr ".tk[114]" -type "float3" 0 -0.13393039 0.002663926 ;
	setAttr ".tk[116]" -type "float3" 0.090533026 -0.13393039 0.002663926 ;
	setAttr ".tk[119]" -type "float3" -0.090533026 0 0.002663926 ;
	setAttr ".tk[122]" -type "float3" 0.090533026 0 0.002663926 ;
	setAttr ".tk[123]" -type "float3" -0.090533026 0.13393039 0.002663926 ;
	setAttr ".tk[126]" -type "float3" 0.090533026 0.13393039 0.002663926 ;
	setAttr ".tk[129]" -type "float3" 0 0.13393039 0.002663926 ;
	setAttr ".tk[133]" -type "float3" -0.044158474 0 0 ;
	setAttr ".tk[134]" -type "float3" -0.044158474 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.044158474 0 0 ;
	setAttr ".tk[136]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[137]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[139]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[140]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[141]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[142]" -type "float3" -0.044158474 0 0 ;
	setAttr ".tk[143]" -type "float3" 0.043660697 0 0 ;
	setAttr ".tk[144]" -type "float3" 0.043660697 0 0 ;
	setAttr ".tk[145]" -type "float3" 0.043660704 0 0 ;
	setAttr ".tk[146]" -type "float3" 0.043660704 0 0 ;
	setAttr ".tk[147]" -type "float3" 0.043660704 0 0 ;
	setAttr ".tk[148]" -type "float3" 0.043660704 0 0 ;
	setAttr ".tk[149]" -type "float3" 0.044158466 0 0 ;
	setAttr ".tk[150]" -type "float3" 0.044158466 0 0 ;
	setAttr ".tk[151]" -type "float3" 0.044158474 0 0 ;
	setAttr ".tk[152]" -type "float3" 0.044158474 0 0 ;
	setAttr ".tk[155]" -type "float3" 0.043660704 0 0 ;
	setAttr ".tk[158]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[159]" -type "float3" -0.043660704 0 0 ;
	setAttr ".tk[164]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".tk[165]" -type "float3" 0.044158433 0 0 ;
	setAttr ".tk[166]" -type "float3" -0.044158403 0 0 ;
createNode polyTweak -n "polyTweak19";
	rename -uid "1D4BFFA4-4606-C719-6DC0-77856E78F5E7";
	setAttr ".uopa" yes;
	setAttr -s 69 ".tk";
	setAttr ".tk[1]" -type "float3" -0.14750986 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.14466248 0 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.21678008 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.21983252 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.21983252 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.21983252 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.21983252 0 ;
	setAttr ".tk[25]" -type "float3" -0.14750986 0 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.13455254 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.21714945 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.13455254 0 ;
	setAttr ".tk[30]" -type "float3" 0.14466248 0 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.13455254 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.219823 0 ;
	setAttr ".tk[46]" -type "float3" 4.4703484e-08 0 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.21983252 0 ;
	setAttr ".tk[58]" -type "float3" 0 -0.13455254 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.21678008 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.13389884 0 ;
	setAttr ".tk[76]" -type "float3" -0.14750986 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.14466248 0 0 ;
	setAttr ".tk[85]" -type "float3" -0.14750986 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.14466248 0 0 ;
	setAttr ".tk[89]" -type "float3" 0 -0.21714945 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.219823 0 ;
	setAttr ".tk[105]" -type "float3" -0.14692849 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.14824367 0 0 ;
	setAttr ".tk[110]" -type "float3" -0.1464802 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.056395762 -0.083428964 0 ;
	setAttr ".tk[112]" -type "float3" 0 -0.21741509 0 ;
	setAttr ".tk[114]" -type "float3" 0 -0.083428964 0 ;
	setAttr ".tk[115]" -type "float3" 0.14334685 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.056395762 -0.083428964 0 ;
	setAttr ".tk[118]" -type "float3" 0 -0.219823 0 ;
	setAttr ".tk[119]" -type "float3" -0.056395762 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.056395762 0 0 ;
	setAttr ".tk[123]" -type "float3" -0.056395762 0.083428964 0 ;
	setAttr ".tk[124]" -type "float3" 0 0.21667254 0 ;
	setAttr ".tk[125]" -type "float3" 0 0.21667254 0 ;
	setAttr ".tk[126]" -type "float3" 0.056395762 0.083428964 0 ;
	setAttr ".tk[127]" -type "float3" -0.14692849 0 0 ;
	setAttr ".tk[129]" -type "float3" 0 0.083428964 0 ;
	setAttr ".tk[131]" -type "float3" 0.14824367 0 0 ;
	setAttr ".tk[133]" -type "float3" 0 -0.13389884 0 ;
	setAttr ".tk[138]" -type "float3" 0 -0.21741509 0 ;
	setAttr ".tk[140]" -type "float3" 0 0.21667254 0 ;
	setAttr ".tk[145]" -type "float3" 0 -0.219823 0 ;
	setAttr ".tk[147]" -type "float3" 0 0.21667254 0 ;
	setAttr ".tk[152]" -type "float3" 0 -0.13455254 0 ;
	setAttr ".tk[156]" -type "float3" 0.14334685 0 0 ;
	setAttr ".tk[158]" -type "float3" -0.1464802 0 0 ;
	setAttr ".tk[167]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[168]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[169]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[170]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[171]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[173]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[175]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[176]" -type "float3" 4.4703484e-08 0.38138157 0 ;
	setAttr ".tk[177]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[178]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[179]" -type "float3" 0 0.38138157 0 ;
	setAttr ".tk[180]" -type "float3" 0 0.38138157 0 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "F0C51F30-4FFD-1CF9-788F-A89FB54D02A2";
	setAttr ".dc" -type "componentList" 2 "f[73:74]" "f[77:78]";
createNode polyDelEdge -n "polyDelEdge19";
	rename -uid "CDDE85B2-495C-F1E0-C488-CBB56D7AD463";
	setAttr ".ics" -type "componentList" 22 "e[37]" "e[39]" "e[58]" "e[65:68]" "e[75]" "e[87]" "e[90]" "e[96]" "e[105]" "e[189]" "e[191:192]" "e[194]" "e[196]" "e[225]" "e[231]" "e[243]" "e[252]" "e[257]" "e[305]" "e[310]" "e[318]" "e[323]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak20";
	rename -uid "0E52701C-47B1-521A-452B-8AA7A6BC3EED";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[6]" -type "float3" -0.14853658 0 0 ;
	setAttr ".tk[8]" -type "float3" 0.14251725 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.14853658 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.14251725 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.14853658 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.14251725 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.14853658 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.14251725 0 0 ;
	setAttr ".tk[170]" -type "float3" -0.14853658 0 0 ;
	setAttr ".tk[174]" -type "float3" 0.14251725 0 0 ;
createNode polyDelEdge -n "polyDelEdge20";
	rename -uid "C802EC71-478F-3295-0EC8-4191D2C3757E";
	setAttr ".ics" -type "componentList" 20 "e[22]" "e[41]" "e[47]" "e[52:53]" "e[88]" "e[94]" "e[106]" "e[145]" "e[147:148]" "e[171]" "e[173]" "e[215]" "e[221]" "e[229]" "e[242]" "e[251]" "e[264]" "e[284]" "e[288]" "e[290]";
	setAttr ".cv" yes;
createNode mayaUsdLayerManager -n "mayaUsdLayerManager1";
	rename -uid "E10BFC46-40E1-541B-DBDD-CF9E9475DBDA";
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
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
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
	setAttr -s 4 ".sol";
connectAttr "groupParts3.og" "pPlaneShape1.i";
connectAttr "polyTweakUV16.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "groupId4.id" "pPlaneShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape1.iog.og[0].gco";
connectAttr "groupId5.id" "pPlaneShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pPlaneShape2.iog.og[0].gid";
connectAttr "set1.mwc" "pPlaneShape2.iog.og[0].gco";
connectAttr "groupId2.id" "pPlaneShape2.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape2.iog.og[1].gco";
connectAttr "groupParts2.og" "pPlaneShape2.i";
connectAttr "groupId3.id" "pPlaneShape2.ciog.cog[0].cgid";
connectAttr "polyDelEdge20.out" "pPlane3Shape.i";
connectAttr "groupId6.id" "pPlane3Shape.iog.og[0].gid";
connectAttr "set1.mwc" "pPlane3Shape.iog.og[0].gco";
connectAttr "groupId7.id" "pPlane3Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pPlane3Shape.iog.og[1].gco";
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
connectAttr "polyPlane1.out" "polyExtrudeFace1.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak1.out" "polyExtrudeEdge1.ip";
connectAttr "pPlaneShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak1.ip";
connectAttr "polyExtrudeEdge1.out" "polyTweakUV1.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak2.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV2.ip";
connectAttr "polyTweak3.out" "polyMergeVert2.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV2.out" "polyTweak3.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV3.ip";
connectAttr "polyTweak4.out" "polyMergeVert3.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV3.out" "polyTweak4.ip";
connectAttr "polyMergeVert3.out" "polyTweakUV4.ip";
connectAttr "polyTweak5.out" "polyMergeVert4.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV4.out" "polyTweak5.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV5.ip";
connectAttr "polyTweak6.out" "polyMergeVert5.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV5.out" "polyTweak6.ip";
connectAttr "polyMergeVert5.out" "polyTweakUV6.ip";
connectAttr "polyTweak7.out" "polyMergeVert6.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV6.out" "polyTweak7.ip";
connectAttr "polyMergeVert6.out" "polyTweakUV7.ip";
connectAttr "polyTweak8.out" "polyMergeVert7.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert7.mp";
connectAttr "polyTweakUV7.out" "polyTweak8.ip";
connectAttr "polyMergeVert7.out" "polyTweakUV8.ip";
connectAttr "polyTweak9.out" "polyMergeVert8.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert8.mp";
connectAttr "polyTweakUV8.out" "polyTweak9.ip";
connectAttr "polyMergeVert8.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polyTweakUV9.ip";
connectAttr "polyTweak10.out" "polyMergeVert9.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert9.mp";
connectAttr "polyTweakUV9.out" "polyTweak10.ip";
connectAttr "polyMergeVert9.out" "polyTweakUV10.ip";
connectAttr "polyTweak11.out" "polyMergeVert10.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert10.mp";
connectAttr "polyTweakUV10.out" "polyTweak11.ip";
connectAttr "polyMergeVert10.out" "polyTweakUV11.ip";
connectAttr "polyTweak12.out" "polyMergeVert11.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert11.mp";
connectAttr "polyTweakUV11.out" "polyTweak12.ip";
connectAttr "polyMergeVert11.out" "polyTweakUV12.ip";
connectAttr "polyTweak13.out" "polyMergeVert12.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert12.mp";
connectAttr "polyTweakUV12.out" "polyTweak13.ip";
connectAttr "polyMergeVert12.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polyTweakUV13.ip";
connectAttr "polyTweak14.out" "polyMergeVert13.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert13.mp";
connectAttr "polyTweakUV13.out" "polyTweak14.ip";
connectAttr "polyMergeVert13.out" "polyTweakUV14.ip";
connectAttr "polyTweak15.out" "polyMergeVert14.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert14.mp";
connectAttr "polyTweakUV14.out" "polyTweak15.ip";
connectAttr "polyMergeVert14.out" "polyTweakUV15.ip";
connectAttr "polyTweak16.out" "polyMergeVert15.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert15.mp";
connectAttr "polyTweakUV15.out" "polyTweak16.ip";
connectAttr "polyMergeVert15.out" "polyTweakUV16.ip";
connectAttr "polyTweak17.out" "polyMergeVert16.ip";
connectAttr "pPlaneShape1.wm" "polyMergeVert16.mp";
connectAttr "polyTweakUV16.out" "polyTweak17.ip";
connectAttr "groupId1.msg" "set1.gn" -na;
connectAttr "groupId6.msg" "set1.gn" -na;
connectAttr "pPlaneShape2.iog.og[0]" "set1.dsm" -na;
connectAttr "pPlane3Shape.iog.og[0]" "set1.dsm" -na;
connectAttr "groupParts1.og" "polyCloseBorder1.ip";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCloseBorder1.out" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polyDelEdge1.ip";
connectAttr "polyMergeVert16.out" "polySplitRing1.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pPlaneShape1.wm" "polySplitRing8.mp";
connectAttr "polyDelEdge1.out" "polySplitRing9.ip";
connectAttr "pPlaneShape2.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pPlaneShape2.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pPlaneShape2.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pPlaneShape2.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyDelEdge3.ip";
connectAttr "polyDelEdge3.out" "polyDelEdge4.ip";
connectAttr "polyDelEdge4.out" "polyDelEdge5.ip";
connectAttr "polyDelEdge5.out" "polyDelEdge6.ip";
connectAttr "polySplitRing8.out" "polyDelEdge7.ip";
connectAttr "polyDelEdge7.out" "polyDelEdge8.ip";
connectAttr "polyDelEdge8.out" "polyDelEdge9.ip";
connectAttr "polyDelEdge9.out" "polyDelEdge10.ip";
connectAttr "polyDelEdge10.out" "polyDelEdge11.ip";
connectAttr "polyDelEdge11.out" "polyDelEdge12.ip";
connectAttr "polyDelEdge12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polyDelEdge13.ip";
connectAttr "polyDelEdge13.out" "polyDelEdge14.ip";
connectAttr "polyDelEdge14.out" "polyDelEdge15.ip";
connectAttr "polyDelEdge15.out" "polyDelEdge16.ip";
connectAttr "polyDelEdge16.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polyDelEdge17.ip";
connectAttr "pPlaneShape2.o" "polyUnite1.ip[0]";
connectAttr "pPlaneShape1.o" "polyUnite1.ip[1]";
connectAttr "pPlaneShape2.wm" "polyUnite1.im[0]";
connectAttr "pPlaneShape1.wm" "polyUnite1.im[1]";
connectAttr "polyDelEdge6.out" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "polyDelEdge17.out" "groupParts3.ig";
connectAttr "groupId4.id" "groupParts3.gi";
connectAttr "polyUnite1.out" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "groupParts4.og" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polyDelEdge18.ip";
connectAttr "polyDelEdge18.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyBridgeEdge1.ip";
connectAttr "pPlane3Shape.wm" "polyBridgeEdge1.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace2.ip";
connectAttr "pPlane3Shape.wm" "polyExtrudeFace2.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak18.ip";
connectAttr "polyExtrudeFace2.out" "polyTweak19.ip";
connectAttr "polyTweak19.out" "deleteComponent3.ig";
connectAttr "polyTweak20.out" "polyDelEdge19.ip";
connectAttr "deleteComponent3.og" "polyTweak20.ip";
connectAttr "polyDelEdge19.out" "polyDelEdge20.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pPlaneShape2.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlane3Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
// End of Bandholder_02.ma
