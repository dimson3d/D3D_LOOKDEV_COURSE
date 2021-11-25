//Maya ASCII 2022 scene
//Name: MC_ASPHALT_MATERIAL_SCENE_V101.ma
//Last modified: Fri, Nov 26, 2021 12:36:58 AM
//Codeset: UTF-8
requires maya "2022";
requires -nodeType "floatConstant" -nodeType "colorCorrect" "lookdevKit" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "VRaySettingsNode" -nodeType "VRayDirt" -nodeType "VRayLayeredTex"
		 -nodeType "VRayLightDomeShape" -nodeType "VRayMtl" -nodeType "VRayBlendMtl" -nodeType "VRayPlaceEnvTex"
		 -nodeType "VRayDisplacement" -dataType "VRaySunParams" -dataType "vrayFloatVectorData"
		 -dataType "vrayFloatVectorData" -dataType "vrayIntData" "vrayformaya" "5";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.0.0.1";
requires -nodeType "renderSetup" "renderSetup.py" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "vrayBuild" "5.10.23 31047 c704b7d";
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Linux 4.18.0-305.19.1.el8_4.x86_64 #1 SMP Tue Sep 7 07:07:31 EDT 2021 x86_64";
fileInfo "UUID" "83D2C040-0000-1C2A-619F-E5DA000004AE";
createNode transform -s -n "persp";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000293";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 53.071789405385402 42.855796973119212 -66.481889715317266 ;
	setAttr ".r" -type "double3" 153.26164727039773 38.599999999999284 180 ;
	setAttr ".rp" -type "double3" 0 0 1.7763568394002505e-14 ;
	setAttr ".rpt" -type "double3" 2.7951844640806247e-13 8.6049762445903162e-14 1.0924008818452847e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000294";
	addAttr -ci true -sn "vraySeparator_vray_cameraPhysical" -ln "vraySeparator_vray_cameraPhysical" 
		-dt "string";
	addAttr -ci true -sn "vrayCameraPhysicalOn" -ln "vrayCameraPhysicalOn" -dv 1 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalType" -ln "vrayCameraPhysicalType" -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalFilmWidth" -ln "vrayCameraPhysicalFilmWidth" 
		-dv 36 -min 0 -smx 135 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalFocalLength" -ln "vrayCameraPhysicalFocalLength" 
		-dv 40 -min 0 -smx 100 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalSpecifyFOV" -ln "vrayCameraPhysicalSpecifyFOV" 
		-dv 2 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalFOV" -ln "vrayCameraPhysicalFOV" -dv 90 
		-min 9.9999997473787516e-05 -smx 180 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalZoomFactor" -ln "vrayCameraPhysicalZoomFactor" 
		-dv 1 -min 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalDistortionType" -ln "vrayCameraPhysicalDistortionType" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalDistortion" -ln "vrayCameraPhysicalDistortion" 
		-min -1 -smx 1 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLensFile" -ln "vrayCameraPhysicalLensFile" 
		-dt "string";
	addAttr -ci true -uac -sn "vrayCameraPhysicalDistortionMap" -ln "vrayCameraPhysicalDistortionMap" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayCameraPhysicalDistortionMapr" -ln "vrayCameraPhysicalDistortionMapR" 
		-dv 1 -at "float" -p "vrayCameraPhysicalDistortionMap";
	addAttr -ci true -sn "vrayCameraPhysicalDistortionMapg" -ln "vrayCameraPhysicalDistortionMapG" 
		-dv 1 -at "float" -p "vrayCameraPhysicalDistortionMap";
	addAttr -ci true -sn "vrayCameraPhysicalDistortionMapb" -ln "vrayCameraPhysicalDistortionMapB" 
		-dv 1 -at "float" -p "vrayCameraPhysicalDistortionMap";
	addAttr -ci true -sn "vrayCameraPhysicalFNumber" -ln "vrayCameraPhysicalFNumber" 
		-dv 8 -min 0 -smx 32 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalHorizLensShift" -ln "vrayCameraPhysicalHorizLensShift" 
		-min -1000000 -max 1000000 -smn -10 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLensShift" -ln "vrayCameraPhysicalLensShift" 
		-min -1000000 -max 1000000 -smn -10 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLensAutoVShift" -ln "vrayCameraPhysicalLensAutoVShift" 
		-dt "string";
	addAttr -ci true -sn "vrayCameraPhysicalShutterSpeed" -ln "vrayCameraPhysicalShutterSpeed" 
		-dv 200 -min 0 -smx 1000 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalShutterAngle" -ln "vrayCameraPhysicalShutterAngle" 
		-dv 180 -min 0 -max 360 -smn 0 -smx 360 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalShutterOffset" -ln "vrayCameraPhysicalShutterOffset" 
		-min -360 -max 360 -smn 0 -smx 360 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalLatency" -ln "vrayCameraPhysicalLatency" 
		-min 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalISO" -ln "vrayCameraPhysicalISO" -dv 100 
		-min 0 -smx 400 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalSpecifyFocus" -ln "vrayCameraPhysicalSpecifyFocus" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalFocusDistance" -ln "vrayCameraPhysicalFocusDistance" 
		-dv 200 -min 0.0099999997764825821 -smx 400 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalExposure" -ln "vrayCameraPhysicalExposure" 
		-dv 1 -at "long";
	addAttr -ci true -uac -sn "vrayCameraPhysicalWhiteBalance" -ln "vrayCameraPhysicalWhiteBalance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayCameraPhysicalWhiteBalancer" -ln "vrayCameraPhysicalWhiteBalanceR" 
		-dv 1 -at "float" -p "vrayCameraPhysicalWhiteBalance";
	addAttr -ci true -sn "vrayCameraPhysicalWhiteBalanceg" -ln "vrayCameraPhysicalWhiteBalanceG" 
		-dv 1 -at "float" -p "vrayCameraPhysicalWhiteBalance";
	addAttr -ci true -sn "vrayCameraPhysicalWhiteBalanceb" -ln "vrayCameraPhysicalWhiteBalanceB" 
		-dv 1 -at "float" -p "vrayCameraPhysicalWhiteBalance";
	addAttr -ci true -sn "vrayCameraPhysicalExposureValue" -ln "vrayCameraPhysicalExposureValue" 
		-dv 13 -smn -6 -smx 21 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalVignetting" -ln "vrayCameraPhysicalVignetting" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalVignettingAmount" -ln "vrayCameraPhysicalVignettingAmount" 
		-dv 1 -min 0 -smx 1 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalBladesEnable" -ln "vrayCameraPhysicalBladesEnable" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalBladesNum" -ln "vrayCameraPhysicalBladesNum" 
		-dv 5 -min 0 -smx 16 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalBladesRotation" -ln "vrayCameraPhysicalBladesRotation" 
		-min 0 -smx 6.2800002098083496 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalCenterBias" -ln "vrayCameraPhysicalCenterBias" 
		-min -10 -smx 10 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalAnisotropy" -ln "vrayCameraPhysicalAnisotropy" 
		-min -1 -smx 1 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalUseDof" -ln "vrayCameraPhysicalUseDof" -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalUseMoBlur" -ln "vrayCameraPhysicalUseMoBlur" 
		-at "long";
	addAttr -ci true -uac -sn "vrayCameraPhysicalApertureMap" -ln "vrayCameraPhysicalApertureMap" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapr" -ln "vrayCameraPhysicalApertureMapR" 
		-dv 1 -at "float" -p "vrayCameraPhysicalApertureMap";
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapg" -ln "vrayCameraPhysicalApertureMapG" 
		-dv 1 -at "float" -p "vrayCameraPhysicalApertureMap";
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapb" -ln "vrayCameraPhysicalApertureMapB" 
		-dv 1 -at "float" -p "vrayCameraPhysicalApertureMap";
	addAttr -ci true -sn "vrayCameraPhysicalApertureMapAffectsExposure" -ln "vrayCameraPhysicalApertureMapAffectsExposure" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayCameraPhysicalOpticalVignetting" -ln "vrayCameraPhysicalOpticalVignetting" 
		-smn -3 -smx 3 -at "float";
	addAttr -ci true -sn "vrayCameraPhysicalRollingShutterMode" -ln "vrayCameraPhysicalRollingShutterMode" 
		-at "long";
	addAttr -ci true -sn "vrayCameraPhysicalRollingShutterDuration" -ln "vrayCameraPhysicalRollingShutterDuration" 
		-dv 200 -min 0 -smx 1000 -at "float";
	setAttr -k off ".v" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 1;
	setAttr ".fcp" 150000;
	setAttr ".coi" 95.252693512956995;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.86102294921875e-06 0 -3.814697265625e-06 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr -s 3 ".b";
	setAttr ".dr" yes;
	setAttr ".vraySeparator_vray_cameraPhysical" -type "string" "";
	setAttr ".vrayCameraPhysicalType" 1;
	setAttr ".vrayCameraPhysicalFocalLength" 33.759868621826172;
	setAttr ".vrayCameraPhysicalFOV" 54.432220458984375;
	setAttr ".vrayCameraPhysicalLensFile" -type "string" "";
	setAttr ".vrayCameraPhysicalFNumber" 3;
	setAttr ".vrayCameraPhysicalLensAutoVShift" -type "string" "vrayOnCameraPhysicalAutoVShift";
	setAttr ".vrayCameraPhysicalISO" 150;
	setAttr ".vrayCameraPhysicalUseMoBlur" 1;
createNode transform -s -n "top";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000295";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 2.2598753857679751e-13 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000296";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 150000;
	setAttr ".coi" 1017.7573945248408;
	setAttr ".ow" 231.99695990879729;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 -17.657394524840811 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000297";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 -17.657394524840811 1000.2558640574949 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000298";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 150000;
	setAttr ".coi" 1000.2558640574949;
	setAttr ".ow" 157.89473684210526;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 -17.657394524840811 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "DD051040-001A-29E4-618F-BF0A00000299";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.2558640574949 -11.752314320848088 1.2499817364970784 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DD051040-001A-29E4-618F-BF0A0000029A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".fcp" 150000;
	setAttr ".coi" 1000.2558640574949;
	setAttr ".ow" 178.69897474463718;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 -17.657394524840811 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "REFERENCE_SPHERE";
	rename -uid "DD051040-001A-29E4-618F-BF1B000002AA";
createNode mesh -n "REFERENCE_SPHEREShape" -p "REFERENCE_SPHERE";
	rename -uid "DD051040-001A-29E4-618F-BF1B000002A9";
	addAttr -ci true -sn "vraySeparator_vray_displacement" -ln "vraySeparator_vray_displacement" 
		-dt "string";
	addAttr -ci true -sn "vrayDisplacementNone" -ln "vrayDisplacementNone" -at "long";
	addAttr -ci true -sn "vrayDisplacementStatic" -ln "vrayDisplacementStatic" -dv 1 
		-at "long";
	addAttr -ci true -sn "vrayDisplacementType" -ln "vrayDisplacementType" -dv 1 -at "long";
	addAttr -ci true -sn "vrayDisplacementAmount" -ln "vrayDisplacementAmount" -dv 1 
		-smn 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementShift" -ln "vrayDisplacementShift" -smn 0 
		-smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementKeepContinuity" -ln "vrayDisplacementKeepContinuity" 
		-at "long";
	addAttr -ci true -sn "vrayEnableWaterLevel" -ln "vrayEnableWaterLevel" -at "long";
	addAttr -ci true -sn "vrayWaterLevel" -ln "vrayWaterLevel" -smn 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementCacheNormals" -ln "vrayDisplacementCacheNormals" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementResolution" -ln "vray2dDisplacementResolution" 
		-dv 256 -min 8 -smn 64 -smx 1024 -at "long";
	addAttr -ci true -sn "vray2dDisplacementPrecision" -ln "vray2dDisplacementPrecision" 
		-dv 8 -min 1 -smn 1 -smx 32 -at "long";
	addAttr -ci true -sn "vray2dDisplacementTightBounds" -ln "vray2dDisplacementTightBounds" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementMultiTile" -ln "vray2dDisplacementMultiTile" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementFilterTexture" -ln "vray2dDisplacementFilterTexture" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vray2dDisplacementFilterBlur" -ln "vray2dDisplacementFilterBlur" 
		-dv 0.0030000000260770321 -min 0 -smn 0 -smx 1 -at "float";
	addAttr -ci true -sn "vrayDisplacementUseBounds" -ln "vrayDisplacementUseBounds" 
		-at "long";
	addAttr -ci true -uac -sn "vrayDisplacementMinValue" -ln "vrayDisplacementMinValue" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayDisplacementMinValuer" -ln "vrayDisplacementMinValueR" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -sn "vrayDisplacementMinValueg" -ln "vrayDisplacementMinValueG" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -sn "vrayDisplacementMinValueb" -ln "vrayDisplacementMinValueB" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -uac -sn "vrayDisplacementMaxValue" -ln "vrayDisplacementMaxValue" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayDisplacementMaxValuer" -ln "vrayDisplacementMaxValueR" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vrayDisplacementMaxValueg" -ln "vrayDisplacementMaxValueG" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vrayDisplacementMaxValueb" -ln "vrayDisplacementMaxValueB" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vraySeparator_vray_subquality" -ln "vraySeparator_vray_subquality" 
		-dt "string";
	addAttr -ci true -sn "vrayOverrideGlobalSubQual" -ln "vrayOverrideGlobalSubQual" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayViewDep" -ln "vrayViewDep" -dv 1 -at "long";
	addAttr -ci true -sn "vrayEdgeLength" -ln "vrayEdgeLength" -dv 4 -min 0 -smx 20 
		-at "float";
	addAttr -ci true -sn "vrayMaxSubdivs" -ln "vrayMaxSubdivs" -dv 4 -min 0 -smx 512 
		-at "long";
	addAttr -ci true -sn "vraySeparator_vray_opensubdiv" -ln "vraySeparator_vray_opensubdiv" 
		-dt "string";
	addAttr -ci true -sn "vrayOsdSubdivEnable" -ln "vrayOsdSubdivEnable" -dv 1 -at "long";
	addAttr -ci true -sn "vrayOsdSubdivDepth" -ln "vrayOsdSubdivDepth" -dv 2 -min 0 
		-smx 8 -at "long";
	addAttr -ci true -sn "vrayOsdSubdivType" -ln "vrayOsdSubdivType" -at "long";
	addAttr -ci true -sn "vrayOsdPreserveMapBorders" -ln "vrayOsdPreserveMapBorders" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayOsdSubdivUVs" -ln "vrayOsdSubdivUVs" -dv 1 -at "long";
	addAttr -ci true -sn "vrayOsdPreserveGeomBorders" -ln "vrayOsdPreserveGeomBorders" 
		-at "long";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vraySeparator_vray_displacement" -type "string" "";
	setAttr ".vrayDisplacementAmount" 2;
	setAttr ".vray2dDisplacementFilterTexture" 0;
	setAttr ".vraySeparator_vray_subquality" -type "string" "";
	setAttr ".vrayEdgeLength" 2;
	setAttr ".vraySeparator_vray_opensubdiv" -type "string" "";
	setAttr ".vrayOsdSubdivDepth" 3;
