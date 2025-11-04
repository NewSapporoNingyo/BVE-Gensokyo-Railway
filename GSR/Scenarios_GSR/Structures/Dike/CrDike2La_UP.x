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

template MeshNormals {
 <f6f23f43-7686-11cf-8f52-0040333594a3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
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


Mesh {
 12;
 -5.262508;-0.246431;-0.300000;,
 -6.809998;7.999998;10.299998;,
 -9.499995;7.999998;10.299998;,
 -8.510926;-0.246431;-0.300000;,
 -2.800000;-9.246430;-0.300000;,
 -2.800000;-1.000000;10.299998;,
 -6.809998;7.999998;10.299998;,
 -5.262508;-0.246431;-0.300000;,
 -8.510926;-9.246430;-0.300000;,
 -2.800000;-9.246430;-0.300000;,
 -5.262508;-0.246431;-0.300000;,
 -8.510926;-0.246431;-0.300000;;
 6;
 3;3,2,1;,
 3;3,1,0;,
 3;7,6,5;,
 3;7,5,4;,
 3;11,10,9;,
 3;11,9,8;;

 MeshNormals {
  12;
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.874157;0.485643;0.000000;,
  0.874157;0.485643;0.000000;,
  0.874157;0.485643;0.000000;,
  0.874157;0.485643;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  6;
  3;3,2,1;,
  3;3,1,0;,
  3;7,6,5;,
  3;7,5,4;,
  3;11,10,9;,
  3;11,9,8;;
 }

 MeshTextureCoords {
  12;
  0.007584;0.010430;,
  0.498805;0.004041;,
  0.498805;0.118933;,
  0.002574;0.130057;,
  0.000000;1.000000;,
  0.500000;1.000000;,
  0.500000;0.000000;,
  0.000000;0.811349;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.798572;;
 }

 MeshMaterialList {
  1;
  6;
  0,
  0,
  0,
  0,
  0,
  0;

  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "Dike1.png";
   }
  }
 }
}