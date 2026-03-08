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
 -0.540000;-0.050000;-0.062500;,
 -0.540000;-0.050000;0.062500;,
 -0.470000;0.140000;0.062500;,
 -0.470000;0.140000;-0.062500;,
 -0.470000;0.140000;-0.062500;,
 -0.470000;0.140000;0.062500;,
 0.470000;0.140000;0.062500;,
 0.470000;0.140000;-0.062500;,
 0.470000;0.140000;-0.062500;,
 0.470000;0.140000;0.062500;,
 0.540000;-0.050000;0.062500;,
 0.540000;-0.050000;-0.062500;,
 -0.540000;-0.050000;-0.062500;,
 -0.470000;0.140000;-0.062500;,
 0.470000;0.140000;-0.062500;,
 0.540000;-0.050000;-0.062500;;
 8;
 3;0,1,2;,
 3;2,3,0;,
 3;4,5,6;,
 3;6,7,4;,
 3;8,9,10;,
 3;10,11,8;,
 3;12,13,14;,
 3;14,15,12;;

 MeshNormals {
  16;
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  8;
  3;0,1,2;,
  3;2,3,0;,
  3;4,5,6;,
  3;6,7,4;,
  3;8,9,10;,
  3;10,11,8;,
  3;12,13,14;,
  3;14,15,12;;
 }

 MeshTextureCoords {
  16;
  0.819080;0.826590;,
  0.876613;0.816126;,
  0.877846;0.009202;,
  0.820233;-0.001449;,
  0.492844;0.459006;,
  0.495187;0.021736;,
  0.886935;0.026486;,
  0.887362;0.435186;,
  0.222932;0.309326;,
  0.316117;0.302155;,
  0.313996;0.940439;,
  0.221528;0.964180;,
  0.010796;0.719067;,
  0.006852;0.036226;,
  0.385883;0.038797;,
  0.406072;0.692821;;
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
   0.500000;0.500000;0.500000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.500000;0.500000;0.500000;;

   TextureFilename {
    "zebra.png";
   }
  }
 }
}