createNode transform -n "STUDIO_PLANE";
	rename -uid "DD051040-001A-29E4-618F-C2F60000032B";
	setAttr ".t" -type "double3" 0 -28 0 ;
createNode mesh -n "STUDIO_PLANEShape" -p "STUDIO_PLANE";
	rename -uid "DD051040-001A-29E4-618F-C2F60000032A";
	addAttr -ci true -sn "vraySeparator_vray_subquality" -ln "vraySeparator_vray_subquality" 
		-dt "string";
	addAttr -ci true -sn "vrayOverrideGlobalSubQual" -ln "vrayOverrideGlobalSubQual" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayViewDep" -ln "vrayViewDep" -dv 1 -at "long";
	addAttr -ci true -sn "vrayEdgeLength" -ln "vrayEdgeLength" -dv 4 -min 0 -smx 20 
		-at "float";
	addAttr -ci true -sn "vrayMaxSubdivs" -ln "vrayMaxSubdivs" -dv 4 -min 0 -smx 512 
		-at "long";
	addAttr -ci true -sn "vraySeparator_vray_displacement" -ln "vraySeparator_vray_displacement" 
		-dt "string";
	addAttr -ci true -sn "vrayDisplacementNone" -ln "vrayDisplacementNone" -at "long";
	addAttr -ci true -sn "vrayDisplacementStatic" -ln "vrayDisplacementStatic" -dv 1 
		-at "long";
	addAttr -ci true -sn "vrayDisplacementType" -ln "vrayDisplacementType" -dv 1 -at "long";
	addAttr -ci true -sn "vrayDisplacementAmount" -ln "vrayDisplacementAmount" -dv 1 
		-smn 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementShift" -ln "vrayDisplacementShift" -smn 0 
		-smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementKeepContinuity" -ln "vrayDisplacementKeepContinuity" 
		-at "long";
	addAttr -ci true -sn "vrayEnableWaterLevel" -ln "vrayEnableWaterLevel" -at "long";
	addAttr -ci true -sn "vrayWaterLevel" -ln "vrayWaterLevel" -smn 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementCacheNormals" -ln "vrayDisplacementCacheNormals" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementResolution" -ln "vray2dDisplacementResolution" 
		-dv 256 -min 8 -smn 64 -smx 1024 -at "long";
	addAttr -ci true -sn "vray2dDisplacementPrecision" -ln "vray2dDisplacementPrecision" 
		-dv 8 -min 1 -smn 1 -smx 32 -at "long";
	addAttr -ci true -sn "vray2dDisplacementTightBounds" -ln "vray2dDisplacementTightBounds" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementMultiTile" -ln "vray2dDisplacementMultiTile" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementFilterTexture" -ln "vray2dDisplacementFilterTexture" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vray2dDisplacementFilterBlur" -ln "vray2dDisplacementFilterBlur" 
		-dv 0.0030000000260770321 -min 0 -smn 0 -smx 1 -at "float";
	addAttr -ci true -sn "vrayDisplacementUseBounds" -ln "vrayDisplacementUseBounds" 
		-at "long";
	addAttr -ci true -uac -sn "vrayDisplacementMinValue" -ln "vrayDisplacementMinValue" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayDisplacementMinValuer" -ln "vrayDisplacementMinValueR" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -sn "vrayDisplacementMinValueg" -ln "vrayDisplacementMinValueG" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -sn "vrayDisplacementMinValueb" -ln "vrayDisplacementMinValueB" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -uac -sn "vrayDisplacementMaxValue" -ln "vrayDisplacementMaxValue" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayDisplacementMaxValuer" -ln "vrayDisplacementMaxValueR" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vrayDisplacementMaxValueg" -ln "vrayDisplacementMaxValueG" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vrayDisplacementMaxValueb" -ln "vrayDisplacementMaxValueB" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vraySeparator_vray_subquality" -type "string" "";
	setAttr ".vrayEdgeLength" 2;
	setAttr ".vrayMaxSubdivs" 6;
	setAttr ".vraySeparator_vray_displacement" -type "string" "";
	setAttr ".vrayDisplacementAmount" 5;
createNode transform -n "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT";
	rename -uid "E0AB2940-0000-4714-60DE-E4FB000003B6";
createNode VRayLightDomeShape -n "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHTShape" 
		-p "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT";
	rename -uid "E0AB2940-0000-4714-60DE-E4FB000003B5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".vpte" 2;
	setAttr ".inv" yes;
	setAttr ".udt" yes;
	setAttr ".dsp" yes;
	setAttr ".dadapt" yes;
	setAttr ".aal" -type "attributeAlias" {"lightColor","color","intensityMult","intensity"
		,"shadows","useRayTraceShadows"} ;
createNode transform -n "THE_ROAD";
	rename -uid "83D2C040-0000-1C2A-619F-A1ED00000482";
	setAttr ".v" no;
createNode mesh -n "THE_ROADShape" -p "THE_ROAD";
	rename -uid "83D2C040-0000-1C2A-619F-A1ED00000481";
	addAttr -ci true -sn "vraySeparator_vray_opensubdiv" -ln "vraySeparator_vray_opensubdiv" 
		-dt "string";
	addAttr -ci true -sn "vrayOsdSubdivEnable" -ln "vrayOsdSubdivEnable" -dv 1 -at "long";
	addAttr -ci true -sn "vrayOsdSubdivDepth" -ln "vrayOsdSubdivDepth" -dv 2 -min 0 
		-smx 8 -at "long";
	addAttr -ci true -sn "vrayOsdSubdivType" -ln "vrayOsdSubdivType" -at "long";
	addAttr -ci true -sn "vrayOsdPreserveMapBorders" -ln "vrayOsdPreserveMapBorders" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayOsdSubdivUVs" -ln "vrayOsdSubdivUVs" -dv 1 -at "long";
	addAttr -ci true -sn "vrayOsdPreserveGeomBorders" -ln "vrayOsdPreserveGeomBorders" 
		-at "long";
	addAttr -ci true -sn "vraySeparator_vray_displacement" -ln "vraySeparator_vray_displacement" 
		-dt "string";
	addAttr -ci true -sn "vrayDisplacementNone" -ln "vrayDisplacementNone" -at "long";
	addAttr -ci true -sn "vrayDisplacementStatic" -ln "vrayDisplacementStatic" -dv 1 
		-at "long";
	addAttr -ci true -sn "vrayDisplacementType" -ln "vrayDisplacementType" -dv 1 -at "long";
	addAttr -ci true -sn "vrayDisplacementAmount" -ln "vrayDisplacementAmount" -dv 1 
		-smn 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementShift" -ln "vrayDisplacementShift" -smn 0 
		-smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementKeepContinuity" -ln "vrayDisplacementKeepContinuity" 
		-at "long";
	addAttr -ci true -sn "vrayEnableWaterLevel" -ln "vrayEnableWaterLevel" -at "long";
	addAttr -ci true -sn "vrayWaterLevel" -ln "vrayWaterLevel" -smn 0 -smx 10 -at "float";
	addAttr -ci true -sn "vrayDisplacementCacheNormals" -ln "vrayDisplacementCacheNormals" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementResolution" -ln "vray2dDisplacementResolution" 
		-dv 256 -min 8 -smn 64 -smx 1024 -at "long";
	addAttr -ci true -sn "vray2dDisplacementPrecision" -ln "vray2dDisplacementPrecision" 
		-dv 8 -min 1 -smn 1 -smx 32 -at "long";
	addAttr -ci true -sn "vray2dDisplacementTightBounds" -ln "vray2dDisplacementTightBounds" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementMultiTile" -ln "vray2dDisplacementMultiTile" 
		-at "long";
	addAttr -ci true -sn "vray2dDisplacementFilterTexture" -ln "vray2dDisplacementFilterTexture" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vray2dDisplacementFilterBlur" -ln "vray2dDisplacementFilterBlur" 
		-dv 0.0030000000260770321 -min 0 -smn 0 -smx 1 -at "float";
	addAttr -ci true -sn "vrayDisplacementUseBounds" -ln "vrayDisplacementUseBounds" 
		-at "long";
	addAttr -ci true -uac -sn "vrayDisplacementMinValue" -ln "vrayDisplacementMinValue" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayDisplacementMinValuer" -ln "vrayDisplacementMinValueR" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -sn "vrayDisplacementMinValueg" -ln "vrayDisplacementMinValueG" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -sn "vrayDisplacementMinValueb" -ln "vrayDisplacementMinValueB" 
		-at "float" -p "vrayDisplacementMinValue";
	addAttr -ci true -uac -sn "vrayDisplacementMaxValue" -ln "vrayDisplacementMaxValue" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "vrayDisplacementMaxValuer" -ln "vrayDisplacementMaxValueR" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vrayDisplacementMaxValueg" -ln "vrayDisplacementMaxValueG" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vrayDisplacementMaxValueb" -ln "vrayDisplacementMaxValueB" 
		-dv 1 -at "float" -p "vrayDisplacementMaxValue";
	addAttr -ci true -sn "vraySeparator_vray_subquality" -ln "vraySeparator_vray_subquality" 
		-dt "string";
	addAttr -ci true -sn "vrayOverrideGlobalSubQual" -ln "vrayOverrideGlobalSubQual" 
		-dv 1 -at "long";
	addAttr -ci true -sn "vrayViewDep" -ln "vrayViewDep" -dv 1 -at "long";
	addAttr -ci true -sn "vrayEdgeLength" -ln "vrayEdgeLength" -dv 4 -min 0 -smx 20 
		-at "float";
	addAttr -ci true -sn "vrayMaxSubdivs" -ln "vrayMaxSubdivs" -dv 4 -min 0 -smx 512 
		-at "long";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vraySeparator_vray_opensubdiv" -type "string" "";
	setAttr ".vrayOsdSubdivDepth" 3;
	setAttr ".vraySeparator_vray_displacement" -type "string" "";
	setAttr ".vrayDisplacementAmount" 2;
	setAttr ".vray2dDisplacementFilterTexture" 0;
	setAttr ".vraySeparator_vray_subquality" -type "string" "";
	setAttr ".vrayEdgeLength" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "83D2C040-0000-1C2A-619F-8756000002AF";
	setAttr -s 80 ".lnk";
	setAttr -s 80 ".slnk";
