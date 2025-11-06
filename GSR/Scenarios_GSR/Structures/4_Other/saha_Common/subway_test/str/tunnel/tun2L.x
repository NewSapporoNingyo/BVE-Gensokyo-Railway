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
 16;
 -1.80304;5.90000;0.00000;,
 -1.80304;5.90000;10.15000;,
 -2.10000;5.50000;10.15000;,
 -2.10000;5.50000;0.00000;,
 3.00000;5.95000;0.00000;,
 3.00000;5.95000;10.15000;,
 -1.60000;-0.30000;10.15000;,
 3.00000;-0.35000;10.15000;,
 3.00000;-0.35000;-0.00000;,
 -1.60000;-0.30000;0.00000;,
 -1.60000;0.32550;0.00000;,
 -2.10000;-0.30000;0.00000;,
 -2.10000;0.32550;0.00000;,
 -1.60000;0.32550;10.15000;,
 -2.10000;0.32550;0.00000;,
 -2.10000;0.32550;10.15000;;
 
 7;
 4;0,1,2,3;,
 4;4,5,1,0;,
 4;6,7,8,9;,
 4;10,9,11,12;,
 4;6,9,10,13;,
 4;14,3,2,15;,
 4;14,15,13,10;;
 
 MeshMaterialList {
  1;
  7;
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
    "tun2.png";
   }
  }
 }
 MeshNormals {
  7;
  0.000000;0.000000;-1.000000;,
  0.949452;-0.313912;-0.000000;,
  0.454039;-0.890982;-0.000000;,
  0.010410;-0.999946;-0.000000;,
  0.010869;0.999941;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;;
  7;
  4;2,2,1,1;,
  4;3,3,2,2;,
  4;4,4,4,4;,
  4;0,0,0,0;,
  4;5,5,5,5;,
  4;5,1,1,5;,
  4;6,6,6,6;;
 }
 MeshTextureCoords {
  16;
  0.000000;0.071334;,
  1.000000;0.071334;,
  1.000000;0.156820;,
  0.000000;0.156820;,
  0.000000;0.016717;,
  1.000000;0.016717;,
  1.000000;0.990549;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.990549;,
  0.000000;0.939970;,
  0.000000;0.990549;,
  0.000000;0.939970;,
  1.000000;0.939970;,
  0.000000;0.878976;,
  1.000000;0.878976;;
 }
}
