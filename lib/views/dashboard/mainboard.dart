import 'package:arte/constant/colors.dart';
import 'package:arte/constant/svg_images.dart';
import 'package:arte/controllers/mainboardcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class MainboardView extends StatelessWidget {
  const MainboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(
        () => Scaffold(
          backgroundColor: colorWhite,
          body: SafeArea(
            child: IndexedStack(
              index: controller.selectedIndex.value,
              children: controller.pages,
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 9.5.h,
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
              onTap: controller.selectedIndex,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconSize: 2.5.w,
              selectedItemColor: colorOrange,
              showUnselectedLabels: false,
              unselectedItemColor: colorDark.withOpacity(0.2),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        home,
                        height: 2.5.h,
                        width: 2.5.w,
                        color: controller.selectedIndex.value == 0
                            ? colorOrange
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        community,
                        height: 2.5.h,
                        width: 2.5.w,
                        color: controller.selectedIndex.value == 1
                            ? colorOrange
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Community"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        feed,
                        height: 2.5.h,
                        width: 2.5.w,
                        color: controller.selectedIndex.value == 2
                            ? colorOrange
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Feed"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        user,
                        height: 2.5.h,
                        width: 2.5.w,
                        color: controller.selectedIndex.value == 3
                            ? colorOrange
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
