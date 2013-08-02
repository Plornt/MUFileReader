library MuReader;

import 'dart:utf';
import 'dart:typed_data';

class MuEnum {
  static int MODEL_BINARY = 76543;
  static int FILE_VERSION = 2;

  static int ET_CHILD_TRANSFORM_START = 0;
  static int ET_CHILD_TRANSFORM_END = 1;
  static int ET_ANIMATION = 2;
  static int ET_MESH_COLLIDER = 3;
  static int ET_SPHERE_COLLIDER = 4;
  static int ET_CAPSULE_COLLIDER = 5;
  static int ET_BOX_COLLIDER = 6;
  static int ET_MESH_FILTER = 7;
  static int ET_MESH_RENDERER = 8;
  static int ET_SKINNED_MESH_RENDERER = 9;
  static int ET_MATERIALS = 10;
  static int ET_MATERIAL = 11;
  static int ET_TEXTURES = 12;
  static int ET_MESH_START = 13;
  static int ET_MESH_VERTS = 14;
  static int ET_MESH_UV = 15;
  static int ET_MESH_UV2 = 16;
  static int ET_MESH_NORMALS = 17;
  static int ET_MESH_TANGENTS = 18;
  static int ET_MESH_TRIANGLES = 19;
  static int ET_MESH_BONE_WEIGHTS = 20;
  static int ET_MESH_BIND_POSES = 21;
  static int ET_MESH_END = 22;
  static int ET_LIGHT = 23;
  static int ET_TAG_AND_LAYER = 24;
  static int ET_MESH_COLLIDER2 = 25;
  static int ET_SPHERE_COLLIDER2 = 26;
  static int ET_CAPSULE_COLLIDER2 = 27;
  static int ET_BOX_COLLIDER2 = 28;
  static int ET_WHEEL_COLLIDER = 29;
  static int ET_CAMERA = 30;
  dynamic ENTRY_TYPES = {
                         'ET_CHILD_TRANSFORM_START':ET_CHILD_TRANSFORM_START,
                         'ET_CHILD_TRANSFORM_END':ET_CHILD_TRANSFORM_END,
                         'ET_ANIMATION':ET_ANIMATION,
                         'ET_MESH_COLLIDER':ET_MESH_COLLIDER,
                         'ET_SPHERE_COLLIDER':ET_SPHERE_COLLIDER,
                         'ET_CAPSULE_COLLIDER':ET_CAPSULE_COLLIDER,
                         'ET_BOX_COLLIDER':ET_BOX_COLLIDER,
                         'ET_MESH_FILTER':ET_MESH_FILTER,
                         'ET_MESH_RENDERER':ET_MESH_RENDERER,
                         'ET_SKINNED_MESH_RENDERER':ET_SKINNED_MESH_RENDERER,
                         'ET_MATERIALS':ET_MATERIALS,
                         'ET_MATERIAL':ET_MATERIAL,
                         'ET_TEXTURES':ET_TEXTURES,
                         'ET_MESH_START':ET_MESH_START,
                         'ET_MESH_VERTS':ET_MESH_VERTS,
                         'ET_MESH_UV':ET_MESH_UV,
                         'ET_MESH_UV2':ET_MESH_UV2,
                         'ET_MESH_NORMALS':ET_MESH_NORMALS,
                         'ET_MESH_TANGENTS':ET_MESH_TANGENTS,
                         'ET_MESH_TRIANGLES':ET_MESH_TRIANGLES,
                         'ET_MESH_BONE_WEIGHTS':ET_MESH_BONE_WEIGHTS,
                         'ET_MESH_BIND_POSES':ET_MESH_BIND_POSES,
                         'ET_MESH_END':ET_MESH_END,
                         'ET_LIGHT':ET_LIGHT,
                         'ET_TAG_AND_LAYER':ET_TAG_AND_LAYER,
                         'ET_MESH_COLLIDER2':ET_MESH_COLLIDER2,
                         'ET_SPHERE_COLLIDER2':ET_SPHERE_COLLIDER2,
                         'ET_CAPSULE_COLLIDER2':ET_CAPSULE_COLLIDER2,
                         'ET_BOX_COLLIDER2':ET_BOX_COLLIDER2,
                         'ET_WHEEL_COLLIDER':ET_WHEEL_COLLIDER,
                         'ET_CAMERA':ET_CAMERA,
  };

  static int ST_CUSTOM = 0;
  static int ST_DIFFUSE = 1;
  static int ST_SPECULAR = 2;
  static int ST_BUMPED = 3;
  static int ST_BUMPED_SPECULAR = 4;
  static int ST_EMISSIVE = 5;
  static int ST_EMISSIVE_SPECULAR = 6;
  static int ST_EMISSIVE_BUMPED_SPECULAR = 7;
  static int ST_ALPHA_CUTOUT = 8;
  static int ST_ALPHA_CUTOUT_BUMPED = 9;
  static int ST_ALPHA = 10;
  static int ST_ALPHA_SPECULAR = 11;
  static int ST_ALPHA_UNLIT = 12;
  static int ST_UNLIT = 13;
  dynamic SHADER_TYPES = {
                          'ST_CUSTOM':ST_CUSTOM,
                          'ST_DIFFUSE':ST_DIFFUSE,
                          'ST_SPECULAR':ST_SPECULAR,
                          'ST_BUMPED':ST_BUMPED,
                          'ST_BUMPED_SPECULAR':ST_BUMPED_SPECULAR,
                          'ST_EMISSIVE':ST_EMISSIVE,
                          'ST_EMISSIVE_SPECULAR':ST_EMISSIVE_SPECULAR,
                          'ST_EMISSIVE_BUMPED_SPECULAR':ST_EMISSIVE_BUMPED_SPECULAR,
                          'ST_ALPHA_CUTOUT':ST_ALPHA_CUTOUT,
                          'ST_ALPHA_CUTOUT_BUMPED':ST_ALPHA_CUTOUT_BUMPED,
                          'ST_ALPHA':ST_ALPHA,
                          'ST_ALPHA_SPECULAR':ST_ALPHA_SPECULAR,
                          'ST_ALPHA_UNLIT':ST_ALPHA_UNLIT,
                          'ST_UNLIT':ST_UNLIT
  };

