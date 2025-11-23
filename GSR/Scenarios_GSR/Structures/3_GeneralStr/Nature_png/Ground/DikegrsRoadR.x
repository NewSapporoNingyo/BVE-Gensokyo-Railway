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
 8;
 2.445125;0.000000;0.000000;,
 2.445125;-0.010000;5.358666;,
 0.500000;-0.012094;5.358666;,
 0.500000;-0.002094;0.000000;,
 4.275052;-2.423107;0.000000;,
 4.275052;-2.423107;5.358666;,
 2.445125;-0.010000;5.358666;,
 2.445125;0.000000;0.000000;;
 4;
 3;0,2,1;,
 3;0,3,2;,
 3;4,6,5;,
 3;4,7,6;;

 MeshNormals {
  8;
  -0.044075;0.999028;0.000000;,
  -0.044075;0.999028;0.000000;,
  -0.044075;0.999028;0.000000;,
  -0.044075;0.999028;0.000000;,
  0.524098;0.851658;0.000000;,
  0.524098;0.851658;0.000000;,
  0.524098;0.851658;0.000000;,
  0.524098;0.851658;0.000000;;
  4;
  3;0,2,1;,
  3;0,3,2;,
  3;4,6,5;,
  3;4,7,6;;
 }

 MeshTextureCoords {
  8;
  0.271154;0.298077;,
  0.573077;0.294231;,
  0.573077;0.133008;,
  0.271154;0.136854;,
  0.271154;0.398077;,
  0.573077;0.394231;,
  0.573077;0.294231;,
  0.271154;0.298077;;
 }

 MeshMaterialList {
  1;
  4;
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