createNode VRaySettingsNode -s -n "vraySettings";
	rename -uid "DD051040-001A-29E4-618F-BF0A0000029C";
	setAttr ".gi" yes;
	setAttr ".rfc" yes;
	setAttr ".pe" 2;
	setAttr ".cmph" 60;
	setAttr ".csdu" 0;
	setAttr ".cfile" -type "string" "";
	setAttr ".cfile2" -type "string" "";
	setAttr ".casf" -type "string" "";
	setAttr ".casf2" -type "string" "";
	setAttr ".st" 3;
	setAttr ".msr" 6;
	setAttr ".aaft" 3;
	setAttr ".aafs" 2;
	setAttr ".dma" 24;
	setAttr ".dmig" 1;
	setAttr ".dmag" 48;
	setAttr ".dam" 1;
	setAttr ".pms" 1024;
	setAttr ".pt" 0.0099999997764825821;
	setAttr ".pmt" 45;
	setAttr ".sd" 1000;
	setAttr ".ss" 0.01;
	setAttr ".pfts" 20;
	setAttr ".ufg" yes;
	setAttr ".fnm" -type "string" "";
	setAttr ".lcfnm" -type "string" "";
	setAttr ".asf" -type "string" "";
	setAttr ".lcasf" -type "string" "";
	setAttr ".urtrshd" yes;
	setAttr ".rtrshd" 2;
	setAttr ".lightCacheType" 1;
	setAttr ".icits" 10;
	setAttr ".ifile" -type "string" "";
	setAttr ".ifile2" -type "string" "";
	setAttr ".iasf" -type "string" "";
	setAttr ".iasf2" -type "string" "";
	setAttr ".ddep" 6;
	setAttr ".pmfile" -type "string" "";
	setAttr ".pmfile2" -type "string" "";
	setAttr ".pmasf" -type "string" "";
	setAttr ".pmasf2" -type "string" "";
	setAttr ".dmcstd" yes;
	setAttr ".dmculs" no;
	setAttr ".dmcsat" 0.004999999888241291;
	setAttr ".cmtp" 6;
	setAttr ".cmao" 2;
	setAttr ".cg" 2.2000000476837158;
	setAttr ".mtah" yes;
	setAttr ".rgbcs" 2;
	setAttr ".suv" 0;
	setAttr ".srflc" 1;
	setAttr ".srdml" 0;
	setAttr ".smth" 8;
	setAttr ".sltp" yes;
	setAttr ".seu" yes;
	setAttr ".gormio" yes;
	setAttr ".gocle" yes;
	setAttr ".gopl" 2;
	setAttr ".wi" 2560;
	setAttr ".he" 1439;
	setAttr ".aspr" 1.7782348394393921;
	setAttr ".productionGPUResizeTextures" 0;
	setAttr ".fnprx" -type "string" "<Scene>/<Version>";
	setAttr ".autolt" 0;
	setAttr ".jpegq" 100;
	setAttr ".animbo" yes;
	setAttr ".imgfs" -type "string" "exr";
	setAttr ".pxa" 0.99956250190734863;
	setAttr ".vfbOn" yes;
	setAttr ".vfbSA" -type "Int32Array" 968 0 3863 1 3851 0 1
		 3843 1700143739 1869181810 825893486 1632379436 1936876921 578501154 1936876886 577662825 573321530 1935764579 574235251
		 1953460082 1881287714 1701867378 1701409906 2067407475 1919252002 1852795251 741423650 1835101730 574235237 1696738338 1818386798
		 1949966949 744846706 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828 1931619453 1814913653
		 1919252833 1530536563 1818436219 577991521 1751327290 779317089 1886611812 1132028268 1701999215 1869182051 573317742 1886351984
		 1769239141 975336293 1702240891 1869181810 825893486 1634607660 975332717 1936278562 2036427888 1919894304 1952671090 577662825
		 1852121644 1701601889 1920219682 573334901 1634760805 975332462 1702195828 2019893804 1684955504 1701601889 1920219682 573334901
		 1718579824 577072233 573321786 1869641829 1701999987 774912546 1931619376 1600484961 1600284530 1835627120 1986622569 975336293
		 1936482662 1763847269 1717527395 577072233 740434490 1667459362 1869770847 1701603686 1952539743 1849303649 745303157 1667459362
		 1852142175 1953392996 578055781 573321274 1886088290 1852793716 1715085942 1702063201 1668227628 1717530473 577072233 1129259578
		 1696616265 1919514222 1701670511 1981838446 1634300513 577072226 1668227628 1667198825 1919904879 1667330163 876225125 1668227628
		 1683976041 1819308905 1701083489 1701013878 741358114 1768124194 1769365359 1920235365 1718840929 577598063 573321274 1869177711
		 1986098015 1768843621 1701273965 1634089506 2103800684 1970479660 1634479458 1936876921 2069576226 1634493218 975336307 1634231074
		 1915646831 1932420709 1668445551 1819240037 577922404 1919951404 1919250543 1936025972 578501154 1936876918 577662825 573321530
		 1701667182 1394752034 1668445551 1377843813 740442695 1634624802 577072226 1970435130 1696738405 1851879544 1715085924 1702063201
		 2019893804 1684955504 1701601889 1634089506 744846188 1701601826 1834968174 577070191 573321274 1667330159 578385001 808333626
		 1752375852 1885304687 1769366898 975337317 1702195828 1920148012 2037669731 975332720 573340976 761427315 1702453612 975336306
		 1663204187 1936941420 1663187490 1936679272 1717924398 1734962222 1768780904 573317752 1886351984 1769239141 975336293 1702240891
		 1869181810 825893486 1634607660 975332717 1734954018 1766683752 573317752 1650552421 975332716 1936482662 1696738405 1851879544
		 1715085924 1702063201 2019893804 1684955504 1701601889 1920219682 746415477 1651864354 2036427821 577991269 2103270202 1663204140
		 1936941420 1663187490 1936679272 1717924398 1836016430 1769172848 740451700 1869770786 1953654128 577987945 1981971258 1769173605
		 975335023 1847733297 577072481 1866670650 1936683117 577074281 1852121644 1701601889 1634089506 744846188 1886938402 577007201
		 1818322490 573334899 1634760805 1650549870 975332716 1702195828 1818370604 1600417381 1701080941 741358114 1634758434 2037672291
		 774978082 1931619376 1601662824 1986359920 578250089 1970435130 573341029 761427315 1702453612 975336306 1568496987 578497661
		 1935764579 574235251 1868654691 1701850739 1852138542 1702062447 573317746 1886351984 1769239141 975336293 1702240891 1869181810
		 825893486 1634607660 975332717 1852130338 1702062447 1965046386 1635148142 1650551913 740451692 1634624802 577072226 1818322490
		 573334899 1634760805 975332462 1936482662 1696738405 1851879544 1818386788 1949966949 744846706 1701601826 1834968174 577070191
		 573321274 1667330159 578385001 808333626 1667310124 1702259060 1634089506 744846188 1701998626 578053491 573321786 1701999731
		 1752459118 774978082 1914842160 1969841249 825893491 741355056 1098344482 1818583907 1952543333 1715085925 1702063201 1701061164
		 1936289646 1834971749 577070191 746401850 1651864354 2036427821 577991269 2103270202 1663204140 1936941420 1663187490 1936679272
		 778399790 1936614764 740456550 1869770786 1953654128 577987945 1981971258 1769173605 975335023 1847733297 577072481 1699488314
		 1159754606 1667589734 740455284 1634624802 577072226 1818322490 573334899 1634760805 975332462 1936482662 1696738405 1851879544
		 1818386788 1949966949 744846706 1701601826 1834968174 577070191 573321786 1667330159 578385001 808333626 1818698284 1600483937
		 975335023 1936482662 1730292837 1701994860 2053731167 859447909 741355056 1634494242 2002740594 1751607653 825893492 573321262
		 1869573218 1702322029 1952999273 774912546 808464436 808464432 741751093 1634494242 1952408946 1936028264 1684828008 774978082
		 1713515568 1702128745 1869766514 1769234804 975335023 741355056 1952543522 1952543349 577662825 808333626 1634214444 1635214450
		 1633641842 1818583907 1952543333 975332453 1702195828 1868767788 2002740332 577598049 1818322490 573334899 1702129257 1952670066
		 577074793 1970435130 1931619429 1600484961 1918987367 1949966949 744846706 1634624802 1600482402 1684106338 975336293 1702195828
		 1769153068 577987940 573322810 1684106338 1918858085 1952543855 577662825 775237946 1931619376 1634038388 1818386283 975336053
		 808594992 808464432 959590448 1965173816 1734305139 1769234802 975333230 1936482662 1730292837 1769234802 1683973998 1769172581
		 975337844 808333365 1919361580 1852404833 1701601127 1752459118 808532514 573321262 1952543335 1600613993 1836019578 775240226
		 1730292784 1769234802 1935632238 1701867372 774912546 1730292784 1769234802 1935632238 1852142196 577270887 808333626 1937056300
		 1668243301 1937075299 577662825 1818322490 573334899 1818452847 1869181813 2037604206 1952804205 576940402 1970435130 1864510565
		 1970037603 1852795251 1919250527 1953391971 808598050 573321262 1818452847 1869181813 1869766510 1769234804 975335023 741355056
		 1667460898 1769174380 1633644143 975332210 774910001 1965173808 1935631731 1952543331 975333475 1936482662 1931619429 1935635043
		 1701670265 1667854964 1920219682 573334901 1601332083 1953784176 577663589 573321274 1601332083 1953265005 1634494313 1667196274
		 1953396079 741423650 1919120162 1852138591 2037672307 808794658 573321262 1601332083 1735288172 975333492 808333365 1668489772
		 1819500402 1600483439 1769103734 1701015137 774912546 1931619376 2002743907 1752458345 1918989919 1668178281 809116261 573321262
		 1601332083 1684366707 741358114 1919120162 1869576799 842670701 573321262 1601332083 1635020658 1852795252 774912546 1931619376
		 1935635043 1852142196 577270887 808333626 1937056300 1969512293 975336563 1936482662 1679961189 1601467253 1953784176 577663589
		 573321274 1953723748 1852138591 2037672307 808794658 573321262 1953723748 1684107871 1601402217 1769103734 1701015137 774912546
		 1679961136 1601467253 1953786218 975336037 741355056 1937073186 1870290804 975334767 741355058 1937073186 1869766516 1769234804
		 975335023 741355056 1937073186 1953718132 1735288178 975333492 741355057 1634494242 1969186162 1868522867 1635021666 1600482403
		 1734438249 1715085925 1702063201 1818698284 1600483937 1953718895 1701602145 1634560351 1885300071 577270881 740434490 1935830818
		 1835622260 1600481121 1836019578 774978082 1864510512 1601467234 1734438249 1869766501 1769234804 975335023 741355056 1935830818
		 1835622260 1600481121 1701999731 1752459118 774978082 1965173808 1717527923 1702128745 1835622258 577070945 1818322490 573334899
		 1918987367 1835622245 1600481121 1752457584 572668450 1633886764 1634887021 1887007839 809116261 1931619453 1814913653 1919252833
		 1530536563 2103278941 1663204140 1936941420 1663187490 1936679272 1702260526 2036427890 1635021614 740454509 1869770786 1953654128
		 577987945 1981971258 1769173605 975335023 1847733297 577072481 1951605306 577793377 1852121644 1701601889 1634089506 744846188
		 1886938402 577007201 1818322490 573334899 1634760805 1650549870 975332716 1702195828 1953702444 1601203553 1769107304 1818320762
		 577660777 573321530 1835103347 1702256496 1633645682 1852270956 842218018 1953702444 1601203553 1869377379 1530536562 741355057
		 741355057 1563438641 1953702444 1601203553 1953394534 578501154 1936876918 577662825 573321530 1852403568 1769168756 975332730
		 573321265 1768776038 975337836 1931619376 1701607796 741358114 1768257314 578054247 573321274 1701011814 1092762146 1818323314
		 573340962 1835103347 1953718128 1735289202 578501154 1936876918 577662825 573321530 1601659250 1769108595 975333230 1378702882
		 1713404257 1293972079 543258977 1634891301 1919252089 1852795251 1914731552 1701080677 1769218162 622880109 1684956530 1769239141
		 740451693 1852401186 1935633505 1852404340 574235239 1632775510 1868963961 1632444530 891314553 1914731552 1701080677 1769218162
		 538994029 538994736 538996016 1932734006 746421538 1651864354 2036427821 577991269 2103270202 573341021 1768383826 1699180143
		 2067407470 1919252002 1852795251 741423650 1970236706 1717527923 1869376623 1852137335 1701601889 1715085924 1702063201 1869423148
		 1600484213 1819045734 1885304687 1953393007 1668246623 577004907 1818322490 573334899 1937076077 1868980069 2003790956 1768910943
		 2019521646 741358114 1970236706 1717527923 1869376623 1869635447 1601465961 809116281 1377971325 1701080677 1701402226 2067407479
		 1919252002 1852795251 741423650 1634624802 1600482402 1684956530 1918857829 1869178725 1715085934 1702063201 1701978668 1919247470
		 1734701663 1601073001 975319160 808333613 1701978668 1919247470 1734701663 1601073001 975319161 808333613 1701978668 1919247470
		 1734701663 1601073001 975319416 808333613 1701978668 1919247470 1734701663 1601073001 975319417 808333613 1769349676 1918859109
		 975332453 1702195828 1769349676 1734309733 1852138866 1920219682 573334901 2003134838 1970037343 1949966949 744846706 1701410338
		 1869438839 975335278 1936482662 1663183973 1919904879 1634493279 1834971245 577070191 741946938 1819239202 1667199599 1886216556
		 577662815 1970435130 1965173861 1885300083 1818589289 1886609759 1601463141 975335023 1936482662 1881287781 1818589289 1718511967
		 1869373295 1684368227 1634089506 744846188 2020175906 1767861349 1601136238 1920102243 1702126437 1868783460 1936879468 1634089506
		 2103800684 1665212972 1852795252 2067407475 1919252002 1852795251 741423650 1969319970 1346987379 1751342930 1701536613 1715085924
		 1702063201 1702109740 1699902579 1634885491 577726820 741422394 1936028706 1936020084 1701339999 1684368227 1634089506 744846188
		 1650811938 1750296437 1852400737 1634885479 577726820 741750074 1650811938 1750296437 1852400737 1751342951 1701536613 1715085924
		 1702063201 1953702444 1868919397 1701080909 1684107871 975335273 573323319 1919251571 1867345765 1667196260 1801676136 975332453
		 1936482662 8224101 ;
	setAttr ".vfbSyncM" yes;
	setAttr ".mSceneName" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021/scenes/MSTERCLASS/MC_ASPHALT_MATERIAL_SCENE_V101.ma";
	setAttr ".rt_cpuRayBundleSize" 4;
	setAttr ".rt_gpuRayBundleSize" 128;
	setAttr ".rt_maxPaths" 10000;
	setAttr ".rt_engineType" 3;
	setAttr ".rt_gpuResizeTextures" 0;
createNode displayLayerManager -n "layerManager";
	rename -uid "83D2C040-0000-1C2A-619F-8756000002B1";
createNode displayLayer -n "defaultLayer";
	rename -uid "DD051040-001A-29E4-618F-BF0B0000029E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "83D2C040-0000-1C2A-619F-8756000002B3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DD051040-001A-29E4-618F-BF0B000002A0";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "83D2C040-0000-1C2A-619F-8756000002B5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "83D2C040-0000-1C2A-619F-8756000002B6";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "DD051040-001A-29E4-618F-BF0D000002A3";
	setAttr ".version" -type "string" "5.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "DD051040-001A-29E4-618F-BF0D000002A4";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DD051040-001A-29E4-618F-BF0D000002A5";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "DD051040-001A-29E4-618F-BF0D000002A6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode renderSetup -n "renderSetup";
	rename -uid "DD051040-001A-29E4-618F-BF0F000002A7";
createNode polySphere -n "polySphere1";
	rename -uid "DD051040-001A-29E4-618F-BF1B000002A8";
	setAttr ".r" 25;