  List<String> ShaderNames = ["",
                              "KSP/Diffuse",
                              "KSP/Specular",
                              "KSP/Bumped",
                              "KSP/Bumped Specular",
                              "KSP/Emissive/Diffuse",
                              "KSP/Emissive/Specular",
                              "KSP/Emissive/Bumped Specular",
                              "KSP/Alpha/Cutoff",
                              "KSP/Alpha/Cutoff Bumped",
                              "KSP/Alpha/Translucent",
                              "KSP/Alpha/Translucent Specular",
                              "KSP/Alpha/Unlit Transparent",
                              "KSP/Unlit"
                              ];

  static int AT_TRANSFORM = 0;
  static int AT_MATERIAL = 1;
  static int AT_LIGHT = 2;
  static int AT_AUDIO_SOURCE = 3;
  dynamic ANIMATION_TYPES = {
                             'AT_TRANSFORM':AT_TRANSFORM,
                             'AT_MATERIAL':AT_MATERIAL,
                             'AT_LIGHT':AT_LIGHT,
                             'AT_AUDIO_SOURCE':AT_AUDIO_SOURCE,
  };

  static int TT_TEXTURE = 0;
  static int TT_NORMAL_MAP = 1;
  dynamic TEXTURE_TYPES = {
                           'TT_TEXTURE':TT_TEXTURE,
                           'TT_NORMAL_MAP':TT_NORMAL_MAP
  };
}

class MuTexture {
  String name;
  int type;
  MuTexture() {}
  MuTexture.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.name = mu.read_string();
    this.type = mu.read_int();
  }
  MuTexture.write(Mu mu) {
    mu.write_string(this.name);
    mu.write_int(this.type);
  }
}

class MuMatTex {
  int index;
  List<num> scale;
  List<num> offset;
  MuMatTex() {}
  MuMatTex.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.index = mu.read_int();
    this.scale = mu.read_floatlist(2);
    this.offset = mu.read_floatlist(2);
  }
  void write(Mu mu) {
    mu.write_int(this.index);
    mu.write_floatlist(this.scale);
    mu.write_floatlist(this.offset);
  }

}

class MuMaterial {
  String name;
  int type;
  MuMatTex mainTex;
  List<num> specColor;
  num shininess;
  MuMatTex bumpMap;
  MuMatTex emissive;
  List<num> emissiveColor;
  num cutoff;
  num gloss;
  List<num> color;
  
  MuMaterial() {}
  
