import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploadImage extends GetxController {

  var images = "".obs;
  void getImage(ImageSource source)async{
    var img = await ImagePicker().getImage(source: source);
    if(img != null){
      images.value = img.path;
    }
  }

}