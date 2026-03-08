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
 24;
 0.00000;15.13736;-24.59400;,
 0.00000;-2.51434;-24.59400;,
 12.29700;-2.51434;-21.29903;,
 12.29700;15.13736;-21.29903;,
 21.29903;-2.51434;-12.29700;,
 21.29903;15.13736;-12.29700;,
 24.59400;-2.51434;0.00000;,
 24.59400;15.13736;0.00000;,
 21.29903;-2.51434;12.29700;,
 21.29903;15.13736;12.29700;,
 12.29700;-2.51434;21.29903;,
 12.29700;15.13736;21.29903;,
 0.00000;-2.51434;24.59400;,
 0.00000;15.13736;24.59400;,
 -12.29699;-2.51434;21.29903;,
 -12.29699;15.13736;21.29903;,
 -21.29902;-2.51434;12.29701;,
 -21.29902;15.13736;12.29701;,
 -24.59400;-2.51434;0.00001;,
 -24.59400;15.13736;0.00001;,
 -21.29904;-2.51434;-12.29699;,
 -21.29904;15.13736;-12.29699;,
 -12.29701;-2.51434;-21.29902;,
 -12.29701;15.13736;-21.29902;;
 
 12;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,16,17;,
 4;17,16,18,19;,
 4;19,18,20,21;,
 4;21,20,22,23;,
 4;23,22,1,0;;
 
 MeshMaterialList {
  1;
  12;
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
   0.300000;0.300000;0.300000;;
   TextureFilename {
    "0.png";
   }
  }
 }
 MeshNormals {
  12;
  0.000000;0.000000;1.000000;,
  -0.500000;0.000000;0.866025;,
  -0.866025;0.000000;0.500000;,
  -1.000000;0.000000;0.000000;,
  -0.866025;0.000000;-0.500000;,
  -0.500000;0.000000;-0.866025;,
  -0.000000;0.000000;-1.000000;,
  0.500000;0.000000;-0.866026;,
  0.866025;0.000000;-0.500000;,
  1.000000;0.000000;-0.000000;,
  0.866026;0.000000;0.500000;,
  0.500000;0.000000;0.866025;;
  12;
  4;0,0,1,1;,
  4;1,1,2,2;,
  4;2,2,3,3;,
  4;3,3,4,4;,
  4;4,4,5,5;,
  4;5,5,6,6;,
  4;6,6,7,7;,
  4;7,7,8,8;,
  4;8,8,9,9;,
  4;9,9,10,10;,
  4;10,10,11,11;,
  4;11,11,0,0;;
 }
 MeshTextureCoords {
  24;
  0.499847;0.000000;,
  0.499847;1.000000;,
  0.749847;1.000000;,
  0.749847;0.000000;,
  0.932860;1.000000;,
  0.932860;0.000000;,
  0.999847;1.000000;,
  0.999847;0.000000;,
  0.932860;1.000000;,
  0.932860;0.000000;,
  0.749847;1.000000;,
  0.749847;0.000000;,
  0.499847;1.000000;,
  0.499847;0.000000;,
  0.249847;1.000000;,
  0.249847;0.000000;,
  0.066834;1.000000;,
  0.066834;0.000000;,
  -0.000153;1.000000;,
  -0.000153;0.000000;,
  0.066834;1.000000;,
  0.066834;0.000000;,
  0.249847;1.000000;,
  0.249847;0.000000;;
 }
}
