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
 2.56589;4.02929;0.01000;,
 2.56589;3.38285;0.01000;,
 1.69236;3.38334;0.01000;,
 1.69236;4.02990;0.01000;,
 3.96561;3.50568;0.01000;,
 3.96561;3.38207;0.01000;,
 3.35591;4.02873;0.01000;,
 3.45940;4.02866;0.01000;,
 1.69236;4.14445;0.01000;,
 4.08667;4.14267;0.01000;,
 4.08667;4.02821;0.01000;,
 3.96561;1.10000;0.01000;,
 3.96561;4.02829;0.01000;,
 4.08667;1.10000;0.01000;,
 3.98115;2.43103;-0.02934;,
 4.07137;2.43103;-0.02934;,
 4.07145;2.26892;-0.02934;,
 3.98126;2.26892;-0.02934;,
 3.98115;2.26892;0.01653;,
 3.98115;2.43103;0.01653;,
 2.58020;3.38285;0.01000;,
 2.57911;3.14165;0.01000;,
 1.69236;3.14209;0.01000;,
 1.69236;3.38334;0.01000;;
 
 8;
 4;0,1,2,3;,
 3;4,5,6;,
 3;7,4,6;,
 4;8,9,10,3;,
 4;11,12,10,13;,
 4;14,15,16,17;,
 4;14,17,18,19;,
 4;20,21,22,23;;
 
 MeshMaterialList {
  2;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.800000;0.800000;0.990000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "mirror.png";
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
  2;
  0.000000;0.000000;-1.000000;,
  -0.999999;-0.000337;-0.001191;;
  8;
  4;0,0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;;
 }
 MeshTextureCoords {
  24;
  0.635160;0.037830;,
  0.635160;0.250160;,
  1.000000;0.250000;,
  1.000000;0.037620;,
  0.050560;0.209810;,
  0.050560;0.250420;,
  0.305210;0.038010;,
  0.261980;0.038040;,
  1.000000;0.000000;,
  0.000000;0.000590;,
  0.000000;0.038180;,
  0.050560;1.000000;,
  0.050560;0.038150;,
  0.000000;1.000000;,
  0.618830;0.308620;,
  0.618830;0.500110;,
  0.123500;0.500220;,
  0.123500;0.308770;,
  0.123500;0.250330;,
  0.618830;0.250170;,
  0.629184;0.250165;,
  0.629642;0.329386;,
  1.000000;0.329240;,
  1.000000;0.250000;;
 }
}
