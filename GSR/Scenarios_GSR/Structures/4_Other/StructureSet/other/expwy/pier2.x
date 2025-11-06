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
 28;
 8.50627;6.82174;0.00000;,
 8.50627;8.01498;0.00000;,
 11.21803;8.01498;0.00000;,
 11.21803;6.82174;0.00000;,
 -12.27179;6.82174;0.00000;,
 -12.27179;8.01498;0.00000;,
 -9.08984;8.01498;0.00000;,
 -9.08984;6.82174;0.00000;,
 -9.08984;5.72810;0.00000;,
 8.50627;5.72810;0.00000;,
 -7.05590;5.72810;0.00000;,
 -7.05590;-2.01032;0.00000;,
 -9.08984;-2.01032;0.00000;,
 -7.05590;5.72810;0.00000;,
 -7.05590;5.72810;1.71524;,
 -7.05590;-2.01032;1.71524;,
 -7.05590;-2.01032;0.00000;,
 6.45590;5.72810;0.00000;,
 6.45590;5.72810;1.71520;,
 -7.05590;5.72810;1.71520;,
 -7.05590;5.72810;0.00000;,
 8.50627;-2.01032;-0.00000;,
 6.45590;-2.01032;-0.00000;,
 6.45590;5.72810;0.00000;,
 6.45590;5.72810;0.00000;,
 6.45590;-2.01032;-0.00000;,
 6.45590;-2.01032;1.71524;,
 6.45590;5.72810;1.71520;;
 
 10;
 4;0,1,2,3;,
 4;4,5,6,7;,
 3;8,4,7;,
 3;3,9,0;,
 4;8,10,11,12;,
 4;13,14,15,16;,
 4;17,18,19,20;,
 4;8,6,1,9;,
 4;21,22,23,9;,
 4;24,25,26,27;;
 
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
    "pier2_1.png";
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
  1.000000;0.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  -1.000000;0.000000;0.000000;;
  10;
  4;0,0,0,0;,
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;3,3,3,3;;
 }
 MeshTextureCoords {
  28;
  0.884560;0.119020;,
  0.884560;0.000000;,
  1.000000;0.000000;,
  1.000000;0.119020;,
  0.000000;0.119020;,
  0.000000;0.000000;,
  0.135460;0.000000;,
  0.135460;0.119020;,
  0.135460;0.228110;,
  0.884560;0.228110;,
  0.222050;0.228110;,
  0.222050;1.000000;,
  0.135460;1.000000;,
  0.000000;0.228110;,
  0.124780;0.228110;,
  0.124780;1.000000;,
  0.000000;1.000000;,
  0.761510;0.286350;,
  0.761510;0.533950;,
  0.262590;0.533950;,
  0.262590;0.286350;,
  0.884560;1.000000;,
  0.797270;1.000000;,
  0.797270;0.228110;,
  0.000000;0.228110;,
  0.000000;1.000000;,
  0.124780;1.000000;,
  0.124780;0.228110;;
 }
}
