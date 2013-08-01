import 'mufilereader.dart';
import 'dart:html';
import 'dart:utf';
import 'package:js/js.dart' as js;
import 'dart:typed_data';

DivElement ProgressBar;
InputElement FileInput;
SpanElement Status;

void main () {
  ProgressBar = query("#progress-bar");
  FileInput = query("#MuFile");
  Status = query("#status");
  Status.innerHtml = "Ready";
  FileInput.onChange.listen((e) {
    Status.innerHtml = "Starting File Read";
    ProgressBar.style.width = "0%";

    File inputFile = FileInput.files[0];
    FileReader reader = new FileReader();
    reader.onProgress.listen((e) {
      if (e.lengthComputable) {
        num percent = (100 * e.loaded / e.total).round();
        setProgress(percent);
      }
    });
    reader.onLoadStart.listen((e) {
      Status.innerHtml = "Loading file...";
    });
    reader.onLoad.listen((e) {
      setProgress(0);
      
      Status.innerHtml = "Starting Mu Construction...";
      print(reader.result.runtimeType);
      String result = reader.result;
      Mu obj = new Mu(result.runes.toList(), (num perc) {
        setProgress(perc);
      });
      obj.read();
      Status.innerHtml = "Complete";
      complete(obj);
    });
    // Dont care that this is depreciated. 
    // As ByteArray returns different thing in dart context to js context and is incredibly frustrating
    reader.readAsBinaryString(inputFile);
  });
}
void setProgress(num percent) {
  if (percent > 100) throw "Not a valid percentage";
   ProgressBar.style.width = "$percent%"; 
}
void complete(Mu mu) {
  String space = "";
  mu.obj.children.forEach((MuObject child) { 
   print("${child.shared_mesh == null} that this mesh does not actually have any verticies :/");
   if (child.shared_mesh != null) { 
    if (child.shared_mesh.verts != null) { 
     var mappedVerts = js.array(child.shared_mesh.verts);
     var mappedFaces = js.array(child.shared_mesh.submeshes);
     js.context.addData(mappedVerts, mappedFaces);
    }
   }
  });
}