createNode cameraView -n "cameraView1";
	rename -uid "DD051040-001A-29E4-618F-BF98000002BD";
	setAttr ".e" -type "double3" -64.21228926449065 44.523006641945287 -60.722544512486856 ;
	setAttr ".coi" -type "double3" -2.8610230771164424e-06 -9.9475983006414026e-14 -3.8146968179830765e-06 ;
	setAttr ".u" -type "double3" 0.32689822656519474 0.89307042241894607 0.3091322857111109 ;
	setAttr ".tp" -type "double3" -2.86102294921875e-06 0 -3.814697265625e-06 ;
	setAttr ".fl" 34.999999999999986;
createNode VRayMtl -n "PBR_ASPHALT_BASIS_MTL";
	rename -uid "DD051040-001A-29E4-618F-C13A0000031D";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".dca" 0.81999999284744263;
	setAttr ".igi" no;
	setAttr ".rlc" -type "float3" 1 1 1 ;
	setAttr ".rlca" 0.80000001192092896;
	setAttr ".uf" yes;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".uro" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".bmt" 1;
	setAttr ".bmu" 5;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "PBR_ASPHALT_BASIS_MTL_SG";
	rename -uid "DD051040-001A-29E4-618F-C13A0000031E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "DD051040-001A-29E4-618F-C13A0000031F";
createNode file -n "PBR_ASPHALT_BASIS_HEIGHT";
	rename -uid "DD051040-001A-29E4-618F-C14300000320";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/TexturesCom_Asphalt10_2x2_1K_height.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "PBR_ASPHALT_BASIS_HEIGHT_PLCE";
	rename -uid "DD051040-001A-29E4-618F-C14300000321";
createNode VRayDisplacement -n "vrayDisplacement";
	rename -uid "DD051040-001A-29E4-618F-C1E600000323";
	setAttr -s 2 ".dsm";
createNode polyPlane -n "polyPlane1";
	rename -uid "DD051040-001A-29E4-618F-C2F600000329";
	setAttr ".w" 1024;
	setAttr ".h" 1024;
	setAttr ".cuv" 2;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DD051040-001A-29E4-618F-C3FE00000333";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1759\n            -height 1113\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n"
		+ "                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n"
		+ "            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap true\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1759\\n    -height 1113\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1759\\n    -height 1113\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "DD051040-001A-29E4-618F-C3FE00000334";
	setAttr ".b" -type "string" "playbackOptions -min 1001 -max 1241 -ast 1001 -aet 1241 ";
	setAttr ".st" 6;
createNode file -n "PBR_ASPHALT_BASIS_ALBEDO";
	rename -uid "DD051040-001A-29E4-618F-CDAC00000336";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/TexturesCom_Asphalt10_2x2_1K_albedo.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "PBR_ASPHALT_BASIS_ALBEDO_PLCE";
	rename -uid "DD051040-001A-29E4-618F-CDAC00000337";
createNode VRayDirt -n "PBR_ASPHALT_BASIS_AO";
	rename -uid "DD051040-001A-29E4-618F-CDB500000338";
	setAttr ".rad" 0.05;
	setAttr ".dstr" 180;
	setAttr ".fo" 0.25;
	setAttr ".sd" 6;
	setAttr ".soo" yes;
	setAttr ".sas" yes;
createNode place2dTexture -n "PBR_ASPHALT_BASIS_AO_PLCE";
	rename -uid "DD051040-001A-29E4-618F-CDB500000339";
createNode file -n "PBR_ASPHALT_BASIS_AO_MAP";
	rename -uid "DD051040-001A-29E4-618F-CDF80000033A";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/TexturesCom_Asphalt10_2x2_1K_ao.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "PBR_ASPHALT_BASIS_AO_MAP_PLCE";
	rename -uid "DD051040-001A-29E4-618F-CDF80000033B";
createNode colorCorrect -n "PBR_ASPHALT_BASIS_ALBEDO_CC";
	rename -uid "DD051040-001A-29E4-618F-CECF0000033D";
	setAttr "._sg" 0.5;
createNode file -n "PBR_ASPHALT_BASIS_ROUGHNESS";
	rename -uid "DD051040-001A-29E4-618F-CF660000033E";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/TexturesCom_Asphalt10_2x2_1K_roughness.tif";
	setAttr ".cs" -type "string" "ACES - ACES2065-1";
createNode place2dTexture -n "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE";
	rename -uid "DD051040-001A-29E4-618F-CF660000033F";
createNode file -n "PBR_ASPHALT_BASIS_NORMALBUMP";
	rename -uid "DD051040-001A-29E4-618F-CFCE00000340";
	setAttr ".cs" -type "string" "ACES - ACES2065-1";
createNode place2dTexture -n "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE";
	rename -uid "DD051040-001A-29E4-618F-CFCE00000341";
createNode VRayMtl -n "PLANE_BASIS_MTL";
	rename -uid "DD051040-001A-29E4-618F-D0C900000346";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "PLANE_BASIS_MTL_SG";
	rename -uid "DD051040-001A-29E4-618F-D0C900000347";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "DD051040-001A-29E4-618F-D0C900000348";
createNode VRayBlendMtl -n "ASPHALT_COMPOSITED_MATERIAL";
	rename -uid "DD051040-001A-29E4-6190-052F000003C0";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -s 2 ".cms";
	setAttr ".aal" -type "attributeAlias" {"ba0","coat_materials[0].ba","ba0b","coat_materials[0].bab"
		,"ba0g","coat_materials[0].bag","ba0r","coat_materials[0].bar","cm0","coat_materials[0].cm"
		,"cm0b","coat_materials[0].cmb","cm0g","coat_materials[0].cmg","cm0r","coat_materials[0].cmr"
		,"ba1","coat_materials[1].ba","ba1b","coat_materials[1].bab","ba1g","coat_materials[1].bag"
		,"ba1r","coat_materials[1].bar","cm1","coat_materials[1].cm","cm1b","coat_materials[1].cmb"
		,"cm1g","coat_materials[1].cmg","cm1r","coat_materials[1].cmr","ba2","coat_materials[2].ba"
		,"ba2b","coat_materials[2].bab","ba2g","coat_materials[2].bag","ba2r","coat_materials[2].bar"
		,"cm2","coat_materials[2].cm","cm2b","coat_materials[2].cmb","cm2g","coat_materials[2].cmg"
		,"cm2r","coat_materials[2].cmr","ba3","coat_materials[3].ba","ba3b","coat_materials[3].bab"
		,"ba3g","coat_materials[3].bag","ba3r","coat_materials[3].bar","cm3","coat_materials[3].cm"
		,"cm3b","coat_materials[3].cmb","cm3g","coat_materials[3].cmg","cm3r","coat_materials[3].cmr"
		,"ba4","coat_materials[4].ba","ba4b","coat_materials[4].bab","ba4g","coat_materials[4].bag"
		,"ba4r","coat_materials[4].bar","cm4","coat_materials[4].cm","cm4b","coat_materials[4].cmb"
		,"cm4g","coat_materials[4].cmg","cm4r","coat_materials[4].cmr","ba5","coat_materials[5].ba"
		,"ba5b","coat_materials[5].bab","ba5g","coat_materials[5].bag","ba5r","coat_materials[5].bar"
		,"cm5","coat_materials[5].cm","cm5b","coat_materials[5].cmb","cm5g","coat_materials[5].cmg"
		,"cm5r","coat_materials[5].cmr","ba6","coat_materials[6].ba","ba6b","coat_materials[6].bab"
		,"ba6g","coat_materials[6].bag","ba6r","coat_materials[6].bar","cm6","coat_materials[6].cm"
		,"cm6b","coat_materials[6].cmb","cm6g","coat_materials[6].cmg","cm6r","coat_materials[6].cmr"
		,"ba7","coat_materials[7].ba","ba7b","coat_materials[7].bab","ba7g","coat_materials[7].bag"
		,"ba7r","coat_materials[7].bar","cm7","coat_materials[7].cm","cm7b","coat_materials[7].cmb"
		,"cm7g","coat_materials[7].cmg","cm7r","coat_materials[7].cmr","ba8","coat_materials[8].ba"
		,"ba8b","coat_materials[8].bab","ba8g","coat_materials[8].bag","ba8r","coat_materials[8].bar"
		,"cm8","coat_materials[8].cm","cm8b","coat_materials[8].cmb","cm8g","coat_materials[8].cmg"
		,"cm8r","coat_materials[8].cmr"} ;
createNode shadingEngine -n "ASPHALT_COMPOSITED_MATERIAL_SG";
	rename -uid "DD051040-001A-29E4-6190-052F000003C1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "DD051040-001A-29E4-6190-052F000003C2";
createNode VRayMtl -n "ASPHALT_MARKUP_MTL";
	rename -uid "DD051040-001A-29E4-6190-0C43000003C4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".bmu" 0.20000000298023224;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "ASPHALT_MARKUP_MTL_SG";
	rename -uid "DD051040-001A-29E4-6190-0C43000003C5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "DD051040-001A-29E4-6190-0C43000003C6";
createNode file -n "ASPHALT_MARKUP_MTL_MIX";
	rename -uid "DD051040-001A-29E4-6190-19CD000003CB";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/MASTERCLASS/ASPHALT_STANDARD_MARKUP_OLD.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "ASPHALT_MARKUP_MTL_MIX_PLCE";
	rename -uid "DD051040-001A-29E4-6190-19CD000003CC";
createNode cameraView -n "cameraView2";
	rename -uid "DD051040-001A-29E4-6190-C45D000004A4";
	setAttr ".e" -type "double3" 53.071789405385694 42.85579697311929 -66.481889715317138 ;
	setAttr ".coi" -type "double3" -2.8610236810777678e-06 -2.8421709430404007e-13 -3.8146963419194435e-06 ;
	setAttr ".u" -type "double3" -0.28069397668646301 0.89307042241894685 0.35161927144623795 ;
	setAttr ".tp" -type "double3" -2.86102294921875e-06 0 -3.814697265625e-06 ;
	setAttr ".fl" 34.999999999999986;
createNode VRayMtl -n "ASPHALT_PBR_DIRT_MTL";
	rename -uid "C4DC0040-0034-ABB6-6197-9A6E0000035D";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".dca" 0.80000001192092896;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".fior" 3.2000000476837158;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".uro" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".bmt" 5;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "ASPHALT_PBR_DIRT_MTLSG";
	rename -uid "C4DC0040-0034-ABB6-6197-9A6E0000035E";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "C4DC0040-0034-ABB6-6197-9A6E0000035F";
createNode file -n "ASPHALT_PBR_DIRT_ALBEDO";
	rename -uid "C4DC0040-0034-ABB6-6197-9AA100000360";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/PBR_MAPS/TexturesCom_Ground_Soil3_3x3_1K_albedo.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "ASPHALT_PBR_DIRT_ALBEDOplce";
	rename -uid "C4DC0040-0034-ABB6-6197-9AA100000361";
createNode colorCorrect -n "ASPHALT_PBR_DIRT_ALBEDO_CC";
	rename -uid "C4DC0040-0034-ABB6-6197-9AF300000362";
	setAttr "._sg" 0.80000001192092896;
	setAttr "._vg" 0.80000001192092896;
createNode VRayDirt -n "ASPHALT_PBR_DIRT_ALBEDO_AO";
	rename -uid "C4DC0040-0034-ABB6-6197-9B2200000363";
	setAttr ".rad" 0.1;
	setAttr ".sd" 6;
	setAttr ".soo" yes;
	setAttr ".sas" yes;
createNode place2dTexture -n "ASPHALT_PBR_DIRT_ALBEDO_AO_plce";
	rename -uid "C4DC0040-0034-ABB6-6197-9B2200000364";
createNode file -n "ASPHALT_PBR_DIRT_ALBEDO_AOmap";
	rename -uid "C4DC0040-0034-ABB6-6197-9B3E00000365";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/PBR_MAPS/TexturesCom_Ground_Soil3_3x3_1K_ao.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce";
	rename -uid "C4DC0040-0034-ABB6-6197-9B3E00000366";
createNode file -n "ASPHALT_PBR_DIRT_ROUGHNESS";
	rename -uid "C4DC0040-0034-ABB6-6197-9BA300000367";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/PBR_MAPS/TexturesCom_Ground_Soil3_3x3_1K_roughness.tif";
	setAttr ".cs" -type "string" "ACES - ACES2065-1";
createNode place2dTexture -n "ASPHALT_PBR_DIRT_ROUGHNESSplce";
	rename -uid "C4DC0040-0034-ABB6-6197-9BA300000368";
createNode file -n "ASPHALT_PBR_DIRT_NORMALBUMP";
	rename -uid "C4DC0040-0034-ABB6-6197-9BF500000369";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/PBR_MAPS/TexturesCom_Ground_Soil3_3x3_1K_normal.tif";
	setAttr ".cs" -type "string" "Utility - Raw";
createNode place2dTexture -n "ASPHALT_PBR_DIRT_NORMALBUMPplce";
	rename -uid "C4DC0040-0034-ABB6-6197-9BF60000036A";
createNode file -n "ASPHALT_PBR_DIRT_MTL_MIX";
	rename -uid "C4DC0040-0034-ABB6-6197-9DEB0000036C";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/tile04heavy019.jpg";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "ASPHALT_PBR_DIRT_MTL_MIXplce";
	rename -uid "C4DC0040-0034-ABB6-6197-9DEB0000036D";
createNode file -n "ASPHALT_PBR_DIRT_HEIGHT";
	rename -uid "C4DC0040-0034-ABB6-6197-CB500000037A";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/PBR_MAPS/TexturesCom_Ground_Soil3_3x3_1K_height.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "ASPHALT_PBR_DIRT_HEIGHT_PLCE";
	rename -uid "C4DC0040-0034-ABB6-6197-CB500000037B";