  MuMaterial.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.name = mu.read_string();
    this.type = mu.read_int();
    if (this.type == MuEnum.ST_SPECULAR) {
      this.mainTex = new MuMatTex.read(mu);
      this.specColor = mu.read_floatlist(4);
      this.shininess = mu.read_float();
    }
    else if (this.type == MuEnum.ST_BUMPED) { 
      this.mainTex = new MuMatTex.read(mu);
      this.bumpMap = new MuMatTex.read(mu);
    }
    else if (this.type == MuEnum.ST_BUMPED_SPECULAR) { 
      this.mainTex = new MuMatTex.read(mu);
      this.bumpMap = new MuMatTex.read(mu);
      this.specColor = mu.read_floatlist(4);
      this.shininess = mu.read_float();
    }
    else if (this.type == MuEnum.ST_EMISSIVE) { 
      this.mainTex = new MuMatTex.read(mu);
      this.emissive = new MuMatTex.read(mu);
      this.emissiveColor = mu.read_floatlist(4);
    }
    else if (this.type == MuEnum.ST_EMISSIVE_SPECULAR) { 
      this.mainTex = new MuMatTex.read(mu);
      this.specColor = mu.read_floatlist(4);
      this.shininess = mu.read_float();
      this.emissive = new MuMatTex.read(mu);
      this.emissiveColor = mu.read_floatlist(4);
    }
    else if (this.type == MuEnum.ST_EMISSIVE_BUMPED_SPECULAR) { 
      this.mainTex = new MuMatTex.read(mu);
      this.bumpMap = new MuMatTex.read(mu);
      this.specColor = mu.read_floatlist(4);
      this.shininess = mu.read_float();
      this.emissive = new MuMatTex.read(mu);
      this.emissiveColor = mu.read_floatlist(4);
    }
    else if (this.type == MuEnum.ST_ALPHA_CUTOUT) { 
      this.mainTex = new MuMatTex.read(mu);
      this.cutoff = mu.read_float();
    }
    else if (this.type == MuEnum.ST_ALPHA_CUTOUT_BUMPED) { 
      this.mainTex = new MuMatTex.read(mu);
      this.bumpMap = new MuMatTex.read(mu);
      this.cutoff = mu.read_float();
    }
    else if (this.type == MuEnum.ST_ALPHA) { 
      this.mainTex = new MuMatTex.read(mu);
    }
    else if (this.type == MuEnum.ST_ALPHA_SPECULAR) { 
      this.mainTex = new MuMatTex.read(mu);
      this.gloss = mu.read_float();
      this.specColor = mu.read_floatlist(4);
      this.shininess = mu.read_float();
    }
    else if (this.type == MuEnum.ST_ALPHA_UNLIT) { 
      this.mainTex = new MuMatTex.read(mu);
      this.color = mu.read_floatlist(4);
    }
    else if (this.type == MuEnum.ST_UNLIT) { 
      this.mainTex = new MuMatTex.read(mu);
      this.color = mu.read_floatlist(4);
    }
    else if (this.type == MuEnum.ST_DIFFUSE) { 
      this.mainTex = new MuMatTex.read(mu);
    }
    else {
      throw "MuMaterial ${this.type}";
    }
  }
  
  void write(Mu mu) {
    mu.write_string(this.name);
    mu.write_int(this.type);
    if (this.type == MuEnum.ST_SPECULAR) {
        this.mainTex.write(mu);
        mu.write_floatlist(this.specColor);
        mu.write_float(this.shininess);
    }
    else if (this.type == MuEnum.ST_BUMPED) {
        this.mainTex.write(mu);
        this.bumpMap.write(mu);
    }
    else if (this.type == MuEnum.ST_BUMPED_SPECULAR) {
        this.mainTex.write(mu);
        this.bumpMap.write(mu);
        mu.write_floatlist(this.specColor);
        mu.write_float(this.shininess);
    }
    else if (this.type == MuEnum.ST_EMISSIVE) {
        this.mainTex.write(mu);
        this.emissive.write(mu);
        mu.write_floatlist(this.emissiveColor);
    }
    else if (this.type == MuEnum.ST_EMISSIVE_SPECULAR) {
        this.mainTex.write(mu);
        mu.write_floatlist(this.specColor);
        mu.write_float(this.shininess);
        this.emissive.write(mu);
        mu.write_floatlist(this.emissiveColor);
    }
    else if (this.type == MuEnum.ST_EMISSIVE_BUMPED_SPECULAR) {
        this.mainTex.write(mu);
        this.bumpMap.write(mu);
        mu.write_floatlist(this.specColor);
        mu.write_float(this.shininess);
        this.emissive.write(mu);
        mu.write_floatlist(this.emissiveColor);
    }
    else if (this.type == MuEnum.ST_ALPHA_CUTOUT) {
        this.mainTex.write(mu);
        mu.write_float(this.cutoff);
    }
    else if (this.type == MuEnum.ST_ALPHA_CUTOUT_BUMPED) {
        this.mainTex.write(mu);
        this.bumpMap.write(mu);
        mu.write_float(this.cutoff);
    }
    else if (this.type == MuEnum.ST_ALPHA) {
        this.mainTex.write(mu);
    }
    else if (this.type == MuEnum.ST_ALPHA_SPECULAR) {
        this.mainTex.write(mu);
        mu.write_float(this.gloss);
        mu.write_floatlist(this.specColor);
        mu.write_float(this.shininess);
    }
    else if (this.type == MuEnum.ST_ALPHA_UNLIT) {
        this.mainTex.write(mu);
        mu.write_floatlist(this.color);
    }
    else if (this.type == MuEnum.ST_UNLIT) {
        this.mainTex.write(mu);
        mu.write_floatlist(this.color);
    }
    else if (this.type == MuEnum.ST_DIFFUSE) {
        this.mainTex.write(mu);
    }
  }

}

class MuTransform {
  String name;
  List<double> localPosition;
  Quaternion localRotation;
  List<double> localScale;
  
  MuTransform() {}
  MuTransform.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.name = mu.read_string();
    this.localPosition = mu.read_vector();
    this.localRotation = mu.read_quaternion();
    this.localScale = mu.read_vector();
    print("End MuTransform");
  }
  void write(Mu mu) {
    mu.write_string(this.name);
    mu.write_vector(this.localPosition);
    mu.write_quaternion(this.localRotation);
    mu.write_vector(this.localScale);
  }

}

class MuTagLayer {
  String tag;
  int layer;
  MuTagLayer() {}
  MuTagLayer.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.tag = mu.read_string();
    this.layer = mu.read_int();
  }
  void write(Mu mu) {
    mu.write_int(MuEnum.ET_TAG_AND_LAYER);
    mu.write_string(this.tag);
    mu.write_int(this.layer);
  }
}

class MuKey {
  num time;
  num value;
  List<num> tangent;
  int tangentMode;
  MuKey() {}
  MuKey.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.time = mu.read_float();
    this.value = mu.read_float();
    this.tangent = mu.read_floatlist(2);
    this.tangentMode = mu.read_int();
  }
  void write(Mu mu) {
    mu.write_float(this.time);
    mu.write_float(this.value);
    mu.write_floatlist(this.tangent);
    mu.write_int(this.tangentMode);
  }

}

