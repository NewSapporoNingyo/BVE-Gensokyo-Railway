xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
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
 WORD truefalse;
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

Header{
1;
0;
1;
}

Mesh {
 219;
 0.08000;-0.11404;-0.16000;,
 0.08000;-0.11404;0.16000;,
 0.08000;-0.17921;0.16000;,
 0.08000;-0.17921;-0.16000;,
 -0.08000;-0.17921;0.10305;,
 -0.08000;-0.17921;0.16000;,
 -0.08000;-0.14588;0.16000;,
 -0.08000;-0.14588;0.10305;,
 -0.08000;-0.11404;0.10305;,
 -0.08000;-0.11404;-0.16000;,
 -0.08000;-0.14588;-0.16000;,
 -0.08000;-0.11404;0.16000;,
 -0.05212;-0.14588;0.16000;,
 -0.08000;-0.14588;0.16000;,
 -0.08000;-0.17921;0.16000;,
 0.02906;-0.17921;0.16000;,
 0.02906;-0.14588;0.16000;,
 -0.05212;-0.11404;0.16000;,
 0.02906;-0.11404;0.16000;,
 0.02906;-0.11404;0.10305;,
 -0.05212;-0.11404;0.10305;,
 -0.08000;-0.11404;0.10305;,
 -0.08000;-0.11404;0.16000;,
 -0.05212;-0.14588;0.10305;,
 0.02906;-0.14588;0.10305;,
 0.02906;-0.17921;0.10305;,
 -0.08000;-0.17921;0.10305;,
 -0.08000;-0.14588;0.10305;,
 0.02906;-0.13473;-0.16000;,
 0.02906;-0.11404;-0.16000;,
 0.08000;-0.11404;-0.16000;,
 0.08000;-0.17921;-0.16000;,
 0.02906;-0.17921;-0.16000;,
 0.02906;-0.14588;-0.16000;,
 0.02906;-0.13473;0.16000;,
 0.08000;-0.17921;0.16000;,
 0.08000;-0.11404;0.16000;,
 0.02906;-0.11404;0.16000;,
 0.02906;-0.13473;-0.16000;,
 0.02906;-0.14588;-0.16000;,
 -0.05212;-0.14588;-0.16000;,
 -0.05212;-0.13473;-0.16000;,
 -0.08000;-0.14588;-0.16000;,
 -0.08000;-0.11404;-0.16000;,
 -0.05212;-0.11404;-0.16000;,
 -0.05212;-0.13473;0.16000;,
 -0.05212;-0.11404;0.16000;,
 -0.08000;-0.11404;0.16000;,
 0.02906;-0.17921;-0.12524;,
 0.02906;-0.17921;0.10305;,
 0.02906;-0.14588;0.10305;,
 0.02906;-0.14588;-0.12524;,
 -0.05212;-0.11404;-0.15256;,
 -0.05212;-0.11404;-0.16000;,
 -0.08000;-0.11404;-0.16000;,
 -0.05212;-0.11404;-0.12524;,
 -0.05212;-0.14588;-0.15256;,
 -0.05212;-0.14588;-0.12524;,
 -0.05212;-0.14588;0.10305;,
 -0.08000;-0.14588;0.10305;,
 -0.08000;-0.14588;-0.16000;,
 -0.05212;-0.14588;-0.16000;,
 -0.04191;-0.14588;-0.12524;,
 0.02906;-0.11404;-0.15402;,
 0.02906;-0.11404;-0.12524;,
 0.08000;-0.11404;0.16000;,
 0.08000;-0.11404;-0.16000;,
 0.02906;-0.11404;-0.16000;,
 0.02906;-0.14588;-0.15402;,
 0.02906;-0.14588;-0.16000;,
 0.02906;-0.17921;-0.16000;,
 0.02906;-0.17921;-0.15402;,
 0.01734;-0.11404;-0.12524;,
 -0.04191;-0.11404;-0.12524;,
 0.01734;-0.14588;-0.12524;,
 0.02906;-0.14588;-0.12524;,
 0.02906;-0.14588;0.10305;,
 0.02906;-0.14588;-0.15402;,
 0.02906;-0.14588;-0.16000;,
 -0.02527;-0.17843;-0.15703;,
 0.00011;-0.17843;-0.15703;,
 0.00011;-0.18351;-0.15703;,
 -0.02527;-0.18351;-0.15703;,
 0.00011;-0.17843;-0.13165;,
 0.00011;-0.18351;-0.13165;,
 -0.02527;-0.17843;-0.13165;,
 -0.02527;-0.18351;-0.13165;,
 -0.01258;-0.13719;-0.15092;,
 -0.00835;-0.13719;-0.14917;,
 -0.00835;-0.18984;-0.14917;,
 -0.01258;-0.18984;-0.15092;,
 -0.00660;-0.13719;-0.14495;,
 -0.00660;-0.18984;-0.14495;,
 -0.00835;-0.13719;-0.14072;,
 -0.00835;-0.18984;-0.14072;,
 -0.01258;-0.13719;-0.13897;,
 -0.01258;-0.18984;-0.13897;,
 -0.01681;-0.13719;-0.14072;,
 -0.01681;-0.18984;-0.14072;,
 -0.01856;-0.13719;-0.14495;,
 -0.01856;-0.18984;-0.14495;,
 -0.01681;-0.13719;-0.14917;,
 -0.01681;-0.18984;-0.14917;,
 -0.01258;-0.13719;-0.14495;,
 -0.01258;-0.18984;-0.14495;,
 -0.08526;-0.18195;-0.16322;,
 0.08364;-0.18195;-0.16322;,
 0.08364;-0.18703;-0.16322;,
 -0.08526;-0.18703;-0.16322;,
 0.08364;-0.18195;0.16619;,
 0.08364;-0.18703;0.16619;,
 -0.08526;-0.18195;0.16619;,
 -0.08526;-0.18703;0.16619;,
 -0.08526;-0.18195;0.16619;,
 0.08364;-0.18195;0.16619;,
 0.08364;-0.18195;-0.16322;,
 -0.08526;-0.18195;-0.16322;,
 -0.00485;-0.18706;-0.14799;,
 -0.00496;-0.18706;-0.14163;,
 -0.00496;-0.19732;-0.14163;,
 -0.00485;-0.19732;-0.14799;,
 -0.00953;-0.18706;-0.13721;,
 -0.00953;-0.19732;-0.13721;,
 -0.01589;-0.18706;-0.13733;,
 -0.01589;-0.19732;-0.13733;,
 -0.02031;-0.18706;-0.14190;,
 -0.02031;-0.19732;-0.14190;,
 -0.02020;-0.18706;-0.14826;,
 -0.02020;-0.19732;-0.14826;,
 -0.01562;-0.18706;-0.15268;,
 -0.01562;-0.19732;-0.15268;,
 -0.00927;-0.18706;-0.15257;,
 -0.00927;-0.19732;-0.15257;,
 -0.01258;-0.18706;-0.14495;,
 -0.01258;-0.19732;-0.14495;,
 -0.00485;-0.17190;-0.14799;,
 -0.00496;-0.17190;-0.14163;,
 -0.00496;-0.18216;-0.14163;,
 -0.00485;-0.18216;-0.14799;,
 -0.00953;-0.17190;-0.13721;,
 -0.00953;-0.18216;-0.13721;,
 -0.01589;-0.17190;-0.13733;,
 -0.01589;-0.18216;-0.13733;,
 -0.02031;-0.17190;-0.14190;,
 -0.02031;-0.18216;-0.14190;,
 -0.02020;-0.17190;-0.14826;,
 -0.02020;-0.18216;-0.14826;,
 -0.01562;-0.17190;-0.15268;,
 -0.01562;-0.18216;-0.15268;,
 -0.00927;-0.17190;-0.15257;,
 -0.00927;-0.18216;-0.15257;,
 -0.01258;-0.17190;-0.14495;,
 -0.01258;-0.18216;-0.14495;,
 -0.05468;-0.14538;-0.10525;,
 -0.05045;-0.14538;-0.10948;,
 -0.05468;-0.14538;-0.11123;,
 -0.04870;-0.14538;-0.10525;,
 -0.05045;-0.14538;-0.10102;,
 -0.05468;-0.14538;-0.09927;,
 -0.05891;-0.14538;-0.10102;,
 -0.06066;-0.14538;-0.10525;,
 -0.05891;-0.14538;-0.10948;,
 -0.14239;-0.21140;-0.10525;,
 -0.14239;-0.21140;-0.11123;,
 -0.13988;-0.21480;-0.10948;,
 -0.13884;-0.21621;-0.10525;,
 -0.13988;-0.21480;-0.10102;,
 -0.14239;-0.21140;-0.09927;,
 -0.14491;-0.20801;-0.10102;,
 -0.14595;-0.20660;-0.10525;,
 -0.14491;-0.20801;-0.10948;,
 -0.05686;-0.15822;-0.11123;,
 -0.05320;-0.16033;-0.10948;,
 -0.05169;-0.16121;-0.10525;,
 -0.05320;-0.16033;-0.10102;,
 -0.05686;-0.15822;-0.09927;,
 -0.06052;-0.15610;-0.10102;,
 -0.06204;-0.15523;-0.10525;,
 -0.06052;-0.15610;-0.10948;,
 -0.06729;-0.17060;-0.11123;,
 -0.06538;-0.17437;-0.10948;,
 -0.06459;-0.17594;-0.10525;,
 -0.06538;-0.17437;-0.10102;,
 -0.06729;-0.17060;-0.09927;,
 -0.06920;-0.16682;-0.10102;,
 -0.06999;-0.16525;-0.10525;,
 -0.06920;-0.16682;-0.10948;,
 -0.08419;-0.17477;-0.11123;,
 -0.08334;-0.17892;-0.10948;,
 -0.08299;-0.18064;-0.10525;,
 -0.08334;-0.17892;-0.10102;,
 -0.08419;-0.17477;-0.09927;,
 -0.08504;-0.17062;-0.10102;,
 -0.08539;-0.16890;-0.10525;,
 -0.08504;-0.17062;-0.10948;,
 -0.10049;-0.17801;-0.11123;,
 -0.09903;-0.18198;-0.10948;,
 -0.09842;-0.18363;-0.10525;,
 -0.09903;-0.18198;-0.10102;,
 -0.10049;-0.17801;-0.09927;,
 -0.10195;-0.17405;-0.10102;,
 -0.10256;-0.17240;-0.10525;,
 -0.10195;-0.17405;-0.10948;,
 -0.11310;-0.19026;-0.10948;,
 -0.11496;-0.18653;-0.11123;,
 -0.11234;-0.19181;-0.10525;,
 -0.11310;-0.19026;-0.10102;,
 -0.11496;-0.18653;-0.09927;,
 -0.11682;-0.18280;-0.10102;,
 -0.11759;-0.18125;-0.10525;,
 -0.11682;-0.18280;-0.10948;,
 0.06306;-0.11452;-0.37541;,
 0.06306;-0.18195;-0.45058;,
 -0.06468;-0.18195;-0.45058;,
 -0.06468;-0.11452;-0.37541;,
 -0.06468;-0.11452;-0.37541;,
 -0.06468;-0.18195;-0.29996;,
 0.06306;-0.18195;-0.29996;,
 0.06306;-0.11452;-0.37541;;
 
 179;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,7;,
 4;7,6,11,8;,
 5;12,13,14,15,16;,
 4;17,18,19,20;,
 4;20,21,22,17;,
 5;23,24,25,26,27;,
 6;28,29,30,31,32,33;,
 6;34,16,15,35,36,37;,
 4;38,39,40,41;,
 5;41,40,42,43,44;,
 5;45,46,47,13,12;,
 4;34,37,46,45;,
 4;45,12,16,34;,
 4;48,49,50,51;,
 6;52,53,54,21,20,55;,
 6;56,57,58,59,60,61;,
 3;62,57,56;,
 7;63,64,19,18,65,66,67;,
 4;68,69,70,71;,
 4;71,48,51,68;,
 6;72,73,55,20,19,64;,
 6;74,75,76,58,57,62;,
 3;77,75,74;,
 6;74,62,56,61,78,77;,
 4;41,44,29,28;,
 4;53,55,64,67;,
 4;79,80,81,82;,
 4;80,83,84,81;,
 4;83,85,86,84;,
 4;85,79,82,86;,
 4;85,83,80,79;,
 4;82,81,84,86;,
 4;87,88,89,90;,
 4;88,91,92,89;,
 4;91,93,94,92;,
 4;93,95,96,94;,
 4;95,97,98,96;,
 4;97,99,100,98;,
 4;99,101,102,100;,
 4;101,87,90,102;,
 3;103,88,87;,
 3;103,91,88;,
 3;103,93,91;,
 3;103,95,93;,
 3;103,97,95;,
 3;103,99,97;,
 3;103,101,99;,
 3;103,87,101;,
 3;104,90,89;,
 3;104,89,92;,
 3;104,92,94;,
 3;104,94,96;,
 3;104,96,98;,
 3;104,98,100;,
 3;104,100,102;,
 3;104,102,90;,
 4;105,106,107,108;,
 4;106,109,110,107;,
 4;109,111,112,110;,
 4;111,105,108,112;,
 4;113,114,115,116;,
 4;108,107,110,112;,
 4;117,118,119,120;,
 4;118,121,122,119;,
 4;121,123,124,122;,
 4;123,125,126,124;,
 4;125,127,128,126;,
 4;127,129,130,128;,
 4;129,131,132,130;,
 4;131,117,120,132;,
 3;133,118,117;,
 3;133,121,118;,
 3;133,123,121;,
 3;133,125,123;,
 3;133,127,125;,
 3;133,129,127;,
 3;133,131,129;,
 3;133,117,131;,
 3;134,120,119;,
 3;134,119,122;,
 3;134,122,124;,
 3;134,124,126;,
 3;134,126,128;,
 3;134,128,130;,
 3;134,130,132;,
 3;134,132,120;,
 4;135,136,137,138;,
 4;136,139,140,137;,
 4;139,141,142,140;,
 4;141,143,144,142;,
 4;143,145,146,144;,
 4;145,147,148,146;,
 4;147,149,150,148;,
 4;149,135,138,150;,
 3;151,136,135;,
 3;151,139,136;,
 3;151,141,139;,
 3;151,143,141;,
 3;151,145,143;,
 3;151,147,145;,
 3;151,149,147;,
 3;151,135,149;,
 3;152,138,137;,
 3;152,137,140;,
 3;152,140,142;,
 3;152,142,144;,
 3;152,144,146;,
 3;152,146,148;,
 3;152,148,150;,
 3;152,150,138;,
 3;153,154,155;,
 3;153,156,154;,
 3;153,157,156;,
 3;153,158,157;,
 3;153,159,158;,
 3;153,160,159;,
 3;153,161,160;,
 3;153,155,161;,
 3;162,163,164;,
 3;162,164,165;,
 3;162,165,166;,
 3;162,166,167;,
 3;162,167,168;,
 3;162,168,169;,
 3;162,169,170;,
 3;162,170,163;,
 4;171,155,154,172;,
 4;172,154,156,173;,
 4;173,156,157,174;,
 4;174,157,158,175;,
 4;175,158,159,176;,
 4;176,159,160,177;,
 4;177,160,161,178;,
 4;178,161,155,171;,
 4;179,171,172,180;,
 4;180,172,173,181;,
 4;181,173,174,182;,
 4;182,174,175,183;,
 4;183,175,176,184;,
 4;184,176,177,185;,
 4;185,177,178,186;,
 4;186,178,171,179;,
 4;187,179,180,188;,
 4;188,180,181,189;,
 4;189,181,182,190;,
 4;190,182,183,191;,
 4;191,183,184,192;,
 4;192,184,185,193;,
 4;193,185,186,194;,
 4;194,186,179,187;,
 4;195,187,188,196;,
 4;196,188,189,197;,
 4;197,189,190,198;,
 4;198,190,191,199;,
 4;199,191,192,200;,
 4;200,192,193,201;,
 4;201,193,194,202;,
 4;202,194,187,195;,
 4;203,164,163,204;,
 4;204,195,196,203;,
 4;205,165,164,203;,
 4;203,196,197,205;,
 4;206,166,165,205;,
 4;205,197,198,206;,
 4;207,167,166,206;,
 4;206,198,199,207;,
 4;208,168,167,207;,
 4;207,199,200,208;,
 4;209,169,168,208;,
 4;208,200,201,209;,
 4;210,170,169,209;,
 4;209,201,202,210;,
 4;204,163,170,210;,
 4;210,202,195,204;,
 4;211,212,213,214;,
 4;215,216,217,218;,
 4;218,217,216,215;;
 
 MeshMaterialList {
  1;
  179;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "ATS-P_2way2.dds";
   }
  }
 }
 MeshNormals {
  114;
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;-0.000000;,
  0.000000;0.000000;1.000000;,
  -0.000000;1.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  -0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;-0.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;-0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  0.707107;0.000000;0.707106;,
  0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707106;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.930416;0.000000;-0.366505;,
  0.917059;0.000000;0.398752;,
  0.366502;0.000000;0.930417;,
  -0.398742;0.000000;0.917063;,
  -0.930416;0.000000;0.366505;,
  -0.917058;0.000000;-0.398753;,
  -0.366501;0.000000;-0.930418;,
  0.398742;0.000000;-0.917063;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.803853;-0.594829;-0.000000;,
  -0.803854;-0.594826;-0.000005;,
  -0.803857;-0.594822;0.000000;,
  -0.803854;-0.594826;0.000005;,
  -0.803856;-0.594824;-0.000003;,
  -0.803858;-0.594821;-0.000000;,
  -0.803856;-0.594824;0.000003;,
  -0.803855;-0.594825;0.000000;,
  -0.001642;-0.002987;-0.999994;,
  0.635150;-0.305504;-0.709402;,
  0.900100;-0.435684;-0.000000;,
  0.635150;-0.305503;0.709403;,
  -0.001642;-0.002987;0.999994;,
  -0.645529;0.284563;0.708743;,
  -0.916926;0.399058;-0.000000;,
  -0.645529;0.284563;-0.708742;,
  -0.000659;-0.001104;-0.999999;,
  0.367033;-0.593140;-0.716569;,
  0.524499;-0.851411;-0.000000;,
  0.367032;-0.593139;0.716570;,
  -0.000659;-0.001104;0.999999;,
  -0.372390;0.587148;0.718737;,
  -0.535845;0.844317;-0.000000;,
  -0.372391;0.587149;-0.718736;,
  0.000261;0.000103;-1.000000;,
  0.154999;-0.691854;-0.705205;,
  0.218791;-0.975772;-0.000000;,
  0.154999;-0.691853;0.705206;,
  0.000261;0.000103;1.000000;,
  -0.153185;0.692392;0.705073;,
  -0.215650;0.976471;-0.000000;,
  -0.153186;0.692393;-0.705072;,
  -0.000355;-0.000113;-1.000000;,
  0.249993;-0.658837;-0.709533;,
  0.354209;-0.935166;-0.000001;,
  0.249994;-0.658837;0.709533;,
  -0.000356;-0.000112;1.000000;,
  -0.252404;0.658039;0.709420;,
  -0.358273;0.933617;-0.000000;,
  -0.252404;0.658039;-0.709420;,
  0.000468;0.000281;-1.000000;,
  0.422789;-0.571402;-0.703384;,
  0.595127;-0.803631;-0.000001;,
  0.422789;-0.571402;0.703384;,
  0.000468;0.000282;1.000000;,
  -0.419850;0.573491;0.703445;,
  -0.590197;0.807259;-0.000000;,
  -0.419849;0.573491;-0.703445;,
  -0.000746;-0.003362;-0.999994;,
  0.704523;-0.129444;-0.697777;,
  0.983058;-0.183293;-0.000000;,
  0.704522;-0.129444;0.697777;,
  -0.000746;-0.003362;0.999994;,
  -0.708843;0.106583;0.697268;,
  -0.989525;0.144362;-0.000000;,
  -0.708843;0.106583;-0.697267;,
  0.482697;-0.526648;-0.699747;,
  0.000959;0.000599;-0.999999;,
  0.676521;-0.736423;-0.000000;,
  0.482697;-0.526648;0.699747;,
  0.000958;0.000600;0.999999;,
  -0.476873;0.531304;0.700220;,
  -0.667175;0.744901;0.000000;,
  -0.476872;0.531304;-0.700221;,
  0.000000;0.744368;-0.667770;,
  0.000000;0.745628;0.666362;,
  0.000000;-0.745628;-0.666362;;
  179;
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  5;4,4,4,4,4;,
  4;6,3,5,7;,
  4;7,16,6,6;,
  5;2,2,2,2,2;,
  6;2,2,2,2,2,2;,
  6;4,4,4,4,4,4;,
  4;2,2,2,2;,
  5;2,2,2,2,2;,
  5;4,4,4,4,4;,
  4;4,4,4,4;,
  4;4,4,4,4;,
  4;8,17,17,8;,
  6;11,16,11,16,7,9;,
  6;12,10,18,19,19,20;,
  3;14,10,12;,
  7;15,5,5,3,15,15,3;,
  4;0,0,0,0;,
  4;0,8,8,0;,
  6;13,13,9,7,5,5;,
  6;14,21,21,18,10,14;,
  3;22,21,14;,
  6;14,14,12,20,23,22;,
  4;2,2,2,2;,
  4;16,9,5,3;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;33,33,33,33;,
  4;27,27,27,27;,
  4;35,35,35,35;,
  4;28,29,29,28;,
  4;29,25,25,29;,
  4;25,30,30,25;,
  4;30,31,31,30;,
  4;31,32,32,31;,
  4;32,33,33,32;,
  4;33,34,34,33;,
  4;34,28,28,34;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;27,27,27;,
  3;35,35,35;,
  3;35,35,35;,
  3;35,35,35;,
  3;35,35,35;,
  3;35,35,35;,
  3;35,35,35;,
  3;35,35,35;,
  3;35,35,35;,
  4;24,24,24,24;,
  4;25,25,25,25;,
  4;26,26,26,26;,
  4;33,33,33,33;,
  4;27,27,27,27;,
  4;35,35,35,35;,
  4;37,38,38,37;,
  4;38,39,39,38;,
  4;39,40,40,39;,
  4;40,41,41,40;,
  4;41,42,42,41;,
  4;42,43,43,42;,
  4;43,44,44,43;,
  4;44,37,37,44;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  4;37,38,38,37;,
  4;38,39,39,38;,
  4;39,40,40,39;,
  4;40,41,41,40;,
  4;41,42,42,41;,
  4;42,43,43,42;,
  4;43,44,44,43;,
  4;44,37,37,44;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;36,36,36;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;45,45,45;,
  3;46,46,46;,
  3;46,46,46;,
  3;46,46,46;,
  3;46,46,46;,
  3;46,46,46;,
  3;46,46,46;,
  3;46,46,46;,
  3;46,46,46;,
  3;54,47,48;,
  3;54,48,49;,
  3;54,49,50;,
  3;54,50,47;,
  3;54,47,51;,
  3;54,51,52;,
  3;54,52,53;,
  3;54,53,47;,
  4;55,95,96,56;,
  4;56,96,97,57;,
  4;57,97,98,58;,
  4;58,98,99,59;,
  4;59,99,100,60;,
  4;60,100,101,61;,
  4;61,101,102,62;,
  4;62,102,95,55;,
  4;63,55,56,64;,
  4;64,56,57,65;,
  4;65,57,58,66;,
  4;66,58,59,67;,
  4;67,59,60,68;,
  4;68,60,61,69;,
  4;69,61,62,70;,
  4;70,62,55,63;,
  4;71,63,64,72;,
  4;72,64,65,73;,
  4;73,65,66,74;,
  4;74,66,67,75;,
  4;75,67,68,76;,
  4;76,68,69,77;,
  4;77,69,70,78;,
  4;78,70,63,71;,
  4;79,71,72,80;,
  4;80,72,73,81;,
  4;81,73,74,82;,
  4;82,74,75,83;,
  4;83,75,76,84;,
  4;84,76,77,85;,
  4;85,77,78,86;,
  4;86,78,71,79;,
  4;88,103,104,87;,
  4;87,79,80,88;,
  4;89,105,103,88;,
  4;88,80,81,89;,
  4;90,106,105,89;,
  4;89,81,82,90;,
  4;91,107,106,90;,
  4;90,82,83,91;,
  4;92,108,107,91;,
  4;91,83,84,92;,
  4;93,109,108,92;,
  4;92,84,85,93;,
  4;94,110,109,93;,
  4;93,85,86,94;,
  4;87,104,110,94;,
  4;94,86,79,87;,
  4;111,111,111,111;,
  4;112,112,112,112;,
  4;113,113,113,113;;
 }
 MeshTextureCoords {
  219;
  0.592093;0.716495;,
  0.592309;0.001636;,
  0.776038;0.145092;,
  0.775600;0.840524;,
  -0.221034;0.271960;,
  -0.221034;0.147808;,
  -0.343251;0.053937;,
  -0.343251;0.178089;,
  -0.400329;0.134250;,
  -0.400328;0.707658;,
  -0.343250;0.751498;,
  -0.400329;0.010097;,
  -0.445961;0.751489;,
  -0.341978;0.751489;,
  -0.223337;0.847843;,
  -0.630136;0.847843;,
  -0.748777;0.751489;,
  0.102365;0.000000;,
  0.400471;0.000000;,
  0.400471;0.127552;,
  0.102365;0.127552;,
  0.000000;0.127552;,
  0.000000;0.000000;,
  -0.434605;1.736550;,
  -0.565479;1.738610;,
  -0.446017;1.832640;,
  -0.267448;1.829710;,
  -0.389664;1.735840;,
  0.440231;0.742565;,
  0.402824;0.717278;,
  0.590255;0.717278;,
  0.771069;0.839509;,
  0.583638;0.839509;,
  0.460386;0.756190;,
  -0.768178;0.735732;,
  -0.820121;0.847843;,
  -0.994171;0.706489;,
  -0.804186;0.706489;,
  0.519534;0.797454;,
  0.579366;0.840043;,
  0.270498;0.840886;,
  0.212439;0.798002;,
  0.164438;0.841176;,
  0.000361;0.718412;,
  0.104684;0.718412;,
  -0.465362;0.735732;,
  -0.501370;0.706489;,
  -0.397387;0.706489;,
  0.755829;1.855710;,
  0.572176;1.861650;,
  0.452714;1.767620;,
  0.633078;1.770970;,
  0.102365;0.700003;,
  0.102365;0.716667;,
  0.000000;0.716667;,
  0.102365;0.638812;,
  -0.103972;1.920910;,
  -0.123396;1.920440;,
  -0.285685;1.916530;,
  -0.285234;1.909890;,
  -0.103391;1.913620;,
  -0.098682;1.921040;,
  -0.121921;1.923120;,
  0.400471;0.703275;,
  0.400471;0.638812;,
  0.587500;0.000000;,
  0.587500;0.716667;,
  0.400471;0.716667;,
  0.655819;1.771390;,
  0.660544;1.771480;,
  0.783796;1.854800;,
  0.778985;1.854960;,
  0.357412;0.638812;,
  0.139870;0.638812;,
  -0.113364;1.938660;,
  -0.111670;1.941740;,
  -0.286999;1.935870;,
  -0.089564;1.942480;,
  -0.084971;1.942630;,
  0.844103;1.572060;,
  0.881405;1.572060;,
  0.881405;1.572060;,
  0.844103;1.572060;,
  0.881405;1.543100;,
  0.881405;1.543100;,
  0.844103;1.543100;,
  0.844103;1.543100;,
  0.845132;-0.279862;,
  0.865940;-0.288481;,
  0.865940;-0.288481;,
  0.845132;-0.279862;,
  0.874560;-0.309289;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.845132;-0.338717;,
  0.824323;-0.330097;,
  0.824323;-0.330097;,
  0.815704;-0.309289;,
  0.815704;-0.309289;,
  0.824323;-0.288481;,
  0.824323;-0.288481;,
  0.845132;-0.309289;,
  0.845132;-0.309289;,
  0.844103;1.572060;,
  0.881405;1.572060;,
  0.881405;1.572060;,
  0.844103;1.572060;,
  0.881405;1.543100;,
  0.881405;1.543100;,
  0.844103;1.543100;,
  0.844103;1.543100;,
  0.786086;0.549563;,
  0.786086;0.436114;,
  0.896634;0.436114;,
  0.896634;0.549563;,
  0.897709;-0.328813;,
  0.918518;-0.337432;,
  0.918518;-0.337432;,
  0.897709;-0.328813;,
  0.927137;-0.358241;,
  0.927137;-0.358241;,
  0.918518;-0.379049;,
  0.918518;-0.379049;,
  0.897709;-0.387668;,
  0.897709;-0.387668;,
  0.876901;-0.379049;,
  0.876901;-0.379049;,
  0.868282;-0.358241;,
  0.868282;-0.358241;,
  0.876901;-0.337432;,
  0.876901;-0.337432;,
  0.897709;-0.358241;,
  0.897709;-0.358241;,
  0.897709;-0.328813;,
  0.918518;-0.337432;,
  0.918518;-0.337432;,
  0.897709;-0.328813;,
  0.927137;-0.358241;,
  0.927137;-0.358241;,
  0.918518;-0.379049;,
  0.918518;-0.379049;,
  0.897709;-0.387668;,
  0.897709;-0.387668;,
  0.876901;-0.379049;,
  0.876901;-0.379049;,
  0.868282;-0.358241;,
  0.868282;-0.358241;,
  0.876901;-0.337432;,
  0.876901;-0.337432;,
  0.897709;-0.358241;,
  0.897709;-0.358241;,
  0.845132;-0.309289;,
  0.865940;-0.288481;,
  0.845132;-0.279862;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824323;-0.330097;,
  0.815704;-0.309289;,
  0.824323;-0.288481;,
  0.845132;-0.309289;,
  0.845132;-0.279862;,
  0.865940;-0.288481;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824323;-0.330097;,
  0.815704;-0.309289;,
  0.824323;-0.288481;,
  0.845132;-0.279862;,
  0.865940;-0.288481;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824324;-0.330097;,
  0.815704;-0.309289;,
  0.824324;-0.288481;,
  0.845132;-0.279862;,
  0.865940;-0.288481;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824324;-0.330097;,
  0.815704;-0.309289;,
  0.824324;-0.288481;,
  0.845132;-0.279862;,
  0.865940;-0.288481;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824324;-0.330097;,
  0.815704;-0.309289;,
  0.824324;-0.288481;,
  0.845132;-0.279862;,
  0.865940;-0.288481;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824324;-0.330097;,
  0.815704;-0.309289;,
  0.824324;-0.288481;,
  0.865940;-0.288481;,
  0.845132;-0.279862;,
  0.874560;-0.309289;,
  0.865940;-0.330097;,
  0.845132;-0.338717;,
  0.824324;-0.330097;,
  0.815704;-0.309289;,
  0.824324;-0.288481;,
  0.998411;0.002792;,
  0.998411;0.213233;,
  0.779652;0.213233;,
  0.779652;0.002792;,
  0.842652;0.549563;,
  0.786086;0.549563;,
  0.786086;0.436114;,
  0.842652;0.436114;;
 }
}
