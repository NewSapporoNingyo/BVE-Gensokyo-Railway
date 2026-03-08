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
 -199.999910;-0.500000;-1.000000;,
 -199.999910;-0.520000;26.499990;,
 0.000000;-0.520000;26.499990;,
 0.000000;-0.500000;-1.000000;,
 0.000000;-0.500000;-1.000000;,
 0.000000;-0.520000;26.499992;,
 14.999997;-19.999990;-1.000000;,
 14.999997;-19.999990;26.499992;,
 1.828069;-0.950000;26.499992;,
 1.828070;-0.950000;-1.000000;,
 -199.999987;-0.500000;-0.999990;,
 0.000000;-0.500000;-0.999990;,
 0.000000;-0.950000;-2.858555;,
 0.000000;-19.999990;-16.030483;,
 -199.999987;-19.999990;-16.030483;,
 -199.999987;-0.950000;-2.858558;;
 10;
 3;0,1,2;,
 3;0,2,3;,
 3;4,5,8;,
 3;7,6,8;,
 3;8,9,4;,
 3;8,6,9;,
 3;10,11,12;,
 3;13,14,12;,
 3;12,15,10;,
 3;12,14,15;;

 MeshNormals {
  16;
  0.000000;1.000000;0.000727;,
  0.000000;1.000000;0.000727;,
  0.000000;1.000000;0.000727;,
  0.000000;1.000000;0.000727;,
  0.234002;0.972236;0.000354;,
  0.228972;0.973433;0.000708;,
  0.822526;0.568727;0.000000;,
  0.822526;0.568727;0.000000;,
  0.565482;0.824761;0.000189;,
  0.567610;0.823297;0.000000;,
  0.000354;0.972236;-0.234002;,
  0.000708;0.973433;-0.228972;,
  0.000189;0.824761;-0.565482;,
  0.000000;0.568727;-0.822526;,
  0.000000;0.568727;-0.822526;,
  0.000000;0.823297;-0.567610;;
  10;
  3;0,1,2;,
  3;0,2,3;,
  3;4,5,8;,
  3;7,6,8;,
  3;8,9,4;,
  3;8,6,9;,
  3;10,11,12;,
  3;13,14,12;,
  3;12,15,10;,
  3;12,14,15;;
 }

 MeshTextureCoords {
  16;
  0.000000;1.000000;,
  0.000000;0.000000;,
  3.000000;0.000000;,
  3.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.817193;0.182807;,
  0.000000;0.182807;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.817193;0.182807;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.182807;;
 }

 MeshMaterialList {
  3;
  10;
  0,
  0,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2;

  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "grd.dds";
   }
  }

  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "grd.dds";
   }
  }

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