class MuCurve {
  String path;
  String property;
  int type;
  List<int> wrapMode;
  List<MuKey> keys = new List<MuKey>();
  MuCurve() {}
  MuCurve.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.path = mu.read_string();
    this.property = mu.read_string();
    this.type = mu.read_int();
    this.wrapMode = mu.read_intlist(2);
    int num_keys = mu.read_int();
    for (int i = 0; i < num_keys; i++) { 
      keys.add(new MuKey.read(mu));
    }
  }
  
  void write(Mu mu) {
    mu.write_string(this.path);
    mu.write_string(this.property);
    mu.write_int(this.type);
    mu.write_intlist(this.wrapMode);
    mu.write_int(keys.length);
    keys.forEach((MuKey E) { E.write(mu); });
  }

}

class MuClip {
  String name;
  List<double> lbCenter;
  List<double> lbSize;
  int wrapMode;
  List<MuCurve> curves = new List<MuCurve>();
  MuClip() {}
  MuClip.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.name = mu.read_string();
    this.lbCenter = mu.read_vector();
    this.lbSize = mu.read_vector();
    this.wrapMode = mu.read_int();
    int num_curves = mu.read_int();
    for (int i = 0; i < num_curves; i++) {
      curves.add(new MuCurve.read(mu));
    }
  }
  void write(Mu mu) {
    mu.write_string(this.name);
    mu.write_vector(this.lbCenter);
    mu.write_vector(this.lbSize);
    mu.write_int(this.wrapMode);
    mu.write_int(curves.length);
    curves.forEach((MuCurve curve) { 
      curve.write(mu);
    });
  }

}

class MuAnimation {
    List<MuClip> clips = new List<MuClip>();
    String clip;
    int autoPlay;
    MuAnimation() {}
    MuAnimation.read(Mu mu) {
      print("Read => ${this.runtimeType}");
      int num_clips = mu.read_int();
      for (int i = 0; i < num_clips; i++) {
         clips.add(new MuClip.read(mu));
      }
      this.clip = mu.read_string();
      this.autoPlay = mu.read_byte();
      
    }
    void write(Mu mu) {
      mu.write_int(MuEnum.ET_ANIMATION);
      mu.write_int(clips.length);
      clips.forEach((MuClip E) { 
        E.write(mu);
      });
      mu.write_string(this.clip);
      mu.write_byte(this.autoPlay);
    }

}

class MuBoneWeight {
  List<int> indices = new List<int>();
  List<num> weights = new List<num>();
  MuBoneWeight() {}
  MuBoneWeight.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    for (int i = 0; i < 4; i++) {
      this.indices.add(mu.read_int());
      this.weights.add(mu.read_float());
    }
  }
  void write(Mu mu) {
    for (int i = 0; i < 4; i++) {
      mu.write_int(this.indices[i]);
      mu.write_float(this.weights[i]);
    }
  }
}

class MuMesh {
  List<List<double>> verts = new List<List<double>>();
  List<List<num>> uvs = new List<List<num>>();
  List<List<num>> uv2s = new List<List<num>>();
  List<List<double>> normals = new List<List<double>>();
  List<Quaternion> tangents = new List<Quaternion>();
  List<MuBoneWeight> boneWeights = new List<MuBoneWeight>();
  List<List<num>> bindPoses = new List<List<num>>();
  List<List<int>> submeshes = new List<List<int>>();
  MuMesh() {}
  MuMesh.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    int start = mu.read_int();
    if (start != MuEnum.ET_MESH_START) {
      throw "Not the start of a mesh";;
    }
    int num_verts = mu.read_int();
    int submesh_count = mu.read_int();
    while (true) {
        int type = mu.read_int();
        if (type == MuEnum.ET_MESH_END){
          break;
        }
        if (type == MuEnum.ET_MESH_VERTS) {
            print("MuMesh VERT");
            for (int i = 0; i < num_verts; i++) {
                this.verts.add(mu.read_vector());
            }
        }
        else if (type == MuEnum.ET_MESH_UV) {
          print("MuMesh UV");
            for (int i = 0; i < num_verts; i++) {
                this.uvs.add(mu.read_floatlist(2));
            }
        }
        else if (type == MuEnum.ET_MESH_UV2) {
          print("MuMesh UV2");
            for (int i = 0; i < num_verts; i++) {
                this.uv2s.add(mu.read_floatlist(2));
            }
        }
        else if (type == MuEnum.ET_MESH_NORMALS) {
          print("MuMesh NORMALS");
            for (int i = 0; i < num_verts; i++) {
                this.normals.add(mu.read_vector());
            }
        }
        else if (type == MuEnum.ET_MESH_TANGENTS) {
          print("MuMesh TANGENTS");
            for (int i = 0; i < num_verts; i++) {
                this.tangents.add(mu.read_quaternion()); //TODO: FIX ME! NOT A QUATERNION
            }
        }
        else if (type == MuEnum.ET_MESH_BONE_WEIGHTS) {
          print("MuMesh WEIGHTS");
            for (int i = 0; i < num_verts; i++) {
                this.boneWeights.add(new MuBoneWeight.read(mu));
            }
        }
        else if (type == MuEnum.ET_MESH_BIND_POSES) {
          print("MuMesh BIND POSES");
            int num_poses = mu.read_int();
            for (int i = 0; i < num_poses; i++) {
                this.bindPoses.add(mu.read_floatlist(12));
            }
        }
        else if (type == MuEnum.ET_MESH_TRIANGLES) {
          print("MuMesh TRIANGLES");
            int num_tris = mu.read_int();
            for (int i = 0; i < (num_tris / 3); i++) {
                this.submeshes.add(mu.read_intlist(3));
            }
        }
        else {
          throw "Value Error: $type is not a subtype of MuMesh";
        }
    }
  }
  void write(Mu mu) {
    mu.write_int(MuEnum.ET_MESH_START);
    mu.write_int(verts.length);
    mu.write_int(submeshes.length);
    mu.write_int(MuEnum.ET_MESH_VERTS);
    verts.forEach((List<double> vert) {
      mu.write_vector(vert);
    });
    if (uvs.length == verts.length) {
      mu.write_int(MuEnum.ET_MESH_UV);
      uvs.forEach((List<num> uv) { 
        mu.write_floatlist(uv);
      });
    }
    
    if (uv2s.length == verts.length) {
      mu.write_int(MuEnum.ET_MESH_UV2);
      uv2s.forEach((List<num> uv2) {
        mu.write_floatlist(uv2);
      });
    }
    if (normals.length == verts.length) {
      mu.write_int(MuEnum.ET_MESH_NORMALS);
      normals.forEach((List<double> norm) {
        mu.write_vector(norm);
      });
    }
    if (tangents.length == verts.length) {
      mu.write_int(MuEnum.ET_MESH_TANGENTS);
      tangents.forEach((Quaternion tan) {
        mu.write_quaternion(tan);
      });
    }
    if (boneWeights.length == verts.length) {
      mu.write_int(MuEnum.ET_MESH_BONE_WEIGHTS);
      boneWeights.forEach((MuBoneWeight bw) {
        bw.write(mu);
      });
    }
    if (bindPoses.length != 0) {
      mu.write_int(MuEnum.ET_MESH_BIND_POSES);
      bindPoses.forEach((List<num> bp) {
        mu.write_floatlist(bp);
      });
    }
    submeshes.forEach((List<int> submesh) { 
      mu.write_int(MuEnum.ET_MESH_TRIANGLES);
      mu.write_int(submesh.length * 3);
      mu.write_intlist(submesh);
    });
    mu.write_int(MuEnum.ET_MESH_END);
  }


}

