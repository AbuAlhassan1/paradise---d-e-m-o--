import 'package:get/get.dart';
import 'package:paradise/services/api_calling_service.dart';

class PostController extends GetxController {
  RxString statusCode = "waiting".obs;

  Future posts () async {
    Remote remote = Remote();

    var gg = await remote.getPosts(1, 1);

    // print(gg);

    statusCode.value = gg;
  }
}