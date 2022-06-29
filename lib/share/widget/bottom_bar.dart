import 'package:diamon_rose_app/presentation/screen/home/home_view_model.dart';
import 'package:diamon_rose_app/share/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        builder: (controller) => Obx(() => controller.isFullScreen.isFalse ? Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white,
                primaryColor: Colors.red,
                textTheme: Theme.of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.yellow))),
            child: Container(
              height: heightScreen(percent: 7),
              child: BottomNavigationBar(
                iconSize: 30,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                unselectedFontSize: 0,
                selectedFontSize: 0,
                type: BottomNavigationBarType.fixed,
                currentIndex: controller.screenIndex.value.clamp(0, 4),
                onTap: controller.setCurrentScreen,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search,
                      ),
                      label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.add_circle_outline_outlined),
                      label: 'Add'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message), label: 'Message'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            )) : Container(height: 0,width: 0,)));
  }
}
