xof 0303txt 0032
template Vector {
 <3d82ab5e-62da-11cf-ab39-0020af71e433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template MeshFace {
 <3d82ab5f-62da-11cf-ab39-0020af71e433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
 <3d82ab44-62da-11cf-ab39-0020af71e433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template ColorRGBA {
 <35ff44e0-6c7c-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <d3e16e81-7835-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template Material {
 <3d82ab4d-62da-11cf-ab39-0020af71e433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshMaterialList {
 <f6f23f42-7686-11cf-8f52-0040333594a3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material <3d82ab4d-62da-11cf-ab39-0020af71e433>]
}

template TextureFilename {
 <a42790e1-7810-11cf-8f52-0040333594a3>
 STRING filename;
}

template Coords2d {
 <f6f23f44-7686-11cf-8f52-0040333594a3>
 FLOAT u;
 FLOAT v;
}

template MeshTextureCoords {
 <f6f23f40-7686-11cf-8f52-0040333594a3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshNormals {
 <f6f23f43-7686-11cf-8f52-0040333594a3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}


Mesh  {
 20;
 -7.600000;3.600000;-10.000000;,
 -7.600000;3.600000;35.000000;,
 1.900000;-0.500000;35.000000;,
 1.900000;-0.500000;-10.000000;,
 35.000000;-30.000000;35.000000;,
 35.000000;-30.000000;-10.000000;,
 60.000000;-60.000000;35.000000;,
 60.000000;-60.000000;-10.000000;,
 -12.000000;4.500000;35.000000;,
 -12.000000;4.500000;-10.000000;,
 -12.000000;3.600000;-20.000000;,
 -7.600000;3.600000;-10.000000;,
 1.900000;-0.500000;-10.000000;,
 -12.000000;-7.000000;-40.000000;,
 35.000000;-30.000000;-10.000000;,
 -12.000000;-30.000000;-60.000000;,
 60.000000;-60.000000;-10.000000;,
 -12.000000;-60.000000;-70.000000;,
 -12.000000;4.500000;-10.000000;,
 -12.000000;4.500000;-15.000000;;
 8;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;9,8,1,0;,
 4;10,11,12,13;,
 4;13,12,14,15;,
 4;15,14,16,17;,
 4;19,18,11,10;;

 MeshMaterialList  {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;

  Material  {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename  {
    "grass2.dds";
   }
  }
 }

 MeshTextureCoords  {
  20;
  0.000000;0.000000;,
  2.000000;0.000000;,
  2.000000;0.500000;,
  0.000000;0.500000;,
  2.000000;2.000000;,
  0.000000;2.000000;,
  2.000000;3.500000;,
  0.000000;3.500000;,
  2.000000;-0.400000;,
  0.000000;-0.400000;,
  0.000000;0.000000;,
  2.000000;0.000000;,
  2.000000;0.500000;,
  0.000000;0.500000;,
  2.000000;2.000000;,
  0.000000;2.000000;,
  2.000000;3.500000;,
  0.000000;3.500000;,
  2.000000;-0.400000;,
  0.000000;-0.400000;;
 }

 MeshNormals  {
  8;
  0.396251;0.918142;0.000000;,
  0.665343;0.746538;0.000000;,
  0.768221;0.640184;0.000000;,
  0.200396;0.979715;0.000000;,
  0.390362;0.904498;-0.171759;,
  0.602145;0.675628;-0.425380;,
  0.622809;0.519007;-0.585440;,
  0.200396;0.979715;0.000000;;
  8;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;6,6,6,6;,
  4;7,7,7,7;;
 }
}