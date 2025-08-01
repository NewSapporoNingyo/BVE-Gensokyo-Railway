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
 20;
 -0.190000;7.900000;0.250000;,
 0.190000;7.900000;0.250000;,
 0.190000;6.000000;0.050000;,
 -0.190000;6.000000;0.050000;,
 -0.190000;6.000000;0.050000;,
 0.190000;6.000000;0.050000;,
 0.190000;5.050000;0.050000;,
 -0.190000;5.050000;0.050000;,
 0.050000;5.949997;0.000000;,
 4.550000;5.949997;0.000000;,
 4.550000;5.090000;0.000000;,
 0.050000;5.090000;0.000000;,
 -0.190000;7.900000;-0.250000;,
 0.190000;7.900000;-0.250000;,
 0.190000;6.000000;-0.050000;,
 -0.190000;6.000000;-0.050000;,
 -0.190000;6.000000;-0.050000;,
 0.190000;6.000000;-0.050000;,
 0.190000;5.050000;-0.050000;,
 -0.190000;5.050000;-0.050000;;
 10;
 3;0,1,2;,
 3;0,2,3;,
 3;4,5,6;,
 3;4,6,7;,
 3;8,9,10;,
 3;8,10,11;,
 3;12,13,14;,
 3;12,14,15;,
 3;16,17,18;,
 3;16,18,19;;

 MeshNormals {
  20;
  0.000000;0.104685;-0.994505;,
  0.000000;0.104685;-0.994505;,
  0.000000;0.104685;-0.994505;,
  0.000000;0.104685;-0.994505;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;-0.104685;-0.994505;,
  0.000000;-0.104685;-0.994505;,
  0.000000;-0.104685;-0.994505;,
  0.000000;-0.104685;-0.994505;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  10;
  3;0,1,2;,
  3;0,2,3;,
  3;4,5,6;,
  3;4,6,7;,
  3;8,9,10;,
  3;8,10,11;,
  3;12,13,14;,
  3;12,14,15;,
  3;16,17,18;,
  3;16,18,19;;
 }

 MeshTextureCoords {
  20;
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.650000;,
  1.000000;0.650000;,
  1.000000;0.650000;,
  0.000000;0.650000;,
  0.000000;0.980000;,
  1.000000;0.980000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.650000;,
  1.000000;0.650000;,
  1.000000;0.650000;,
  0.000000;0.650000;,
  0.000000;0.980000;,
  1.000000;0.980000;;
 }

 MeshMaterialList {
  3;
  10;
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2,
  2,
  2;

  Material {
   0.392157;0.392157;0.392157;0.990000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "BeamF01.png";
   }
  }

  Material {
   1.000000;1.000000;1.000000;0.990000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "BeamF12DC.png";
   }
  }

  Material {
   1.000000;1.000000;1.000000;0.990000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;

   TextureFilename {
    "BeamF01.png";
   }
  }
 }
}