createNode VRayLayeredTex -n "ASPHALT_BLENDED_DISPLACEMENT";
	rename -uid "C4DC0040-0034-ABB6-6197-CB990000037C";
	setAttr -s 3 ".l";
	setAttr ".l[1].bm" 9;
	setAttr ".l[1].o" 0.20000000298023224;
	setAttr ".l[2].bm" 2;
	setAttr ".l[2].o" 0.30000001192092896;
createNode place2dTexture -n "ASPHALT_BLENDED_DISPLACEMENTplce";
	rename -uid "C4DC0040-0034-ABB6-6197-CB9A0000037D";
createNode animCurveTA -n "pSphere1_rotateY";
	rename -uid "C4DC0040-0034-ABB6-6197-FD3700000394";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1001 0 1241 360;
createNode floatConstant -n "TEXTURES_UV_REPEATS_CONSTANT";
	rename -uid "C4DC0040-0034-ABB6-619A-3FBF0000040C";
	setAttr "._f" 4;
createNode VRayMtl -n "STUDIO_MATERIAL";
	rename -uid "C5037040-0000-8CA7-619B-6CCE0000039F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".rlmd" 8;
	setAttr ".rrmd" 8;
	setAttr ".dc" -type "float3" 0.99755323 0.9899767 0.9877128 ;
	setAttr ".dca" 0.80000001192092896;
	setAttr ".igi" no;
	setAttr ".uf" yes;
	setAttr ".fde" yes;
	setAttr ".gfr" yes;
	setAttr ".and" 0;
	setAttr ".afs" yes;
	setAttr ".cth" 0.0010000000474974513;
	setAttr ".brdf" 3;
	setAttr ".omode" 2;
	setAttr ".aal" -type "attributeAlias" {"color","diffuseColor"} ;
createNode shadingEngine -n "STUDIO_MATERIAL_SG";
	rename -uid "C5037040-0000-8CA7-619B-6CCE000003A0";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "C5037040-0000-8CA7-619B-6CCE000003A1";
createNode file -n "ASPHALT_MARKUP_BUMP";
	rename -uid "C5037040-0000-8CA7-619B-9D5700000FA2";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/MASTERCLASS/ASPHALT_STANDARD_MARKUP_OLD_BUMP_BW.tif";
	setAttr ".cs" -type "string" "Utility - sRGB - Texture";
createNode place2dTexture -n "ASPHALT_MARKUP_BUMPplce";
	rename -uid "C5037040-0000-8CA7-619B-9D5700000FA3";
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "C5037040-0000-8CA7-619B-BA9700000FB4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -30.192690117131637 -135.51338681839087 ;
	setAttr ".tgi[0].vh" -type "double2" 1729.28554878006 914.76339615967868 ;
	setAttr -s 13 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 1491.2657470703125;
	setAttr ".tgi[0].ni[0].y" 499.80697631835938;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 1189.41259765625;
	setAttr ".tgi[0].ni[1].y" 574.19354248046875;
	setAttr ".tgi[0].ni[1].nvs" 18305;
	setAttr ".tgi[0].ni[2].x" 1195.1553955078125;
	setAttr ".tgi[0].ni[2].y" 680.48968505859375;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" 326.84707641601562;
	setAttr ".tgi[0].ni[3].y" 368.12451171875;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" 340.71829223632812;
	setAttr ".tgi[0].ni[4].y" 583.22216796875;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" 739.28973388671875;
	setAttr ".tgi[0].ni[5].y" 583.22216796875;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 323.44873046875;
	setAttr ".tgi[0].ni[6].y" 249.14364624023438;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" 718.80364990234375;
	setAttr ".tgi[0].ni[7].y" 86.462409973144531;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 725.41851806640625;
	setAttr ".tgi[0].ni[8].y" 368.12451171875;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 732.2152099609375;
	setAttr ".tgi[0].ni[9].y" 483.70703125;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" 333.64376831054688;
	setAttr ".tgi[0].ni[10].y" 483.70703125;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" 18.010869979858398;
	setAttr ".tgi[0].ni[11].y" 583.53009033203125;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 722.0201416015625;
	setAttr ".tgi[0].ni[12].y" 249.14364624023438;
	setAttr ".tgi[0].ni[12].nvs" 1923;
createNode polyPlane -n "polyPlane2";
	rename -uid "83D2C040-0000-1C2A-619F-A1ED00000480";
	setAttr ".w" 1024;
	setAttr ".h" 512;
	setAttr ".sh" 5;
	setAttr ".cuv" 2;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "83D2C040-0000-1C2A-619F-A2B20000048B";
	setAttr -s 3 ".tgi";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" 623.91778509289145 77.040336294539557 ;
	setAttr ".tgi[0].vh" -type "double2" 2214.4021950509955 1264.7397333411755 ;
	setAttr -s 34 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 715.71429443359375;
	setAttr ".tgi[0].ni[0].y" 708.5714111328125;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 715.71429443359375;
	setAttr ".tgi[0].ni[1].y" 528.5714111328125;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 1987.142822265625;
	setAttr ".tgi[0].ni[2].y" 810;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 264.28570556640625;
	setAttr ".tgi[0].ni[3].y" 867.14288330078125;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 264.28570556640625;
	setAttr ".tgi[0].ni[4].y" 1205.7142333984375;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 554.4989013671875;
	setAttr ".tgi[0].ni[5].y" 1271.7177734375;
	setAttr ".tgi[0].ni[5].nvs" 1923;
	setAttr ".tgi[0].ni[6].x" -182.85714721679688;
	setAttr ".tgi[0].ni[6].y" 92.857139587402344;
	setAttr ".tgi[0].ni[6].nvs" 1923;
	setAttr ".tgi[0].ni[7].x" 1190;
	setAttr ".tgi[0].ni[7].y" 800;
	setAttr ".tgi[0].ni[7].nvs" 1923;
	setAttr ".tgi[0].ni[8].x" 264.28570556640625;
	setAttr ".tgi[0].ni[8].y" -78.571426391601562;
	setAttr ".tgi[0].ni[8].nvs" 1923;
	setAttr ".tgi[0].ni[9].x" -182.85714721679688;
	setAttr ".tgi[0].ni[9].y" 844.28570556640625;
	setAttr ".tgi[0].ni[9].nvs" 1923;
	setAttr ".tgi[0].ni[10].x" -580.624755859375;
	setAttr ".tgi[0].ni[10].y" 1166.3619384765625;
	setAttr ".tgi[0].ni[10].nvs" 1923;
	setAttr ".tgi[0].ni[11].x" 1190;
	setAttr ".tgi[0].ni[11].y" 331.42855834960938;
	setAttr ".tgi[0].ni[11].nvs" 1923;
	setAttr ".tgi[0].ni[12].x" -182.85714721679688;
	setAttr ".tgi[0].ni[12].y" -101.42857360839844;
	setAttr ".tgi[0].ni[12].nvs" 1923;
	setAttr ".tgi[0].ni[13].x" 264.28570556640625;
	setAttr ".tgi[0].ni[13].y" 115.71428680419922;
	setAttr ".tgi[0].ni[13].nvs" 1923;
	setAttr ".tgi[0].ni[14].x" 715.71429443359375;
	setAttr ".tgi[0].ni[14].y" 357.14285278320312;
	setAttr ".tgi[0].ni[14].nvs" 1923;
	setAttr ".tgi[0].ni[15].x" 264.28570556640625;
	setAttr ".tgi[0].ni[15].y" 378.57144165039062;
	setAttr ".tgi[0].ni[15].nvs" 1923;
	setAttr ".tgi[0].ni[16].x" 264.28570556640625;
	setAttr ".tgi[0].ni[16].y" -250;
	setAttr ".tgi[0].ni[16].nvs" 1923;
	setAttr ".tgi[0].ni[17].x" -1445.6336669921875;
	setAttr ".tgi[0].ni[17].y" 96.748100280761719;
	setAttr ".tgi[0].ni[17].nvs" 1923;
	setAttr ".tgi[0].ni[18].x" 1602.857177734375;
	setAttr ".tgi[0].ni[18].y" 831.4285888671875;
	setAttr ".tgi[0].ni[18].nvs" 1922;
	setAttr ".tgi[0].ni[19].x" 715.71429443359375;
	setAttr ".tgi[0].ni[19].y" -160;
	setAttr ".tgi[0].ni[19].nvs" 1923;
	setAttr ".tgi[0].ni[20].x" 264.28570556640625;
	setAttr ".tgi[0].ni[20].y" 251.42857360839844;
	setAttr ".tgi[0].ni[20].nvs" 1923;
	setAttr ".tgi[0].ni[21].x" 715.71429443359375;
	setAttr ".tgi[0].ni[21].y" 177.14285278320312;
	setAttr ".tgi[0].ni[21].nvs" 1923;
	setAttr ".tgi[0].ni[22].x" 264.28570556640625;
	setAttr ".tgi[0].ni[22].y" 507.14285278320312;
	setAttr ".tgi[0].ni[22].nvs" 1923;
	setAttr ".tgi[0].ni[23].x" -585.71429443359375;
	setAttr ".tgi[0].ni[23].y" 70;
	setAttr ".tgi[0].ni[23].nvs" 1923;
	setAttr ".tgi[0].ni[24].x" 264.28570556640625;
	setAttr ".tgi[0].ni[24].y" 1002.8571166992188;
	setAttr ".tgi[0].ni[24].nvs" 1923;
	setAttr ".tgi[0].ni[25].x" 715.71429443359375;
	setAttr ".tgi[0].ni[25].y" 924.28570556640625;
	setAttr ".tgi[0].ni[25].nvs" 1923;
	setAttr ".tgi[0].ni[26].x" 878.90234375;
	setAttr ".tgi[0].ni[26].y" 1276.1309814453125;
	setAttr ".tgi[0].ni[26].nvs" 1923;
	setAttr ".tgi[0].ni[27].x" 715.71429443359375;
	setAttr ".tgi[0].ni[27].y" 1417.142822265625;
	setAttr ".tgi[0].ni[27].nvs" 1923;
	setAttr ".tgi[0].ni[28].x" 1182.6446533203125;
	setAttr ".tgi[0].ni[28].y" 1274.4556884765625;
	setAttr ".tgi[0].ni[28].nvs" 1923;
	setAttr ".tgi[0].ni[29].x" 1190;
	setAttr ".tgi[0].ni[29].y" -137.14285278320312;
	setAttr ".tgi[0].ni[29].nvs" 1923;
	setAttr ".tgi[0].ni[30].x" -182.85714721679688;
	setAttr ".tgi[0].ni[30].y" 1182.857177734375;
	setAttr ".tgi[0].ni[30].nvs" 1923;
	setAttr ".tgi[0].ni[31].x" 1190;
	setAttr ".tgi[0].ni[31].y" 1440;
	setAttr ".tgi[0].ni[31].nvs" 1923;
	setAttr ".tgi[0].ni[32].x" 715.71429443359375;
	setAttr ".tgi[0].ni[32].y" -38.571430206298828;
	setAttr ".tgi[0].ni[32].nvs" 18304;
	setAttr ".tgi[0].ni[33].x" 264.28570556640625;
	setAttr ".tgi[0].ni[33].y" 687.14288330078125;
	setAttr ".tgi[0].ni[33].nvs" 1923;
	setAttr ".tgi[1].tn" -type "string" "Untitled_2";
	setAttr ".tgi[1].vl" -type "double2" -348.2840429552748 -660.31515704265917 ;
	setAttr ".tgi[1].vh" -type "double2" 1490.9080353678685 713.10749884799975 ;
	setAttr -s 11 ".tgi[1].ni";
	setAttr ".tgi[1].ni[0].x" 134.28572082519531;
	setAttr ".tgi[1].ni[0].y" 314.28570556640625;
	setAttr ".tgi[1].ni[0].nvs" 1923;
	setAttr ".tgi[1].ni[1].x" 134.28572082519531;
	setAttr ".tgi[1].ni[1].y" -381.42855834960938;
	setAttr ".tgi[1].ni[1].nvs" 1923;
	setAttr ".tgi[1].ni[2].x" 532.85711669921875;
	setAttr ".tgi[1].ni[2].y" 358.57144165039062;
	setAttr ".tgi[1].ni[2].nvs" 1923;
	setAttr ".tgi[1].ni[3].x" 532.85711669921875;
	setAttr ".tgi[1].ni[3].y" 178.57142639160156;
	setAttr ".tgi[1].ni[3].nvs" 1923;
	setAttr ".tgi[1].ni[4].x" 532.85711669921875;
	setAttr ".tgi[1].ni[4].y" 7.1428570747375488;
	setAttr ".tgi[1].ni[4].nvs" 18305;
	setAttr ".tgi[1].ni[5].x" 532.85711669921875;
	setAttr ".tgi[1].ni[5].y" -188.57142639160156;
	setAttr ".tgi[1].ni[5].nvs" 1923;
	setAttr ".tgi[1].ni[6].x" -268.57144165039062;
	setAttr ".tgi[1].ni[6].y" 320;
	setAttr ".tgi[1].ni[6].nvs" 18305;
	setAttr ".tgi[1].ni[7].x" 134.28572082519531;
	setAttr ".tgi[1].ni[7].y" 178.57142639160156;
	setAttr ".tgi[1].ni[7].nvs" 1923;
	setAttr ".tgi[1].ni[8].x" 532.85711669921875;
	setAttr ".tgi[1].ni[8].y" -360;
	setAttr ".tgi[1].ni[8].nvs" 1923;
	setAttr ".tgi[1].ni[9].x" 134.28572082519531;
	setAttr ".tgi[1].ni[9].y" -210;
	setAttr ".tgi[1].ni[9].nvs" 1923;
	setAttr ".tgi[1].ni[10].x" 1032.857177734375;
	setAttr ".tgi[1].ni[10].y" 279.43035888671875;
	setAttr ".tgi[1].ni[10].nvs" 18306;
	setAttr ".tgi[2].tn" -type "string" "Untitled_3";
	setAttr ".tgi[2].vl" -type "double2" -1050.0999681198803 -707.34694229444744 ;
	setAttr ".tgi[2].vh" -type "double2" 558.38537348332261 493.79470890274951 ;
	setAttr -s 2 ".tgi[2].ni";
	setAttr ".tgi[2].ni[0].x" -30.238092422485352;
	setAttr ".tgi[2].ni[0].y" 230;
	setAttr ".tgi[2].ni[0].nvs" 1923;
	setAttr ".tgi[2].ni[1].x" -380.23809814453125;
	setAttr ".tgi[2].ni[1].y" 204.04762268066406;
	setAttr ".tgi[2].ni[1].nvs" 1923;
