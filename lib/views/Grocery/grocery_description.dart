import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:popover/popover.dart';
import 'package:rohit_multivender/utills/app_colors.dart';
import 'package:rohit_multivender/utills/constant_box.dart';

class GroceryDescriptionView extends StatefulWidget {
  const GroceryDescriptionView({super.key});

  @override
  State<GroceryDescriptionView> createState() => _GroceryDescriptionViewState();
}

class _GroceryDescriptionViewState extends State<GroceryDescriptionView> {
  bool shomore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(
          Icons.arrow_back,
          color: AppColors.ktextColor,
        ),
        backgroundColor: Colors.white,
        title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vegitable & Fruits",
                style: TextStyle(fontSize: 18, color: AppColors.ktextColor),
              ),
              Text(
                "New Potato (Aloo)",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    color: AppColors.ktextColor),
              )
            ]),
        actions: [
          const Icon(
            Icons.search,
            color: AppColors.ktextColor,
          ),
          kboxw10()
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/grecory_image.png"),
                  Column(
                    children: [
                      Image.asset("assets/gerocery_image2.png"),
                      kbox10(),
                      Image.asset("assets/gerocery_image3.png"),
                    ],
                  )
                ],
              ),
              kbox20(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Nouriosh Atta ",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.ktextColor),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.buttoncolor),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          kboxw10(),
                          const Text(
                            "29 min",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Text(
                "50Kg",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.ktextColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "₹ 270",
                    style: TextStyle(
                        color: AppColors.ktextColor,
                        fontWeight: FontWeight.w400),
                  ),
                  kboxw10(),
                  const Text(
                    "₹ 370",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.ktextColor,
                        fontWeight: FontWeight.w400),
                  ),
                  kboxw10(),
                  Container(
                    height: 25.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff018ABE),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      "30 % off",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
                  ),
                  kboxw50(),
                  Container(
                    height: 25.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff018ABE),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                        child: Text(
                      "-    1    +",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )),
                  )
                ],
              ),
              kbox10(),
              const Divider(
                color: AppColors.ktextColor,
              ),
              kbox10(),
              Container(
                color: AppColors.buttoncolor,
                width: Get.width,
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Your Quantity",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      Button()
                    ],
                  ),
                ),
              ),
              kbox10(),
              const Text(
                "Product Detail",
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w700),
              ),
              kbox20(),
              const Text(
                "Description",
                style: TextStyle(
                    fontSize: 18,
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "Lorem ipsum dolor sit amet consectetur. Tristique estas netus sollicitudin aliquam suspendisse massa eleifend. Accumsan eu eget nisl dolor tellus nulla.Lorem ips  r sit amet consectetur. Tristique egestas netus sollicitudin aliquam suspendisse massa eleifend. Accumsan eu eget nisl dolor tellus nulla.",
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.ktextColor,
                    fontWeight: FontWeight.w400),
              ),
              kbox10(),
              !shomore
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          shomore = true;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            "Read More Details",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff018ABE),
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff018ABE),
                          )
                        ],
                      ),
                    )
                  : const Text(""),
              shomore ? showMore() : const Text(""),
              !shomore
                  ? Container(
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
                    )
                  : Text("")
            ],
          ),
        ),
      ),
    );
  }

  showMore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Nutrient Value & Benifit",
          style: TextStyle(
              fontSize: 16,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Lorem ipsum dolor sit amet consectetur. Tristique estas netus sollicitudin aliquam suspendisse massa eleifend. Accumsan eu eget nisl dolo",
          style: TextStyle(
              fontSize: 12,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w400),
        ),
        kbox10(),
        const Text(
          "Storage Tips",
          style: TextStyle(
              fontSize: 16,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Lorem ipsum dolor sit amet consectetur. Tristique estas netus sollicitudin aliquam suspendisse massa eleifend. ",
          style: TextStyle(
              fontSize: 12,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w400),
        ),
        kbox10(),
        const Text(
          "Manufacturer Detail",
          style: TextStyle(
              fontSize: 16,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Lorem ipsum dolor sit amet consectetur. Tristique estas netus sollicitudin aliquam suspendisse massa eleifend. Accumsan eu eget nisl dolor tellus nulla.Lorem ips  r sit amet consectetur. ",
          style: TextStyle(
              fontSize: 12,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w400),
        ),
        kbox10(),
        const Text(
          "Product Class",
          style: TextStyle(
              fontSize: 16,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Fruits & Vegitable",
          style: TextStyle(
              fontSize: 13,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w400),
        ),
        kbox10(),
        const Text(
          "Seller",
          style: TextStyle(
              fontSize: 16,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Lorem ipsum dolor sit amet ",
          style: TextStyle(
              fontSize: 13,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: () {
            setState(() {
              shomore = false;
            });
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Less ^",
                style: TextStyle(
                    color: Color(0xff018ABE), fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        kbox20(),
        const Text(
          "similar Product",
          style: TextStyle(
              fontSize: 16,
              color: AppColors.ktextColor,
              fontWeight: FontWeight.w500),
        ),
        kbox20(),
        Container(
          height: 200,
          child: ListView.separated(
            separatorBuilder: (context, index) => kboxw10(),
            shrinkWrap: true,
            itemCount: 6,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return kconr();
            },
          ),
        ),
        kbox20(),
        Container(
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
        )
      ],
    );
  }

  kconr() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.kboadercolor),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
              kboxw20(),
              const Text(
                "29 min",
                style: TextStyle(fontSize: 10, color: Color(0xff018201)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //height: 60,
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(),
                child: Image.asset("assets/ashirvad.png"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Abhivadan Atta",
                    style: TextStyle(
                      color: AppColors.ktextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
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
                      fontSize: 13,
                      color: AppColors.ktextColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 80,
      //height: 40,
      child: GestureDetector(
        child: const Center(
            child: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white,
        )),
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => const ListItems(),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            width: 80,
            height: 200,
            arrowHeight: 15,
            arrowWidth: 30,
          );
        },
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          const Text(
            "1 Kg",
            style: TextStyle(color: AppColors.ktextColor),
          ),
          kbox5(),
          const Text(
            "5 Kg",
            style: TextStyle(color: AppColors.ktextColor),
          ),
          kbox5(),
          const Text(
            "10 Kg",
            style: TextStyle(color: AppColors.ktextColor),
          ),
          kbox5(),
          const Text(
            "15 Kg",
            style: TextStyle(color: AppColors.ktextColor),
          ),
          kbox5(),
          const Text(
            "20 Kg",
            style: TextStyle(color: AppColors.ktextColor),
          ),
          kbox5(),
          const Text(
            "25 Kg",
            style: TextStyle(color: AppColors.ktextColor),
          )
        ],
      ),
    );
  }
}
