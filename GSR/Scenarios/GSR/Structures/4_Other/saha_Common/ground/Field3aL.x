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
 16;
 -149.999987;0.000000;5.602379;,
 0.000000;0.000000;5.602379;,
 0.000000;0.000000;50.099994;,
 -149.999987;0.000000;50.099994;,
 -149.999987;0.500000;4.797910;,
 0.000000;0.500000;4.797910;,
 -149.999987;0.500000;1.580030;,
 -149.999987;0.000000;0.000000;,
 0.000000;0.000000;0.000000;,
 0.000000;0.500000;1.580030;,
 0.000000;0.000000;5.602379;,
 -149.999987;0.000000;5.602379;,
 -149.999987;0.500000;1.580030;,
 0.000000;0.500000;1.580030;,
 0.000000;0.500000;4.797910;,
 -149.999987;0.500000;4.797910;;
 8;
 3;0,2,1;,
 3;0,3,2;,
 3;4,10,5;,
 3;4,11,10;,
 3;6,8,7;,
 3;6,9,8;,
 3;12,14,13;,
 3;12,15,14;;

 MeshNormals {
  16;
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.849323;0.527874;,
  0.000000;0.849323;0.527874;,
  0.000000;0.953402;-0.301704;,
  0.000000;0.953402;-0.301704;,
  0.000000;0.953402;-0.301704;,
  0.000000;0.953402;-0.301704;,
  0.000000;0.849323;0.527874;,
  0.000000;0.849323;0.527874;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;;
  8;
  3;0,2,1;,
  3;0,3,2;,
  3;4,10,5;,
  3;4,11,10;,
  3;6,8,7;,
  3;6,9,8;,
  3;12,14,13;,
  3;12,15,14;;
 }

 MeshTextureCoords {
  16;
  3.000000;0.888176;,
  0.000000;0.888176;,
  0.000000;0.000000;,
  3.000000;0.000000;,
  3.000000;0.904233;,
  0.000000;0.904233;,
  3.000000;0.968462;,
  3.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.968462;,
  0.000000;0.888176;,
  3.000000;0.888176;,
  3.000000;0.968462;,
  0.000000;0.968462;,
  0.000000;0.904233;,
  3.000000;0.904233;;
 }

 MeshMaterialList {
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

  Material {
   1.000000;1.000000;1.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "Field3.png";
   }
  }
 }
}