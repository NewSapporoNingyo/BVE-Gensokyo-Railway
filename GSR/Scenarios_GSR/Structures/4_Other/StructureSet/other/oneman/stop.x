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
 20;
 -4.43644;3.82677;0.00000;,
 -4.43644;1.10000;0.00000;,
 -4.51688;1.10000;0.00000;,
 -4.51688;3.82677;0.00000;,
 -4.71735;3.92470;-0.01000;,
 -4.47621;4.16583;-0.01000;,
 -4.23508;3.92470;-0.01000;,
 -4.47621;3.68356;-0.01000;,
 -4.68128;2.32179;-0.01000;,
 -4.69467;2.34498;-0.01000;,
 -4.68128;2.34498;-0.01000;,
 -4.68128;3.06373;-0.01000;,
 -4.68128;3.04055;-0.01000;,
 -4.69467;3.04055;-0.01000;,
 -4.26624;3.04055;-0.01000;,
 -4.27962;3.04055;-0.01000;,
 -4.27962;3.06373;-0.01000;,
 -4.27962;2.32179;-0.01000;,
 -4.27962;2.34498;-0.01000;,
 -4.26624;2.34498;-0.01000;;
 
 10;
 4;0,1,2,3;,
 4;4,5,6,7;,
 3;8,9,10;,
 3;11,12,13;,
 3;14,15,16;,
 3;17,18,19;,
 4;12,11,16,15;,
 4;10,9,13,12;,
 4;19,18,15,14;,
 4;17,8,12,15;;
 
 MeshMaterialList {
  2;
  10;
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
    "stop.png";
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
  1;
  0.000000;0.000000;-1.000000;;
  10;
  4;0,0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;;
 }
 MeshTextureCoords {
  20;
  0.250000;0.000000;,
  0.250000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.250000;0.000000;,
  1.000000;0.000000;,
  1.000000;0.375000;,
  0.250000;0.375000;,
  0.273440;1.000000;,
  0.250000;0.980470;,
  0.273440;0.980470;,
  0.273440;0.375000;,
  0.273440;0.394530;,
  0.250000;0.394530;,
  1.000000;0.394530;,
  0.976560;0.394530;,
  0.976560;0.375000;,
  0.976560;1.000000;,
  0.976560;0.980470;,
  1.000000;0.980470;;
 }
}
