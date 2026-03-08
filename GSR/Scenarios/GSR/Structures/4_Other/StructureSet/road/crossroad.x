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
 -19.50000;0.00000;-3.14400;,
 -19.50000;0.00000;3.51180;,
 -6.50000;0.00000;3.51180;,
 -6.50000;0.00000;-3.14400;,
 19.50000;0.00000;-3.14400;,
 6.50000;0.00000;-3.14400;,
 6.50000;0.00000;3.51180;,
 19.50000;0.00000;3.51180;,
 -19.50000;0.07000;3.51180;,
 -19.50000;0.07000;6.50000;,
 -6.50000;0.07000;6.50000;,
 -6.50000;0.07000;3.51180;,
 -19.50000;0.07000;-3.14400;,
 -6.50000;0.07000;-3.14400;,
 -6.50000;0.07000;-6.50000;,
 -19.50000;0.07000;-6.50000;,
 -6.50000;0.07000;3.51180;,
 -6.50000;0.00000;3.51180;,
 -19.50000;0.00000;3.51180;,
 -19.50000;0.07000;3.51180;,
 19.50000;0.07000;3.51180;,
 6.50000;0.07000;3.51180;,
 6.50000;0.07000;6.50000;,
 19.50000;0.07000;6.50000;,
 19.50000;0.07000;-3.14400;,
 19.50000;0.07000;-6.50000;,
 6.50000;0.07000;-6.50000;,
 6.50000;0.07000;-3.14400;,
 6.50000;0.07000;3.51180;,
 19.50000;0.07000;3.51180;,
 19.50000;0.00000;3.51180;,
 6.50000;0.00000;3.51180;;
 
 8;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,29,30,31;;
 
 MeshMaterialList {
  3;
  8;
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "1_2.png";
   }
  }
  Material {
   0.228800;0.228800;0.228800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;0.990000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "1_4.png";
   }
  }
 }
 MeshNormals {
  3;
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;-1.000000;;
  8;
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;2,2,2,2;;
 }
 MeshTextureCoords {
  32;
  0.227488;2.000000;,
  0.782004;2.000000;,
  0.782004;1.000000;,
  0.227488;1.000000;,
  0.227488;-1.000000;,
  0.227488;0.000000;,
  0.782004;0.000000;,
  0.782004;-1.000000;,
  0.782004;2.000000;,
  1.030960;2.000000;,
  1.030960;1.000000;,
  0.782004;1.000000;,
  0.227488;2.000000;,
  0.227488;1.000000;,
  -0.052112;1.000000;,
  -0.052112;2.000000;,
  1.000000;0.770140;,
  1.000000;0.770140;,
  0.000000;0.770140;,
  0.000000;0.770140;,
  0.782004;-1.000000;,
  0.782004;0.000000;,
  1.030960;0.000000;,
  1.030960;-1.000000;,
  0.227488;-1.000000;,
  -0.052112;-1.000000;,
  -0.052112;0.000000;,
  0.227488;0.000000;,
  1.000000;0.770140;,
  0.000000;0.770140;,
  0.000000;0.770140;,
  1.000000;0.770140;;
 }
}