createNode polyPlanarProj -n "polyPlanarProj1";
	rename -uid "83D2C040-0000-1C2A-619F-A2F200000492";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 512 512 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0
		 0 0 1 0 0 0 0 1;
createNode cameraView -n "cameraView3";
	rename -uid "83D2C040-0000-1C2A-619F-A51C000004A1";
	setAttr ".e" -type "double3" 583.83022533865164 208.24801454566929 -146.25721199230361 ;
	setAttr ".coi" -type "double3" 41.05346689760745 -31.877519529977405 -0.82061789758975578 ;
	setAttr ".u" -type "double3" -0.37956320014425726 0.91955866809671527 0.10170365295526768 ;
	setAttr ".tp" -type "double3" -2.86102294921875e-06 0 -3.814697265625e-06 ;
	setAttr ".fl" 50;
createNode shapeEditorManager -n "CRAFT_SCENE_REFERENCE_LIGHT:shapeEditorManager";
	rename -uid "E0AB2940-0000-4714-60DE-E4DB000003AB";
createNode poseInterpolatorManager -n "CRAFT_SCENE_REFERENCE_LIGHT:poseInterpolatorManager";
	rename -uid "E0AB2940-0000-4714-60DE-E4DB000003AC";
createNode renderLayerManager -n "CRAFT_SCENE_REFERENCE_LIGHT:renderLayerManager";
	rename -uid "E0AB2940-0000-4714-60DE-E4DB000003AF";
createNode renderLayer -n "CRAFT_SCENE_REFERENCE_LIGHT:defaultRenderLayer";
	rename -uid "E0AB2940-0000-4714-60DE-E4DB000003B0";
	setAttr ".g" yes;
createNode animCurveTA -n "CRAFT_SCENE_REFERENCE_LIGHT:VRayLightDome1_rotateX";
	rename -uid "E0AB2940-0000-4714-60DE-E507000003B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.96 0;
createNode animCurveTA -n "CRAFT_SCENE_REFERENCE_LIGHT:VRayLightDome1_rotateY";
	rename -uid "E0AB2940-0000-4714-60DE-E507000003B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.96 0;
createNode animCurveTA -n "CRAFT_SCENE_REFERENCE_LIGHT:VRayLightDome1_rotateZ";
	rename -uid "E0AB2940-0000-4714-60DE-E507000003B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0.96 0;
createNode file -n "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP";
	rename -uid "E0AB2940-0000-4714-60DE-E58200000419";
	setAttr ".ftn" -type "string" "/mnt/nfs/VIRTUALOPTICS_SHRD/_PROJECTS/PROGROUP/MAYA_PROJECT/PROGROUP_CRAFT_2021//sourceimages/HDR_8K/winter_river_8k.hdr";
	setAttr ".cs" -type "string" "Utility - Raw";
createNode VRayPlaceEnvTex -n "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_vrplace";
	rename -uid "E0AB2940-0000-4714-60DE-E5BB0000041C";
	setAttr ".mt" 2;
createNode place2dTexture -n "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_TEXT_plce";
	rename -uid "E0AB2940-0000-4714-60DE-E5BB0000041D";
createNode nodeGraphEditorInfo -n "CRAFT_SCENE_REFERENCE_LIGHT:hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E0AB2940-0000-4714-60DE-E5E20000041E";
	setAttr ".def" no;
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1111.9861353011861 -848.18878928145728 ;
	setAttr ".tgi[0].vh" -type "double2" 507.14003080899505 364.86260353910984 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -540;
	setAttr ".tgi[0].ni[0].y" -121.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1922;
	setAttr ".tgi[0].ni[1].x" -998.5714111328125;
	setAttr ".tgi[0].ni[1].y" -214.28572082519531;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -108.57142639160156;
	setAttr ".tgi[0].ni[2].y" -142.85714721679688;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 198.57142639160156;
	setAttr ".tgi[0].ni[3].y" -235.71427917480469;
	setAttr ".tgi[0].ni[3].nvs" 1923;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 1001;
	setAttr ".unw" 1001;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".st";
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 21 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 17 ".tx";
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
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
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -cb on ".macc";
	setAttr -cb on ".macd";
	setAttr -cb on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr ".ren" -type "string" "vray";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -k on ".outf" 51;
	setAttr -cb on ".imfkey" -type "string" "exr";
	setAttr -k on ".gama";
	setAttr -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs" 1001;
	setAttr -k on ".ef" 1241;
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr ".rv" -type "string" "ASPHALT_MTL_DISPLACEMENT_RENDER_R20211122_V101";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
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
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
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
	setAttr -k on ".bls";
	setAttr -k on ".smv";
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
	setAttr -cb on ".ope";
	setAttr -cb on ".oppf";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w" 2560;
	setAttr -av ".h" 1439;
	setAttr -av ".pa" 0.99956250190734863;
	setAttr -av -k on ".al";
	setAttr -av ".dar" 1.7782348394393921;
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "/home/dimson3d/Application/OCIO/aces_1.0.3/config.ocio";
	setAttr ".vtn" -type "string" "sRGB (ACES)";
	setAttr ".vn" -type "string" "sRGB";
	setAttr ".dn" -type "string" "ACES";
	setAttr ".wsn" -type "string" "ACES - ACEScg";
	setAttr ".otn" -type "string" "sRGB (ACES)";
	setAttr ".potn" -type "string" "sRGB (ACES)";
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
	setAttr -av -k off ".mbbf";
	setAttr -k off ".mbs";
	setAttr -k off ".trm";
	setAttr -k off -cb on ".tshc";
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
connectAttr "cameraView1.msg" ":perspShape.b" -na;
connectAttr "cameraView2.msg" ":perspShape.b" -na;
connectAttr "cameraView3.msg" ":perspShape.b" -na;
connectAttr "pSphere1_rotateY.o" "REFERENCE_SPHERE.ry";
connectAttr "polySphere1.out" "REFERENCE_SPHEREShape.i";
connectAttr "polyPlane1.out" "STUDIO_PLANEShape.i";
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:VRayLightDome1_rotateX.o" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT.rx"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:VRayLightDome1_rotateY.o" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT.ry"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:VRayLightDome1_rotateZ.o" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT.rz"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.oc" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHTShape.dt"
		;
connectAttr "polyPlanarProj1.out" "THE_ROADShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "PBR_ASPHALT_BASIS_MTL_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "PLANE_BASIS_MTL_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ASPHALT_COMPOSITED_MATERIAL_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ASPHALT_MARKUP_MTL_SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "ASPHALT_PBR_DIRT_MTLSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "STUDIO_MATERIAL_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "PBR_ASPHALT_BASIS_MTL_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "PLANE_BASIS_MTL_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ASPHALT_COMPOSITED_MATERIAL_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ASPHALT_MARKUP_MTL_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "ASPHALT_PBR_DIRT_MTLSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "STUDIO_MATERIAL_SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "PBR_ASPHALT_BASIS_AO.oc" "PBR_ASPHALT_BASIS_MTL.dc";
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS.ocr" "PBR_ASPHALT_BASIS_MTL.rlg";
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP.oc" "PBR_ASPHALT_BASIS_MTL.bm";
connectAttr "PBR_ASPHALT_BASIS_MTL.oc" "PBR_ASPHALT_BASIS_MTL_SG.ss";
connectAttr "PBR_ASPHALT_BASIS_MTL_SG.msg" "materialInfo1.sg";
connectAttr "PBR_ASPHALT_BASIS_MTL.msg" "materialInfo1.m";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "PBR_ASPHALT_BASIS_HEIGHT.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "PBR_ASPHALT_BASIS_HEIGHT.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "PBR_ASPHALT_BASIS_HEIGHT.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "PBR_ASPHALT_BASIS_HEIGHT.ws";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.c" "PBR_ASPHALT_BASIS_HEIGHT.c";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.tf" "PBR_ASPHALT_BASIS_HEIGHT.tf";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.rf" "PBR_ASPHALT_BASIS_HEIGHT.rf";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.mu" "PBR_ASPHALT_BASIS_HEIGHT.mu";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.mv" "PBR_ASPHALT_BASIS_HEIGHT.mv";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.s" "PBR_ASPHALT_BASIS_HEIGHT.s";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.wu" "PBR_ASPHALT_BASIS_HEIGHT.wu";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.wv" "PBR_ASPHALT_BASIS_HEIGHT.wv";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.re" "PBR_ASPHALT_BASIS_HEIGHT.re";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.of" "PBR_ASPHALT_BASIS_HEIGHT.of";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.r" "PBR_ASPHALT_BASIS_HEIGHT.ro";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.n" "PBR_ASPHALT_BASIS_HEIGHT.n";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.vt1" "PBR_ASPHALT_BASIS_HEIGHT.vt1";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.vt2" "PBR_ASPHALT_BASIS_HEIGHT.vt2";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.vt3" "PBR_ASPHALT_BASIS_HEIGHT.vt3";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.vc1" "PBR_ASPHALT_BASIS_HEIGHT.vc1";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.o" "PBR_ASPHALT_BASIS_HEIGHT.uv";
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.ofs" "PBR_ASPHALT_BASIS_HEIGHT.fs";
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_HEIGHT_PLCE.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_HEIGHT_PLCE.rev"
		;
connectAttr "REFERENCE_SPHERE.iog" "vrayDisplacement.dsm" -na;
connectAttr "THE_ROAD.iog" "vrayDisplacement.dsm" -na;
connectAttr "ASPHALT_BLENDED_DISPLACEMENT.oc" "vrayDisplacement.ds";
connectAttr ":defaultColorMgtGlobals.cme" "PBR_ASPHALT_BASIS_ALBEDO.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "PBR_ASPHALT_BASIS_ALBEDO.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "PBR_ASPHALT_BASIS_ALBEDO.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "PBR_ASPHALT_BASIS_ALBEDO.ws";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.c" "PBR_ASPHALT_BASIS_ALBEDO.c";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.tf" "PBR_ASPHALT_BASIS_ALBEDO.tf";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.rf" "PBR_ASPHALT_BASIS_ALBEDO.rf";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.mu" "PBR_ASPHALT_BASIS_ALBEDO.mu";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.mv" "PBR_ASPHALT_BASIS_ALBEDO.mv";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.s" "PBR_ASPHALT_BASIS_ALBEDO.s";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.wu" "PBR_ASPHALT_BASIS_ALBEDO.wu";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.wv" "PBR_ASPHALT_BASIS_ALBEDO.wv";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.re" "PBR_ASPHALT_BASIS_ALBEDO.re";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.of" "PBR_ASPHALT_BASIS_ALBEDO.of";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.r" "PBR_ASPHALT_BASIS_ALBEDO.ro";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.n" "PBR_ASPHALT_BASIS_ALBEDO.n";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.vt1" "PBR_ASPHALT_BASIS_ALBEDO.vt1";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.vt2" "PBR_ASPHALT_BASIS_ALBEDO.vt2";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.vt3" "PBR_ASPHALT_BASIS_ALBEDO.vt3";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.vc1" "PBR_ASPHALT_BASIS_ALBEDO.vc1";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.o" "PBR_ASPHALT_BASIS_ALBEDO.uv";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.ofs" "PBR_ASPHALT_BASIS_ALBEDO.fs";
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_ALBEDO_PLCE.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_ALBEDO_PLCE.rev"
		;
connectAttr "PBR_ASPHALT_BASIS_AO_PLCE.o" "PBR_ASPHALT_BASIS_AO.uv";
connectAttr "PBR_ASPHALT_BASIS_AO_PLCE.ofs" "PBR_ASPHALT_BASIS_AO.uf";
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_CC.oc" "PBR_ASPHALT_BASIS_AO.wc";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP.oc" "PBR_ASPHALT_BASIS_AO.bc";
connectAttr ":defaultColorMgtGlobals.cme" "PBR_ASPHALT_BASIS_AO_MAP.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "PBR_ASPHALT_BASIS_AO_MAP.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "PBR_ASPHALT_BASIS_AO_MAP.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "PBR_ASPHALT_BASIS_AO_MAP.ws";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.c" "PBR_ASPHALT_BASIS_AO_MAP.c";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.tf" "PBR_ASPHALT_BASIS_AO_MAP.tf";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.rf" "PBR_ASPHALT_BASIS_AO_MAP.rf";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.mu" "PBR_ASPHALT_BASIS_AO_MAP.mu";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.mv" "PBR_ASPHALT_BASIS_AO_MAP.mv";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.s" "PBR_ASPHALT_BASIS_AO_MAP.s";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.wu" "PBR_ASPHALT_BASIS_AO_MAP.wu";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.wv" "PBR_ASPHALT_BASIS_AO_MAP.wv";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.re" "PBR_ASPHALT_BASIS_AO_MAP.re";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.of" "PBR_ASPHALT_BASIS_AO_MAP.of";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.r" "PBR_ASPHALT_BASIS_AO_MAP.ro";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.n" "PBR_ASPHALT_BASIS_AO_MAP.n";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.vt1" "PBR_ASPHALT_BASIS_AO_MAP.vt1";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.vt2" "PBR_ASPHALT_BASIS_AO_MAP.vt2";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.vt3" "PBR_ASPHALT_BASIS_AO_MAP.vt3";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.vc1" "PBR_ASPHALT_BASIS_AO_MAP.vc1";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.o" "PBR_ASPHALT_BASIS_AO_MAP.uv";
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.ofs" "PBR_ASPHALT_BASIS_AO_MAP.fs";
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_AO_MAP_PLCE.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_AO_MAP_PLCE.rev"
		;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO.oc" "PBR_ASPHALT_BASIS_ALBEDO_CC._c";
