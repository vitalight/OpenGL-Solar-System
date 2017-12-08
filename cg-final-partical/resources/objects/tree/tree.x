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
  // ___21
  -343.483;537.221;-129.397;,
  -298.512;437.727;-132.054;,
  -165.124;555.278;-25.876;,
  -204.525;504.185;194.891;,
  -425.653;521.879;231.947;,
  -368.401;395.215;228.563;,
  -564.221;426.727;131.377;,
  -517.015;438.143;-92.762;,
  -308.74;633.747;76.89;,
  -530.881;573.391;35.964;,
  -430.254;350.765;30.017;,
  -215.382;427.202;71.373;,
  // ___12
  399.584;597.12;-153.156;,
  399.584;413.978;-153.156;,
  598.101;498.187;-75.843;,
  585.24;485.879;168.936;,
  385.635;579.461;242.661;,
  385.635;406.78;242.661;,
  190.368;506.793;168.151;,
  198.202;510.999;-76.226;,
  515.987;635.108;47.74;,
  269.232;645.854;47.609;,
  269.232;357.041;47.609;,
  515.987;352.873;47.74;,
  // __3
  -152.324;780.79;373.896;,
  7.015;764.763;369.753;,
  56.289;847.866;374.928;,
  -72.525;908.097;373.29;,
  -198.31;844.516;369.622;,
  -308.992;827.981;299.108;,
  -216.801;743.027;298.476;,
  83.348;724.494;312.081;,
  180.068;885.963;311.361;,
  -72.862;970.46;308.876;,
  209.397;743.65;238.307;,
  254.527;827.629;237.336;,
  177.881;952.983;239.258;,
  56.77;1004.946;241.646;,
  -191.741;970.013;232.378;,
  -316.344;883.522;236.099;,
  -396.358;777.091;236.924;,
  -349.826;721.747;236.628;,
  -141.042;691.738;232.713;,
  2.665;686.75;236.826;,
  -221.912;669.778;126.487;,
  -345.127;688.427;126.198;,
  81.439;690.675;126.889;,
  210.106;711.8;127.398;,
  306.604;856.789;127.412;,
  256.942;961.422;127.397;,
  7.004;1085.684;126.945;,
  -149.441;1070.69;126.748;,
  -389.956;857.586;126.242;,
  -436.503;831.492;126.069;,
  -146.208;658.648;23.972;,
  7.06;679.745;22.985;,
  262.734;728.59;20.278;,
  312.664;786.254;20.344;,
  215.181;991.15;20.285;,
  81.445;1049.245;22.345;,
  -339.079;915.26;24.607;,
  -217.69;1046.629;24.242;,
  -383.053;706.424;24.669;,
  -429.383;819.434;24.799;,
  55.828;695.868;-89.158;,
  175.569;731.539;-87.708;,
  -310.288;684.057;-83.549;,
  -193.577;662.445;-83.881;,
  -387.633;819.745;-83.847;,
  -342.456;876.862;-83.729;,
  -144.335;1005.144;-86.349;,
  2.792;1022.036;-87.452;,
  257.041;813.349;-89.942;,
  209.042;912.903;-88.563;,
  -70.942;709.757;-154.477;,
  -310.192;750.62;-149.865;,
  -221.144;911.202;-152.904;,
  81.462;941.172;-156.727;,
  174.74;791.904;-154.628;,
  -150.878;860.911;-222.105;,
  6.993;885.156;-221.613;,
  56.258;833.22;-225.78;,
  -70.466;761.268;-216.85;,
  -199.342;796.275;-221.636;,
  // __4
  0.0;18.488;0.0;,
  -63.734;711.044;0.0;,
  75.328;18.488;0.0;,
  75.328;18.488;0.0;,
  35.979;218.488;0.0;,
  35.979;218.488;0.0;,
  53.265;18.488;62.909;,
  53.265;18.488;62.909;,
  25.441;218.488;35.355;,
  25.441;218.488;35.355;,
  0.0;18.488;88.967;,
  0.0;18.488;88.967;,
  0.0;218.488;50.0;,
  0.0;218.488;50.0;,
  -53.265;18.488;62.909;,
  -53.265;18.488;62.909;,
  -25.441;218.488;35.355;,
  -25.441;218.488;35.355;,
  -75.328;18.488;0.0;,
  -75.328;18.488;0.0;,
  -35.979;218.488;0.0;,
  -35.979;218.488;0.0;,
  -53.265;18.488;-62.909;,
  -94.523;18.488;-116.462;,
  -25.441;218.488;-35.355;,
  -25.441;218.488;-35.355;,
  0.0;18.488;-88.967;,
  0.0;18.488;-153.398;,
  0.0;218.488;-50.0;,
  0.0;218.488;-50.0;,
  53.265;18.488;-62.909;,
  53.265;18.488;-62.909;,
  25.441;218.488;-35.355;,
  25.441;218.488;-35.355;,
  64.61;415.818;0.0;,
  54.156;411.274;35.355;,
  28.916;400.304;50.0;,
  3.677;389.333;35.355;,
  -6.778;384.789;0.0;,
  3.677;389.333;-35.355;,
  28.916;400.304;-50.0;,
  54.156;411.274;-35.355;,
  -8.093;516.282;0.0;,
  -14.013;515.555;35.355;,
  -28.304;513.799;50.0;,
  -42.595;512.043;35.355;,
  -48.515;511.315;0.0;,
  -42.595;512.043;-35.355;,
  -28.304;513.799;-50.0;,
  -14.013;515.555;-35.355;,
  -25.68;657.227;0.0;,
  -29.549;656.823;20.438;,
  -38.892;655.845;28.903;,
  -48.234;654.868;20.438;,
  -52.104;654.463;0.0;,
  -48.234;654.868;-20.438;,
  -38.892;655.845;-28.903;,
  -29.549;656.823;-20.438;,
  50.082;369.506;-35.355;,
  22.651;360.913;-50.0;,
  -4.78;352.319;-35.355;,
  -16.142;348.76;0.0;,
  -4.78;352.319;35.355;,
  22.651;360.913;50.0;,
  50.082;369.506;35.355;,
  61.445;373.066;0.0;,
  52.925;398.659;-35.355;,
  51.392;382.935;-35.355;,
  54.24;370.809;-22.419;,
  58.14;372.031;-10.282;,
  63.775;404.539;0.0;,
  62.426;386.314;0.0;,
  61.331;414.393;-11.09;,
  56.992;412.507;-25.763;,
  62.831;396.943;-38.468;,
  65.603;381.39;-38.374;,
  69.241;370.142;-24.855;,
  70.433;372.05;-12.248;,
  65.195;404.6;-1.888;,
  68.813;386.688;-1.702;,
  62.218;413.72;-13.464;,
  61.244;411.12;-28.629;,
  100.587;403.275;-42.739;,
  106.862;388.799;-41.944;,
  110.877;378.446;-27.83;,
  109.617;380.332;-15.226;,
  95.386;410.555;-6.377;,
  103.008;393.98;-5.318;,
  92.2;418.955;-18.432;,
  94.228;416.497;-33.517;,
  171.111;432.517;-39.411;,
  177.386;425.878;-38.615;,
  181.401;421.13;-24.501;,
  180.141;421.995;-11.897;,
  165.91;435.855;-3.048;,
  173.532;428.254;-1.989;,
  162.724;439.707;-15.104;,
  164.752;438.58;-30.188;,
  226.663;485.327;-36.808;,
  230.342;482.749;-36.012;,
  232.696;480.906;-21.898;,
  231.957;481.242;-9.294;,
  223.613;486.623;-0.445;,
  228.082;483.672;0.614;,
  221.746;488.118;-12.501;,
  222.934;487.68;-27.585;,
  -17.663;477.039;-50.0;,
  -33.152;473.084;-35.355;,
  -39.568;471.445;0.0;,
  -33.152;473.084;35.355;,
  -17.663;477.039;50.0;,
  -2.173;480.995;35.355;,
  4.243;482.633;0.0;,
  -2.173;480.995;-35.355;,
  -46.721;511.536;-10.714;,
  -44.501;511.809;-23.976;,
  -40.626;503.918;-35.355;,
  -37.216;489.851;-35.355;,
  -35.301;472.535;-23.517;,
  -37.783;471.901;-9.836;,
  -45.558;498.138;0.0;,
  -42.568;484.811;0.0;,
  -54.038;508.79;-14.972;,
  -52.566;507.725;-28.371;,
  -50.446;498.373;-39.429;,
  -48.963;483.764;-38.667;,
  -48.713;467.043;-25.763;,
  -50.467;467.84;-11.899;,
  -54.07;496.022;-3.415;,
  -52.901;482.238;-2.674;,
  -118.661;499.372;-26.194;,
  -119.57;496.379;-39.383;,
  -121.336;488.363;-49.408;,
  -123.043;478.933;-47.17;,
  -124.567;470.319;-32.634;,
  -123.976;473.354;-18.915;,
  -119.785;493.113;-13.396;,
  -121.666;484.337;-11.227;,
  -199.926;526.473;-27.195;,
  -200.295;521.321;-39.528;,
  -203.293;514.545;-48.328;,
  -207.934;510.468;-45.242;,
  -213.425;510.334;-30.523;,
  -213.377;515.796;-17.763;,
  -204.16;527.029;-14.376;,
  -208.745;523.381;-11.487;,
  -234.644;554.101;-39.977;,
  -235.014;551.621;-52.309;,
  -238.012;548.36;-61.11;,
  -242.653;546.397;-58.024;,
  -248.143;546.333;-43.305;,
  -248.096;548.962;-30.544;,
  -238.879;554.368;-27.157;,
  -243.463;552.613;-24.268;,
  -56.847;712.426;0.0;,
  -58.864;712.021;20.438;,
  -63.734;711.044;28.903;,
  -68.604;710.067;20.438;,
  -70.621;709.662;0.0;,
  -68.604;710.067;-20.438;,
  -63.734;711.044;-28.903;,
  -58.864;712.021;-20.438;,
  -33.556;54.783;-35.355;,
  0.0;54.783;-50.0;,
  33.556;54.783;-35.355;,
  47.455;54.783;0.0;,
  33.556;54.783;35.355;,
  0.0;54.783;50.0;,
  -33.556;54.783;35.355;,
  -47.455;54.783;0.0;;
  
  408;
  // ___21
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
  // ___12
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
  // __3
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
  // __4
  3;84,86,90;,
  3;87,249,250;,
  3;238,85,239;,
  3;84,90,94;,
  3;91,250,251;,
  3;239,85,240;,
  3;84,94,98;,
  3;95,251,252;,
  3;240,85,241;,
  3;84,98,102;,
  3;99,252,253;,
  3;241,85,242;,
  3;84,102,106;,
  3;103,253,246;,
  3;242,85,243;,
  3;84,106,110;,
  3;107,246,247;,
  3;243,85,244;,
  3;84,110,114;,
  3;111,247,248;,
  3;244,85,245;,
  3;84,114,86;,
  3;115,248,249;,
  3;245,85,238;,
  3;149,155,148;,
  3;148,119,120;,
  3;147,120,121;,
  3;146,121,122;,
  3;145,122,123;,
  3;144,123,124;,
  3;124,125,150;,
  3;142,151,152;,
  3;196,126,127;,
  3;195,127,128;,
  3;194,128,129;,
  3;205,193,129;,
  3;199,131,200;,
  3;191,201,190;,
  3;124,190,197;,
  3;157,197,196;,
  3;126,134,135;,
  3;127,135,136;,
  3;128,136,137;,
  3;129,137,138;,
  3;130,138,198;,
  3;131,139,140;,
  3;132,140,141;,
  3;133,141,134;,
  3;142,117,113;,
  3;143,113,109;,
  3;144,109,105;,
  3;145,105,101;,
  3;146,101,97;,
  3;147,97,93;,
  3;148,93,89;,
  3;89,152,153;,
  3;154,118,119;,
  3;155,154,119;,
  3;124,150,151;,
  3;143,124,151;,
  3;197,133,126;,
  3;196,118,156;,
  3;149,89,153;,
  3;89,117,142;,
  3;155,149,153;,
  3;156,118,154;,
  3;150,125,157;,
  3;189,184,183;,
  3;184,189,188;,
  3;185,188,186;,
  3;157,165,158;,
  3;150,158,159;,
  3;151,159,160;,
  3;152,160,161;,
  3;153,161,163;,
  3;155,163,162;,
  3;154,162,164;,
  3;156,164,165;,
  3;165,173,166;,
  3;158,166,167;,
  3;159,167,168;,
  3;160,168,169;,
  3;161,169,171;,
  3;163,171,170;,
  3;162,170,172;,
  3;164,172,173;,
  3;173,181,174;,
  3;166,174,175;,
  3;167,175,176;,
  3;168,176,177;,
  3;169,177,179;,
  3;171,179,178;,
  3;170,178,180;,
  3;172,180,181;,
  3;181,189,182;,
  3;174,182,183;,
  3;175,183,184;,
  3;176,184,185;,
  3;177,185,187;,
  3;179,187,186;,
  3;178,186,188;,
  3;180,188,189;,
  3;125,197,157;,
  3;190,124,123;,
  3;191,123,202;,
  3;192,122,121;,
  3;193,121,120;,
  3;194,120,119;,
  3;195,119,118;,
  3;190,132,133;,
  3;129,130,204;,
  3;193,205,192;,
  3;132,190,201;,
  3;200,131,132;,
  3;198,138,139;,
  3;139,131,199;,
  3;202,123,122;,
  3;122,192,203;,
  3;201,191,202;,
  3;203,192,205;,
  3;204,130,198;,
  3;231,232,233;,
  3;235,236,230;,
  3;234,230,231;,
  3;214,222,228;,
  3;198,206,212;,
  3;204,212,213;,
  3;205,213,211;,
  3;203,211,210;,
  3;202,210,209;,
  3;201,209,208;,
  3;200,208,207;,
  3;199,207,206;,
  3;206,214,220;,
  3;212,220,221;,
  3;213,221,219;,
  3;211,219,218;,
  3;210,218,217;,
  3;209,217,216;,
  3;208,216,215;,
  3;207,215,214;,
  3;220,228,229;,
  3;221,229,227;,
  3;219,227,226;,
  3;218,226,225;,
  3;217,225,224;,
  3;216,224,223;,
  3;215,223,222;,
  3;222,230,236;,
  3;228,236,237;,
  3;229,237,235;,
  3;227,235,234;,
  3;226,234,233;,
  3;225,233,232;,
  3;224,232,231;,
  3;223,231,230;,
  3;134,238,239;,
  3;135,239,240;,
  3;136,240,241;,
  3;137,241,242;,
  3;138,242,243;,
  3;139,243,244;,
  3;140,244,245;,
  3;141,245,238;,
  3;246,108,112;,
  3;247,112,116;,
  3;248,116,88;,
  3;249,88,92;,
  3;250,92,96;,
  3;251,96,100;,
  3;252,100,104;,
  3;253,104,108;,
  3;235,237,236;,
  3;87,250,91;,
  3;91,251,95;,
  3;95,252,99;,
  3;99,253,103;,
  3;103,246,107;,
  3;107,247,111;,
  3;111,248,115;,
  3;115,249,87;,
  3;148,120,147;,
  3;147,121,146;,
  3;146,122,145;,
  3;145,123,144;,
  3;144,124,143;,
  3;196,127,195;,
  3;195,128,194;,
  3;194,129,193;,
  3;205,129,204;,
  3;124,197,125;,
  3;157,196,156;,
  3;126,135,127;,
  3;127,136,128;,
  3;128,137,129;,
  3;129,138,130;,
  3;131,140,132;,
  3;132,141,133;,
  3;133,134,126;,
  3;142,113,143;,
  3;143,109,144;,
  3;144,105,145;,
  3;145,101,146;,
  3;146,97,147;,
  3;147,93,148;,
  3;148,89,149;,
  3;155,119,148;,
  3;143,151,142;,
  3;197,126,196;,
  3;89,142,152;,
  3;189,183,182;,
  3;184,188,185;,
  3;185,186,187;,
  3;157,158,150;,
  3;150,159,151;,
  3;151,160,152;,
  3;152,161,153;,
  3;153,163,155;,
  3;155,162,154;,
  3;154,164,156;,
  3;156,165,157;,
  3;165,166,158;,
  3;158,167,159;,
  3;159,168,160;,
  3;160,169,161;,
  3;161,171,163;,
  3;163,170,162;,
  3;162,172,164;,
  3;164,173,165;,
  3;173,174,166;,
  3;166,175,167;,
  3;167,176,168;,
  3;168,177,169;,
  3;169,179,171;,
  3;171,178,170;,
  3;170,180,172;,
  3;172,181,173;,
  3;181,182,174;,
  3;174,183,175;,
  3;175,184,176;,
  3;176,185,177;,
  3;177,187,179;,
  3;179,186,178;,
  3;178,188,180;,
  3;180,189,181;,
  3;190,123,191;,
  3;192,121,193;,
  3;193,120,194;,
  3;194,119,195;,
  3;195,118,196;,
  3;190,133,197;,
  3;132,201,200;,
  3;198,139,199;,
  3;202,122,203;,
  3;235,230,234;,
  3;234,231,233;,
  3;214,228,220;,
  3;198,212,204;,
  3;204,213,205;,
  3;205,211,203;,
  3;203,210,202;,
  3;202,209,201;,
  3;201,208,200;,
  3;200,207,199;,
  3;199,206,198;,
  3;206,220,212;,
  3;212,221,213;,
  3;213,219,211;,
  3;211,218,210;,
  3;210,217,209;,
  3;209,216,208;,
  3;208,215,207;,
  3;207,214,206;,
  3;220,229,221;,
  3;221,227,219;,
  3;219,226,218;,
  3;218,225,217;,
  3;217,224,216;,
  3;216,223,215;,
  3;215,222,214;,
  3;222,236,228;,
  3;228,237,229;,
  3;229,235,227;,
  3;227,234,226;,
  3;226,233,225;,
  3;225,232,224;,
  3;224,231,223;,
  3;223,230,222;,
  3;134,239,135;,
  3;135,240,136;,
  3;136,241,137;,
  3;137,242,138;,
  3;138,243,139;,
  3;139,244,140;,
  3;140,245,141;,
  3;141,238,134;,
  3;246,112,247;,
  3;247,116,248;,
  3;248,88,249;,
  3;249,92,250;,
  3;250,96,251;,
  3;251,100,252;,
  3;252,104,253;,
  3;253,108,246;;
  
  MeshNormals {
    254;
    // ___21
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
    // ___12
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
    // __3
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
    // __4
    0.0;-1.0;0.0;,
    -0.197;0.98;0.0;,
    0.0;-1.0;0.0;,
    0.784;0.613;0.101;,
    0.99;0.063;-0.127;,
    0.982;-0.161;-0.1;,
    0.0;-1.0;0.0;,
    0.473;0.687;0.552;,
    0.843;0.049;0.536;,
    0.688;-0.112;0.717;,
    0.0;-1.0;0.0;,
    -0.102;0.723;0.684;,
    0.149;0.009;0.989;,
    -0.185;0.029;0.982;,
    0.0;-1.0;0.0;,
    -0.631;0.652;0.422;,
    -0.668;0.024;0.744;,
    -0.85;0.131;0.51;,
    0.0;-1.0;0.0;,
    -0.735;0.678;0.024;,
    -0.99;0.063;0.127;,
    -0.984;0.15;-0.1;,
    0.0;-1.0;0.0;,
    -0.304;0.933;-0.191;,
    -0.843;0.049;-0.536;,
    -0.688;0.107;-0.718;,
    0.0;-1.0;0.0;,
    0.239;0.897;-0.371;,
    -0.149;0.009;-0.989;,
    0.185;-0.03;-0.982;,
    0.0;-1.0;0.0;,
    0.719;0.619;-0.315;,
    0.668;0.024;-0.744;,
    0.777;-0.127;-0.617;,
    0.918;0.394;0.038;,
    0.808;0.16;0.567;,
    -0.027;-0.068;0.997;,
    -0.779;-0.095;0.62;,
    -0.994;-0.108;-0.013;,
    -0.828;-0.111;-0.549;,
    0.157;0.064;-0.986;,
    0.731;0.214;-0.648;,
    0.973;0.233;0.001;,
    0.855;0.232;0.464;,
    -0.012;0.112;0.994;,
    -0.909;-0.134;0.393;,
    -0.992;-0.123;0.0;,
    -0.851;-0.068;-0.52;,
    -0.146;0.006;-0.989;,
    0.863;0.2;-0.465;,
    0.95;0.311;-0.012;,
    0.857;0.273;0.437;,
    -0.03;0.014;0.999;,
    -0.871;-0.144;0.47;,
    -0.988;-0.156;-0.014;,
    -0.905;-0.142;-0.402;,
    0.01;0.158;-0.987;,
    0.832;0.305;-0.464;,
    0.774;-0.109;-0.624;,
    -0.001;0.005;-1.0;,
    -0.778;0.14;-0.613;,
    -0.98;0.197;0.006;,
    -0.774;0.157;0.614;,
    -0.007;0.007;1.0;,
    0.811;-0.105;0.575;,
    0.993;-0.118;0.0;,
    0.272;0.073;-0.96;,
    0.33;-0.308;-0.892;,
    0.624;-0.723;-0.297;,
    0.769;-0.611;0.187;,
    0.946;0.166;0.28;,
    0.86;-0.154;0.486;,
    0.705;0.683;-0.194;,
    0.515;0.694;-0.503;,
    -0.209;0.259;-0.943;,
    -0.114;-0.444;-0.889;,
    0.028;-0.962;-0.271;,
    0.132;-0.845;0.518;,
    0.321;0.464;0.826;,
    0.186;-0.273;0.944;,
    0.247;0.958;0.146;,
    -0.093;0.828;-0.553;,
    -0.092;0.241;-0.966;,
    0.161;-0.458;-0.875;,
    0.34;-0.903;-0.263;,
    0.299;-0.809;0.506;,
    -0.094;0.499;0.862;,
    0.094;-0.245;0.965;,
    -0.204;0.949;0.241;,
    -0.224;0.829;-0.512;,
    -0.103;0.296;-0.95;,
    0.417;-0.434;-0.798;,
    0.635;-0.747;-0.197;,
    0.575;-0.727;0.376;,
    -0.363;0.494;0.79;,
    0.139;-0.274;0.952;,
    -0.483;0.857;0.182;,
    -0.432;0.817;-0.382;,
    -0.121;0.685;-0.719;,
    0.67;0.272;-0.691;,
    0.981;0.148;-0.127;,
    0.976;0.148;0.161;,
    0.06;0.758;0.65;,
    0.602;-0.075;0.795;,
    -0.044;0.992;0.116;,
    -0.03;0.992;-0.121;,
    -0.082;-0.018;-0.996;,
    -0.828;-0.28;-0.485;,
    -0.949;-0.31;0.063;,
    -0.808;-0.279;0.519;,
    -0.074;0.036;0.997;,
    0.757;0.432;0.49;,
    0.845;0.531;-0.063;,
    0.764;0.427;-0.484;,
    -0.942;0.316;0.111;,
    -0.813;0.517;-0.268;,
    -0.499;0.236;-0.834;,
    -0.347;-0.212;-0.914;,
    -0.521;-0.698;-0.492;,
    -0.521;-0.849;0.093;,
    -0.815;-0.029;0.579;,
    -0.751;-0.379;0.541;,
    -0.323;0.905;0.277;,
    -0.159;0.902;-0.403;,
    0.107;0.43;-0.896;,
    0.26;-0.339;-0.904;,
    0.207;-0.914;-0.348;,
    0.001;-0.853;0.523;,
    -0.316;0.37;0.874;,
    -0.185;-0.287;0.94;,
    0.089;0.994;0.069;,
    0.111;0.875;-0.471;,
    0.12;0.339;-0.933;,
    -0.056;-0.567;-0.822;,
    -0.222;-0.967;-0.124;,
    -0.244;-0.774;0.584;,
    0.019;0.607;0.795;,
    -0.141;-0.194;0.971;,
    0.471;0.877;-0.091;,
    0.474;0.742;-0.474;,
    0.251;0.137;-0.958;,
    -0.358;-0.701;-0.617;,
    -0.569;-0.822;0.033;,
    -0.521;-0.631;0.574;,
    0.317;0.762;0.565;,
    -0.199;-0.007;0.98;,
    0.111;0.98;-0.164;,
    0.133;0.924;-0.359;,
    -0.09;0.168;-0.982;,
    -0.841;-0.084;-0.535;,
    -0.981;0.166;-0.097;,
    -0.893;0.339;0.297;,
    0.116;0.977;0.177;,
    -0.256;0.589;0.766;,
    0.544;0.838;-0.043;,
    0.527;0.828;0.189;,
    0.074;0.799;0.596;,
    -0.854;0.317;0.411;,
    -0.954;0.294;0.054;,
    -0.924;0.302;-0.235;,
    -0.392;0.653;-0.648;,
    0.489;0.804;-0.338;,
    -0.681;0.488;-0.545;,
    0.081;0.608;-0.79;,
    0.74;0.452;-0.498;,
    0.932;0.361;0.005;,
    0.681;0.363;0.636;,
    -0.034;0.408;0.912;,
    -0.689;0.404;0.602;,
    -0.932;0.361;-0.005;;
    
    408;
    // ___21
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
    // ___12
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
    // __3
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
    // __4
    3;84,86,90;,
    3;87,249,250;,
    3;238,85,239;,
    3;84,90,94;,
    3;91,250,251;,
    3;239,85,240;,
    3;84,94,98;,
    3;95,251,252;,
    3;240,85,241;,
    3;84,98,102;,
    3;99,252,253;,
    3;241,85,242;,
    3;84,102,106;,
    3;103,253,246;,
    3;242,85,243;,
    3;84,106,110;,
    3;107,246,247;,
    3;243,85,244;,
    3;84,110,114;,
    3;111,247,248;,
    3;244,85,245;,
    3;84,114,86;,
    3;115,248,249;,
    3;245,85,238;,
    3;149,155,148;,
    3;148,119,120;,
    3;147,120,121;,
    3;146,121,122;,
    3;145,122,123;,
    3;144,123,124;,
    3;124,125,150;,
    3;142,151,152;,
    3;196,126,127;,
    3;195,127,128;,
    3;194,128,129;,
    3;205,193,129;,
    3;199,131,200;,
    3;191,201,190;,
    3;124,190,197;,
    3;157,197,196;,
    3;126,134,135;,
    3;127,135,136;,
    3;128,136,137;,
    3;129,137,138;,
    3;130,138,198;,
    3;131,139,140;,
    3;132,140,141;,
    3;133,141,134;,
    3;142,117,113;,
    3;143,113,109;,
    3;144,109,105;,
    3;145,105,101;,
    3;146,101,97;,
    3;147,97,93;,
    3;148,93,89;,
    3;89,152,153;,
    3;154,118,119;,
    3;155,154,119;,
    3;124,150,151;,
    3;143,124,151;,
    3;197,133,126;,
    3;196,118,156;,
    3;149,89,153;,
    3;89,117,142;,
    3;155,149,153;,
    3;156,118,154;,
    3;150,125,157;,
    3;189,184,183;,
    3;184,189,188;,
    3;185,188,186;,
    3;157,165,158;,
    3;150,158,159;,
    3;151,159,160;,
    3;152,160,161;,
    3;153,161,163;,
    3;155,163,162;,
    3;154,162,164;,
    3;156,164,165;,
    3;165,173,166;,
    3;158,166,167;,
    3;159,167,168;,
    3;160,168,169;,
    3;161,169,171;,
    3;163,171,170;,
    3;162,170,172;,
    3;164,172,173;,
    3;173,181,174;,
    3;166,174,175;,
    3;167,175,176;,
    3;168,176,177;,
    3;169,177,179;,
    3;171,179,178;,
    3;170,178,180;,
    3;172,180,181;,
    3;181,189,182;,
    3;174,182,183;,
    3;175,183,184;,
    3;176,184,185;,
    3;177,185,187;,
    3;179,187,186;,
    3;178,186,188;,
    3;180,188,189;,
    3;125,197,157;,
    3;190,124,123;,
    3;191,123,202;,
    3;192,122,121;,
    3;193,121,120;,
    3;194,120,119;,
    3;195,119,118;,
    3;190,132,133;,
    3;129,130,204;,
    3;193,205,192;,
    3;132,190,201;,
    3;200,131,132;,
    3;198,138,139;,
    3;139,131,199;,
    3;202,123,122;,
    3;122,192,203;,
    3;201,191,202;,
    3;203,192,205;,
    3;204,130,198;,
    3;231,232,233;,
    3;235,236,230;,
    3;234,230,231;,
    3;214,222,228;,
    3;198,206,212;,
    3;204,212,213;,
    3;205,213,211;,
    3;203,211,210;,
    3;202,210,209;,
    3;201,209,208;,
    3;200,208,207;,
    3;199,207,206;,
    3;206,214,220;,
    3;212,220,221;,
    3;213,221,219;,
    3;211,219,218;,
    3;210,218,217;,
    3;209,217,216;,
    3;208,216,215;,
    3;207,215,214;,
    3;220,228,229;,
    3;221,229,227;,
    3;219,227,226;,
    3;218,226,225;,
    3;217,225,224;,
    3;216,224,223;,
    3;215,223,222;,
    3;222,230,236;,
    3;228,236,237;,
    3;229,237,235;,
    3;227,235,234;,
    3;226,234,233;,
    3;225,233,232;,
    3;224,232,231;,
    3;223,231,230;,
    3;134,238,239;,
    3;135,239,240;,
    3;136,240,241;,
    3;137,241,242;,
    3;138,242,243;,
    3;139,243,244;,
    3;140,244,245;,
    3;141,245,238;,
    3;246,108,112;,
    3;247,112,116;,
    3;248,116,88;,
    3;249,88,92;,
    3;250,92,96;,
    3;251,96,100;,
    3;252,100,104;,
    3;253,104,108;,
    3;235,237,236;,
    3;87,250,91;,
    3;91,251,95;,
    3;95,252,99;,
    3;99,253,103;,
    3;103,246,107;,
    3;107,247,111;,
    3;111,248,115;,
    3;115,249,87;,
    3;148,120,147;,
    3;147,121,146;,
    3;146,122,145;,
    3;145,123,144;,
    3;144,124,143;,
    3;196,127,195;,
    3;195,128,194;,
    3;194,129,193;,
    3;205,129,204;,
    3;124,197,125;,
    3;157,196,156;,
    3;126,135,127;,
    3;127,136,128;,
    3;128,137,129;,
    3;129,138,130;,
    3;131,140,132;,
    3;132,141,133;,
    3;133,134,126;,
    3;142,113,143;,
    3;143,109,144;,
    3;144,105,145;,
    3;145,101,146;,
    3;146,97,147;,
    3;147,93,148;,
    3;148,89,149;,
    3;155,119,148;,
    3;143,151,142;,
    3;197,126,196;,
    3;89,142,152;,
    3;189,183,182;,
    3;184,188,185;,
    3;185,186,187;,
    3;157,158,150;,
    3;150,159,151;,
    3;151,160,152;,
    3;152,161,153;,
    3;153,163,155;,
    3;155,162,154;,
    3;154,164,156;,
    3;156,165,157;,
    3;165,166,158;,
    3;158,167,159;,
    3;159,168,160;,
    3;160,169,161;,
    3;161,171,163;,
    3;163,170,162;,
    3;162,172,164;,
    3;164,173,165;,
    3;173,174,166;,
    3;166,175,167;,
    3;167,176,168;,
    3;168,177,169;,
    3;169,179,171;,
    3;171,178,170;,
    3;170,180,172;,
    3;172,181,173;,
    3;181,182,174;,
    3;174,183,175;,
    3;175,184,176;,
    3;176,185,177;,
    3;177,187,179;,
    3;179,186,178;,
    3;178,188,180;,
    3;180,189,181;,
    3;190,123,191;,
    3;192,121,193;,
    3;193,120,194;,
    3;194,119,195;,
    3;195,118,196;,
    3;190,133,197;,
    3;132,201,200;,
    3;198,139,199;,
    3;202,122,203;,
    3;235,230,234;,
    3;234,231,233;,
    3;214,228,220;,
    3;198,212,204;,
    3;204,213,205;,
    3;205,211,203;,
    3;203,210,202;,
    3;202,209,201;,
    3;201,208,200;,
    3;200,207,199;,
    3;199,206,198;,
    3;206,220,212;,
    3;212,221,213;,
    3;213,219,211;,
    3;211,218,210;,
    3;210,217,209;,
    3;209,216,208;,
    3;208,215,207;,
    3;207,214,206;,
    3;220,229,221;,
    3;221,227,219;,
    3;219,226,218;,
    3;218,225,217;,
    3;217,224,216;,
    3;216,223,215;,
    3;215,222,214;,
    3;222,236,228;,
    3;228,237,229;,
    3;229,235,227;,
    3;227,234,226;,
    3;226,233,225;,
    3;225,232,224;,
    3;224,231,223;,
    3;223,230,222;,
    3;134,239,135;,
    3;135,240,136;,
    3;136,241,137;,
    3;137,242,138;,
    3;138,243,139;,
    3;139,244,140;,
    3;140,245,141;,
    3;141,238,134;,
    3;246,112,247;,
    3;247,116,248;,
    3;248,88,249;,
    3;249,92,250;,
    3;250,96,251;,
    3;251,100,252;,
    3;252,104,253;,
    3;253,108,246;;
    
  }
  MeshTextureCoords {
    254;
    // ___21
    0.826;0.781;,
    0.826;0.838;,
    0.921;0.809;,
    0.009;0.915;,
    0.103;0.859;,
    0.103;0.931;,
    0.195;0.875;,
    0.729;0.79;,
    0.884;0.665;,
    0.766;0.665;,
    0.764;0.331;,
    0.882;0.332;,
    // ___12
    0.389;0.781;,
    0.389;0.876;,
    0.49;0.832;,
    0.721;0.493;,
    0.823;0.444;,
    0.823;0.534;,
    0.922;0.482;,
    0.286;0.826;,
    0.175;0.736;,
    0.049;0.736;,
    0.768;0.114;,
    0.894;0.114;,
    // __3
    0.588;0.732;,
    0.506;0.741;,
    0.481;0.697;,
    0.547;0.666;,
    0.611;0.699;,
    0.381;0.243;,
    0.093;0.283;,
    0.467;0.762;,
    0.418;0.677;,
    0.194;0.373;,
    0.311;0.251;,
    0.674;0.866;,
    0.675;0.801;,
    0.26;0.408;,
    0.134;0.413;,
    0.413;0.214;,
    0.413;0.27;,
    0.026;0.25;,
    0.132;0.248;,
    0.206;0.25;,
    0.091;0.193;,
    0.028;0.193;,
    0.246;0.193;,
    0.311;0.193;,
    0.618;0.851;,
    0.618;0.796;,
    0.235;0.468;,
    0.155;0.469;,
    0.469;0.228;,
    0.469;0.241;,
    0.13;0.139;,
    0.208;0.139;,
    0.338;0.137;,
    0.364;0.137;,
    0.341;0.524;,
    0.273;0.523;,
    0.058;0.522;,
    0.12;0.522;,
    0.009;0.14;,
    0.521;0.248;,
    0.233;0.08;,
    0.294;0.081;,
    0.576;0.318;,
    0.105;0.083;,
    0.577;0.248;,
    0.057;0.578;,
    0.158;0.58;,
    0.233;0.58;,
    0.335;0.08;,
    0.338;0.581;,
    0.168;0.046;,
    0.61;0.284;,
    0.119;0.615;,
    0.621;0.051;,
    0.293;0.046;,
    0.502;0.093;,
    0.583;0.08;,
    0.233;0.009;,
    0.543;0.145;,
    0.477;0.127;,
    // __4
    0.891;0.902;,
    0.703;0.229;,
    0.93;0.902;,
    0.312;0.739;,
    0.312;0.634;,
    0.965;0.766;,
    0.919;0.935;,
    0.682;0.228;,
    0.33;0.634;,
    0.655;0.534;,
    0.891;0.948;,
    0.655;0.214;,
    0.974;0.844;,
    0.668;0.534;,
    0.864;0.935;,
    0.212;0.963;,
    0.987;0.844;,
    0.947;0.491;,
    0.853;0.902;,
    0.434;0.894;,
    0.245;0.859;,
    0.965;0.491;,
    0.864;0.869;,
    0.425;0.955;,
    0.263;0.859;,
    0.491;0.598;,
    0.891;0.855;,
    0.234;0.739;,
    0.97;0.009;,
    0.504;0.598;,
    0.919;0.869;,
    0.28;0.739;,
    0.983;0.009;,
    0.947;0.766;,
    0.965;0.663;,
    0.641;0.433;,
    0.654;0.439;,
    0.947;0.401;,
    0.965;0.404;,
    0.506;0.508;,
    0.519;0.503;,
    0.531;0.497;,
    0.965;0.611;,
    0.676;0.379;,
    0.94;0.336;,
    0.947;0.337;,
    0.965;0.338;,
    0.482;0.444;,
    0.489;0.443;,
    0.497;0.442;,
    0.965;0.537;,
    0.684;0.305;,
    0.688;0.306;,
    0.955;0.263;,
    0.965;0.263;,
    0.976;0.263;,
    0.484;0.369;,
    0.955;0.537;,
    0.947;0.687;,
    0.515;0.523;,
    0.983;0.421;,
    0.965;0.422;,
    0.671;0.464;,
    0.657;0.46;,
    0.983;0.687;,
    0.965;0.685;,
    0.531;0.503;,
    0.641;0.555;,
    0.642;0.562;,
    0.407;0.954;,
    0.965;0.669;,
    0.965;0.679;,
    0.716;0.972;,
    0.714;0.98;,
    0.536;0.504;,
    0.648;0.554;,
    0.65;0.561;,
    0.401;0.954;,
    0.718;0.967;,
    0.402;0.946;,
    0.717;0.973;,
    0.716;0.981;,
    0.555;0.501;,
    0.669;0.552;,
    0.671;0.559;,
    0.381;0.95;,
    0.734;0.97;,
    0.385;0.942;,
    0.732;0.976;,
    0.733;0.984;,
    0.591;0.486;,
    0.234;0.787;,
    0.241;0.789;,
    0.345;0.928;,
    0.77;0.968;,
    0.349;0.925;,
    0.768;0.974;,
    0.769;0.982;,
    0.619;0.458;,
    0.621;0.459;,
    0.243;0.758;,
    0.249;0.758;,
    0.323;0.894;,
    0.321;0.896;,
    0.798;0.973;,
    0.799;0.981;,
    0.495;0.462;,
    0.487;0.465;,
    0.965;0.358;,
    0.685;0.401;,
    0.677;0.399;,
    0.983;0.629;,
    0.965;0.628;,
    0.503;0.46;,
    0.111;0.949;,
    0.113;0.956;,
    0.115;0.962;,
    0.485;0.456;,
    0.486;0.465;,
    0.929;0.991;,
    0.511;0.958;,
    0.51;0.965;,
    0.108;0.951;,
    0.108;0.958;,
    0.11;0.964;,
    0.479;0.459;,
    0.479;0.468;,
    0.922;0.99;,
    0.516;0.959;,
    0.515;0.967;,
    0.075;0.957;,
    0.074;0.964;,
    0.073;0.969;,
    0.441;0.461;,
    0.884;0.979;,
    0.885;0.986;,
    0.549;0.961;,
    0.55;0.966;,
    0.033;0.958;,
    0.033;0.964;,
    0.032;0.969;,
    0.398;0.445;,
    0.839;0.98;,
    0.597;0.949;,
    0.592;0.943;,
    0.595;0.945;,
    0.016;0.964;,
    0.015;0.971;,
    0.382;0.425;,
    0.824;0.966;,
    0.615;0.933;,
    0.615;0.932;,
    0.013;0.957;,
    0.612;0.93;,
    0.965;0.508;,
    0.976;0.508;,
    0.701;0.277;,
    0.704;0.277;,
    0.965;0.234;,
    0.976;0.234;,
    0.98;0.233;,
    0.474;0.34;,
    0.263;0.944;,
    0.97;0.094;,
    0.294;0.72;,
    0.312;0.72;,
    0.957;0.929;,
    0.974;0.929;,
    0.227;0.944;,
    0.245;0.944;;
  }
  MeshMaterialList {
    5;
    408;
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
      1.0;1.0;1.0;1.0;;
      1.0;
      0.1;0.1;0.1;;
      0.5;0.5;0.5;;
      TextureFilename {
        "______.png";
      }
    }
    
    Material C4DMAT___ {
      1.0;1.0;1.0;1.0;;
      1.0;
      0.1;0.1;0.1;;
      0.5;0.5;0.5;;
      TextureFilename {
        "______.png";
      }
    }
    
    Material C4DMAT____2 {
      0.46;0.339;0.156;1.0;;
      1.0;
      0.1;0.1;0.1;;
      0.0;0.0;0.0;;
    }
    
    Material C4DMAT___0 {
      0.354;0.81;0.251;1.0;;
      1.0;
      0.1;0.1;0.1;;
      0.0;0.0;0.0;;
    }
    
  }
}