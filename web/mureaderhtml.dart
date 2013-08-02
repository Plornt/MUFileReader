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
  List<dynamic> r = recurseChild(mu.obj);
  
  js.context.addData(mu.name, js.array(r));
}
List<dynamic> recurseChild(MuObject parent) {
  List<dynamic> currArray = new List<dynamic>();
  List<dynamic> childArray = new List<dynamic>();
  parent.children.forEach((MuObject child) { 
    childArray.add(recurseChild(child));
  });
  if (parent.shared_mesh != null) {
  return [parent.transform.localPosition,parent.transform.localRotation.toList(), parent.transform.localScale, parent.shared_mesh.verts, parent.shared_mesh.submeshes, childArray];
  }
  else {
    return [parent.transform.localPosition,parent.transform.localRotation.toList(), parent.transform.localScale, null, null, childArray];
  }
}