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
 7.810000;7.999999;-0.300000;,
 7.810000;7.999999;10.299998;,
 9.999998;7.999999;10.299998;,
 9.999998;7.999999;-0.300000;,
 2.800000;-1.000000;-0.300000;,
 2.800000;-1.000000;10.299998;,
 7.810000;7.999999;10.299998;,
 7.810000;7.999999;-0.300000;,
 9.999998;-1.000000;-0.300000;,
 2.800000;-1.000000;-0.300000;,
 7.810000;7.999999;-0.300000;,
 9.999998;7.999999;-0.300000;;
 6;
 3;3,1,2;,
 3;3,0,1;,
 3;7,5,6;,
 3;7,4,5;,
 3;11,9,10;,
 3;11,8,9;;

 MeshNormals {
  12;
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.874157;0.485643;0.000000;,
  -0.874157;0.485643;0.000000;,
  -0.874157;0.485643;0.000000;,
  -0.874157;0.485643;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  6;
  3;3,1,2;,
  3;3,0,1;,
  3;7,5,6;,
  3;7,4,5;,
  3;11,9,10;,
  3;11,8,9;;
 }

 MeshTextureCoords {
  12;
  0.504363;0.007441;,
  0.996728;0.009623;,
  0.996728;0.106891;,
  0.503272;0.102528;,
  0.500000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.500000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;;
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