class MuRenderer {
  int castShadows = 1;
  int receiveShadows = 1;
  List<int> materials;
  MuRenderer() {}
  MuRenderer.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    if (mu.version > 0) {
      castShadows = mu.read_byte();
      receiveShadows = mu.read_byte();
    }
    int num_mat = mu.read_int();
    materials = mu.read_intlist(num_mat); // TODO: FIX?
    
  }
  void write(Mu mu) {
    mu.write_int(MuEnum.ET_MESH_RENDERER);
    mu.write_byte(this.castShadows);
    mu.write_byte(this.receiveShadows);
    mu.write_int(materials.length);
    mu.write_intlist(this.materials);
  }

}

class MuSkinnedMeshRenderer {
  List<int> materials = new List<int>();
  List<String> bones = new List<String>();
  List<double> center;
  List<double> size; 
  int quality;
  int updateWhenOffscreen;
  MuMesh mesh;
  MuSkinnedMeshRenderer() {}
  MuSkinnedMeshRenderer.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    int num_mat = mu.read_int();
    for (int i = 0; i < num_mat; i++) {
      this.materials.add(mu.read_int());
    }
    this.center = mu.read_vector();
    this.size = mu.read_vector();
    this.quality = mu.read_int();
    this.updateWhenOffscreen = mu.read_byte();
    int nBones = mu.read_int();
    for (int i = 0; i < nBones; i++) {
      bones.add(mu.read_string());
    }
    this.mesh = new MuMesh.read(mu);
  }
  void write(Mu mu) {
    mu.write_int(MuEnum.ET_SKINNED_MESH_RENDERER);
    mu.write_int(materials.length);
    mu.write_intlist(materials);
    mu.write_vector(this.center);
    mu.write_vector(this.size);
    mu.write_int(this.quality);
    mu.write_byte(this.updateWhenOffscreen);
    mu.write_int(bones.length);
    bones.forEach((String bone) {
      mu.write_string(bone);
    });
    this.mesh.write(mu);
  }
}

abstract class MuCollider_Base {
  int type;
  MuCollider_Base (int this.type) {}
  void write (Mu mu) {
    print("This should not be called");
  }
}

class MuColliderMesh extends MuCollider_Base {
    int isTrigger;
    int convex;
    MuMesh mesh;
    MuColliderMesh (int type):super(type) { }
    MuColliderMesh.read(int type, Mu mu):super(type) {
      print("Read => ${this.runtimeType}");
      this.isTrigger = mu.read_byte();
      this.convex = mu.read_byte();
      this.mesh = new MuMesh.read(mu);
    }
    void write(Mu mu) {
      if (this.type == 1) {
        mu.write_int(MuEnum.ET_MESH_COLLIDER2);
      }
      else {
        mu.write_int(MuEnum.ET_MESH_COLLIDER);
      }
      mu.write_byte(this.isTrigger);
      mu.write_byte(this.convex);
      mesh.write(mu);
    }

}


class MuColliderSphere extends MuCollider_Base {
  int isTrigger;
  num radius;
  List<double> center;
  MuColliderSphere (int type):super(type) { }
  MuColliderSphere.read(int type, Mu mu):super(type) {
    print("Read => ${this.runtimeType}");
    this.isTrigger = mu.read_byte();
    this.radius = mu.read_float();
    this.center = mu.read_vector();
  }
  void write(Mu mu) {
    if (this.type == 1) {
      mu.write_int(MuEnum.ET_SPHERE_COLLIDER2);
    }
    else {
      mu.write_int(MuEnum.ET_SPHERE_COLLIDER);
    }
    mu.write_byte(this.isTrigger);
    mu.write_float(this.radius);
    mu.write_vector(this.center);
  }

}

