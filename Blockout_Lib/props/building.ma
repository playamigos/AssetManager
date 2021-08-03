//Maya ASCII 2018ff08 scene
//Name: building.ma
//Last modified: Fri, Jul 09, 2021 09:51:53 AM
//Codeset: 1252
requires maya "2018ff08";
requires -dataType "HIKCharacter" -dataType "HIKCharacterState" -dataType "HIKEffectorState"
		 -dataType "HIKPropertySetState" "mayaHIK" "1.0_HIK_2016.5";
requires "mtoa" "3.0.0.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201804211841-f3d65dda2a";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
createNode transform -n "buildingBlock";
	rename -uid "C1DB9DEE-43B5-BB54-9005-AF8BF638603C";
	setAttr ".rp" -type "double3" 0 -30.177522659301744 0 ;
	setAttr ".sp" -type "double3" 0 -30.177522659301751 0 ;
createNode mesh -n "buildingBlockShape" -p "buildingBlock";
	rename -uid "7FA73DED-48A3-0990-8C5D-CD94BA8AF92C";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 7 "f[0]" "f[2:4]" "f[9]" "f[11]" "f[14:15]" "f[21:23]" "f[29:32]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 7 "f[1]" "f[5:8]" "f[10]" "f[12:13]" "f[16:20]" "f[24:28]" "f[33]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57989233732223511 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.625 0.20295008 0.375 0.20295008 0.125 0.20295008 0.375 0.54704994
		 0.625 0.54704994 0.875 0.20295008 0.375 0.20295008 0.625 0.20295008 0.625 0.25 0.375
		 0.25 0.125 0.20295008 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.54704994 0.375 0.54704994
		 0.875 0.20295008 0.875 0.25 0.47841248 0.25 0.47841248 0.25 0.47841248 0.5 0.47841248
		 0.5 0.47841248 0.54704994 0.47841248 0.54704994 0.47841248 0.75 0.47841248 0 0.47841245
		 0.20295008 0.47841245 0.20295008 0.53478467 0.25 0.53478467 0.25 0.53478467 0.5 0.53478467
		 0.5 0.53478467 0.54704994 0.53478467 0.54704994 0.53478467 0.75 0.53478467 0 0.53478462
		 0.20295008 0.53478462 0.20295008;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".pt[0:39]" -type "float3"  -382.67441 -29.677523 382.67438 
		382.67441 -29.677523 382.67438 -382.67441 397.67029 382.67438 382.67441 397.67029 
		382.67438 -382.67441 397.67029 -382.67447 382.67441 397.67029 -382.67447 -382.67441 
		-29.677523 -382.67447 382.67441 -29.677523 -382.67447 382.67441 274.16544 382.67438 
		-382.67441 274.16544 382.67438 -382.67441 274.16544 -382.67447 382.67441 274.16544 
		-382.67447 460.58667 274.16544 460.58664 -460.58667 274.16544 460.58664 460.58667 
		397.67029 460.58664 -460.58667 397.67029 460.58664 -460.58667 274.16544 -460.58676 
		-460.58667 397.67029 -460.58676 460.58667 397.67029 -460.58676 460.58667 274.16544 
		-460.58676 -125.26987 397.67029 460.58664 -104.07751 397.67029 382.67438 -104.07751 
		397.67029 -382.67447 -125.26987 397.67029 -460.58676 -125.26987 274.16547 -460.58676 
		-104.07751 274.16547 -382.67447 -104.07751 -29.677523 -382.67447 -104.07751 -29.677523 
		382.67438 -104.07752 274.16544 382.67438 -125.26988 274.16544 460.58664 128.17067 
		397.67029 460.58664 106.48948 397.67029 382.67438 106.48948 397.67029 -382.67447 
		128.17067 397.67029 -460.58676 128.17067 274.16547 -460.58676 106.48948 274.16547 
		-382.67447 106.48948 -29.677523 -382.67447 106.48948 -29.677523 382.67438 106.48947 
		274.16544 382.67438 128.17065 274.16544 460.58664;
	setAttr -s 40 ".vt[0:39]"  -0.5 -0.5 0.49999994 0.5 -0.5 0.49999994
		 -0.5 6.29239511 0.49999994 0.5 6.29239511 0.49999994 -0.5 6.29239511 -0.50000006
		 0.5 6.29239511 -0.50000006 -0.5 -0.5 -0.50000006 0.5 -0.5 -0.50000006 0.5 4.32937193 0.49999994
		 -0.5 4.32937193 0.49999994 -0.5 4.32937193 -0.50000006 0.5 4.32937193 -0.50000006
		 0.60179967 4.32937193 0.60179961 -0.60179967 4.32937193 0.60179961 0.60179967 6.29239511 0.60179961
		 -0.60179967 6.29239511 0.60179961 -0.60179967 4.32937193 -0.60179979 -0.60179967 6.29239511 -0.60179979
		 0.60179967 6.29239511 -0.60179979 0.60179967 4.32937193 -0.60179979 -0.16367683 6.29239511 0.60179961
		 -0.13598703 6.29239511 0.49999994 -0.13598703 6.29239511 -0.50000006 -0.16367683 6.29239511 -0.60179979
		 -0.16367683 4.32937241 -0.60179979 -0.13598703 4.32937241 -0.50000006 -0.13598703 -0.5 -0.50000006
		 -0.13598703 -0.5 0.49999994 -0.13598704 4.32937193 0.49999994 -0.16367684 4.32937193 0.60179961
		 0.167467 6.29239511 0.60179961 0.13913849 6.29239511 0.49999994 0.13913849 6.29239511 -0.50000006
		 0.167467 6.29239511 -0.60179979 0.167467 4.32937241 -0.60179979 0.13913849 4.32937241 -0.50000006
		 0.13913849 -0.5 -0.50000006 0.13913849 -0.5 0.49999994 0.13913848 4.32937193 0.49999994
		 0.16746697 4.32937193 0.60179961;
	setAttr -s 73 ".ed[0:72]"  0 27 0 2 21 1 4 22 1 6 26 0 0 9 0 1 8 0 2 4 1
		 3 5 1 6 0 0 7 1 0 8 38 0 10 6 0 9 10 0 11 7 0 10 25 0 11 8 0 8 12 1 9 13 1 12 39 0
		 3 14 1 12 14 0 2 15 1 15 20 0 13 15 0 10 16 1 13 16 0 4 17 1 15 17 0 17 16 0 5 18 1
		 17 23 0 11 19 1 18 19 0 16 24 0 19 12 0 14 18 0 20 30 0 21 31 1 20 21 1 22 32 1 21 22 1
		 23 33 0 22 23 1 24 34 0 23 24 1 25 35 0 24 25 1 26 36 0 25 26 1 28 9 0 27 28 0 29 13 0
		 28 29 1 29 20 1 30 14 0 31 3 1 30 31 1 32 5 1 31 32 1 33 18 0 32 33 1 34 19 0 33 34 1
		 35 11 0 34 35 1 36 7 0 35 36 1 37 1 0 38 28 0 37 38 0 39 29 0 38 39 1 39 30 1;
	setAttr -s 34 -ch 136 ".fc[0:33]" -type "polyFaces" 
		f 4 0 50 49 -5
		mu 0 4 0 37 38 13
		f 4 1 40 -3 -7
		mu 0 4 2 31 32 4
		f 4 14 48 -4 -12
		mu 0 4 15 35 36 6
		f 4 -10 -14 15 -6
		mu 0 4 1 8 17 12
		f 4 8 4 12 11
		mu 0 4 10 0 13 14
		f 4 -52 53 -23 -24
		mu 0 4 18 39 30 21
		f 4 -26 23 27 28
		mu 0 4 22 18 21 23
		f 4 30 44 -34 -29
		mu 0 4 24 33 34 27
		f 4 -35 -33 -36 -21
		mu 0 4 19 28 29 20
		f 4 -50 52 51 -18
		mu 0 4 13 38 39 18
		f 4 -2 21 22 38
		mu 0 4 31 2 21 30
		f 4 -13 17 25 -25
		mu 0 4 14 13 18 22
		f 4 6 26 -28 -22
		mu 0 4 2 11 23 21
		f 4 2 42 -31 -27
		mu 0 4 4 32 33 24
		f 4 -15 24 33 46
		mu 0 4 35 15 27 34
		f 4 -16 31 34 -17
		mu 0 4 12 17 28 19
		f 4 -8 19 35 -30
		mu 0 4 9 3 20 29
		f 4 -38 -39 36 56
		mu 0 4 41 31 30 40
		f 4 -41 37 58 -40
		mu 0 4 32 31 41 42
		f 4 -43 39 60 -42
		mu 0 4 33 32 42 43
		f 4 -45 41 62 -44
		mu 0 4 34 33 43 44
		f 4 -46 -47 43 64
		mu 0 4 45 35 34 44
		f 4 -49 45 66 -48
		mu 0 4 36 35 45 46
		f 4 -53 -69 71 70
		mu 0 4 39 38 48 49
		f 4 -54 -71 72 -37
		mu 0 4 30 39 49 40
		f 4 -56 -57 54 -20
		mu 0 4 3 41 40 20
		f 4 -59 55 7 -58
		mu 0 4 42 41 3 5
		f 4 -61 57 29 -60
		mu 0 4 43 42 5 25
		f 4 -63 59 32 -62
		mu 0 4 44 43 25 26
		f 4 -64 -65 61 -32
		mu 0 4 16 45 44 26
		f 4 -67 63 13 -66
		mu 0 4 46 45 16 7
		f 4 -70 67 5 10
		mu 0 4 48 47 1 12
		f 4 -72 -11 16 18
		mu 0 4 49 48 12 19
		f 4 -73 -19 20 -55
		mu 0 4 40 49 19 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode groupId -n "groupId17";
	rename -uid "4D56F442-40A8-143E-AF85-0AA1A3723C7C";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert5SG";
	rename -uid "F588B65C-49BB-24D2-FB9A-FF9D8DE759CF";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "958BBA70-4E9D-C215-A9B5-5795CF44F4AD";