connectAttr ":defaultColorMgtGlobals.cme" "PBR_ASPHALT_BASIS_ROUGHNESS.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "PBR_ASPHALT_BASIS_ROUGHNESS.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "PBR_ASPHALT_BASIS_ROUGHNESS.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "PBR_ASPHALT_BASIS_ROUGHNESS.ws";
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.c" "PBR_ASPHALT_BASIS_ROUGHNESS.c"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.tf" "PBR_ASPHALT_BASIS_ROUGHNESS.tf"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.rf" "PBR_ASPHALT_BASIS_ROUGHNESS.rf"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.mu" "PBR_ASPHALT_BASIS_ROUGHNESS.mu"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.mv" "PBR_ASPHALT_BASIS_ROUGHNESS.mv"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.s" "PBR_ASPHALT_BASIS_ROUGHNESS.s"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.wu" "PBR_ASPHALT_BASIS_ROUGHNESS.wu"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.wv" "PBR_ASPHALT_BASIS_ROUGHNESS.wv"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.re" "PBR_ASPHALT_BASIS_ROUGHNESS.re"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.of" "PBR_ASPHALT_BASIS_ROUGHNESS.of"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.r" "PBR_ASPHALT_BASIS_ROUGHNESS.ro"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.n" "PBR_ASPHALT_BASIS_ROUGHNESS.n"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.vt1" "PBR_ASPHALT_BASIS_ROUGHNESS.vt1"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.vt2" "PBR_ASPHALT_BASIS_ROUGHNESS.vt2"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.vt3" "PBR_ASPHALT_BASIS_ROUGHNESS.vt3"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.vc1" "PBR_ASPHALT_BASIS_ROUGHNESS.vc1"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.o" "PBR_ASPHALT_BASIS_ROUGHNESS.uv"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.ofs" "PBR_ASPHALT_BASIS_ROUGHNESS.fs"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.rev"
		;
connectAttr ":defaultColorMgtGlobals.cme" "PBR_ASPHALT_BASIS_NORMALBUMP.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "PBR_ASPHALT_BASIS_NORMALBUMP.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "PBR_ASPHALT_BASIS_NORMALBUMP.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "PBR_ASPHALT_BASIS_NORMALBUMP.ws";
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.c" "PBR_ASPHALT_BASIS_NORMALBUMP.c"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.tf" "PBR_ASPHALT_BASIS_NORMALBUMP.tf"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.rf" "PBR_ASPHALT_BASIS_NORMALBUMP.rf"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.mu" "PBR_ASPHALT_BASIS_NORMALBUMP.mu"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.mv" "PBR_ASPHALT_BASIS_NORMALBUMP.mv"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.s" "PBR_ASPHALT_BASIS_NORMALBUMP.s"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.wu" "PBR_ASPHALT_BASIS_NORMALBUMP.wu"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.wv" "PBR_ASPHALT_BASIS_NORMALBUMP.wv"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.re" "PBR_ASPHALT_BASIS_NORMALBUMP.re"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.of" "PBR_ASPHALT_BASIS_NORMALBUMP.of"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.r" "PBR_ASPHALT_BASIS_NORMALBUMP.ro"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.n" "PBR_ASPHALT_BASIS_NORMALBUMP.n"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.vt1" "PBR_ASPHALT_BASIS_NORMALBUMP.vt1"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.vt2" "PBR_ASPHALT_BASIS_NORMALBUMP.vt2"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.vt3" "PBR_ASPHALT_BASIS_NORMALBUMP.vt3"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.vc1" "PBR_ASPHALT_BASIS_NORMALBUMP.vc1"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.o" "PBR_ASPHALT_BASIS_NORMALBUMP.uv"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.ofs" "PBR_ASPHALT_BASIS_NORMALBUMP.fs"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.rev"
		;
connectAttr "PLANE_BASIS_MTL.oc" "PLANE_BASIS_MTL_SG.ss";
connectAttr "PLANE_BASIS_MTL_SG.msg" "materialInfo2.sg";
connectAttr "PLANE_BASIS_MTL.msg" "materialInfo2.m";
connectAttr "PBR_ASPHALT_BASIS_MTL.oc" "ASPHALT_COMPOSITED_MATERIAL.bm";
connectAttr "ASPHALT_MARKUP_MTL.oc" "ASPHALT_COMPOSITED_MATERIAL.cms[0].cm";
connectAttr "ASPHALT_MARKUP_MTL_MIX.oc" "ASPHALT_COMPOSITED_MATERIAL.cms[0].ba";
connectAttr "ASPHALT_PBR_DIRT_MTL.oc" "ASPHALT_COMPOSITED_MATERIAL.cms[1].cm";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIX.oc" "ASPHALT_COMPOSITED_MATERIAL.cms[1].ba"
		;
connectAttr "ASPHALT_COMPOSITED_MATERIAL.oc" "ASPHALT_COMPOSITED_MATERIAL_SG.ss"
		;
connectAttr "THE_ROADShape.iog" "ASPHALT_COMPOSITED_MATERIAL_SG.dsm" -na;
connectAttr "ASPHALT_COMPOSITED_MATERIAL_SG.msg" "materialInfo3.sg";
connectAttr "ASPHALT_COMPOSITED_MATERIAL.msg" "materialInfo3.m";
connectAttr "ASPHALT_PBR_DIRT_MTL.msg" "materialInfo3.t" -na;
connectAttr "ASPHALT_MARKUP_BUMP.oc" "ASPHALT_MARKUP_MTL.bm";
connectAttr "ASPHALT_MARKUP_MTL.oc" "ASPHALT_MARKUP_MTL_SG.ss";
connectAttr "ASPHALT_MARKUP_MTL_SG.msg" "materialInfo4.sg";
connectAttr "ASPHALT_MARKUP_MTL.msg" "materialInfo4.m";
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_MARKUP_MTL_MIX.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_MARKUP_MTL_MIX.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_MARKUP_MTL_MIX.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_MARKUP_MTL_MIX.ws";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.c" "ASPHALT_MARKUP_MTL_MIX.c";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.tf" "ASPHALT_MARKUP_MTL_MIX.tf";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.rf" "ASPHALT_MARKUP_MTL_MIX.rf";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.mu" "ASPHALT_MARKUP_MTL_MIX.mu";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.mv" "ASPHALT_MARKUP_MTL_MIX.mv";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.s" "ASPHALT_MARKUP_MTL_MIX.s";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.wu" "ASPHALT_MARKUP_MTL_MIX.wu";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.wv" "ASPHALT_MARKUP_MTL_MIX.wv";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.re" "ASPHALT_MARKUP_MTL_MIX.re";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.of" "ASPHALT_MARKUP_MTL_MIX.of";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.r" "ASPHALT_MARKUP_MTL_MIX.ro";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.n" "ASPHALT_MARKUP_MTL_MIX.n";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.vt1" "ASPHALT_MARKUP_MTL_MIX.vt1";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.vt2" "ASPHALT_MARKUP_MTL_MIX.vt2";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.vt3" "ASPHALT_MARKUP_MTL_MIX.vt3";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.vc1" "ASPHALT_MARKUP_MTL_MIX.vc1";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.o" "ASPHALT_MARKUP_MTL_MIX.uv";
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.ofs" "ASPHALT_MARKUP_MTL_MIX.fs";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO.oc" "ASPHALT_PBR_DIRT_MTL.dc";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESS.oc" "ASPHALT_PBR_DIRT_MTL.rlc";
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMP.oc" "ASPHALT_PBR_DIRT_MTL.bm";
connectAttr "ASPHALT_PBR_DIRT_MTL.oc" "ASPHALT_PBR_DIRT_MTLSG.ss";
connectAttr "ASPHALT_PBR_DIRT_MTLSG.msg" "materialInfo5.sg";
connectAttr "ASPHALT_PBR_DIRT_MTL.msg" "materialInfo5.m";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_PBR_DIRT_ALBEDO.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_PBR_DIRT_ALBEDO.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_PBR_DIRT_ALBEDO.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_PBR_DIRT_ALBEDO.ws";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.c" "ASPHALT_PBR_DIRT_ALBEDO.c";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.tf" "ASPHALT_PBR_DIRT_ALBEDO.tf";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.rf" "ASPHALT_PBR_DIRT_ALBEDO.rf";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.mu" "ASPHALT_PBR_DIRT_ALBEDO.mu";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.mv" "ASPHALT_PBR_DIRT_ALBEDO.mv";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.s" "ASPHALT_PBR_DIRT_ALBEDO.s";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.wu" "ASPHALT_PBR_DIRT_ALBEDO.wu";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.wv" "ASPHALT_PBR_DIRT_ALBEDO.wv";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.re" "ASPHALT_PBR_DIRT_ALBEDO.re";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.of" "ASPHALT_PBR_DIRT_ALBEDO.of";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.r" "ASPHALT_PBR_DIRT_ALBEDO.ro";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.n" "ASPHALT_PBR_DIRT_ALBEDO.n";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.vt1" "ASPHALT_PBR_DIRT_ALBEDO.vt1";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.vt2" "ASPHALT_PBR_DIRT_ALBEDO.vt2";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.vt3" "ASPHALT_PBR_DIRT_ALBEDO.vt3";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.vc1" "ASPHALT_PBR_DIRT_ALBEDO.vc1";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.o" "ASPHALT_PBR_DIRT_ALBEDO.uv";
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.ofs" "ASPHALT_PBR_DIRT_ALBEDO.fs";
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_ALBEDOplce.reu";
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_ALBEDOplce.rev";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO.oc" "ASPHALT_PBR_DIRT_ALBEDO_CC._c";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO_plce.o" "ASPHALT_PBR_DIRT_ALBEDO_AO.uv";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO_plce.ofs" "ASPHALT_PBR_DIRT_ALBEDO_AO.uf"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_CC.oc" "ASPHALT_PBR_DIRT_ALBEDO_AO.wc";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap.oc" "ASPHALT_PBR_DIRT_ALBEDO_AO.bc";
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.ws";
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.c" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.c"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.tf" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.tf"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.rf" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.rf"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.mu" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.mu"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.mv" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.mv"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.s" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.s"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.wu" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.wu"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.wv" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.wv"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.re" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.re"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.of" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.of"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.r" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.ro"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.n" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.n"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.vt1" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.vt1"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.vt2" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.vt2"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.vt3" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.vt3"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.vc1" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.vc1"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.o" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.uv"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.ofs" "ASPHALT_PBR_DIRT_ALBEDO_AOmap.fs"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.rev"
		;
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_PBR_DIRT_ROUGHNESS.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_PBR_DIRT_ROUGHNESS.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_PBR_DIRT_ROUGHNESS.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_PBR_DIRT_ROUGHNESS.ws";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.c" "ASPHALT_PBR_DIRT_ROUGHNESS.c";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.tf" "ASPHALT_PBR_DIRT_ROUGHNESS.tf";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.rf" "ASPHALT_PBR_DIRT_ROUGHNESS.rf";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.mu" "ASPHALT_PBR_DIRT_ROUGHNESS.mu";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.mv" "ASPHALT_PBR_DIRT_ROUGHNESS.mv";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.s" "ASPHALT_PBR_DIRT_ROUGHNESS.s";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.wu" "ASPHALT_PBR_DIRT_ROUGHNESS.wu";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.wv" "ASPHALT_PBR_DIRT_ROUGHNESS.wv";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.re" "ASPHALT_PBR_DIRT_ROUGHNESS.re";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.of" "ASPHALT_PBR_DIRT_ROUGHNESS.of";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.r" "ASPHALT_PBR_DIRT_ROUGHNESS.ro";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.n" "ASPHALT_PBR_DIRT_ROUGHNESS.n";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.vt1" "ASPHALT_PBR_DIRT_ROUGHNESS.vt1"
		;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.vt2" "ASPHALT_PBR_DIRT_ROUGHNESS.vt2"
		;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.vt3" "ASPHALT_PBR_DIRT_ROUGHNESS.vt3"
		;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.vc1" "ASPHALT_PBR_DIRT_ROUGHNESS.vc1"
		;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.o" "ASPHALT_PBR_DIRT_ROUGHNESS.uv";
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.ofs" "ASPHALT_PBR_DIRT_ROUGHNESS.fs"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_ROUGHNESSplce.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_ROUGHNESSplce.rev"
		;
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_PBR_DIRT_NORMALBUMP.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_PBR_DIRT_NORMALBUMP.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_PBR_DIRT_NORMALBUMP.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_PBR_DIRT_NORMALBUMP.ws";
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.c" "ASPHALT_PBR_DIRT_NORMALBUMP.c";
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.tf" "ASPHALT_PBR_DIRT_NORMALBUMP.tf"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.rf" "ASPHALT_PBR_DIRT_NORMALBUMP.rf"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.mu" "ASPHALT_PBR_DIRT_NORMALBUMP.mu"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.mv" "ASPHALT_PBR_DIRT_NORMALBUMP.mv"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.s" "ASPHALT_PBR_DIRT_NORMALBUMP.s";
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.wu" "ASPHALT_PBR_DIRT_NORMALBUMP.wu"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.wv" "ASPHALT_PBR_DIRT_NORMALBUMP.wv"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.re" "ASPHALT_PBR_DIRT_NORMALBUMP.re"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.of" "ASPHALT_PBR_DIRT_NORMALBUMP.of"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.r" "ASPHALT_PBR_DIRT_NORMALBUMP.ro"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.n" "ASPHALT_PBR_DIRT_NORMALBUMP.n";
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.vt1" "ASPHALT_PBR_DIRT_NORMALBUMP.vt1"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.vt2" "ASPHALT_PBR_DIRT_NORMALBUMP.vt2"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.vt3" "ASPHALT_PBR_DIRT_NORMALBUMP.vt3"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.vc1" "ASPHALT_PBR_DIRT_NORMALBUMP.vc1"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.o" "ASPHALT_PBR_DIRT_NORMALBUMP.uv"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.ofs" "ASPHALT_PBR_DIRT_NORMALBUMP.fs"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_NORMALBUMPplce.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_NORMALBUMPplce.rev"
		;
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_PBR_DIRT_MTL_MIX.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_PBR_DIRT_MTL_MIX.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_PBR_DIRT_MTL_MIX.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_PBR_DIRT_MTL_MIX.ws";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.c" "ASPHALT_PBR_DIRT_MTL_MIX.c";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.tf" "ASPHALT_PBR_DIRT_MTL_MIX.tf";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.rf" "ASPHALT_PBR_DIRT_MTL_MIX.rf";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.mu" "ASPHALT_PBR_DIRT_MTL_MIX.mu";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.mv" "ASPHALT_PBR_DIRT_MTL_MIX.mv";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.s" "ASPHALT_PBR_DIRT_MTL_MIX.s";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.wu" "ASPHALT_PBR_DIRT_MTL_MIX.wu";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.wv" "ASPHALT_PBR_DIRT_MTL_MIX.wv";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.re" "ASPHALT_PBR_DIRT_MTL_MIX.re";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.of" "ASPHALT_PBR_DIRT_MTL_MIX.of";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.r" "ASPHALT_PBR_DIRT_MTL_MIX.ro";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.n" "ASPHALT_PBR_DIRT_MTL_MIX.n";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.vt1" "ASPHALT_PBR_DIRT_MTL_MIX.vt1";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.vt2" "ASPHALT_PBR_DIRT_MTL_MIX.vt2";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.vt3" "ASPHALT_PBR_DIRT_MTL_MIX.vt3";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.vc1" "ASPHALT_PBR_DIRT_MTL_MIX.vc1";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.o" "ASPHALT_PBR_DIRT_MTL_MIX.uv";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.ofs" "ASPHALT_PBR_DIRT_MTL_MIX.fs";
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_PBR_DIRT_HEIGHT.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_PBR_DIRT_HEIGHT.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_PBR_DIRT_HEIGHT.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_PBR_DIRT_HEIGHT.ws";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.c" "ASPHALT_PBR_DIRT_HEIGHT.c";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.tf" "ASPHALT_PBR_DIRT_HEIGHT.tf";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.rf" "ASPHALT_PBR_DIRT_HEIGHT.rf";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.mu" "ASPHALT_PBR_DIRT_HEIGHT.mu";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.mv" "ASPHALT_PBR_DIRT_HEIGHT.mv";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.s" "ASPHALT_PBR_DIRT_HEIGHT.s";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.wu" "ASPHALT_PBR_DIRT_HEIGHT.wu";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.wv" "ASPHALT_PBR_DIRT_HEIGHT.wv";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.re" "ASPHALT_PBR_DIRT_HEIGHT.re";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.of" "ASPHALT_PBR_DIRT_HEIGHT.of";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.r" "ASPHALT_PBR_DIRT_HEIGHT.ro";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.n" "ASPHALT_PBR_DIRT_HEIGHT.n";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.vt1" "ASPHALT_PBR_DIRT_HEIGHT.vt1";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.vt2" "ASPHALT_PBR_DIRT_HEIGHT.vt2";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.vt3" "ASPHALT_PBR_DIRT_HEIGHT.vt3";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.vc1" "ASPHALT_PBR_DIRT_HEIGHT.vc1";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.o" "ASPHALT_PBR_DIRT_HEIGHT.uv";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.ofs" "ASPHALT_PBR_DIRT_HEIGHT.fs";
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_HEIGHT_PLCE.reu"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.of" "ASPHALT_PBR_DIRT_HEIGHT_PLCE.rev"
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENTplce.o" "ASPHALT_BLENDED_DISPLACEMENT.uv"
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENTplce.ofs" "ASPHALT_BLENDED_DISPLACEMENT.uf"
		;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT.oc" "ASPHALT_BLENDED_DISPLACEMENT.l[0].t";
