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
 14;
 -1.80304;5.90000;0.00000;,
 -1.80304;5.90000;10.15000;,
 -2.10000;5.50000;10.15000;,
 -2.10000;5.50000;0.00000;,
 -1.60000;-0.50000;10.15000;,
 3.00000;-0.55000;10.15000;,
 3.00000;-0.55000;-0.00000;,
 -1.60000;-0.50000;0.00000;,
 -1.60000;0.32550;0.00000;,
 -2.10000;-0.50000;0.00000;,
 -2.10000;0.32550;0.00000;,
 -1.60000;0.32550;10.15000;,
 -2.10000;0.32550;0.00000;,
 -2.10000;0.32550;10.15000;;
 
 6;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,7,9,10;,
 4;4,7,8,11;,
 4;12,3,2,13;,
 4;12,13,11,8;;
 
 MeshMaterialList {
  2;
  6;
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
    "tun3.png";
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
  6;
  0.000000;0.000000;-1.000000;,
  0.949452;-0.313911;-0.000000;,
  0.802920;-0.596087;-0.000000;,
  0.010869;0.999941;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;;
  6;
  4;2,2,1,1;,
  4;3,3,3,3;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;4,1,1,4;,
  4;5,5,5,5;;
 }
 MeshTextureCoords {
  14;
  0.000000;0.071330;,
  1.000000;0.071330;,
  1.000000;0.156820;,
  0.000000;0.156820;,
  1.000000;0.990550;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.990550;,
  0.000000;0.939970;,
  0.000000;0.990550;,
  0.000000;0.939970;,
  1.000000;0.939970;,
  0.000000;0.878980;,
  1.000000;0.878980;;
 }
}