createNode lambert -n "lambert5";
	rename -uid "7EFA5113-4B3C-BA79-4DB7-9E8BED8D97A8";
	setAttr ".c" -type "float3" 0.33766234 0.33766234 0.33766234 ;
createNode groupId -n "groupId19";
	rename -uid "5D1BEF85-485C-5D17-FE80-A8BD5A760CDF";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert6SG";
	rename -uid "78E187EA-4DFC-79B2-2231-6B9B27B69575";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "604ACFC2-40D6-D174-31D3-7484527A4AEA";
createNode lambert -n "lambert6";
	rename -uid "59094392-4C93-EF1E-4F55-378C9AB09FCB";
	setAttr ".c" -type "float3" 0.032467533 0.032467533 0.032467533 ;
createNode groupId -n "groupId18";
	rename -uid "36988836-408B-E8B1-8911-22A0C684AF33";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "D8FF45FF-432F-0A95-719D-2B80EB9ED28E";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av ".hfe";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 9 ".st";
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
	setAttr -s 11 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 2 ".r";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
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
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
	setAttr -av -k on ".gama";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs";
	setAttr -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -k on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -cb on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
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
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -k on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
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
	setAttr -s 4 ".sol";
connectAttr "groupId17.id" "buildingBlockShape.iog.og[0].gid";
connectAttr "lambert5SG.mwc" "buildingBlockShape.iog.og[0].gco";
connectAttr "groupId19.id" "buildingBlockShape.iog.og[1].gid";
connectAttr "lambert6SG.mwc" "buildingBlockShape.iog.og[1].gco";
connectAttr "groupId18.id" "buildingBlockShape.ciog.cog[0].cgid";
connectAttr "lambert5.oc" "lambert5SG.ss";
connectAttr "buildingBlockShape.iog.og[0]" "lambert5SG.dsm" -na;
connectAttr "buildingBlockShape.ciog.cog[0]" "lambert5SG.dsm" -na;
connectAttr "groupId17.msg" "lambert5SG.gn" -na;
connectAttr "groupId18.msg" "lambert5SG.gn" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "lambert5.msg" "materialInfo4.m";
connectAttr "lambert6.oc" "lambert6SG.ss";
connectAttr "groupId19.msg" "lambert6SG.gn" -na;
connectAttr "buildingBlockShape.iog.og[1]" "lambert6SG.dsm" -na;
connectAttr "lambert6SG.msg" "materialInfo5.sg";
connectAttr "lambert6.msg" "materialInfo5.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert6SG.message" ":defaultLightSet.message";
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "lambert6SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert6.msg" ":defaultShaderList1.s" -na;
// End of building.ma
