import 'dart:ffi';
import 'dart:ui';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:groceries_module/app_constant/constants.dart';
import 'package:groceries_module/common_widget/common_title_bar.dart';
import 'package:groceries_module/util/extensions.dart';

import 'search_page.dart';

class GroceriesHomePage extends StatefulWidget {
  const GroceriesHomePage({super.key});

  @override
  State<GroceriesHomePage> createState() => _GroceriesHomePageState();
}

class _GroceriesHomePageState extends State<GroceriesHomePage> {
  final List<String> offerList = [
    "assets/groceries_page_images/offer_images/health.png",
    "assets/groceries_page_images/offer_images/festival.png",
    "assets/groceries_page_images/offer_images/coupon.png",
    "assets/groceries_page_images/offer_images/special_price.png",
    "assets/groceries_page_images/offer_images/coupon.png"
  ];

  final Map<String, String> topSellerMap = {
    "Atta, rice & dal":
        "assets/groceries_page_images/top_sellers_images/rice.png",
    "Spices,Salt & Sugar":
        "assets/groceries_page_images/top_sellers_images/sugar.png",
    "Oil & Ghee": "assets/groceries_page_images/top_sellers_images/oil.png",
    "Dry fruit": "assets/groceries_page_images/top_sellers_images/dry_fruit.png"
  };

