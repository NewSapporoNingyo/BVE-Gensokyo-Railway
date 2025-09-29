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
 1.30257;4.88773;-0.11385;,
 1.30257;4.88773;0.11387;,
 1.30257;2.08642;0.11387;,
 1.30257;2.08642;-0.11385;,
 -1.30260;2.08642;-0.11387;,
 -1.30257;4.88773;-0.11387;,
 -1.30260;2.08642;0.11387;,
 -1.30257;4.88773;0.11387;,
 1.30257;4.88773;0.11387;,
 -1.30257;4.88773;0.11387;,
 -1.30260;2.08642;0.11387;,
 1.30257;2.08642;0.11387;,
 -1.30260;2.08642;-0.11387;,
 -1.30260;2.08642;0.11387;,
 -1.15062;0.00000;0.11387;,
 -1.15062;0.00000;-0.11387;,
 -1.15062;2.08642;-0.11387;,
 -1.15062;2.08642;0.11387;,
 -1.30257;0.00000;0.11387;,
 -1.30257;2.08642;0.11387;,
 -1.30257;0.00000;-0.11387;,
 -1.30257;2.08642;-0.11387;,
 1.15062;0.00000;0.11387;,
 1.15062;2.08642;0.11387;,
 1.15062;2.08642;-0.11387;,
 1.15062;0.00000;-0.11387;,
 1.30257;0.00000;0.11387;,
 1.30257;2.08642;0.11387;,
 1.30257;0.00000;-0.11387;,
 1.30257;2.08642;-0.11387;;
 
 14;
 4;0,1,2,3;,
 4;0,3,4,5;,
 4;5,4,6,7;,
 4;7,1,0,5;,
 4;8,9,10,11;,
 4;12,3,2,13;,
 4;14,15,16,17;,
 4;18,14,17,19;,
 4;20,18,19,21;,
 4;15,20,21,16;,
 4;22,23,24,25;,
 4;26,27,23,22;,
 4;28,29,27,26;,
 4;25,24,29,28;;
 
 MeshMaterialList {
  2;
  14;
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
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "name.png";
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
  13;
  0.000009;-0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000010;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;-0.000000;0.000000;,
  0.000000;-0.000000;1.000000;,
  1.000000;0.000000;-0.000001;,
  1.000000;-0.000000;-0.000000;,
  -1.000000;0.000000;-0.000001;,
  0.000009;0.000000;-1.000000;,
  -0.000009;0.000000;-1.000000;;
  14;
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;8,8,8,8;,
  4;7,7,7,7;,
  4;6,6,6,6;,
  4;11,11,11,11;,
  4;10,10,10,10;,
  4;7,7,7,7;,
  4;9,9,9,9;,
  4;12,12,12,12;;
 }
 MeshTextureCoords {
  30;
  1.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.058327;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;1.000000;;
 }
}
