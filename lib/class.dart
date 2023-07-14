import 'dart:io';
import 'package:image_picker/image_picker.dart';

Future<File?> camera () async {
  ImagePicker picker = ImagePicker();
  try{

    XFile? photo = await picker.pickImage(source:ImageSource.camera);
    if(photo!=null)

    {
      File file = File(photo!.path);
      print("path$photo");
      return file;
    }
    else
    {
      return null;
    }
  }catch(a){
    print("ERROR");
    return null;
  }
}
Future<File?> photo ({required ImageSource imageSource}) async {

  ImagePicker picker = ImagePicker();
  try{
    XFile? photo = await picker.pickImage(
      source: imageSource,
    );
    if(photo!=null)
    {
      File file = File(photo!.path);
      return file;
    }
    else
    {
      return null;
    }
  }catch(a){
    print("ERROR");
    return null;
  }
}

// class RiveUtils {
//
//   static StateMachineController  (Artboard,artboard){
//     StateMachineController ? controller =
//   }
//
// }

