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
 10;
 -100.187283;-0.500000;50.136077;,
 100.448019;-0.520000;50.136077;,
 100.448000;-0.520000;0.000002;,
 -100.187302;-0.500000;-0.000000;,
 -100.187302;-0.500000;-0.000000;,
 100.448019;-0.520000;0.000002;,
 -100.187283;-19.999992;-14.999997;,
 100.448019;-19.999992;-14.999995;,
 100.448019;-0.950000;-1.828067;,
 -100.187283;-0.950000;-1.828070;;
 6;
 3;0,1,2;,
 3;0,2,3;,
 3;4,5,8;,
 3;7,6,8;,
 3;8,9,4;,
 3;8,6,9;;

 MeshNormals {
  10;
  0.000727;1.000000;0.000000;,
  0.000727;1.000000;0.000000;,
  0.000727;1.000000;0.000000;,
  0.000727;1.000000;0.000000;,
  0.000354;0.972236;-0.234002;,
  0.000708;0.973433;-0.228972;,
  0.000000;0.568727;-0.822526;,
  0.000000;0.568727;-0.822526;,
  0.000189;0.824761;-0.565482;,
  0.000000;0.823297;-0.567610;;
  6;
  3;0,1,2;,
  3;0,2,3;,
  3;4,5,8;,
  3;7,6,8;,
  3;8,9,4;,
  3;8,6,9;;
 }

 MeshTextureCoords {
  10;
  0.000000;1.000000;,
  0.015352;-2.074428;,
  1.010327;-2.105685;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.817193;0.182807;,
  0.000000;0.182807;;
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
    "grd.dds";
   }
  }
 }
}