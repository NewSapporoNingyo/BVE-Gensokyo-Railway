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
 31;
 26.09017;30.00000;-1.04564;,
 -31.00000;30.00000;-1.04564;,
 -31.00000;30.00000;31.00000;,
 26.09020;30.00000;31.00000;,
 31.00000;30.00000;-1.04564;,
 31.00000;30.00000;-31.00000;,
 -31.00000;30.00000;-31.00000;,
 31.00000;0.00000;-1.04564;,
 31.00000;0.00000;-31.00000;,
 31.00000;0.00000;-31.00000;,
 -31.00000;0.00000;-31.00000;,
 31.00000;30.00000;-31.00000;,
 15.05048;104.00713;-21.00000;,
 15.05048;30.00000;-21.00000;,
 -29.00000;30.00000;-21.00000;,
 -29.00000;104.00713;-21.00000;,
 21.00000;104.00713;-15.21982;,
 21.00000;104.00713;29.00000;,
 21.00000;30.00000;29.00000;,
 21.00000;30.00000;-15.21982;,
 26.09020;0.00000;-1.04564;,
 26.09020;30.00000;-1.04564;,
 26.09020;30.00000;31.00000;,
 26.09020;0.00000;31.00000;,
 31.00000;30.00000;-1.04564;,
 26.09017;30.00000;-1.04564;,
 31.00000;0.00000;-1.04564;,
 15.05048;104.00713;-21.00000;,
 21.00000;104.00713;-15.21982;,
 21.00000;30.00000;-15.21982;,
 15.05048;30.00000;-21.00000;;
 
 9;
 4;0,1,2,3;,
 4;4,5,6,1;,
 4;5,4,7,8;,
 4;9,10,6,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,25,20,26;,
 4;27,28,29,30;;
 
 MeshMaterialList {
  5;
  9;
  3,
  3,
  3,
  2,
  0,
  1,
  3,
  3,
  4;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "11_1.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "11_1.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "11_2.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "11_3.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "11_1.png";
   }
  }
 }
 MeshNormals {
  6;
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.696826;0.000000;-0.717240;;
  9;
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;;
 }
 MeshTextureCoords {
  31;
  0.483135;0.000000;,
  0.483135;0.000000;,
  1.000000;0.000000;,
  1.000000;0.000000;,
  0.483135;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.483135;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.118990;0.000000;,
  0.118990;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.115604;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.115604;1.000000;,
  0.483135;1.000000;,
  0.483135;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  1.011909;0.000000;,
  1.129604;0.000000;,
  1.129604;1.000000;,
  1.011909;1.000000;;
 }
}
