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
 14;
 -0.131158;0.692004;-0.057448;,
 0.117831;0.692004;-0.057448;,
 -0.131158;0.003541;-0.057448;,
 0.117831;0.003541;-0.057448;,
 -0.131158;0.692004;0.044146;,
 0.117831;0.692004;0.044146;,
 -0.131158;0.003541;0.044146;,
 0.117831;0.003541;0.044146;,
 -0.131158;0.003541;-0.057448;,
 -0.131158;0.692004;0.044146;,
 -0.131158;0.692004;-0.057448;,
 -0.131158;0.692004;0.044146;,
 -0.131158;0.003541;-0.057448;,
 -0.131158;0.003541;0.044146;;
 10;
 3;0,1,2;,
 3;1,3,2;,
 3;0,5,1;,
 3;5,0,4;,
 3;1,7,3;,
 3;7,1,5;,
 3;3,6,2;,
 3;6,3,7;,
 3;8,9,10;,
 3;11,12,13;;

 MeshNormals {
  14;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  10;
  3;0,1,2;,
  3;1,3,2;,
  3;0,5,1;,
  3;5,0,4;,
  3;1,7,3;,
  3;7,1,5;,
  3;3,6,2;,
  3;6,3,7;,
  3;8,9,10;,
  3;11,12,13;;
 }

 MeshTextureCoords {
  14;
  0.066165;0.000000;,
  1.000000;0.000000;,
  0.066165;1.000000;,
  1.000000;1.000000;,
  0.066165;0.000000;,
  1.000000;0.000000;,
  0.066165;1.000000;,
  1.000000;1.000000;,
  0.077193;0.969674;,
  0.027569;0.099248;,
  0.055138;0.099248;,
  0.033083;0.093734;,
  0.071679;0.964160;,
  0.027569;0.969674;;
 }

 MeshMaterialList {
  2;
  10;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1;

  Material {
   0.500000;0.500000;0.500000;1.000000;;
   0.000000;
   1.000000;1.000000;1.000000;;
   1.000000;1.000000;1.000000;;

   TextureFilename {
    "t_denwa.png";
   }
  }

  Material {
   0.500000;0.500000;0.500000;1.000000;;
   0.000000;
   1.000000;1.000000;1.000000;;
   1.000000;1.000000;1.000000;;

   TextureFilename {
    "t_denwa.png";
   }
  }
 }
}