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
 -0.11136;-0.18195;-0.10739;,
 0.10975;-0.18195;-0.10739;,
 0.10975;-0.18703;-0.10739;,
 -0.11136;-0.18703;-0.10739;,
 0.10975;-0.18195;0.11036;,
 0.10975;-0.18703;0.11036;,
 -0.11136;-0.18195;0.11036;,
 -0.11136;-0.18703;0.11036;,
 -0.11136;-0.18195;0.11036;,
 0.10975;-0.18195;0.11036;,
 0.10975;-0.18195;-0.10739;,
 -0.11136;-0.18195;-0.10739;,
 -0.11000;-0.08990;-0.15000;,
 0.11000;-0.08990;-0.15000;,
 0.11000;-0.14990;-0.15000;,
 -0.11000;-0.14990;-0.15000;,
 0.11000;-0.08990;-0.15000;,
 0.11000;-0.08990;0.15000;,
 0.11000;-0.14990;0.15000;,
 0.11000;-0.08990;0.15000;,
 -0.11000;-0.08990;0.15000;,
 -0.11000;-0.14990;0.15000;,
 -0.11000;-0.08990;0.15000;,
 -0.11000;-0.08990;-0.15000;,
 -0.11000;-0.14990;-0.15000;,
 -0.11000;-0.14990;0.15000;,
 -0.11000;-0.08990;0.15000;,
 0.11000;-0.08990;0.15000;,
 0.11000;-0.08990;-0.15000;,
 -0.11000;-0.08990;-0.15000;;
 
 11;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,0,3,7;,
 4;8,9,10,11;,
 4;3,2,5,7;,
 4;12,13,14,15;,
 4;16,17,18,14;,
 4;19,20,21,18;,
 4;22,23,24,25;,
 4;26,27,28,29;;
 
 MeshMaterialList {
  1;
  11;
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
    "ATS-P_Muden.dds";
   }
  }
 }
 MeshNormals {
  11;
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;;
  11;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;7,7,7,7;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;10,10,10,10;;
 }
 MeshTextureCoords {
  30;
  0.595033;0.962548;,
  0.632335;0.962548;,
  0.632335;0.962548;,
  0.595033;0.962548;,
  0.632335;0.933588;,
  0.632335;0.933588;,
  0.595033;0.933588;,
  0.595033;0.933588;,
  0.725337;0.964679;,
  0.725337;0.851230;,
  0.835885;0.851230;,
  0.835885;0.964679;,
  0.000000;0.731861;,
  1.000000;0.731861;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.731861;,
  0.000000;0.731861;,
  0.000000;1.000000;,
  -0.000000;0.736067;,
  1.000000;0.736067;,
  1.000000;1.000000;,
  1.000000;0.736067;,
  0.000000;0.736067;,
  -0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.974763;0.000000;,
  1.000000;0.732913;,
  0.023134;0.732913;;
 }
}
