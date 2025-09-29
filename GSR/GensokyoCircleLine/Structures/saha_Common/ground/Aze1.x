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
 -1.025257;0.550000;25.099997;,
 -1.025257;0.550000;0.000000;,
 -1.196557;0.000000;0.000000;,
 -1.196557;0.000000;25.099997;,
 0.994197;0.550000;25.099997;,
 1.196557;0.000000;25.099997;,
 1.196557;0.000000;0.000000;,
 0.994197;0.550000;0.000000;,
 1.196557;0.000000;0.000000;,
 -1.196557;0.000000;0.000000;,
 0.994197;0.550000;25.099997;,
 0.994197;0.550000;0.000000;,
 -1.025257;0.550000;0.000000;,
 -1.025257;0.550000;25.099997;,
 0.994197;0.550000;0.000000;,
 -1.025257;0.550000;0.000000;;
 8;
 3;0,1,2;,
 3;0,2,3;,
 3;4,5,6;,
 3;4,6,7;,
 3;10,11,12;,
 3;10,12,13;,
 3;14,8,9;,
 3;14,9,15;;

 MeshNormals {
  16;
  -0.968431;0.249283;0.000000;,
  -0.968431;0.249283;0.000000;,
  -0.968431;0.249283;0.000000;,
  -0.968431;0.249283;0.000000;,
  0.956746;0.290924;0.000000;,
  0.956746;0.290924;0.000000;,
  0.956746;0.290924;0.000000;,
  0.956746;0.290924;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;-1.000000;;
  8;
  3;0,1,2;,
  3;0,2,3;,
  3;4,5,6;,
  3;4,6,7;,
  3;10,11,12;,
  3;10,12,13;,
  3;14,8,9;,
  3;14,9,15;;
 }

 MeshTextureCoords {
  16;
  0.067980;0.000000;,
  0.067980;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.883130;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.883130;1.000000;,
  0.883130;1.000000;,
  0.067980;1.000000;,
  0.883130;0.000000;,
  0.883130;1.000000;,
  0.067980;1.000000;,
  0.067980;0.000000;,
  0.883130;1.000000;,
  0.067980;1.000000;;
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
    "aze.png";
   }
  }
 }
}