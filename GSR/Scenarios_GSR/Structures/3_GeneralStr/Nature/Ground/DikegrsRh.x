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
 3.900000;-0.400000;0.000000;,
 3.900000;-0.400000;26.499998;,
 0.500000;-0.550000;26.499998;,
 0.500000;-0.550000;0.000000;,
 5.199999;-1.200000;0.000000;,
 5.199999;-1.200000;26.499998;,
 3.900000;-0.400000;26.499998;,
 3.900000;-0.400000;0.000000;,
 12.999999;-8.000000;0.000000;,
 12.999999;-8.000000;26.499998;,
 5.199999;-1.200000;26.499998;,
 5.199999;-1.200000;0.000000;;
 6;
 3;3,2,1;,
 3;3,1,0;,
 3;7,6,5;,
 3;7,5,4;,
 3;11,10,9;,
 3;11,9,8;;

 MeshNormals {
  12;
  -0.044075;0.999028;0.000000;,
  -0.044075;0.999028;0.000000;,
  -0.044075;0.999028;0.000000;,
  -0.044075;0.999028;0.000000;,
  0.524098;0.851658;0.000000;,
  0.524098;0.851658;0.000000;,
  0.524098;0.851658;0.000000;,
  0.524098;0.851658;0.000000;,
  0.657135;0.753773;0.000000;,
  0.657135;0.753773;0.000000;,
  0.657135;0.753773;0.000000;,
  0.657135;0.753773;0.000000;;
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
  0.000000;0.300000;,
  1.000000;0.300000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.400000;,
  1.000000;0.400000;,
  1.000000;0.300000;,
  0.000000;0.300000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.400000;,
  0.000000;0.400000;;
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
    "grd.png";
   }
  }
 }
}