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
 36;
 0.71750;0.00000;2.50000;,
 0.76750;0.00000;2.50000;,
 0.76750;0.00000;-2.50000;,
 0.71750;0.00000;-2.50000;,
 0.66750;0.00000;-2.50000;,
 0.66750;0.00000;2.50000;,
 -1.20044;-0.26890;2.50000;,
 -1.20044;-0.26890;-2.50000;,
 -2.50000;-0.37237;-2.50000;,
 -2.50000;-0.37237;2.50000;,
 1.19204;-0.26890;2.50000;,
 2.50000;-0.37237;2.50000;,
 2.50000;-0.37237;-2.50000;,
 1.19204;-0.26890;-2.50000;,
 -0.71750;-0.20000;-2.50000;,
 -1.20044;-0.26890;-2.50000;,
 -1.20044;-0.26890;2.50000;,
 -0.71750;-0.20000;2.50000;,
 -0.00420;-0.23596;2.50000;,
 -0.00420;-0.23596;-2.50000;,
 0.71750;-0.20000;2.50000;,
 1.19204;-0.26890;2.50000;,
 1.19204;-0.26890;-2.50000;,
 0.71750;-0.20000;-2.50000;,
 -0.71750;0.00000;2.50000;,
 -0.66750;0.00000;2.50000;,
 -0.66750;0.00000;-2.50000;,
 -0.71750;0.00000;-2.50000;,
 -0.76750;0.00000;-2.50000;,
 -0.76750;0.00000;2.50000;,
 -0.71750;-0.20000;2.50000;,
 -0.71750;-0.20000;-2.50000;,
 0.71750;0.00000;-2.50000;,
 0.71750;-0.20000;-2.50000;,
 0.71750;-0.20000;2.50000;,
 0.71750;0.00000;2.50000;;
 
 14;
 4;0,1,2,3;,
 4;0,3,4,5;,
 4;6,7,8,9;,
 4;10,11,12,13;,
 4;14,15,16,17;,
 4;14,17,18,19;,
 4;20,21,22,23;,
 4;20,23,19,18;,
 4;24,25,26,27;,
 4;24,27,28,29;,
 4;24,30,31,27;,
 4;27,31,30,24;,
 4;32,33,34,35;,
 4;35,34,33,32;;
 
 MeshMaterialList {
  7;
  14;
  4,
  4,
  1,
  2,
  0,
  0,
  0,
  0,
  3,
  3,
  5,
  5,
  5,
  5;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail1_1_dark.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail1_3_dark.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail1_3_dark.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail1_2_dark.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail1_2_dark.png";
   }
  }
  Material {
   0.109804;0.075294;0.037647;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  11;
  -0.079373;0.996845;0.000000;,
  0.078867;0.996885;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.110356;0.993892;0.000000;,
  0.111332;0.993783;0.000000;,
  0.000292;1.000000;0.000000;,
  -0.045652;0.998957;0.000000;,
  0.047180;0.998886;0.000000;,
  0.000000;1.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;;
  14;
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;3,3,0,0;,
  4;4,1,1,4;,
  4;6,3,3,6;,
  4;6,6,5,5;,
  4;7,4,4,7;,
  4;7,7,5,5;,
  4;8,8,8,8;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;10,10,10,10;,
  4;10,10,10,10;,
  4;9,9,9,9;;
 }
 MeshTextureCoords {
  36;
  0.500000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.500000;0.000000;,
  -0.000000;0.000000;,
  -0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.241508;1.000000;,
  0.067521;1.000000;,
  0.067521;-0.000000;,
  0.241508;0.000000;,
  0.498488;0.000000;,
  0.498488;1.000000;,
  0.758492;0.000000;,
  0.929455;0.000000;,
  0.929455;1.000000;,
  0.758492;1.000000;,
  0.500000;1.000000;,
  -0.000000;1.000000;,
  -0.000000;0.000000;,
  0.500000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