connectAttr "ASPHALT_PBR_DIRT_HEIGHT.oc" "ASPHALT_BLENDED_DISPLACEMENT.l[1].t";
connectAttr "ASPHALT_PBR_DIRT_MTL_MIX.oc" "ASPHALT_BLENDED_DISPLACEMENT.l[1].m";
connectAttr "ASPHALT_MARKUP_BUMP.oc" "ASPHALT_BLENDED_DISPLACEMENT.l[2].t";
connectAttr "ASPHALT_MARKUP_BUMP.oc" "ASPHALT_BLENDED_DISPLACEMENT.l[2].m";
connectAttr "STUDIO_MATERIAL.oc" "STUDIO_MATERIAL_SG.ss";
connectAttr "STUDIO_PLANEShape.iog" "STUDIO_MATERIAL_SG.dsm" -na;
connectAttr "REFERENCE_SPHEREShape.iog" "STUDIO_MATERIAL_SG.dsm" -na;
connectAttr "STUDIO_MATERIAL_SG.msg" "materialInfo6.sg";
connectAttr "STUDIO_MATERIAL.msg" "materialInfo6.m";
connectAttr ":defaultColorMgtGlobals.cme" "ASPHALT_MARKUP_BUMP.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "ASPHALT_MARKUP_BUMP.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "ASPHALT_MARKUP_BUMP.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "ASPHALT_MARKUP_BUMP.ws";
connectAttr "ASPHALT_MARKUP_BUMPplce.c" "ASPHALT_MARKUP_BUMP.c";
connectAttr "ASPHALT_MARKUP_BUMPplce.tf" "ASPHALT_MARKUP_BUMP.tf";
connectAttr "ASPHALT_MARKUP_BUMPplce.rf" "ASPHALT_MARKUP_BUMP.rf";
connectAttr "ASPHALT_MARKUP_BUMPplce.mu" "ASPHALT_MARKUP_BUMP.mu";
connectAttr "ASPHALT_MARKUP_BUMPplce.mv" "ASPHALT_MARKUP_BUMP.mv";
connectAttr "ASPHALT_MARKUP_BUMPplce.s" "ASPHALT_MARKUP_BUMP.s";
connectAttr "ASPHALT_MARKUP_BUMPplce.wu" "ASPHALT_MARKUP_BUMP.wu";
connectAttr "ASPHALT_MARKUP_BUMPplce.wv" "ASPHALT_MARKUP_BUMP.wv";
connectAttr "ASPHALT_MARKUP_BUMPplce.re" "ASPHALT_MARKUP_BUMP.re";
connectAttr "ASPHALT_MARKUP_BUMPplce.of" "ASPHALT_MARKUP_BUMP.of";
connectAttr "ASPHALT_MARKUP_BUMPplce.r" "ASPHALT_MARKUP_BUMP.ro";
connectAttr "ASPHALT_MARKUP_BUMPplce.n" "ASPHALT_MARKUP_BUMP.n";
connectAttr "ASPHALT_MARKUP_BUMPplce.vt1" "ASPHALT_MARKUP_BUMP.vt1";
connectAttr "ASPHALT_MARKUP_BUMPplce.vt2" "ASPHALT_MARKUP_BUMP.vt2";
connectAttr "ASPHALT_MARKUP_BUMPplce.vt3" "ASPHALT_MARKUP_BUMP.vt3";
connectAttr "ASPHALT_MARKUP_BUMPplce.vc1" "ASPHALT_MARKUP_BUMP.vc1";
connectAttr "ASPHALT_MARKUP_BUMPplce.o" "ASPHALT_MARKUP_BUMP.uv";
connectAttr "ASPHALT_MARKUP_BUMPplce.ofs" "ASPHALT_MARKUP_BUMP.fs";
connectAttr "vrayDisplacement.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "REFERENCE_SPHERE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "ASPHALT_MARKUP_BUMPplce.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENTplce.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_HEIGHT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "ASPHALT_MARKUP_BUMP.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMP.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESS.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "ASPHALT_COMPOSITED_MATERIAL_SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_CC.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "ASPHALT_MARKUP_BUMPplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[6].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[7].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_AO_MAP.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[8].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[9].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_MTL.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_CC.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[14].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[15].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[16].dn"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[17].dn"
		;
connectAttr "ASPHALT_COMPOSITED_MATERIAL.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[18].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[19].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_AO_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[20].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_AO.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[21].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[22].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[23].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO_plce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[24].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[25].dn"
		;
connectAttr "ASPHALT_MARKUP_BUMP.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[26].dn"
		;
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[27].dn"
		;
connectAttr "ASPHALT_MARKUP_MTL.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[28].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIX.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[29].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[30].dn"
		;
connectAttr "ASPHALT_MARKUP_MTL_MIX.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[31].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[32].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[33].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[0].dn"
		;
connectAttr "ASPHALT_MARKUP_BUMPplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[1].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_HEIGHT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[2].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[3].dn"
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENTplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[4].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIX.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[5].dn"
		;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[6].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[7].dn"
		;
connectAttr "ASPHALT_MARKUP_BUMP.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[8].dn"
		;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[9].dn"
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENT.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[1].ni[10].dn"
		;
connectAttr "STUDIO_MATERIAL_SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[0].dn"
		;
connectAttr "STUDIO_MATERIAL.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[2].ni[1].dn"
		;
connectAttr "polyPlane2.out" "polyPlanarProj1.ip";
connectAttr "THE_ROADShape.wm" "polyPlanarProj1.mp";
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:renderLayerManager.rlmi[0]" "CRAFT_SCENE_REFERENCE_LIGHT:defaultRenderLayer.rlid"
		;
connectAttr ":defaultColorMgtGlobals.cme" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.ws"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_vrplace.ouv" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.uv"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_TEXT_plce.uv" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_vrplace.ouv"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT.wm" "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_vrplace.tm"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_vrplace.msg" "CRAFT_SCENE_REFERENCE_LIGHT:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_TEXT_plce.msg" "CRAFT_SCENE_REFERENCE_LIGHT:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.msg" "CRAFT_SCENE_REFERENCE_LIGHT:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHTShape.msg" "CRAFT_SCENE_REFERENCE_LIGHT:hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "PBR_ASPHALT_BASIS_MTL_SG.pa" ":renderPartition.st" -na;
connectAttr "PLANE_BASIS_MTL_SG.pa" ":renderPartition.st" -na;
connectAttr "ASPHALT_COMPOSITED_MATERIAL_SG.pa" ":renderPartition.st" -na;
connectAttr "ASPHALT_MARKUP_MTL_SG.pa" ":renderPartition.st" -na;
connectAttr "ASPHALT_PBR_DIRT_MTLSG.pa" ":renderPartition.st" -na;
connectAttr "STUDIO_MATERIAL_SG.pa" ":renderPartition.st" -na;
connectAttr "PBR_ASPHALT_BASIS_MTL.msg" ":defaultShaderList1.s" -na;
connectAttr "PLANE_BASIS_MTL.msg" ":defaultShaderList1.s" -na;
connectAttr "ASPHALT_COMPOSITED_MATERIAL.msg" ":defaultShaderList1.s" -na;
connectAttr "ASPHALT_MARKUP_MTL.msg" ":defaultShaderList1.s" -na;
connectAttr "ASPHALT_PBR_DIRT_MTL.msg" ":defaultShaderList1.s" -na;
connectAttr "STUDIO_MATERIAL.msg" ":defaultShaderList1.s" -na;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT_PLCE.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_PLCE.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "PBR_ASPHALT_BASIS_AO_PLCE.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "PBR_ASPHALT_BASIS_AO_MAP_PLCE.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO_CC.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS_PLCE.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP_PLCE.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ASPHALT_MARKUP_MTL_MIX_PLCE.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDOplce.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_CC.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO_plce.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap_plce.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESSplce.msg" ":defaultRenderUtilityList1.u" 
		-na;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMPplce.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIXplce.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ASPHALT_PBR_DIRT_HEIGHT_PLCE.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ASPHALT_BLENDED_DISPLACEMENTplce.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "TEXTURES_UV_REPEATS_CONSTANT.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "ASPHALT_MARKUP_BUMPplce.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_vrplace.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP_TEXT_plce.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:defaultRenderLayer.msg" ":defaultRenderingList1.r"
		 -na;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHTShape.ltd" ":lightList1.l"
		 -na;
connectAttr "PBR_ASPHALT_BASIS_HEIGHT.msg" ":defaultTextureList1.tx" -na;
connectAttr "PBR_ASPHALT_BASIS_ALBEDO.msg" ":defaultTextureList1.tx" -na;
connectAttr "PBR_ASPHALT_BASIS_AO.msg" ":defaultTextureList1.tx" -na;
connectAttr "PBR_ASPHALT_BASIS_AO_MAP.msg" ":defaultTextureList1.tx" -na;
connectAttr "PBR_ASPHALT_BASIS_ROUGHNESS.msg" ":defaultTextureList1.tx" -na;
connectAttr "PBR_ASPHALT_BASIS_NORMALBUMP.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_MARKUP_MTL_MIX.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AO.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_ALBEDO_AOmap.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_ROUGHNESS.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_NORMALBUMP.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_MTL_MIX.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_PBR_DIRT_HEIGHT.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_BLENDED_DISPLACEMENT.msg" ":defaultTextureList1.tx" -na;
connectAttr "ASPHALT_MARKUP_BUMP.msg" ":defaultTextureList1.tx" -na;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT_MAP.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "CRAFT_SCENE_REFERENCE_LIGHT:SCENE_REFERENCE_LIGHT.iog" ":defaultLightSet.dsm"
		 -na;
// End of MC_ASPHALT_MATERIAL_SCENE_V101.ma
