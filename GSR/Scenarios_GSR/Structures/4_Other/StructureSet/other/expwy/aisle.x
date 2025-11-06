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
 23;
 12.88655;9.98413;1.72790;,
 12.88655;8.78951;1.72790;,
 10.44933;8.78951;1.72790;,
 10.44933;9.98413;1.72790;,
 13.27288;9.98413;1.72790;,
 10.44933;10.36233;1.72790;,
 13.27288;10.36233;1.72790;,
 12.54472;8.30346;1.72790;,
 11.71762;5.44252;1.72790;,
 11.71762;8.30346;1.72790;,
 10.44933;8.30346;1.72790;,
 13.27288;8.78951;1.72790;,
 13.27288;8.30346;1.72790;,
 11.71763;5.12730;1.72790;,
 10.44930;5.12730;1.72789;,
 13.27288;5.44252;1.72790;,
 13.27288;5.12730;1.72790;,
 -9.12627;5.47555;1.72789;,
 -9.12627;8.06103;1.72789;,
 10.44930;8.06103;1.72789;,
 10.44930;5.47555;1.72789;,
 10.44930;5.12730;1.72789;,
 -9.12627;5.12730;1.72789;;
 
 9;
 4;0,1,2,3;,
 3;4,1,0;,
 4;5,6,4,3;,
 3;7,8,9;,
 4;10,2,11,12;,
 4;10,9,13,14;,
 4;15,16,13,8;,
 4;17,18,19,20;,
 4;17,20,21,22;;
 
 MeshMaterialList {
  3;
  9;
  1,
  1,
  1,
  1,
  1,
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
    "pier1_3.png";
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
  3;
  0.000000;0.000000;-1.000000;,
  0.000003;0.000001;-1.000000;,
  0.000001;0.000001;-1.000000;;
  9;
  4;0,0,0,0;,
  3;0,0,0;,
  4;0,0,0,0;,
  3;0,0,2;,
  4;2,0,0,0;,
  4;2,2,2,1;,
  4;0,0,2,0;,
  4;0,0,0,0;,
  4;0,0,0,0;;
 }
 MeshTextureCoords {
  23;
  0.863180;0.105120;,
  0.863180;0.323980;,
  0.000000;0.323980;,
  0.000000;0.105120;,
  1.000000;0.105120;,
  0.000000;0.035830;,
  1.000000;0.035830;,
  0.742110;0.413030;,
  0.449180;0.937160;,
  0.449180;0.413030;,
  0.000000;0.413030;,
  1.000000;0.323980;,
  1.000000;0.413030;,
  0.449190;0.994920;,
  0.000000;0.994920;,
  1.000000;0.937160;,
  1.000000;0.994920;,
  -0.664640;0.779330;,
  -0.664640;0.000000;,
  1.512590;0.000000;,
  1.512590;0.779330;,
  1.512590;1.000000;,
  -0.664640;1.000000;;
 }
}
