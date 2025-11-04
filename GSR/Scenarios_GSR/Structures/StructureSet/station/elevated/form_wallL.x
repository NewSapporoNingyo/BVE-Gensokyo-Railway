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
 30;
 -5.51971;2.57017;0.00000;,
 -5.51760;1.10000;0.00000;,
 -5.55620;1.10000;0.00000;,
 -5.55616;2.57893;0.00000;,
 -5.51971;2.57017;5.00000;,
 -5.51761;1.10000;5.00000;,
 -5.27211;3.10906;0.00000;,
 -5.27421;3.05159;0.00000;,
 -5.31066;3.06035;0.00000;,
 -5.31066;3.10906;0.00000;,
 -5.27421;3.05159;5.00000;,
 -5.27211;3.10906;5.00000;,
 -5.31066;3.10906;5.00000;,
 -5.31066;3.06035;5.00000;,
 -5.55616;2.57893;5.00000;,
 -5.51971;2.57017;5.00000;,
 -5.51761;1.10000;5.00000;,
 -5.55616;1.10000;5.00000;,
 -5.55616;2.57893;5.00000;,
 -5.51971;2.57017;10.00000;,
 -5.51761;1.10000;10.00000;,
 -5.27211;3.10906;5.00000;,
 -5.27421;3.05159;5.00000;,
 -5.31066;3.06035;5.00000;,
 -5.31066;3.10906;5.00000;,
 -5.27421;3.05159;10.00000;,
 -5.27211;3.10906;10.00000;,
 -5.31066;3.10906;10.00000;,
 -5.31066;3.06035;10.00000;,
 -5.55616;2.57893;10.00000;;
 
 16;
 4;0,1,2,3;,
 4;0,4,5,1;,
 4;6,7,8,9;,
 4;10,11,12,13;,
 4;7,6,11,10;,
 4;4,10,13,14;,
 4;7,0,3,8;,
 4;7,10,4,0;,
 4;15,16,17,18;,
 4;15,19,20,16;,
 4;21,22,23,24;,
 4;25,26,27,28;,
 4;22,21,26,25;,
 4;19,25,28,29;,
 4;22,15,18,23;,
 4;22,25,19,15;;
 
 MeshMaterialList {
  2;
  16;
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
    "form1.png";
   }
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  8;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.999999;0.001434;0.000001;,
  0.972498;-0.232911;0.000001;,
  0.999999;0.001430;0.000000;,
  0.972498;-0.232913;-0.000000;,
  0.967894;-0.251360;-0.000000;,
  0.999330;-0.036588;-0.000000;;
  16;
  4;0,0,0,0;,
  4;3,3,2,2;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;6,7,7,6;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;6,6,3,3;,
  4;0,0,0,0;,
  4;5,5,4,4;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;6,7,7,6;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;6,6,5,5;;
 }
 MeshTextureCoords {
  30;
  0.000000;0.210330;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.210330;,
  1.000000;0.210330;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.019330;,
  0.000000;0.019330;,
  0.000000;0.000000;,
  1.000000;0.019330;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.019330;,
  1.000000;0.210330;,
  0.000000;0.210330;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.210330;,
  1.000000;0.210330;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.019330;,
  0.000000;0.019330;,
  0.000000;0.000000;,
  1.000000;0.019330;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.019330;,
  1.000000;0.210330;;
 }
}
