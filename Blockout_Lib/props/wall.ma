//Maya ASCII 2018ff08 scene
//Name: wall.ma
//Last modified: Fri, Jul 09, 2021 09:53:26 AM
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
createNode transform -n "wall";
	rename -uid "46255772-471B-5608-2463-A3B77B9DB928";
	setAttr ".rp" -type "double3" -20.326285066726257 -30.177522659301747 0 ;
	setAttr ".sp" -type "double3" -20.326285066726257 -30.177522659301633 0 ;
createNode mesh -n "wallShape" -p "wall";
	rename -uid "E77C5656-4DEE-B448-6178-DEBAFD91A13D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 2 "f[1]" "f[6:17]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 2 "f[0]" "f[2:5]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.625 0.20295008 0.375 0.20295008 0.125 0.20295008
		 0.375 0.54704994 0.625 0.54704994 0.875 0.20295008 0.375 0.20295008 0.625 0.20295008
		 0.625 0.25 0.375 0.25 0.125 0.20295008 0.125 0.25 0.375 0.5 0.625 0.5 0.625 0.54704994
		 0.375 0.54704994 0.875 0.20295008 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -19.826294 -29.677523 10.559141 
		274.91187 -29.677523 10.559141 -19.826294 216.70703 10.559141 274.91187 216.70703 
		10.559141 -19.826294 216.70703 -10.559144 274.91187 216.70703 -10.559144 -19.826294 
		-29.677523 -10.559144 274.91187 -29.677523 -10.559144 274.91187 192.4183 10.559141 
		-19.826294 192.4183 10.559141 -19.826294 192.4183 -10.559144 274.91187 192.4183 -10.559144 
		278.94849 192.4183 12.708976 -23.862913 192.4183 12.708976 278.94849 216.70703 12.708976 
		-23.862913 216.70703 12.708976 -23.862913 192.4183 -12.70898 -23.862913 216.70703 
		-12.70898 278.94849 216.70703 -12.70898 278.94849 192.4183 -12.70898;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.49999994 0.5 -0.5 0.49999994
		 -0.5 0.5 0.49999994 0.5 0.5 0.49999994 -0.5 0.5 -0.50000006 0.5 0.5 -0.50000006 -0.5 -0.5 -0.50000006
		 0.5 -0.5 -0.50000006 0.5 0.31180036 0.49999994 -0.5 0.31180036 0.49999994 -0.5 0.31180036 -0.50000006
		 0.5 0.31180036 -0.50000006 0.60179967 0.31180036 0.60179961 -0.60179967 0.31180036 0.60179961
		 0.60179967 0.5 0.60179961 -0.60179967 0.5 0.60179961 -0.60179967 0.31180036 -0.60179979
		 -0.60179967 0.5 -0.60179979 0.60179967 0.5 -0.60179979 0.60179967 0.31180036 -0.60179979;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 1 4 5 1 6 7 0 0 9 0 1 8 0 2 4 1
		 3 5 1 6 0 0 7 1 0 8 9 0 10 6 0 9 10 0 11 7 0 10 11 0 11 8 0 8 12 1 9 13 1 12 13 0
		 3 14 1 12 14 0 2 15 1 15 14 0 13 15 0 10 16 1 13 16 0 4 17 1 15 17 0 17 16 0 5 18 1
		 17 18 0 11 19 1 18 19 0 16 19 0 19 12 0 14 18 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 5 10 -5
		mu 0 4 0 1 14 15
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 14 13 -4 -12
		mu 0 4 17 18 7 6
		f 4 3 9 -1 -9
		mu 0 4 6 7 9 8
		f 4 -10 -14 15 -6
		mu 0 4 1 10 19 14
		f 4 8 4 12 11
		mu 0 4 12 0 15 16
		f 4 -19 20 -23 -24
		mu 0 4 20 21 22 23
		f 4 -26 23 27 28
		mu 0 4 24 20 23 25
		f 4 30 32 -34 -29
		mu 0 4 26 27 28 29
		f 4 -35 -33 -36 -21
		mu 0 4 21 30 31 22
		f 4 -11 16 18 -18
		mu 0 4 15 14 21 20
		f 4 -2 21 22 -20
		mu 0 4 3 2 23 22
		f 4 -13 17 25 -25
		mu 0 4 16 15 20 24
		f 4 6 26 -28 -22
		mu 0 4 2 13 25 23
		f 4 2 29 -31 -27
		mu 0 4 4 5 27 26
		f 4 -15 24 33 -32
		mu 0 4 18 17 29 28
		f 4 -16 31 34 -17
		mu 0 4 14 19 30 21
		f 4 -8 19 35 -30
		mu 0 4 11 3 22 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode groupId -n "groupId11";
	rename -uid "E82FB421-494D-D664-02C1-399DC37D7C66";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	rename -uid "8B11BBB9-49B1-E1AF-76BF-C2939CDBF729";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 6 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "897E9C44-4F55-3799-C172-CFA22EBB40A3";
createNode lambert -n "lambert2";
	rename -uid "68174D4D-4B8E-447A-A409-9BBA93E7B6C5";
	setAttr ".c" -type "float3" 0.3344 0.24529999 0.17039999 ;
createNode groupId -n "groupId13";
	rename -uid "A64E09AE-47D6-645C-F2FD-BBA54DF158B5";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert3SG";
	rename -uid "27E6B0C3-45F2-EF62-B74A-5695B5C1E15B";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "D5FB76B8-4EE2-51E6-E80F-A2BA1D175141";
createNode lambert -n "lambert3";
	rename -uid "3A5E392A-4C6C-598C-1B97-D8912BAD75B3";
	setAttr ".c" -type "float3" 0.14285715 0.14285715 0.14285715 ;
createNode groupId -n "groupId12";
	rename -uid "92A5EF0A-480D-606D-11B3-068EB2847FBE";
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
connectAttr "groupId11.id" "wallShape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "wallShape.iog.og[0].gco";
connectAttr "groupId13.id" "wallShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "wallShape.iog.og[1].gco";
connectAttr "groupId12.id" "wallShape.ciog.cog[0].cgid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "seatShape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "seatShape.ciog.cog[1]" "lambert2SG.dsm" -na;
connectAttr "PillarShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "PillarShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "wallShape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "wallShape.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId11.msg" "lambert2SG.gn" -na;
connectAttr "groupId12.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "groupId7.msg" "lambert3SG.gn" -na;
connectAttr "groupId10.msg" "lambert3SG.gn" -na;
connectAttr "groupId13.msg" "lambert3SG.gn" -na;
connectAttr "seatShape.iog.og[2]" "lambert3SG.dsm" -na;
connectAttr "PillarShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "wallShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
// End of wall.ma
