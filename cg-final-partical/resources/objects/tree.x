xof 0302txt 0064
// File created by CINEMA 4D

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 Int16 major;
 Int16 minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 Int16 truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

Header {
 1;
 0;
 1;
}



Mesh CINEMA4D_Mesh {
  254;
  // ___2
  -686.966;837.466;-258.793;,
  -597.024;638.478;-264.108;,
  -330.247;873.58;-51.752;,
  -409.049;771.394;389.782;,
  -851.306;806.781;463.893;,
  -736.802;553.453;457.127;,
  -1128.442;616.478;262.754;,
  -1034.029;639.309;-185.524;,
  -617.481;1030.518;153.78;,
  -1061.761;909.807;71.927;,
  -860.508;464.555;60.035;,
  -430.765;617.429;142.746;,
  // ___1
  799.167;957.265;-306.313;,
  799.167;590.981;-306.313;,
  1196.202;759.398;-151.687;,
  1170.479;734.781;337.873;,
  771.271;921.946;485.322;,
  771.271;576.584;485.322;,
  380.737;776.61;336.303;,
  396.404;785.022;-152.453;,
  1031.973;1033.24;95.481;,
  538.465;1054.732;95.219;,
  538.465;477.107;95.219;,
  1031.973;468.769;95.481;,
  // __1
  -304.647;1324.604;747.792;,
  14.03;1292.549;739.507;,
  112.578;1458.756;749.857;,
  -145.05;1579.218;746.58;,
  -396.62;1452.056;739.244;,
  -617.983;1418.987;598.216;,
  -433.601;1249.077;596.953;,
  166.695;1212.012;624.162;,
  360.136;1534.95;622.722;,
  -145.723;1703.943;617.752;,
  418.793;1250.324;476.614;,
  509.053;1418.281;474.672;,
  355.761;1668.99;478.517;,
  113.541;1772.915;483.291;,
  -383.481;1703.049;464.757;,
  -632.687;1530.068;472.198;,
  -792.716;1317.207;473.849;,
  -699.652;1206.518;473.257;,
  -282.084;1146.499;465.426;,
  5.33;1136.525;473.653;,
  -443.824;1102.58;252.974;,
  -690.254;1139.878;252.397;,
  162.878;1144.374;253.778;,
  420.211;1186.623;254.795;,
  613.208;1476.602;254.824;,
  513.883;1685.868;254.794;,
  14.008;1934.391;253.891;,
  -298.881;1904.404;253.496;,
  -779.912;1478.196;252.483;,
  -873.006;1426.008;252.138;,
  -292.417;1080.319;47.945;,
  14.121;1122.514;45.969;,
  525.469;1220.204;40.556;,
  625.328;1335.532;40.688;,
  430.362;1745.325;40.569;,
  162.889;1861.513;44.69;,
  -678.157;1593.544;49.213;,
  -435.381;1856.283;48.484;,
  -766.106;1175.871;49.337;,
  -858.766;1401.892;49.598;,
  111.655;1154.759;-178.316;,
  351.137;1226.103;-175.416;,
  -620.576;1131.138;-167.097;,
  -387.154;1087.914;-167.762;,
  -775.265;1402.515;-167.695;,
  -684.912;1516.748;-167.458;,
  -288.669;1773.313;-172.697;,
  5.584;1807.095;-174.905;,
  514.083;1389.722;-179.885;,
  418.085;1588.83;-177.126;,
  -141.883;1182.538;-308.953;,
  -620.383;1264.264;-299.73;,
  -442.288;1585.428;-305.808;,
  162.923;1645.368;-313.454;,
  349.479;1346.832;-309.256;,
  -301.756;1484.845;-444.21;,
  13.987;1533.336;-443.226;,
  112.516;1429.464;-451.56;,
  -140.932;1285.56;-433.701;,
  -398.684;1355.574;-443.272;,
  // __2
  0.0;-200.0;0.0;,
  -127.468;1185.112;0.0;,
  150.656;-200.0;0.0;,
  150.656;-200.0;0.0;,
  71.957;200.0;0.0;,
  71.957;200.0;0.0;,
  106.53;-200.0;125.819;,
  106.53;-200.0;125.819;,
  50.881;200.0;70.711;,
  50.881;200.0;70.711;,
  0.0;-200.0;177.934;,
  0.0;-200.0;177.934;,
  0.0;200.0;100.0;,
  0.0;200.0;100.0;,
  -106.53;-200.0;125.819;,
  -106.53;-200.0;125.819;,
  -50.881;200.0;70.711;,
  -50.881;200.0;70.711;,
  -150.656;-200.0;0.0;,
  -150.656;-200.0;0.0;,
  -71.957;200.0;0.0;,
  -71.957;200.0;0.0;,
  -106.53;-200.0;-125.819;,
  -189.045;-200.0;-232.924;,
  -50.881;200.0;-70.711;,
  -50.881;200.0;-70.711;,
  0.0;-200.0;-177.934;,
  0.0;-200.0;-306.797;,
  0.0;200.0;-100.0;,
  0.0;200.0;-100.0;,
  106.53;-200.0;-125.819;,
  106.53;-200.0;-125.819;,
  50.881;200.0;-70.711;,
  50.881;200.0;-70.711;,
  129.22;594.66;0.0;,
  108.311;585.572;70.711;,
  57.832;563.631;100.0;,
  7.354;541.69;70.711;,
  -13.555;532.602;0.0;,
  7.354;541.69;-70.711;,
  57.832;563.631;-100.0;,
  108.311;585.572;-70.711;,
  -16.187;795.588;0.0;,
  -28.026;794.133;70.711;,
  -56.608;790.621;100.0;,
  -85.191;787.109;70.711;,
  -97.03;785.655;0.0;,
  -85.191;787.109;-70.711;,
  -56.608;790.621;-100.0;,
  -28.026;794.133;-70.711;,
  -51.359;1077.479;0.0;,
  -59.099;1076.669;40.875;,
  -77.784;1074.714;57.806;,
  -96.468;1072.759;40.875;,
  -104.208;1071.95;0.0;,
  -96.468;1072.759;-40.875;,
  -77.784;1074.714;-57.806;,
  -59.099;1076.669;-40.875;,
  100.165;502.036;-70.711;,
  45.303;484.849;-100.0;,
  -9.559;467.662;-70.711;,
  -32.284;460.543;0.0;,
  -9.559;467.662;70.711;,
  45.303;484.849;100.0;,
  100.165;502.036;70.711;,
  122.889;509.155;0.0;,
  105.851;560.341;-70.711;,
  102.784;528.894;-70.711;,
  108.48;504.641;-44.837;,
  116.281;507.085;-20.564;,
  127.55;572.101;0.0;,
  124.851;535.653;0.0;,
  122.662;591.809;-22.18;,
  113.984;588.037;-51.526;,
  125.662;556.909;-76.935;,
  131.206;525.804;-76.747;,
  138.483;503.307;-49.71;,
  140.867;507.124;-24.495;,
  130.389;572.223;-3.776;,
  137.626;536.4;-3.404;,
  124.437;590.464;-26.929;,
  122.488;585.265;-57.259;,
  201.175;569.575;-85.478;,
  213.723;540.621;-83.887;,
  221.755;519.915;-55.659;,
  219.234;523.688;-30.451;,
  190.771;584.133;-12.753;,
  206.016;550.984;-10.635;,
  184.401;600.934;-36.865;,
  188.456;596.018;-67.033;,
  342.223;628.057;-78.822;,
  354.772;614.779;-77.231;,
  362.803;605.283;-49.003;,
  360.282;607.014;-23.795;,
  331.819;634.734;-6.096;,
  347.064;619.531;-3.979;,
  325.449;642.439;-30.208;,
  329.504;640.184;-60.376;,
  453.326;733.677;-73.615;,
  460.683;728.523;-72.024;,
  465.392;724.837;-43.796;,
  463.914;725.508;-18.588;,
  447.226;736.269;-0.89;,
  456.164;730.368;1.228;,
  443.491;739.26;-25.001;,
  445.869;738.385;-55.17;,
  -35.326;717.102;-100.0;,
  -66.305;709.191;-70.711;,
  -79.137;705.914;0.0;,
  -66.305;709.191;70.711;,
  -35.326;717.102;100.0;,
  -4.346;725.013;70.711;,
  8.486;728.29;0.0;,
  -4.346;725.013;-70.711;,
  -93.442;786.095;-21.428;,
  -89.001;786.641;-47.951;,
  -81.252;770.86;-70.711;,
  -74.433;742.725;-70.711;,
  -70.601;708.094;-47.035;,
  -75.567;706.826;-19.672;,
  -91.116;759.3;0.0;,
  -85.135;732.646;0.0;,
  -108.076;780.605;-29.944;,
  -105.132;778.473;-56.742;,
  -100.893;759.77;-78.857;,
  -97.926;730.553;-77.334;,
  -97.426;697.109;-51.527;,
  -100.933;698.705;-23.798;,
  -108.14;755.068;-6.829;,
  -105.801;727.5;-5.348;,
  -237.321;761.768;-52.388;,
  -239.139;755.781;-78.766;,
  -242.671;739.751;-98.815;,
  -246.086;720.889;-94.341;,
  -249.134;703.661;-65.268;,
  -247.952;709.731;-37.831;,
  -239.571;749.25;-26.791;,
  -243.331;731.698;-22.455;,
  -399.851;815.97;-54.391;,
  -400.591;805.665;-79.055;,
  -406.586;792.113;-96.656;,
  -415.869;783.959;-90.484;,
  -426.849;783.692;-61.046;,
  -426.754;794.616;-35.525;,
  -408.32;817.082;-28.751;,
  -417.489;809.786;-22.973;,
  -469.289;871.225;-79.954;,
  -470.028;866.266;-104.619;,
  -476.024;859.743;-122.219;,
  -485.306;855.819;-116.047;,
  -496.287;855.69;-86.609;,
  -496.191;860.948;-61.089;,
  -477.757;871.76;-54.315;,
  -486.926;868.249;-48.536;,
  -113.694;1187.876;0.0;,
  -117.728;1187.066;40.875;,
  -127.468;1185.112;57.806;,
  -137.207;1183.157;40.875;,
  -141.241;1182.347;0.0;,
  -137.207;1183.157;-40.875;,
  -127.468;1185.112;-57.806;,
  -117.728;1187.066;-40.875;,
  -67.112;-127.409;-70.711;,
  0.0;-127.409;-100.0;,
  67.112;-127.409;-70.711;,
  94.911;-127.409;0.0;,
  67.112;-127.409;70.711;,
  0.0;-127.409;100.0;,
  -67.112;-127.409;70.711;,
  -94.911;-127.409;0.0;;
  
  276;
  // ___2
  3;9,8,0;,
  3;8,2,0;,
  3;8,3,2;,
  3;8,4,3;,
  3;8,9,4;,
  3;4,9,6;,
  3;6,9,7;,
  3;9,0,7;,
  3;11,10,1;,
  3;2,11,1;,
  3;2,3,11;,
  3;3,5,11;,
  3;5,10,11;,
  3;5,6,10;,
  3;6,7,10;,
  3;7,1,10;,
  3;1,7,0;,
  3;2,1,0;,
  3;4,5,3;,
  3;4,6,5;,
  // ___1
  3;21,20,12;,
  3;20,14,12;,
  3;20,15,14;,
  3;20,16,15;,
  3;20,21,16;,
  3;16,21,18;,
  3;18,21,19;,
  3;21,12,19;,
  3;23,22,13;,
  3;14,23,13;,
  3;14,15,23;,
  3;15,17,23;,
  3;17,22,23;,
  3;17,18,22;,
  3;18,19,22;,
  3;19,13,22;,
  3;13,19,12;,
  3;14,13,12;,
  3;16,17,15;,
  3;16,18,17;,
  // __1
  3;82,80,81;,
  3;71,73,77;,
  3;78,56,65;,
  3;35,36,32;,
  3;43,34,31;,
  3;26,24,25;,
  3;29,53,40;,
  3;30,44,42;,
  3;63,66,62;,
  3;67,55,54;,
  3;70,60,61;,
  3;51,37,50;,
  4;55,46,43,42;,
  4;42,44,54,55;,
  4;43,31,25,24;,
  4;24,30,42,43;,
  4;57,48,35,34;,
  4;34,47,56,57;,
  4;35,32,26,25;,
  4;25,31,34,35;,
  4;24,28,29,40;,
  4;40,41,30,24;,
  4;27,33,38,39;,
  4;39,29,28,27;,
  4;38,51,61,60;,
  4;60,52,39,38;,
  4;49,58,59,50;,
  4;50,37,36,49;,
  4;36,37,33,27;,
  4;27,26,32,36;,
  4;50,59,71,70;,
  4;70,61,51,50;,
  4;71,77,80,79;,
  4;79,76,70,71;,
  4;49,48,57,72;,
  4;72,73,58,49;,
  4;73,72,78,81;,
  4;81,80,77,73;,
  4;69,68,63,53;,
  4;53,52,60,69;,
  4;41,40,53,63;,
  4;63,62,45,41;,
  4;54,44,45,62;,
  4;62,66,67,54;,
  4;68,69,76,79;,
  4;79,83,75,68;,
  4;67,66,75,83;,
  4;83,82,74,67;,
  4;74,82,81,78;,
  4;78,65,64,74;,
  4;46,55,64,65;,
  4;65,56,47,46;,
  4;80,82,83,79;,
  4;73,71,59,58;,
  4;56,78,72,57;,
  4;36,35,48,49;,
  4;34,43,46,47;,
  4;24,26,27,28;,
  4;53,29,39,52;,
  4;44,30,41,45;,
  4;66,63,68,75;,
  4;55,67,74,64;,
  4;60,70,76,69;,
  4;37,51,38,33;,
  // __2
  3;84,86,90;,
  4;87,249,250,91;,
  3;238,85,239;,
  3;84,90,94;,
  4;91,250,251,95;,
  3;239,85,240;,
  3;84,94,98;,
  4;95,251,252,99;,
  3;240,85,241;,
  3;84,98,102;,
  4;99,252,253,103;,
  3;241,85,242;,
  3;84,102,106;,
  4;103,253,246,107;,
  3;242,85,243;,
  3;84,106,110;,
  4;107,246,247,111;,
  3;243,85,244;,
  3;84,110,114;,
  4;111,247,248,115;,
  3;244,85,245;,
  3;84,114,86;,
  4;115,248,249,87;,
  3;245,85,238;,
  3;149,155,148;,
  4;148,119,120,147;,
  4;147,120,121,146;,
  4;146,121,122,145;,
  4;145,122,123,144;,
  4;144,123,124,143;,
  3;124,125,150;,
  3;142,151,152;,
  4;196,126,127,195;,
  4;195,127,128,194;,
  4;194,128,129,193;,
  4;205,193,129,204;,
  3;199,131,200;,
  4;190,191,201,132;,
  4;124,190,197,125;,
  3;196,118,156;,
  4;126,134,135,127;,
  4;127,135,136,128;,
  4;128,136,137,129;,
  4;129,137,138,130;,
  3;130,138,198;,
  4;131,139,140,132;,
  4;132,140,141,133;,
  4;133,141,134,126;,
  4;142,117,113,143;,
  4;143,113,109,144;,
  4;144,109,105,145;,
  4;145,105,101,146;,
  4;146,101,97,147;,
  4;147,97,93,148;,
  4;148,93,89,149;,
  3;89,152,153;,
  3;154,118,119;,
  4;155,154,119,148;,
  3;124,150,151;,
  4;143,124,151,142;,
  4;197,133,126,196;,
  4;157,197,196,156;,
  3;149,89,153;,
  4;142,152,89,117;,
  3;155,149,153;,
  3;156,118,154;,
  3;150,125,157;,
  4;188,186,187,185;,
  4;184,189,188,185;,
  4;182,189,184,183;,
  4;157,165,158,150;,
  4;150,158,159,151;,
  4;151,159,160,152;,
  4;152,160,161,153;,
  4;153,161,163,155;,
  4;155,163,162,154;,
  4;154,162,164,156;,
  4;156,164,165,157;,
  4;165,173,166,158;,
  4;158,166,167,159;,
  4;159,167,168,160;,
  4;160,168,169,161;,
  4;161,169,171,163;,
  4;163,171,170,162;,
  4;162,170,172,164;,
  4;164,172,173,165;,
  4;173,181,174,166;,
  4;166,174,175,167;,
  4;167,175,176,168;,
  4;168,176,177,169;,
  4;169,177,179,171;,
  4;171,179,178,170;,
  4;170,178,180,172;,
  4;172,180,181,173;,
  4;181,189,182,174;,
  4;174,182,183,175;,
  4;175,183,184,176;,
  4;176,184,185,177;,
  4;177,185,187,179;,
  4;179,187,186,178;,
  4;178,186,188,180;,
  4;180,188,189,181;,
  3;125,197,157;,
  4;190,124,123,191;,
  3;191,123,202;,
  4;192,122,121,193;,
  4;193,121,120,194;,
  4;194,120,119,195;,
  4;195,119,118,196;,
  4;190,132,133,197;,
  3;193,205,192;,
  3;129,130,204;,
  3;201,200,132;,
  3;200,131,132;,
  4;198,138,139,199;,
  3;139,131,199;,
  4;202,123,122,203;,
  3;122,192,203;,
  3;201,191,202;,
  3;203,192,205;,
  3;204,130,198;,
  4;236,230,235,237;,
  4;230,231,234,235;,
  4;231,232,233,234;,
  4;214,222,228,220;,
  4;198,206,212,204;,
  4;204,212,213,205;,
  4;205,213,211,203;,
  4;203,211,210,202;,
  4;202,210,209,201;,
  4;201,209,208,200;,
  4;200,208,207,199;,
  4;199,207,206,198;,
  4;206,214,220,212;,
  4;212,220,221,213;,
  4;213,221,219,211;,
  4;211,219,218,210;,
  4;210,218,217,209;,
  4;209,217,216,208;,
  4;208,216,215,207;,
  4;207,215,214,206;,
  4;220,228,229,221;,
  4;221,229,227,219;,
  4;219,227,226,218;,
  4;218,226,225,217;,
  4;217,225,224,216;,
  4;216,224,223,215;,
  4;215,223,222,214;,
  4;222,230,236,228;,
  4;228,236,237,229;,
  4;229,237,235,227;,
  4;227,235,234,226;,
  4;226,234,233,225;,
  4;225,233,232,224;,
  4;224,232,231,223;,
  4;223,231,230,222;,
  4;134,238,239,135;,
  4;135,239,240,136;,
  4;136,240,241,137;,
  4;137,241,242,138;,
  4;138,242,243,139;,
  4;139,243,244,140;,
  4;140,244,245,141;,
  4;141,245,238,134;,
  4;246,108,112,247;,
  4;247,112,116,248;,
  4;248,116,88,249;,
  4;249,88,92,250;,
  4;250,92,96,251;,
  4;251,96,100,252;,
  4;252,100,104,253;,
  4;253,104,108,246;;
  
  MeshNormals {
    254;
    // ___2
    -0.044;0.607;-0.793;,
    0.344;-0.556;-0.757;,
    0.878;0.3;-0.372;,
    0.704;0.146;0.695;,
    -0.28;0.47;0.837;,
    0.076;-0.719;0.691;,
    -0.849;-0.383;0.365;,
    -0.643;-0.286;-0.71;,
    0.11;0.987;0.119;,
    -0.665;0.741;-0.09;,
    -0.066;-0.992;-0.108;,
    0.652;-0.758;0.018;,
    // ___1
    0.022;0.625;-0.781;,
    -0.01;-0.592;-0.806;,
    0.87;0.0;-0.493;,
    0.83;-0.015;0.558;,
    0.02;0.587;0.809;,
    -0.023;-0.601;0.799;,
    -0.856;0.019;0.517;,
    -0.842;0.023;-0.539;,
    0.468;0.882;0.058;,
    -0.415;0.909;0.023;,
    -0.472;-0.881;-0.023;,
    0.429;-0.903;0.002;,
    // __1
    -0.189;-0.439;0.878;,
    0.272;-0.414;0.869;,
    0.209;0.037;0.977;,
    -0.088;0.529;0.844;,
    -0.368;0.131;0.921;,
    -0.637;0.375;0.673;,
    -0.207;-0.787;0.581;,
    0.269;-0.766;0.584;,
    0.588;0.256;0.767;,
    -0.099;0.683;0.724;,
    0.576;-0.723;0.381;,
    0.773;-0.005;0.635;,
    0.507;0.605;0.614;,
    0.108;0.761;0.639;,
    -0.473;0.745;0.471;,
    -0.551;0.667;0.501;,
    -0.706;-0.219;0.673;,
    -0.606;-0.66;0.444;,
    -0.057;-0.957;0.283;,
    0.089;-0.952;0.293;,
    -0.099;-0.966;0.238;,
    -0.414;-0.874;0.253;,
    0.168;-0.986;0.008;,
    0.356;-0.93;0.09;,
    0.959;0.184;0.214;,
    0.728;0.679;0.097;,
    0.187;0.975;0.119;,
    -0.233;0.9;0.369;,
    -0.591;0.739;0.324;,
    -0.852;0.465;0.24;,
    -0.033;-0.999;0.035;,
    0.147;-0.988;-0.042;,
    0.539;-0.802;-0.258;,
    0.911;-0.407;-0.069;,
    0.596;0.758;-0.264;,
    0.305;0.923;-0.234;,
    -0.628;0.776;-0.052;,
    -0.477;0.849;-0.226;,
    -0.606;-0.794;-0.039;,
    -0.939;-0.282;-0.198;,
    0.226;-0.916;-0.332;,
    0.314;-0.879;-0.36;,
    -0.563;-0.718;-0.41;,
    -0.031;-0.939;-0.343;,
    -0.774;0.285;-0.565;,
    -0.632;0.707;-0.316;,
    -0.258;0.833;-0.489;,
    0.162;0.817;-0.553;,
    0.827;0.136;-0.545;,
    0.551;0.569;-0.611;,
    0.162;-0.817;-0.553;,
    -0.652;-0.299;-0.697;,
    -0.452;0.632;-0.629;,
    0.309;0.663;-0.682;,
    0.516;-0.523;-0.678;,
    -0.272;0.482;-0.833;,
    0.115;0.293;-0.949;,
    0.358;-0.001;-0.934;,
    0.037;-0.427;-0.903;,
    -0.274;-0.322;-0.906;,
    // __2
    0.0;-1.0;0.0;,
    -0.197;0.98;0.0;,
    0.0;-1.0;0.0;,
    0.779;0.627;0.005;,
    0.998;0.06;0.0;,
    0.976;-0.16;-0.15;,
    0.0;-1.0;0.0;,
    0.552;0.659;0.511;,
    0.783;0.049;0.62;,
    0.777;-0.126;0.617;,
    0.0;-1.0;0.0;,
    0.005;0.719;0.695;,
    0.0;0.014;1.0;,
    0.0;-0.001;1.0;,
    0.0;-1.0;0.0;,
    -0.532;0.689;0.492;,
    -0.784;0.026;0.62;,
    -0.778;0.119;0.617;,
    0.0;-1.0;0.0;,
    -0.779;0.627;-0.005;,
    -0.998;0.06;0.0;,
    -0.988;0.152;0.0;,
    0.0;-1.0;0.0;,
    -0.479;0.814;-0.329;,
    -0.783;0.049;-0.62;,
    -0.778;0.121;-0.617;,
    0.0;-1.0;0.0;,
    0.003;0.946;-0.325;,
    0.0;0.014;-1.0;,
    0.0;-0.001;-1.0;,
    0.0;-1.0;0.0;,
    0.465;0.823;-0.327;,
    0.784;0.026;-0.62;,
    0.775;-0.127;-0.619;,
    0.951;0.31;0.001;,
    0.803;0.146;0.578;,
    -0.01;0.026;1.0;,
    -0.772;-0.063;0.632;,
    -0.991;-0.129;-0.039;,
    -0.822;-0.144;-0.551;,
    0.23;0.011;-0.973;,
    0.775;0.225;-0.591;,
    0.973;0.232;0.0;,
    0.854;0.223;0.47;,
    -0.009;0.085;0.996;,
    -0.901;-0.128;0.415;,
    -0.993;-0.121;0.005;,
    -0.878;-0.099;-0.468;,
    -0.304;-0.019;-0.952;,
    0.856;0.212;-0.471;,
    0.951;0.31;0.0;,
    0.863;0.309;0.4;,
    -0.016;0.106;0.994;,
    -0.898;-0.176;0.403;,
    -0.988;-0.149;-0.034;,
    -0.926;-0.128;-0.356;,
    -0.016;0.107;-0.994;,
    0.869;0.292;-0.4;,
    0.777;-0.11;-0.62;,
    -0.011;0.012;-1.0;,
    -0.785;0.159;-0.599;,
    -0.981;0.195;0.001;,
    -0.785;0.14;0.604;,
    -0.003;0.009;1.0;,
    0.829;-0.091;0.551;,
    0.993;-0.118;-0.002;,
    0.334;0.063;-0.94;,
    0.364;-0.267;-0.892;,
    0.717;-0.596;-0.36;,
    0.835;-0.549;0.025;,
    0.901;0.14;0.41;,
    0.831;-0.184;0.525;,
    0.74;0.663;-0.111;,
    0.602;0.668;-0.437;,
    -0.257;0.221;-0.941;,
    -0.145;-0.477;-0.867;,
    0.018;-0.97;-0.242;,
    0.134;-0.833;0.537;,
    0.229;0.482;0.845;,
    0.17;-0.246;0.954;,
    0.145;0.972;0.183;,
    -0.147;0.816;-0.559;,
    -0.119;0.298;-0.947;,
    0.144;-0.499;-0.854;,
    0.336;-0.921;-0.196;,
    0.337;-0.811;0.478;,
    -0.114;0.528;0.841;,
    0.147;-0.278;0.949;,
    -0.233;0.957;0.175;,
    -0.237;0.847;-0.475;,
    -0.17;0.388;-0.906;,
    0.411;-0.485;-0.772;,
    0.629;-0.769;-0.112;,
    0.604;-0.728;0.326;,
    -0.367;0.534;0.762;,
    0.24;-0.329;0.913;,
    -0.491;0.866;0.098;,
    -0.444;0.836;-0.322;,
    0.065;0.718;-0.693;,
    0.772;0.034;-0.635;,
    0.991;0.129;-0.041;,
    0.969;0.153;0.196;,
    -0.127;0.809;0.574;,
    0.591;0.187;0.785;,
    -0.055;0.997;0.05;,
    -0.026;0.99;-0.142;,
    0.072;0.05;-0.996;,
    -0.794;-0.281;-0.54;,
    -0.958;-0.286;0.032;,
    -0.84;-0.251;0.481;,
    -0.01;0.029;1.0;,
    0.743;0.383;0.549;,
    0.849;0.528;-0.034;,
    0.784;0.445;-0.432;,
    -0.955;0.295;-0.005;,
    -0.879;0.348;-0.326;,
    -0.571;0.039;-0.82;,
    -0.429;-0.295;-0.854;,
    -0.592;-0.713;-0.375;,
    -0.721;-0.689;0.071;,
    -0.912;-0.022;0.41;,
    -0.826;-0.295;0.48;,
    -0.356;0.914;0.193;,
    -0.182;0.889;-0.419;,
    0.069;0.364;-0.929;,
    0.21;-0.462;-0.862;,
    0.159;-0.95;-0.267;,
    -0.001;-0.838;0.546;,
    -0.359;0.477;0.802;,
    -0.198;-0.22;0.955;,
    0.07;0.997;-0.03;,
    0.09;0.873;-0.48;,
    0.044;0.255;-0.966;,
    -0.13;-0.695;-0.707;,
    -0.241;-0.97;-0.024;,
    -0.226;-0.773;0.593;,
    0.039;0.745;0.666;,
    -0.097;-0.099;0.99;,
    0.481;0.873;-0.08;,
    0.495;0.757;-0.427;,
    0.164;0.102;-0.981;,
    -0.418;-0.714;-0.562;,
    -0.567;-0.823;0.026;,
    -0.521;-0.663;0.537;,
    0.356;0.784;0.508;,
    -0.139;0.049;0.989;,
    0.104;0.99;-0.097;,
    0.142;0.946;-0.293;,
    -0.034;0.53;-0.848;,
    -0.747;-0.214;-0.629;,
    -0.974;0.141;-0.179;,
    -0.939;0.272;0.211;,
    0.141;0.942;0.304;,
    -0.445;0.588;0.676;,
    0.421;0.907;0.0;,
    0.392;0.901;0.185;,
    -0.182;0.883;0.433;,
    -0.835;0.497;0.235;,
    -0.868;0.497;0.0;,
    -0.825;0.516;-0.231;,
    -0.181;0.882;-0.436;,
    0.409;0.892;-0.19;,
    -0.701;0.481;-0.527;,
    0.002;0.624;-0.782;,
    0.699;0.479;-0.53;,
    0.933;0.36;0.003;,
    0.706;0.379;0.598;,
    0.003;0.416;0.909;,
    -0.704;0.388;0.595;,
    -0.933;0.36;-0.003;;
    
    276;
    // ___2
    3;9,8,0;,
    3;8,2,0;,
    3;8,3,2;,
    3;8,4,3;,
    3;8,9,4;,
    3;4,9,6;,
    3;6,9,7;,
    3;9,0,7;,
    3;11,10,1;,
    3;2,11,1;,
    3;2,3,11;,
    3;3,5,11;,
    3;5,10,11;,
    3;5,6,10;,
    3;6,7,10;,
    3;7,1,10;,
    3;1,7,0;,
    3;2,1,0;,
    3;4,5,3;,
    3;4,6,5;,
    // ___1
    3;21,20,12;,
    3;20,14,12;,
    3;20,15,14;,
    3;20,16,15;,
    3;20,21,16;,
    3;16,21,18;,
    3;18,21,19;,
    3;21,12,19;,
    3;23,22,13;,
    3;14,23,13;,
    3;14,15,23;,
    3;15,17,23;,
    3;17,22,23;,
    3;17,18,22;,
    3;18,19,22;,
    3;19,13,22;,
    3;13,19,12;,
    3;14,13,12;,
    3;16,17,15;,
    3;16,18,17;,
    // __1
    3;82,80,81;,
    3;71,73,77;,
    3;78,56,65;,
    3;35,36,32;,
    3;43,34,31;,
    3;26,24,25;,
    3;29,53,40;,
    3;30,44,42;,
    3;63,66,62;,
    3;67,55,54;,
    3;70,60,61;,
    3;51,37,50;,
    4;55,46,43,42;,
    4;42,44,54,55;,
    4;43,31,25,24;,
    4;24,30,42,43;,
    4;57,48,35,34;,
    4;34,47,56,57;,
    4;35,32,26,25;,
    4;25,31,34,35;,
    4;24,28,29,40;,
    4;40,41,30,24;,
    4;27,33,38,39;,
    4;39,29,28,27;,
    4;38,51,61,60;,
    4;60,52,39,38;,
    4;49,58,59,50;,
    4;50,37,36,49;,
    4;36,37,33,27;,
    4;27,26,32,36;,
    4;50,59,71,70;,
    4;70,61,51,50;,
    4;71,77,80,79;,
    4;79,76,70,71;,
    4;49,48,57,72;,
    4;72,73,58,49;,
    4;73,72,78,81;,
    4;81,80,77,73;,
    4;69,68,63,53;,
    4;53,52,60,69;,
    4;41,40,53,63;,
    4;63,62,45,41;,
    4;54,44,45,62;,
    4;62,66,67,54;,
    4;68,69,76,79;,
    4;79,83,75,68;,
    4;67,66,75,83;,
    4;83,82,74,67;,
    4;74,82,81,78;,
    4;78,65,64,74;,
    4;46,55,64,65;,
    4;65,56,47,46;,
    4;80,82,83,79;,
    4;73,71,59,58;,
    4;56,78,72,57;,
    4;36,35,48,49;,
    4;34,43,46,47;,
    4;24,26,27,28;,
    4;53,29,39,52;,
    4;44,30,41,45;,
    4;66,63,68,75;,
    4;55,67,74,64;,
    4;60,70,76,69;,
    4;37,51,38,33;,
    // __2
    3;84,86,90;,
    4;87,249,250,91;,
    3;238,85,239;,
    3;84,90,94;,
    4;91,250,251,95;,
    3;239,85,240;,
    3;84,94,98;,
    4;95,251,252,99;,
    3;240,85,241;,
    3;84,98,102;,
    4;99,252,253,103;,
    3;241,85,242;,
    3;84,102,106;,
    4;103,253,246,107;,
    3;242,85,243;,
    3;84,106,110;,
    4;107,246,247,111;,
    3;243,85,244;,
    3;84,110,114;,
    4;111,247,248,115;,
    3;244,85,245;,
    3;84,114,86;,
    4;115,248,249,87;,
    3;245,85,238;,
    3;149,155,148;,
    4;148,119,120,147;,
    4;147,120,121,146;,
    4;146,121,122,145;,
    4;145,122,123,144;,
    4;144,123,124,143;,
    3;124,125,150;,
    3;142,151,152;,
    4;196,126,127,195;,
    4;195,127,128,194;,
    4;194,128,129,193;,
    4;205,193,129,204;,
    3;199,131,200;,
    4;190,191,201,132;,
    4;124,190,197,125;,
    3;196,118,156;,
    4;126,134,135,127;,
    4;127,135,136,128;,
    4;128,136,137,129;,
    4;129,137,138,130;,
    3;130,138,198;,
    4;131,139,140,132;,
    4;132,140,141,133;,
    4;133,141,134,126;,
    4;142,117,113,143;,
    4;143,113,109,144;,
    4;144,109,105,145;,
    4;145,105,101,146;,
    4;146,101,97,147;,
    4;147,97,93,148;,
    4;148,93,89,149;,
    3;89,152,153;,
    3;154,118,119;,
    4;155,154,119,148;,
    3;124,150,151;,
    4;143,124,151,142;,
    4;197,133,126,196;,
    4;157,197,196,156;,
    3;149,89,153;,
    4;142,152,89,117;,
    3;155,149,153;,
    3;156,118,154;,
    3;150,125,157;,
    4;188,186,187,185;,
    4;184,189,188,185;,
    4;182,189,184,183;,
    4;157,165,158,150;,
    4;150,158,159,151;,
    4;151,159,160,152;,
    4;152,160,161,153;,
    4;153,161,163,155;,
    4;155,163,162,154;,
    4;154,162,164,156;,
    4;156,164,165,157;,
    4;165,173,166,158;,
    4;158,166,167,159;,
    4;159,167,168,160;,
    4;160,168,169,161;,
    4;161,169,171,163;,
    4;163,171,170,162;,
    4;162,170,172,164;,
    4;164,172,173,165;,
    4;173,181,174,166;,
    4;166,174,175,167;,
    4;167,175,176,168;,
    4;168,176,177,169;,
    4;169,177,179,171;,
    4;171,179,178,170;,
    4;170,178,180,172;,
    4;172,180,181,173;,
    4;181,189,182,174;,
    4;174,182,183,175;,
    4;175,183,184,176;,
    4;176,184,185,177;,
    4;177,185,187,179;,
    4;179,187,186,178;,
    4;178,186,188,180;,
    4;180,188,189,181;,
    3;125,197,157;,
    4;190,124,123,191;,
    3;191,123,202;,
    4;192,122,121,193;,
    4;193,121,120,194;,
    4;194,120,119,195;,
    4;195,119,118,196;,
    4;190,132,133,197;,
    3;193,205,192;,
    3;129,130,204;,
    3;201,200,132;,
    3;200,131,132;,
    4;198,138,139,199;,
    3;139,131,199;,
    4;202,123,122,203;,
    3;122,192,203;,
    3;201,191,202;,
    3;203,192,205;,
    3;204,130,198;,
    4;236,230,235,237;,
    4;230,231,234,235;,
    4;231,232,233,234;,
    4;214,222,228,220;,
    4;198,206,212,204;,
    4;204,212,213,205;,
    4;205,213,211,203;,
    4;203,211,210,202;,
    4;202,210,209,201;,
    4;201,209,208,200;,
    4;200,208,207,199;,
    4;199,207,206,198;,
    4;206,214,220,212;,
    4;212,220,221,213;,
    4;213,221,219,211;,
    4;211,219,218,210;,
    4;210,218,217,209;,
    4;209,217,216,208;,
    4;208,216,215,207;,
    4;207,215,214,206;,
    4;220,228,229,221;,
    4;221,229,227,219;,
    4;219,227,226,218;,
    4;218,226,225,217;,
    4;217,225,224,216;,
    4;216,224,223,215;,
    4;215,223,222,214;,
    4;222,230,236,228;,
    4;228,236,237,229;,
    4;229,237,235,227;,
    4;227,235,234,226;,
    4;226,234,233,225;,
    4;225,233,232,224;,
    4;224,232,231,223;,
    4;223,231,230,222;,
    4;134,238,239,135;,
    4;135,239,240,136;,
    4;136,240,241,137;,
    4;137,241,242,138;,
    4;138,242,243,139;,
    4;139,243,244,140;,
    4;140,244,245,141;,
    4;141,245,238,134;,
    4;246,108,112,247;,
    4;247,112,116,248;,
    4;248,116,88,249;,
    4;249,88,92,250;,
    4;250,92,96,251;,
    4;251,96,100,252;,
    4;252,100,104,253;,
    4;253,104,108,246;;
    
  }
  MeshTextureCoords {
    254;
    // ___2
    0.5;1.0;,
    1.0;0.0;,
    0.0;0.0;,
    0.5;1.0;,
    0.0;0.0;,
    0.5;1.0;,
    1.0;0.0;,
    1.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.5;1.0;,
    0.5;1.0;,
    // ___1
    0.5;1.0;,
    1.0;0.0;,
    0.0;0.0;,
    0.5;1.0;,
    0.0;0.0;,
    0.5;1.0;,
    1.0;0.0;,
    1.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.5;1.0;,
    0.5;1.0;,
    // __1
    0.0;0.3;,
    1.0;0.5;,
    1.0;0.3;,
    0.8;1.0;,
    0.2;1.0;,
    1.0;0.3;,
    1.0;0.3;,
    0.7;1.0;,
    0.3;1.0;,
    0.2;1.0;,
    0.0;0.3;,
    1.0;0.3;,
    0.0;0.3;,
    0.0;0.3;,
    0.8;1.0;,
    0.8;1.0;,
    0.3;0.0;,
    0.8;1.0;,
    0.3;1.0;,
    1.0;0.3;,
    0.0;0.3;,
    0.2;1.0;,
    0.8;1.0;,
    0.2;1.0;,
    0.8;1.0;,
    0.2;1.0;,
    0.0;0.5;,
    1.0;0.3;,
    0.2;1.0;,
    0.0;0.3;,
    0.0;0.5;,
    0.0;0.3;,
    0.0;0.3;,
    0.2;1.0;,
    0.2;1.0;,
    0.8;1.0;,
    0.0;0.3;,
    0.7;1.0;,
    1.0;0.5;,
    1.0;0.3;,
    0.2;1.0;,
    1.0;0.5;,
    0.0;0.3;,
    1.0;0.3;,
    0.8;1.0;,
    0.2;1.0;,
    1.0;0.3;,
    1.0;0.3;,
    0.8;1.0;,
    0.0;0.3;,
    0.8;1.0;,
    0.2;1.0;,
    0.8;1.0;,
    0.3;1.0;,
    1.0;0.3;,
    0.2;1.0;,
    0.0;0.3;,
    0.7;0.0;,
    1.0;0.3;,
    0.8;1.0;,
    // __2
    0.5;0.5;,
    0.5;0.5;,
    0.0;0.5;,
    1.0;1.0;,
    0.0;0.0;,
    1.0;0.5;,
    0.146;0.146;,
    0.125;1.0;,
    0.125;0.0;,
    0.854;0.146;,
    0.5;0.0;,
    0.25;1.0;,
    0.25;0.0;,
    0.5;0.0;,
    0.854;0.146;,
    0.375;1.0;,
    0.375;0.0;,
    0.146;0.146;,
    1.0;0.5;,
    0.5;1.0;,
    0.5;0.0;,
    0.0;0.5;,
    0.854;0.854;,
    0.625;1.0;,
    0.625;0.0;,
    0.146;0.854;,
    0.5;1.0;,
    0.75;1.0;,
    0.75;0.0;,
    0.5;1.0;,
    0.146;0.854;,
    0.875;1.0;,
    0.875;0.0;,
    0.854;0.854;,
    1.0;0.5;,
    0.854;0.146;,
    0.5;0.0;,
    0.146;0.146;,
    0.0;0.5;,
    0.146;0.854;,
    0.5;1.0;,
    0.854;0.854;,
    1.0;0.5;,
    0.854;0.146;,
    0.5;0.0;,
    0.146;0.146;,
    0.0;0.5;,
    0.146;0.854;,
    0.5;1.0;,
    0.854;0.854;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.854;0.854;,
    0.5;1.0;,
    0.146;0.854;,
    0.0;0.5;,
    0.146;0.146;,
    0.5;0.0;,
    0.854;0.146;,
    1.0;0.5;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.893;0.758;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;1.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;1.0;,
    0.5;1.0;,
    0.146;0.854;,
    0.0;0.5;,
    0.146;0.146;,
    0.5;0.0;,
    0.854;0.146;,
    1.0;0.5;,
    0.854;0.854;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;1.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    0.0;0.0;,
    1.0;1.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;1.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    1.0;0.0;,
    0.625;0.819;,
    0.75;0.819;,
    0.875;0.819;,
    0.0;0.819;,
    0.125;0.819;,
    0.25;0.819;,
    0.375;0.819;,
    0.5;0.819;;
  }
  MeshMaterialList {
    3;
    276;
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    2,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1;
    
    Material C4DMAT_NONE {
      1.0;1.0;1.0;1.0;;
      1.0;
      0.0;0.0;0.0;;
      0.0;0.0;0.0;;
    }
    Material C4DMAT____1 {
      0.55;0.366;0.181;1.0;;
      1.0;
      0.1;0.1;0.1;;
      0.0;0.0;0.0;;
    }
    
    Material C4DMAT___ {
      0.368;0.92;0.451;1.0;;
      1.0;
      0.1;0.1;0.1;;
      0.0;0.0;0.0;;
    }
    
    {C4DMAT___}
  }
}