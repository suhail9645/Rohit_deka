import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/views/checkoutPages/checkout_main_view.dart';

import '../../utills/constant_box.dart';

class OnionSearchView extends StatefulWidget {
  OnionSearchView({super.key});

  @override
  State<OnionSearchView> createState() => _OnionSearchViewState();
}

class _OnionSearchViewState extends State<OnionSearchView> {
  int selectedCategoryIndex = 0;
  // Track the selected category index
  ScrollController _scrollController = ScrollController();

  var w, h;

  bool viewCart = false;

  @override
  void dispose() {
    _scrollController.dispose(); // Don't forget to dispose the ScrollController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: viewCart
          ? Padding(
              padding: const EdgeInsets.only(left: 30),
              child: InkWell(
                onTap: () {
                  Get.to(const CheckOutMainView());
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.buttoncolor),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("1 item\n₹ 117.00"),
                        Row(
                          children: [
                            Text(
                              "View Cart",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          : const Text(""),
      backgroundColor: const Color.fromARGB(255, 233, 228, 228),
      appBar: AppBar(
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.ktextColor,
          ),
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset("assets/onion.png"),
            kboxw10(),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Onions ",
                  style: TextStyle(fontSize: 18, color: AppColors.ktextColor),
                ),
                Text(
                  "239 Product",
                  style: TextStyle(fontSize: 14, color: AppColors.grey),
                ),
              ],
            ),
          ],
        ),
        actions: [
          const Icon(
            Icons.search,
            color: AppColors.ktextColor,
            size: 30,
          ),
          kboxw20()
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   height: Get.height,
                  //   width: w * 0.22,
                  //   padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                  //   decoration: const BoxDecoration(
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black12,
                  //         blurRadius: 5,
                  //         spreadRadius: 5,
                  //       ),
                  //     ],
                  //     color: Colors.white,
                  //   ),
                  //   child: Scrollbar(
                  //     // Wrap the ListView.builder with Scrollbar widget
                  //     controller: _scrollController,
                  //     child: ListView.builder(
                  //       controller:
                  //           _scrollController, // Use the same ScrollController
                  //       shrinkWrap: true,
                  //       itemCount: sideimage.length,
                  //       itemBuilder: (context, index) {
                  //         return InkWell(
                  //           onTap: () {
                  //             setState(() {
                  //               selectedCategoryIndex = index;
                  //             });
                  //           },
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: [
                  //               Container(
                  //                 padding: const EdgeInsets.only(
                  //                     top: 5, left: 5, bottom: 5),
                  //                 margin: const EdgeInsets.all(7),
                  //                 width: w * 0.14,
                  //                 child: Column(
                  //                   mainAxisAlignment:
                  //                       MainAxisAlignment.spaceAround,
                  //                   children: [
                  //                     Container(
                  //                       height: 50,
                  //                       width: 50,
                  //                       decoration: BoxDecoration(
                  //                         border:
                  //                             Border.all(color: Colors.blue),
                  //                         borderRadius:
                  //                             BorderRadius.circular(50),
                  //                         image: DecorationImage(
                  //                           fit: BoxFit.fill,
                  //                           image: AssetImage(
                  //                             "assets/${sideimage[index]}.png",
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                     Text(
                  //                       sidetext[index],
                  //                       textAlign: TextAlign.center,
                  //                       style: const TextStyle(
                  //                           color: AppColors.ktextColor, fontSize: 12),
                  //                     )
                  //                   ],
                  //                 ),
                  //               ),
                  //               Container(
                  //                 height: 80,
                  //                 width: 5,
                  //                 color: selectedCategoryIndex == index
                  //                     ? Colors.blue
                  //                     : Colors.transparent,
                  //               )
                  //             ],
                  //           ),
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // ),
                  // // product container
                  Expanded(
                    child: Container(
                      width: w * 0.78,
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.h,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                            color: AppColors.kboadercolor)),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            index == 0
                                                ? const Icon(
                                                    Icons.sort,
                                                    color: AppColors.ktextColor,
                                                  )
                                                : const Text(""),
                                            Text(
                                              textt[index],
                                              style: const TextStyle(
                                                  color: AppColors.ktextColor),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => kboxw10(),
                                itemCount: textt.length),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: GridView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(10),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1 / 1.1,
                                ),
                                itemCount: 8,
                                itemBuilder: (context, index) {
                                  bool isOddSelected = true;
                                  return buildGridItem(isOddSelected, index);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem(bool isOddSelected, int index) {
    // Conditionally return different content based on the isOddSelected flag
    if (isOddSelected) {
      // Odd selectedCategoryIndex: Display odd content
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.buttoncolor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "12 % off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                RichText(
                  text: const TextSpan(children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.timer_outlined,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                    TextSpan(
                      text: " 25 min",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Container(
              height: h * 0.1,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/${cateimage[index]}.png",
                  ),
                ),
              ),
            ),
            const Text(
              "Onions",
              style: TextStyle(
                color: AppColors.ktextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 Bag (40kg-60kg)",
                      style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "\u{20B9} 225 per kg",
                      style: TextStyle(
                        color: AppColors.ktextColor,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      viewCart = true;
                    });
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.buttoncolor,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      // Even selectedCategoryIndex: Display even content
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "30 % off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
                RichText(
                  text: const TextSpan(children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.timer_outlined,
                        color: Colors.green,
                        size: 15,
                      ),
                    ),
                    TextSpan(
                      text: " 40 min",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Container(
              height: h * 0.1,
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.aashirvaad.com/img/multigrains/MG_FOP.png",
                  ),
                ),
              ),
            ),
            const Text(
              "Multigrain aata",
              style: TextStyle(
                color: AppColors.ktextColor,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 Bag (5kg)",
                      style: TextStyle(
                        color: AppColors.ktextColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "\u{20B9} 155 per kg",
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.ktextColor,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blue,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

  List sideimage = [
    "chicken_combo",
    "offols",
    "curry_cut",
    "boneless",
    "special_cut",
    "shoop",
    "herb"
  ];

  List sidetext = [
    "Chicken\nCombo",
    "Offals",
    "Curry cuts",
    "Boneless &\nMince",
    "Specialty\ncut",
    "shoop",
    "Leafless &\nHerbs"
  ];

  List cateimage = [
    "chicken_combo",
    "offols",
    "curry_cut",
    "boneless",
    "special_cut",
    "shoop",
    "herb",
    "curry_cut",
    "boneless",
  ];

  List textt = ["Sort", "Fast Delivery", "Great Offer", "Low To High"];
}
