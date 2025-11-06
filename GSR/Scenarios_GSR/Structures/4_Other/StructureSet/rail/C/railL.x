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
 26;
 -0.58500;0.00000;0.00000;,
 -0.58500;0.00000;5.00000;,
 -0.48500;0.00000;5.00000;,
 -0.48500;0.00000;0.00000;,
 0.53500;-0.13000;5.00000;,
 0.53500;0.00000;5.00000;,
 0.53500;0.00000;0.00000;,
 0.53500;-0.13000;-0.00000;,
 -0.53500;0.00000;0.00000;,
 -0.53500;-0.13000;0.00000;,
 -0.53500;-0.13000;5.00000;,
 -0.53500;0.00000;5.00000;,
 0.92748;-0.13000;5.00000;,
 2.05145;-0.21065;5.00000;,
 2.05145;-0.21065;-0.00000;,
 0.92748;-0.13000;-0.00000;,
 -1.07277;-0.13000;0.00000;,
 -1.07277;-0.13000;5.00000;,
 -1.47170;-0.21065;0.00000;,
 -2.16600;-0.21060;0.00000;,
 -2.16600;-0.21060;5.00000;,
 -1.47170;-0.21065;5.00000;,
 0.48500;0.00000;0.00000;,
 0.48500;0.00000;5.00000;,
 0.58500;0.00000;5.00000;,
 0.58500;0.00000;0.00000;;
 
 10;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;7,6,5,4;,
 4;11,10,9,8;,
 4;12,13,14,15;,
 4;12,15,16,17;,
 4;18,19,20,21;,
 4;18,21,17,16;,
 4;22,23,24,25;;
 
 MeshMaterialList {
  4;
  10;
  2,
  1,
  1,
  1,
  1,
  0,
  0,
  0,
  0,
  2;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail.png";
   }
  }
  Material {
   0.103200;0.050400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "rail0.png";
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
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.071569;0.997436;0.000000;,
  0.000069;1.000000;0.000000;,
  -0.099569;0.995031;0.000000;,
  0.035807;0.999359;0.000000;,
  -0.099535;0.995034;0.000000;,
  1.000000;0.000000;0.000000;;
  10;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;7,7,7,7;,
  4;7,7,7,7;,
  4;5,2,2,5;,
  4;5,5,4,4;,
  4;6,3,3,6;,
  4;6,6,4,4;,
  4;0,0,0,0;;
 }
 MeshTextureCoords {
  26;
  -0.000000;0.000000;,
  -0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.500000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.500000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.733490;-0.000000;,
  1.000000;-0.000000;,
  1.000000;1.000000;,
  0.733490;1.000000;,
  0.259220;1.000000;,
  0.259220;-0.000000;,
  0.164630;1.000000;,
  0.000000;1.000000;,
  0.000000;-0.000000;,
  0.164630;-0.000000;,
  -0.000000;0.000000;,
  -0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;;
 }
}
