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
 32;
 6.02670;5.68849;0.00000;,
 6.02670;-1.47235;-0.00000;,
 6.02670;-1.47235;1.68418;,
 6.02670;5.68849;1.68418;,
 6.02670;5.68849;0.00000;,
 8.12969;5.68849;0.00000;,
 8.12969;-1.47235;-0.00000;,
 6.02670;-1.47235;-0.00000;,
 -7.06582;5.68849;0.00000;,
 -7.06580;-1.47235;0.00000;,
 -9.12627;-1.47235;0.00000;,
 -9.12627;5.68849;0.00000;,
 -11.25000;6.53003;0.00000;,
 -11.25000;8.02765;0.00000;,
 -9.12627;8.02765;0.00000;,
 -9.12627;6.53003;0.00000;,
 8.12969;6.53003;0.00000;,
 8.12969;8.02765;0.00000;,
 11.25000;8.02765;0.00000;,
 11.25000;6.53003;0.00000;,
 -7.06580;1.56693;1.68418;,
 -7.06580;-1.47235;1.68418;,
 -7.06580;-1.47235;0.00000;,
 -7.06580;1.56693;0.00000;,
 -7.06580;3.41143;1.68418;,
 -7.06580;3.41143;0.00000;,
 -7.06580;5.68849;0.00000;,
 -7.06580;5.68849;1.68418;,
 6.02670;5.68849;0.00000;,
 6.02670;5.68849;1.68418;,
 -7.06580;5.68849;1.68418;,
 -7.06582;5.68849;0.00000;;
 
 12;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 3;11,12,15;,
 3;19,5,16;,
 4;11,14,17,5;,
 4;20,21,22,23;,
 4;24,20,23,25;,
 4;24,25,26,27;,
 4;28,29,30,31;;
 
 MeshMaterialList {
  5;
  12;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "pier1_3.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "pier1_1.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "pier1_4.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "pier1_2.png";
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
  4;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;-1.000000;-0.000000;;
  12;
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;2,2,2,2;,
  4;3,3,3,3;;
 }
 MeshTextureCoords {
  32;
  0.734420;0.246230;,
  0.734420;1.000000;,
  0.545110;1.000000;,
  0.545110;0.246230;,
  0.767850;0.246230;,
  0.861320;0.246230;,
  0.861320;1.000000;,
  0.767850;1.000000;,
  0.185960;0.246230;,
  0.185960;1.000000;,
  0.094390;1.000000;,
  0.094390;0.246230;,
  0.000000;0.157640;,
  0.000000;0.000000;,
  0.094390;0.000000;,
  0.094390;0.157640;,
  0.861320;0.157640;,
  0.861320;0.000000;,
  1.000000;0.000000;,
  1.000000;0.157640;,
  0.545110;0.703650;,
  0.545110;1.000000;,
  0.734420;1.000000;,
  0.734420;0.703650;,
  0.545110;0.509490;,
  0.734420;0.509490;,
  0.734420;0.246230;,
  0.545110;0.246230;,
  1.000000;1.000000;,
  1.000000;-0.000003;,
  0.000001;-0.000003;,
  -0.000000;1.000000;;
 }
}
