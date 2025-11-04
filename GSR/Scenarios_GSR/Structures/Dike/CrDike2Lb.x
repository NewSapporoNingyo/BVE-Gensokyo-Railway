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
 -6.800000;7.999998;-0.300000;,
 -6.800000;7.999998;10.299998;,
 -8.249994;7.999998;10.299998;,
 -8.249994;7.999998;-0.300000;,
 -2.800000;-1.000000;-0.300000;,
 -2.800000;-1.000000;10.299998;,
 -6.800000;7.999998;10.299998;,
 -6.800000;7.999998;-0.300000;,
 -8.249994;-1.000000;-0.300000;,
 -2.800000;-1.000000;-0.300000;,
 -6.800000;7.999998;-0.300000;,
 -8.249994;7.999998;-0.300000;,
 -12.409678;7.896546;-0.267926;,
 -12.409678;7.896546;10.302422;,
 -8.213722;7.896546;-0.267926;,
 -8.213722;7.896546;10.302422;;
 8;
 3;3,2,1;,
 3;3,1,0;,
 3;7,6,5;,
 3;7,5,4;,
 3;11,10,9;,
 3;11,9,8;,
 3;12,13,14;,
 3;13,15,14;;

 MeshNormals {
  16;
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
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;-0.000000;,
  0.000000;1.000000;-0.000000;,
  0.000000;1.000000;-0.000000;,
  0.000000;1.000000;-0.000000;;
  8;
  3;3,2,1;,
  3;3,1,0;,
  3;7,6,5;,
  3;7,5,4;,
  3;11,10,9;,
  3;11,9,8;,
  3;12,13,14;,
  3;13,15,14;;
 }

 MeshTextureCoords {
  16;
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
  0.000000;0.000000;,
  0.008913;0.258470;,
  0.995544;0.245101;,
  0.008913;0.759356;,
  0.991087;0.772725;;
 }

 MeshMaterialList {
  2;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1;

  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "Dike1.png";
   }
  }

  Material {
   0.500000;0.500000;0.500000;1.000000;;
   0.000000;
   0.500000;0.500000;0.500000;;
   0.500000;0.500000;0.500000;;

   TextureFilename {
    "grass2.png";
   }
  }
 }
}