class MuColliderCapsule extends MuCollider_Base {
  int isTrigger;
  num radius;
  num height;
  int direction;
  List<double> center;
  
  MuColliderCapsule (int type):super(type) { }
  MuColliderCapsule.read(int type, Mu mu):super(type) {
    print("Read => ${this.runtimeType}");
    this.isTrigger = mu.read_byte();
    this.radius = mu.read_float();
    this.height = mu.read_float();
    this.direction = mu.read_int();
    this.center = mu.read_vector();
  }
  void write(Mu mu) {
    if (this.type == 1) {
      mu.write_int(MuEnum.ET_CAPSULE_COLLIDER2);
    }
    else {
      mu.write_int(MuEnum.ET_CAPSULE_COLLIDER);
    }
    mu.write_byte(this.isTrigger);
    mu.write_float(this.radius);
    mu.write_float(this.height);
    mu.write_int(this.direction);
    mu.write_vector(this.center);
  }

}



class MuColliderBox extends MuCollider_Base {
  int isTrigger;
  List<double> size;
  List<double> center;
  MuColliderBox (int type):super(type) { }
  MuColliderBox.read(int type, Mu mu):super(type) {
    print("Read => ${this.runtimeType}");
     this.isTrigger = mu.read_byte();
     this.size = mu.read_vector();
     this.center = mu.read_vector();
  }
  void write(Mu mu) {
    if (this.type == 1) {
      mu.write_int(MuEnum.ET_BOX_COLLIDER2);
    }
    else {
      mu.write_int(MuEnum.ET_BOX_COLLIDER);
    }
    mu.write_byte(this.isTrigger);
    mu.write_vector(this.size);
    mu.write_vector(this.center);
  }

}

class MuSpring {
  num spring;
  num damper;
  num targetPosition;
  MuSpring() {}
  MuSpring.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.spring = mu.read_float();
    this.damper = mu.read_float();
    this.targetPosition = mu.read_float();
  }
  void write(Mu mu) {
    mu.write_float(this.spring);
    mu.write_float(this.damper);
    mu.write_float(this.targetPosition);
  }

}

class MuFriction {
  num extremumSlip;
  num extremumValue;
  num asymptoteSlip;
  num asymptoteValue;
  num stiffness;
  MuFriction() {}
  MuFriction.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.extremumSlip = mu.read_float();
    this.extremumValue = mu.read_float();
    this.asymptoteSlip = mu.read_float();
    this.asymptoteValue = mu.read_float();
    this.stiffness = mu.read_float();
  }
  void write(Mu mu) {
    mu.write_float(this.extremumSlip);
    mu.write_float(this.extremumValue);
    mu.write_float(this.asymptoteSlip);
    mu.write_float(this.asymptoteValue);
    mu.write_float(this.stiffness);
  }

}

class MuColliderWheel extends MuCollider_Base {
  num mass;
  num radius;
  num suspensionDistance;
  List<double> center;
  MuSpring suspensionSpring;
  MuFriction forwardFriction;
  MuFriction sidewaysFriction;
  MuColliderWheel ():super(0) { }
  MuColliderWheel.read(Mu mu):super(0) {
    print("Read => ${this.runtimeType}");
    this.mass = mu.read_float();
    this.radius = mu.read_float();
    this.suspensionDistance = mu.read_float();
    this.center = mu.read_vector();
    this.suspensionSpring = new MuSpring.read(mu);
    this.forwardFriction = new MuFriction.read(mu);
    this.sidewaysFriction = new MuFriction.read(mu);
  }
  void write(Mu mu) {
    print("Read => ${this.runtimeType}");
    mu.write_int(MuEnum.ET_WHEEL_COLLIDER);
    mu.write_float(this.mass);
    mu.write_float(this.radius);
    mu.write_float(this.suspensionDistance);
    mu.write_vector(this.center);
    this.suspensionSpring.write(mu);
    this.forwardFriction.write(mu);
    this.sidewaysFriction.write(mu);
  }
}

int toInt (bool b) {
  return b ? 1 : 0;
}

List<int> muColliders = [MuEnum.ET_MESH_COLLIDER,
                         MuEnum.ET_SPHERE_COLLIDER,
                         MuEnum.ET_CAPSULE_COLLIDER,
                         MuEnum.ET_BOX_COLLIDER,
                         MuEnum.ET_MESH_COLLIDER2,
                         MuEnum.ET_SPHERE_COLLIDER2,
                         MuEnum.ET_CAPSULE_COLLIDER2,
                         MuEnum.ET_BOX_COLLIDER2,
                         MuEnum.ET_WHEEL_COLLIDER];
