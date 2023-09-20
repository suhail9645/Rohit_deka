import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';
import 'package:rohit_multivender/views/ReliencePages/reliance_view.dart';
import 'package:rohit_multivender/views/checkoutPages/checkout_main_view.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  int selectedCategoryIndex = 0; // Track the selected category index
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

    return Scaffold(floatingActionButton: viewCart
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
      backgroundColor: Colors.white70.withOpacity(0.9),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back)),
                   CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                        "assets/relience.png"),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(ReliencePageView());
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Reliance Fresh",
                              style: TextStyle(
                                  color: AppColors.ktextColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 3),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: RichText(
                                text: const TextSpan(children: [
                                  WidgetSpan(
                                      child: Icon(
                                    Icons.star,
                                    color: Colors.white,
                                    size: 15,
                                  )),
                                  TextSpan(
                                      text: " 4.8",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12))
                                ]),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            onTap: () {},
                            child: const Text(
                              "VIEW VENDOR PAGE",
                              style: TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 35,
                      ))
                ],
              ),
            ),
            // product category
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: w * 0.22,
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 5,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Scrollbar(
                      // Wrap the ListView.builder with Scrollbar widget
                      controller: _scrollController,
                      child: RawScrollbar(
                        // Wrap the ListView.builder with RawScrollbar widget
                        controller:
                            _scrollController, // Pass the ScrollController
                        // isAlwaysShown: true, // Always show the scrollbar
                        thumbColor: Colors.blue,
                        thickness: 2, // Set the thickness of the scrollbar
                        child: ListView.builder(
                          controller:
                              _scrollController, // Use the same ScrollController
                          shrinkWrap: true,
                          itemCount: sideimage.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                // Update the selected category index when tapped
                                setState(() {
                                  selectedCategoryIndex = index;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    margin: const EdgeInsets.all(7),
                                    width: w * 0.14,
                                    // height: 100,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        // Indicator for the selected category

                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.blue),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                "assets/${sideimage[index]}.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                        kbox10(),
                                        Text(
                                          sidetext[index],
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: AppColors.ktextColor,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ),
                                  // Container(
                                  //   height: 100,
                                  //   width: 8,
                                  //   color: selectedCategoryIndex == index
                                  //       ? Colors.blueGrey
                                  //       : Colors.transparent,
                                  // )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  // product container
                  Expanded(
                    child: Container(
                      width: w * 0.78,
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.only(top: 10, left: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 45,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Container(
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5,
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.indigo),
                                    color: Colors.white70.withOpacity(0.7),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: const Text(
                                    "Fast Delivery",
                                    style: TextStyle(color: Colors.indigo),
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            " 14 Onions & Related Items Found!",
                            style: TextStyle(
                                color: AppColors.ktextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {
                              _itemNotFound();
                            },
                            child: Row(
                              children: [
                                const Text(
                                  " Item not found? ",
                                  style: TextStyle(
                                      color: AppColors.ktextColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                kbox10(),
                                const Text(
                                  "Report Here",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff018ABE),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          kbox10(),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(right: 5),
                              child: GridView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(4),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 1 / 1.42,
                                ),
                                itemCount: cateimage.length,
                                itemBuilder: (context, index) {
                                  // bool isOddSelected =
                                  //     selectedCategoryIndex.isOdd;
                                  return buildGridItem(false, index);
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
    if (!isOddSelected) {
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
                fontWeight: FontWeight.w600,
                fontSize: 14,
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
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "\u{20B9} 225",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.ktextColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 2,
                ),
                InkWell(onTap: () {
                  setState(() {
                    viewCart = true;
                  });
                },
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.buttoncolor,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 20,
                        color: Colors.white70,
                      ),
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
                      "1 Bag (5kg)",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "\u{20B9} 155 per kg",
                      style: TextStyle(),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                     color: AppColors.buttoncolor,
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

  Future<void> _itemNotFound() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Container(
            width: 400,
            height: 700,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Item Not Found??",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.ktextColor,
                          fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.close,
                        color: AppColors.ktextColor,
                        size: 40,
                      ),
                    )
                  ],
                ),
                kbox20(),
                kbox20(),
                const Text(
                  "Any Feedbacks?",
                  style: TextStyle(
                      fontSize: 23,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600),
                ),
                kbox20(),
                Container(
                  //height: 100.h,
                  // width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffD9D9D9)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Enter your feedback",
                          style: TextStyle(
                              color: AppColors.ktextColor, fontSize: 20),
                        ),
                        kbox10(),
                        TextFormField(
                          style: const TextStyle(color: AppColors.ktextColor),
                          maxLines: 3,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        )
                      ],
                    ),
                  ),
                ),
                kbox20(),
                const Text(
                  "Report Vendor",
                  style: TextStyle(
                      fontSize: 23,
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600),
                ),
                kbox20(),
                Container(
                  //height: 100.h,
                  // width: Get.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffD9D9D9)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Type Vendor Name here......",
                          style: TextStyle(
                              color: AppColors.ktextColor, fontSize: 13),
                        ),
                        kbox10(),
                        TextFormField(
                          style: const TextStyle(color: AppColors.ktextColor),
                          maxLines: 1,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                        )
                      ],
                    ),
                  ),
                ),
                kbox20(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Any further Queries?",
                      style:
                          TextStyle(color: AppColors.ktextColor, fontSize: 15),
                    ),
                    Text(
                      " Call us At",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 17),
                    ),
                  ],
                ),
                kbox20(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.call,
                      color: AppColors.ktextColor,
                    ),
                    Text(
                      "+91 1234567890",
                      style:
                          TextStyle(color: AppColors.ktextColor, fontSize: 17),
                    ),
                  ],
                ),
                kbox20(),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff018201)),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "SUMBIT",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  List sideimage = ["onion", "ata", "dal", "tel", "sugr", "shoop", "herb"];
  List sidetext = [
    "Onions",
    "Aatta",
    "Dal",
    "tel",
    "suger",
    "shoop",
    "Leafless &\nHerbs"
  ];
  List cateimage = [
    "oni2",
    "red_onion",
    "green_onion",
    "onion_paste",
    "lays_onion",
    "oni2",
    "red_onion",
    "green_onion"
  ];
}