  final List<Map<String, dynamic>> topSellerItems = [
    {
      "rating": "4.2",
      "name": "Fortune Premium Kachi...",
      "price": "₹299",
      "imagePath":
          "assets/groceries_page_images/best_seller_images/fortune_oil.png"
    },
    {
      "rating": "4.1",
      "name": "Reb Bull Energy Drink...",
      "price": "₹450",
      "imagePath":
          "assets/groceries_page_images/best_seller_images/red_bull.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              addressWidget(),
              Container(
                margin: EdgeInsets.only(left: 7.w, right: 10.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(
                      color: const Color(0xff000000).withOpacity(0.15),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                          color: const Color(0xff000000).withOpacity(0.03))
                    ]),
                child: TextFormField(
                  readOnly: true,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchPage()));

                  },
                  decoration: InputDecoration(
                    isDense: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Constants.primaryColor,
                      size: 28,
                    ),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Constants.primaryColor,
                      size: 28,
                    ),
                    hintText: '"Cold and Cough"',
                    hintStyle: TextStyle(
                        color: Constants.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                    contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Image.asset("assets/groceries_page_images/daily_need_image.png"),
              const CommonTitleBar(title: "Offers"),
              Container(
                height: 10.h,
                margin: EdgeInsets.only(left: 5.w),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: offerList.length,
                    itemBuilder: (context, index) =>

                        ///I have used Images here for text as well because of the Special Price Image with don't have any text within it.
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Image.asset(
                            offerList[index],
                          ),
                        )),
              ),
              Container(
                height: 10.h,
                margin: EdgeInsets.only(left: 5.w),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: offerList.length,
                    itemBuilder: (context, index) =>

                        ///I have used Images here for text as well because of the Special Price Image with don't have any text within it.
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Image.asset(
                            offerList[index],
                          ),
                        )),
              ),
              const CommonTitleBar(title: "Our Top Bestsellers"),
              Container(
                height: 10.h,
                margin: EdgeInsets.only(left: 5.w),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: topSellerMap.length,
                    itemBuilder: (context, index) =>

                        ///Dry Fruit Image is not proper in Figma due to which it not a proper circle
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                    topSellerMap.values.elementAt(index)),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 15.w,
                              child: Text(
                                topSellerMap.keys.elementAt(index),
                                style: const TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                            )
                          ],
                        )),
              ),
              Container(
                width: 100.w,
                margin: EdgeInsets.symmetric(vertical: 1.h),
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    color: Constants.primaryColor.withOpacity(0.16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 1.h),
                      child: Text(
                        "Top Sellers",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Constants.primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: topSellerItems.length,
                        itemBuilder: (context, index) =>
                            Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 2.w),
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 4.h),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            topSellerItems[index]['name'],
                                            style: TextStyle(
                                                fontSize: 9,
                                                color: Constants.primaryColor,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Text(
                                                topSellerItems[index]['price'],
                                                style: const TextStyle(
                                                    fontSize: 7,
                                                    color: Color(0xffA4A4A4))),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "Exciting Offer",
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.red,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      child: Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 20),
                                          child: Image.asset(
                                              topSellerItems[index]
                                                  ['imagePath']))),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                const SizedBox(height: 10),
                                ratingWidget(topSellerItems[index]['rating']),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const CommonTitleBar(title: "All Products"),
              SizedBox(
                height: 4.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 3.45),
                                spreadRadius: 0,
                                blurRadius: 3.89,
                                color:
                                    const Color(0xff000000).withOpacity(0.12))
                          ],
                          border: Border.all(
                              color:
                                  const Color(0xff000000).withOpacity(0.10))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/groceries_page_images/filter.png",
                            height: 2.h,
                            width: 2.h,
                          ),
                          Text(
                            "   Sort",
                            style: TextStyle(color: Constants.primaryColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 2.w),
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 3.45),
                                spreadRadius: 0,
                                blurRadius: 3.89,
                                color:
                                    const Color(0xff000000).withOpacity(0.12))
                          ],
                          border: Border.all(
                              color:
                                  const Color(0xff000000).withOpacity(0.10))),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Text(
                              "Rating 4.0",
                              style: TextStyle(color: Constants.primaryColor),
                            ),
                          ),
                          const Icon(
                            Icons.add,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 2.w),
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Constants.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 3.45),
                                spreadRadius: 0,
                                blurRadius: 3.89,
                                color:
                                    const Color(0xff000000).withOpacity(0.12))
                          ],
                          border: Border.all(
                              color:
                                  const Color(0xff000000).withOpacity(0.10))),
                      child: const Text(
                        "High Discount",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 2.w),
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 3.45),
                                spreadRadius: 0,
                                blurRadius: 3.89,
                                color:
                                    const Color(0xff000000).withOpacity(0.12))
                          ],
                          border: Border.all(
                              color:
                                  const Color(0xff000000).withOpacity(0.10))),
                      child: Text(
                        "Cost Low to high",
                        style: TextStyle(color: Constants.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      allProductItemDetails(
                          "assets/groceries_page_images/groc_store.png",
                          "0.35 km",
                          "30min - 1hrs",
                          "FreshMart",
                          "FreshMart offers a wide variety of fresh produce, dairy, and household essentials. Known for their organic options and quick delivery.",
                          "4.2"),
                      allProductItemDetails(
                          "assets/groceries_page_images/green_grocer.png",
                          "1.00 km",
                          "20min - 2hrs",
                          "Green",
                          "GreenGrocer specializes in farm-fresh vegetables, fruits, and other groceries. They support local farmers and offer eco-friendly packaging.",
                          "4.5"),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget addressWidget(){
    return Row(
      children: [
        Icon(Icons.location_on_outlined,
            color: Constants.primaryColor),
        SizedBox(width: 2.w),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Krishna Vihar Colony",
                    style: TextStyle(
                        color: Color(0xff504E4E),
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xff504E4E),
                  size: 18,
                ),
              ],
            ),
            Text(
              "Home Address, Block D, Street 10, 221198",
              style: TextStyle(
                  color: Color(0xff504E4E),
                  fontSize: 10,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        const Spacer(),
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/groceries_page_images/profile_image.png",
              height: 5.h,
              width: 5.h,
            ))
      ],
    );
  }

  Widget allProductItemDetails(String imagePath, String distance, String time,
      String title, String des, String rating) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h,horizontal: 5.w),
      decoration: BoxDecoration(
        color: const Color(0xff1A4514).withOpacity(0.19),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(4),topRight: Radius.circular(4)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.w),
            child: Row(
              children: [
                Image.asset("assets/groceries_page_images/truck.png",
                    height: 2.h, width: 2.h),
                SizedBox(width: 2.w),
                Text(
                  distance,
                  style: TextStyle(
                      fontSize: 13,
                      color: const Color(0xff000000).withOpacity(0.45)),
                ),
                const Spacer(),
                ratingWidget(rating),
                SizedBox(width: 4.w),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 7.w),

            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Constants.primaryColor),
                ),
                const Spacer(),
                Icon(
                  Icons.watch_later,
                  color: Constants.primaryColor,
                  size: 16,
                ),
                Text(
                  "  $time",
                  style: TextStyle(
                      fontSize: 13,
                      color: const Color(0xff000000).withOpacity(0.45)),
                ),
                const Spacer(),
              ],
            ),
          ),
          Container(
              width: 70.w,
              padding: EdgeInsets.only(left: 7.w),

              child: Text(
                des,
                style: const TextStyle(fontSize: 11),
              )),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: const DottedLine(
              dashLength: 6.0, // Length of the dashes
              dashGapLength: 5.0, // Gap between the dashes
              lineThickness: 1.0, // Thickness of the line
              dashColor: Colors.black, // Color of the dashes
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 7.w),

            child: Text(
              "20% off on First Order",
              style: TextStyle(fontSize: 18, color: Constants.primaryColor),
            ),
          )
        ],
      ),
    );
  }

  Widget ratingWidget(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1.w),
      decoration: BoxDecoration(
          color: Constants.primaryColor,
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 9, color: Colors.white),
          ),
          const Icon(
            Icons.star,
            size: 10,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
