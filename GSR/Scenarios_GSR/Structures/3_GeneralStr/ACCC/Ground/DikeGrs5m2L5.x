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
 15;
 2.000000;-0.653000;0.000000;,
 -3.000000;-0.653000;0.000000;,
 -3.300000;-0.800000;0.000000;,
 -12.999999;-10.499999;0.000000;,
 2.000000;-0.663000;5.250000;,
 -3.000000;-0.663000;5.250000;,
 -3.300000;-0.810000;5.250000;,
 -12.999999;-10.509999;5.250000;,
 -3.600000;-10.499999;0.000000;,
 -3.000000;-0.653000;0.000000;,
 -3.000000;-0.663000;5.250000;,
 -3.300000;-0.800000;0.000000;,
 -3.300000;-0.810000;5.250000;,
 -3.300000;-0.800000;0.000000;,
 -12.999999;-10.499999;0.000000;;
 7;
 3;0,1,5;,
 3;0,5,4;,
 3;11,3,7;,
 3;11,7,12;,
 3;13,8,14;,
 3;9,2,6;,
 3;9,6,10;;

 MeshNormals {
  15;
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.440015;0.897990;0.000000;,
  -0.707107;0.707107;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  -0.440015;0.897990;0.000000;,
  -0.707107;0.707107;0.000000;,
  0.000000;0.000000;-1.000000;,
  -0.440015;0.897990;0.000000;,
  -0.440015;0.897990;0.000000;,
  -0.707107;0.707107;0.000000;,
  -0.707107;0.707107;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  7;
  3;0,1,5;,
  3;0,5,4;,
  3;11,3,7;,
  3;11,7,12;,
  3;13,8,14;,
  3;9,2,6;,
  3;9,6,10;;
 }

 MeshTextureCoords {
  15;
  0.329200;0.000000;,
  0.329200;1.000000;,
  0.329200;0.000000;,
  0.329200;1.500000;,
  0.161500;0.000000;,
  0.161500;1.000000;,
  0.161500;0.000000;,
  0.161500;1.500000;,
  1.500000;0.000000;,
  0.329200;0.080000;,
  0.161500;0.080000;,
  0.329200;0.200000;,
  0.161500;0.200000;,
  0.329200;0.200000;,
  0.329200;1.500000;;
 }

 MeshMaterialList {
  1;
  7;
  0,
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
    "Grass.dds";
   }
  }
 }
}