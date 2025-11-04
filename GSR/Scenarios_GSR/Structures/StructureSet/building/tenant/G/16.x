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
 27;
 7.00000;20.71113;7.00000;,
 7.00000;0.00000;7.00000;,
 7.00000;0.00000;2.32454;,
 7.00000;20.71113;2.32454;,
 7.00000;20.71113;2.32454;,
 7.00000;0.00000;-3.57611;,
 7.00000;20.71113;-3.57611;,
 7.00000;22.00000;-3.57611;,
 7.00000;22.00000;2.32454;,
 -7.00000;20.71113;7.00000;,
 -7.00000;22.00000;7.00000;,
 -7.00000;22.00000;-7.00000;,
 -7.00000;20.71113;-7.00000;,
 -7.00000;0.00000;-7.00000;,
 -7.00000;0.00000;7.00000;,
 7.00000;20.71113;-3.57611;,
 7.00000;0.00000;-3.57611;,
 3.73942;0.00000;-7.00000;,
 3.73942;20.71113;-7.00000;,
 3.73942;22.00000;-7.00000;,
 7.00000;22.00000;-3.57611;,
 -7.00000;20.71113;-7.00000;,
 -7.00000;22.00000;-7.00000;,
 3.73942;22.00000;-7.00000;,
 3.73942;20.71113;-7.00000;,
 3.73942;0.00000;-7.00000;,
 -7.00000;0.00000;-7.00000;;
 
 9;
 4;0,1,2,3;,
 4;4,2,5,6;,
 4;4,6,7,8;,
 4;9,10,11,12;,
 4;9,12,13,14;,
 4;15,16,17,18;,
 4;15,18,19,20;,
 4;21,22,23,24;,
 4;21,24,25,26;;
 
 MeshMaterialList {
  4;
  9;
  2,
  2,
  2,
  3,
  3,
  1,
  1,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "16_4.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "16_1.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "16_2.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "16_4.png";
   }
  }
 }
 MeshNormals {
  12;
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.393938;0.000000;-0.919137;,
  0.393938;-0.000000;-0.919137;,
  0.928484;-0.000000;-0.371372;,
  0.928484;0.000000;-0.371372;,
  1.000000;0.000000;-0.000000;,
  1.000000;0.000000;-0.000000;,
  1.000000;0.000000;-0.000000;,
  0.928484;-0.000000;-0.371372;,
  0.393938;-0.000000;-0.919137;,
  0.000000;0.000000;-1.000000;;
  9;
  4;1,1,7,8;,
  4;8,7,5,9;,
  4;8,9,4,6;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;9,5,2,10;,
  4;9,10,3,4;,
  4;11,11,3,10;,
  4;11,10,2,11;;
 }
 MeshTextureCoords {
  27;
  1.000000;-2.895099;,
  1.000000;3.992058;,
  0.557922;3.992058;,
  0.557922;-2.895099;,
  0.557922;-2.895099;,
  0.000000;3.992058;,
  0.000000;-2.895099;,
  0.000000;-3.323693;,
  0.557922;-3.323693;,
  1.016915;0.058585;,
  1.016915;0.000000;,
  0.016915;0.000000;,
  0.016915;0.058585;,
  0.016915;1.000000;,
  1.016915;1.000000;,
  1.000000;0.094931;,
  1.000000;0.981654;,
  0.000000;0.981654;,
  -0.000000;0.094931;,
  0.000000;0.039749;,
  1.000000;0.039749;,
  0.007911;0.056472;,
  0.008959;-0.002111;,
  1.008920;0.002149;,
  1.007873;0.060732;,
  0.991041;1.002111;,
  -0.008920;0.997851;;
 }
}