MuCollider_Base MuCollider (Mu mu, int type) {
  if (type == MuEnum.ET_MESH_COLLIDER || type == MuEnum.ET_MESH_COLLIDER2) {
    return new MuColliderMesh.read(toInt(type == MuEnum.ET_MESH_COLLIDER2), mu);
  }
  else if (type == MuEnum.ET_SPHERE_COLLIDER || type == MuEnum.ET_SPHERE_COLLIDER2) {
    return new MuColliderSphere.read(toInt(type == MuEnum.ET_SPHERE_COLLIDER2), mu);
  }
  else if (type == MuEnum.ET_CAPSULE_COLLIDER || type == MuEnum.ET_CAPSULE_COLLIDER2) {
    return new MuColliderCapsule.read(toInt(type == MuEnum.ET_CAPSULE_COLLIDER2), mu);
  }
  else if (type == MuEnum.ET_BOX_COLLIDER || type ==  MuEnum.ET_BOX_COLLIDER2) {
    return new MuColliderBox.read(toInt(type == MuEnum.ET_BOX_COLLIDER2), mu);
  }
  else if (type == MuEnum.ET_WHEEL_COLLIDER){
    return new MuColliderWheel.read(mu);
  }
  else {
    throw "Value Error: MuCollider $type";
  }
}

class MuCamera {
  int clearFlags;
  List<num> backgroundColor;
  int cullingMask;
  int orthographic;
  num fov;
  num near;
  num far;
  num dept;
  
  MuCamera() {}
  MuCamera.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.clearFlags = mu.read_int();
    this.backgroundColor = mu.read_floatlist(4);
    this.cullingMask = mu.read_int();
    this.orthographic = mu.read_int();
    this.fov = mu.read_float();
    this.near = mu.read_float();
    this.far = mu.read_float();
    this.dept = mu.read_float();
  }
  void write(Mu mu) {
    mu.write_int(MuEnum.ET_CAMERA);
    mu.write_int(this.clearFlags);
    mu.write_floatlist(this.backgroundColor);
    mu.write_int(this.cullingMask);
    mu.write_int(this.orthographic);
    mu.write_float(this.fov);
    mu.write_float(this.near);
    mu.write_float(this.far);
    mu.write_float(this.dept);
    
  }

}

class MuLight {
  int type;
  num intensity;
  num range;
  List<num> color;
  num spotAngle;
  MuLight() {}
  MuLight.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.type = mu.read_int();
    this.intensity = mu.read_float();
    this.range = mu.read_float();
    this.color = mu.read_floatlist(3);
    this.spotAngle = mu.read_float();
  }
  void write(Mu mu) {
    mu.write_int(MuEnum.ET_LIGHT);
    mu.write_int(this.type);
    mu.write_float(this.intensity);
    mu.write_float(this.range);
    mu.write_floatlist(this.color);
    mu.write_float(this.spotAngle);
    
  }


}


class MuObject {
  String name;
  List<MuObject> children = new List<MuObject>();
  List<MuMaterial> materials = new List<MuMaterial>();
  List<MuTexture> textures = new List<MuTexture>();
  MuTransform transform;
  MuTagLayer tag_and_layer;
  MuCollider_Base collider;
  MuMesh shared_mesh;
  MuRenderer renderer;
  MuSkinnedMeshRenderer skinned_mesh_renderer;
  MuAnimation animation;
  MuCamera camera;
  MuLight light;
  MuObject ([String this.name = ""]) {}
  MuObject.read(Mu mu) {
    print("Read => ${this.runtimeType}");
    this.transform = new MuTransform.read(mu);
    print("END MU TRANSFORM -----------------------");
    while (mu.canReadMore()) {
      int entryType = mu.read_int();
      print("TYPE: $entryType");
      if (entryType == MuEnum.ET_CHILD_TRANSFORM_START) {

        print("MuObject START");
        this.children.add(new MuObject.read(mu));
      }
      else if (entryType == MuEnum.ET_CHILD_TRANSFORM_END) {
        print("MuObject END TRANSFORM");
        break;
      }
      else if (entryType == MuEnum.ET_TAG_AND_LAYER) {
        print("MuObject TAG & LAYER");
        this.tag_and_layer = new MuTagLayer.read(mu);
      }
      else if (muColliders.contains(entryType)) {
        print("MuObject COLLIDER");
        this.collider = MuCollider(mu, entryType);
      }
      else if (entryType == MuEnum.ET_MESH_FILTER) { 
        print("MuObject MESH FILTER");
        this.shared_mesh = new MuMesh.read(mu);
      }
      else if (entryType == MuEnum.ET_MESH_RENDERER) {
        print("MuObject MESH RENDERER");
        this.renderer = new MuRenderer.read(mu);
      }
      else if (entryType == MuEnum.ET_SKINNED_MESH_RENDERER) {
        print("MuObject SKINNED MESH RENDERER");
        this.skinned_mesh_renderer = new MuSkinnedMeshRenderer.read(mu);
      }
      else if (entryType == MuEnum.ET_ANIMATION) {
        print("MuObject ANIMATION");
        this.animation = new MuAnimation.read(mu);
      }
      else if (entryType == MuEnum.ET_CAMERA) {
        print("MuObject CAMERA");
        this.camera = new MuCamera.read(mu);
      }
      else if (entryType == MuEnum.ET_LIGHT) {
        print("MuObject LIGHT");
        this.light = new MuLight.read(mu);
      }
      else if (entryType == MuEnum.ET_MATERIALS) {
        print("MuObject MATERIALS");
        int mat_count = mu.read_int();
        for (int i = 0; i < mat_count; i++) {
          this.materials.add(new MuMaterial.read(mu));
        }
      }
      else if (entryType == MuEnum.ET_TEXTURES) {
        print("MuObject TEXTURES");
        int tex_count = mu.read_int();
        for (int i = 0; i < tex_count; i++) {
          this.textures.add(new MuTexture.read(mu));
        }
      }
      else {
        print("Could not find entry type $entryType");
      }
    }
  }
  void write(Mu mu) {
    this.transform.write(mu);
    this.tag_and_layer.write(mu);
    if (this.collider != null) {
      this.collider.write(mu);
    }
    if (this.shared_mesh != null) {
      mu.write_int(MuEnum.ET_MESH_FILTER);
      this.shared_mesh.write(mu);
    }
    if (this.renderer != null) {
      this.renderer.write(mu);
    }
    if (this.skinned_mesh_renderer != null) {
      this.skinned_mesh_renderer.write(mu);
    }
    if (this.animation != null) {
      this.animation.write(mu);
    }
    if (this.camera != null) {
      this.camera.write(mu);
    }
    if (this.light != null) {
      this.light.write(mu);
    }
    if (this.materials != null) {
     print("Material saving not yet implemented"); 
    }
    if (this.textures != null) {
      print("Texture saving not yet implemented");
    }
    if (this.children != null) {
      this.children.forEach((MuObject child) { 
        mu.write_int(MuEnum.ET_CHILD_TRANSFORM_START);
        child.write(mu);
        mu.write_int(MuEnum.ET_CHILD_TRANSFORM_END);
      });
    }    
  }

}
class Quaternion {
  double x;
  double y;
  double z;
  double w;
  Quaternion (this.x, this.y, this.z, this.w) {
    
  }
  
