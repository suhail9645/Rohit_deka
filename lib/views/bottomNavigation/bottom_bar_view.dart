import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/bottomNavigation/drawer_view.dart';
import 'package:rohit_multivender/views/bottomNavigation/home.dart';
import 'package:rohit_multivender/views/bottomNavigation/my_cart_view.dart';
import 'package:rohit_multivender/views/bottomNavigation/my_printing_view.dart';
import 'package:rohit_multivender/views/bottomNavigation/my_store_view.dart';
import 'package:rohit_multivender/views/notification_view.dart';

class BottomNavigationBarView extends StatefulWidget {
  int? select;
  BottomNavigationBarView({super.key, this.select});

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  int selectedPos = 0;

  double bottomNavBarHeight = 60;

  List<TabItem> tabItems = List.of([
    TabItem(
      circleStrokeColor: const Color(0xff018ABE),
      Icons.home,
      "Home",
      const Color(0xff018ABE),
      labelStyle: const TextStyle(
          fontWeight: FontWeight.normal, color: Colors.blueAccent),
    ),
    TabItem(
      circleStrokeColor: const Color(0xff018ABE),
      Icons.shopping_cart,
      "Cart",
      const Color(0xff018ABE),
      labelStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    TabItem(
        circleStrokeColor: const Color(0xff018ABE),
        Icons.store_mall_directory,
        "Store",
        const Color(0xff018ABE),
        labelStyle: const TextStyle(color: Colors.blueAccent)),
    TabItem(
        circleStrokeColor: const Color(0xff018ABE),
        Icons.print,
        "Print Docs",
        const Color(0xff018ABE),
        labelStyle: const TextStyle(color: Colors.blueAccent)),
  ]);

  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedPos = widget.select!;
    });
    _navigationController = CircularBottomNavigationController(selectedPos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: ClipRRect(
            borderRadius:
                const BorderRadius.only(topRight: Radius.circular(30)),
            child: CustomDrawer(),
          )),
      backgroundColor: Colors.white,
      appBar: selectedPos == 0
          ? AppBar(
              centerTitle: false,
              elevation: 0,
              leading: Builder(
                builder: (context) => MaterialButton(
                  child: Icon(Icons.menu,color: AppColors.ktextColor,),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
              title: const Row(
                children: [
                 Icon(Icons.location_on,color: AppColors.ktextColor,size: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A Block",
                        style: TextStyle(
                            color: AppColors.ktextColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      Text(
                        "Sector 63,Noida",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 66, 66),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Get.to(NotificationView());
                  },
                  child: const Icon(
                    Icons.notifications,
                    color: AppColors.ktextColor,
                  ),
                ),
                kboxw10()
              ],
              backgroundColor: Colors.white,
            )
          : selectedPos == 1
              ? AppBar(
                  leading: const Icon(
                    Icons.arrow_back,
                    color: AppColors.ktextColor,
                  ),
                  backgroundColor: Colors.white,
                  title: const Text(
                    "My Cart",
                    style: TextStyle(color: AppColors.ktextColor),
                  ),
                )
              : selectedPos == 2
                  ? AppBar(
                      leading: const Icon(
                        Icons.arrow_back,
                        color: AppColors.ktextColor,
                      ),
                      backgroundColor: Colors.white,
                      title: const Text(
                        "Store",
                        style: TextStyle(color: AppColors.ktextColor),
                      ),
                      actions: [
                        const Icon(
                          Icons.search,
                          size: 25,
                          color: AppColors.ktextColor,
                        ),
                        kboxw20(),
                      ],
                    )
                  : AppBar(
                      centerTitle: false,
                      leading: const Icon(
                        Icons.arrow_back,
                        color: AppColors.ktextColor,
                      ),
                      backgroundColor: Colors.white,
                      title: const Text(
                        "Your Printing Store",
                        style: TextStyle(color: AppColors.ktextColor),
                      ),
                    ),
      body: Stack(
        children: <Widget>[
          Padding(
            child: bodyContainer(),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bodyContainer() {
    Color? selectedColor = tabItems[selectedPos].circleColor;
    Widget slogan;

    switch (selectedPos) {
      case 0:
        slogan = const HomeView();
        break;
      case 1:
        slogan = const MyCartView();
        break;
      case 2:
        slogan = MyStoreView();
        break;
      case 3:
        slogan = MyPrintingView();
        break;
      default:
        slogan = Container();
        break;
    }

    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: selectedColor,
        child: Center(child: slogan),
      ),
      onTap: () {
        // if (_navigationController.value == tabItems.length - 1) {
        //   _navigationController.value = 0;
        // } else {
        //   _navigationController.value = _navigationController.value! + 1;
        // }
      },
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      normalIconColor: const Color(0xff97CADB),
      selectedIconColor: Colors.white,

      tabItems,
      controller: _navigationController,
      selectedPos: selectedPos,
      barHeight: bottomNavBarHeight,
      // use either barBackgroundColor or barBackgroundGradient to have a gradient on bar background
      //  barBackgroundColor: Colors.white,
      // barBackgroundGradient: LinearGradient(
      //   begin: Alignment.bottomCenter,
      //   end: Alignment.topCenter,
      //   colors: [
      //     Colors.blue,
      //     Colors.red,
      //   ],
      // ),
      backgroundBoxShadow: <BoxShadow>[
        const BoxShadow(color: Colors.black45, blurRadius: 10.0),
      ],
      animationDuration: const Duration(milliseconds: 300),
      selectedCallback: (int? selectedPos) {
        setState(() {
          this.selectedPos = selectedPos ?? 0;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}
