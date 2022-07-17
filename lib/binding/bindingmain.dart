import 'package:arte/controllers/boardcontroller.dart';
import 'package:arte/controllers/communitycontroller.dart';
import 'package:arte/controllers/feedcontroller.dart';
import 'package:arte/controllers/mainboardcontroller.dart';
import 'package:arte/controllers/profilecontroller.dart';
import 'package:get/get.dart';

class Bindingmain with Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainController(), fenix: true);
    Get.lazyPut(() => FeedController(), fenix: true);
    Get.lazyPut(() => CommunityController(), fenix: true);
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => BoardController(), fenix: true);
  }
}