  List<num> toList () {
    return [x, y, z, w];
  }
}

class ByteFile {
  final List<int> data;
  List<int> jsCompatability;
  ByteData buffer;
  int _offset = 0;
  int fileLength;
  Function progressCallback;
  int get offset {
    return _offset;
  }
  void set offset (int off) {
     if (progressCallback != null) {
       progressCallback((offset / (fileLength / 100)).round());
     }
     _offset = off;
  }
  ByteFile.fromList (List<int> this.data, [Function this.progressCallback = null]) {
    buffer = new ByteData.view(new Uint8List.fromList(this.data).buffer);
    print("Type: ${data.runtimeType}");
    print("Created buffer");
    fileLength = data.length;
    print("Doesnt get past here");
  }
  bool canReadMore() {
    return data.length > offset;
  }
  int peek_byte () {
    return data[offset+1];
  }
  int read_byte() {
    return data[offset++];
  }
  List<int> read_bytes (int length) {
    if ((fileLength - offset) < length) {
      throw "End of file exception";
    }
    int oldOffset = offset;
    offset += length;
    return data.getRange(oldOffset, oldOffset+length).toList(growable: false);
  }
  int read_int() {
    if ((fileLength - offset) < 4) {
      throw "End of file exception";
    } 
    int oldOffset = offset;
    offset += 4;
    return buffer.getInt32(oldOffset, Endianness.LITTLE_ENDIAN);
  }
  
  List<int> read_intlist (int amt) {
   List<int> temp = new List<int>();  
   if ((data.length - offset) < amt) {
     throw "End of file exception";
   }
    for (int i = 0; i < amt; i++) {
      temp.add(this.read_int());    
    }
    return temp;
  }
  
  double read_float () {
    if ((fileLength - offset) < 4) {
      throw "End of file exception";
    } 
    int oldOffset = offset;
    offset += 4;
    return buffer.getFloat32(oldOffset, Endianness.LITTLE_ENDIAN);
  }
  List<double> read_floatlist (int amt) {
   List<double> temp = new List<double>();  
   if ((data.length - offset) < amt) {
     throw "End of file exception";
   }
    for (int i = 0; i < amt; i++) {
      temp.add(this.read_float());    
    }
    return temp;
  }
  
  String read_string() {

    print("Old Offset: $_offset");
    int length = this.read_byte();
    if ((data.length - offset) < length) {
      throw "End of file exception";
    }
    if (length == 0) {
      print("Found no string");
      print("New Offset: $_offset");
      return "";
    }
    print("New Offset: $_offset Length: $length");
    String dat = decodeUtf8(this.read_bytes(length));
    print("String read -> $dat");
    print("Newer Offset: $_offset");
    return dat;
  } 
  List<double> read_vector () {
    return this.read_floatlist(3);
  }
  Quaternion read_quaternion () {
    List<double> quat = this.read_floatlist(4);
    return new Quaternion(quat[0], quat[1], quat[2], quat[3]);
  }
  
  // Cant be fucked to implement these
  void write_byte(int byte) {
    
  }

  void write_int(int integer) {}
  
  void write_intlist (List<int> data) {
    
  }

  void write_float(double float) {}
  
  void write_floatlist (List<double> floats) {
    
  }

  void write_vector(List<double> vector) {}

  void write_quaternion(Quaternion quat) {}

  void write_bytes(List<int> bytes) {}

  void write_string(String string) {}

}

class Mu extends ByteFile {
  String name;
  int version;
  int magic;
  MuObject obj;
  Mu(List<int> data, [Function callback = null]):super.fromList(data, callback) {
      
  }
  
  void read() {
    this.magic = this.read_int();
    this.version = this.read_int();
    print(this.magic);
    print(this.version);
    if (this.magic != MuEnum.MODEL_BINARY || this.version < 0 || this.version > MuEnum.FILE_VERSION) {
      throw "Cannot convert file";
    }
    this.name = this.read_string();
    this.obj = new MuObject.read(this);
  }
  List<int> write() {}

}