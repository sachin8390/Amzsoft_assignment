import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:groceries_module/app_constant/constants.dart';
import 'package:groceries_module/common_widget/common_title_bar.dart';
import 'package:groceries_module/util/extensions.dart';

class GroceriesModule extends StatefulWidget {
  const GroceriesModule({super.key});

  @override
  State<GroceriesModule> createState() => _GroceriesModuleState();
}

class _GroceriesModuleState extends State<GroceriesModule> {
  Map<String, String> popularCatList = {
    "Baby Care": "assets/groceries_page_images/popular_category/shampoo.png",
    "Fitness Supplement":
        "assets/groceries_page_images/popular_category/person.png",
    "Healthy Snack": "assets/groceries_page_images/popular_category/health.png",
    "First Aid": "assets/groceries_page_images/popular_category/health.png",
    "Cold": "assets/groceries_page_images/popular_category/health.png",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                    "assets/groceries_page_images/groceries_bg_image.png"),
                Column(
                  children: [
                    Text(
                      "Order Details",
                      style: TextStyle(color: Constants.primaryColor),
                    ),
                    const Text(
                      "Sangay Clinic",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 31,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Information ● Information ● Information ● Asshiyana",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 11),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ratingWidget("4.2"),
                        const Text(
                          "20.5k ratings",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      width: 70.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF).withOpacity(0.40),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 7.w),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.watch_later,
                                  color: Constants.primaryColor,
                                  size: 16,
                                ),
                                const Text(
                                  "  30min - 1hrs",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          const Text("Aashiyana",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                            size: 14,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            const CommonTitleBar(title: "Popular Categories"),
            SizedBox(
              height: 10.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: popularCatList.length,
                  padding: EdgeInsets.only(left: 4.w),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                        child: Image.asset(popularCatList.values.elementAt(index))),
                          Container(
                            alignment: Alignment.bottomLeft,
                            width: 20.w,
                            child: Text(
                              popularCatList.keys.elementAt(index),
                              style: const TextStyle(
                                  fontSize: 11, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            const CommonTitleBar(title: "Our Categories"),
            SizedBox(
              height: 28.h,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0,3.26),
                          spreadRadius: 0,blurRadius: 3.26,
                          color: const Color(0xff000000).withOpacity(0.10)
                        )
                      ]
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset("assets/groceries_page_images/our_cat/bagels.png",height: 15.h,width: 15.h,fit: BoxFit.fill)),
                        Container(
                          color: const Color(0xffD4DCD2),
                          alignment: Alignment.bottomLeft,
                          width: 15.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Image.asset("assets/groceries_page_images/our_cat/veg_icon.png",height: 1.h,width: 1.h,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w,right: 2.w),
                                child: const Text("Epigamia Greek Yogurt (90g cup)",style: TextStyle(
                                  fontSize: 8
                                ),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: const Text("High in protein and probiotics, available in various flavors without added sugar.",style: TextStyle(
                                  fontSize: 6
                                ),),
                              ),
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
                                padding: EdgeInsets.only(left: 3.w),
                                child: Text(
                                  "20% off ",
                                  style: TextStyle(fontSize: 14, color: Constants.primaryColor),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
        
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0,3.26),
                              spreadRadius: 0,blurRadius: 3.26,
                              color: const Color(0xff000000).withOpacity(0.10)
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/groceries_page_images/our_cat/food2.png",height: 15.h,width: 15.h,fit: BoxFit.fill),
                        Container(
                          color: const Color(0xffD4DCD2),
                          alignment: Alignment.bottomLeft,
                          width: 15.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Image.asset("assets/groceries_page_images/our_cat/veg_icon.png",height: 1.h,width: 1.h,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w,right: 2.w),
                                child: const Text("Epigamia Greek Yogurt (90g cup)",style: TextStyle(
                                  fontSize: 8
                                ),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: const Text("High in protein and probiotics, available in various flavors without added sugar.",style: TextStyle(
                                  fontSize: 6
                                ),),
                              ),
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
                                padding: EdgeInsets.only(left: 3.w),
                                child: Text(
                                  "20% off ",
                                  style: TextStyle(fontSize: 14, color: Constants.primaryColor),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/groceries_page_images/our_cat/bagels.png",height: 15.h,width: 15.h,fit: BoxFit.fill),
                        Container(
                          color: const Color(0xffD4DCD2),
                          alignment: Alignment.bottomLeft,
                          width: 15.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Row(
                                  children: [
                                    const Spacer(),
                                    Image.asset("assets/groceries_page_images/our_cat/veg_icon.png",height: 1.h,width: 1.h,),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w,right: 2.w),
                                child: const Text("Epigamia Greek Yogurt (90g cup)",style: TextStyle(
                                    fontSize: 8
                                ),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: const Text("High in protein and probiotics, available in various flavors without added sugar.",style: TextStyle(
                                    fontSize: 6
                                ),),
                              ),
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
                                padding: EdgeInsets.only(left: 3.w),
                                child: Text(
                                  "20% off ",
                                  style: TextStyle(fontSize: 14, color: Constants.primaryColor),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
        
                ],
              ),
            ),
        
            SizedBox(height: 2.h),
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
                      "Bestsellers",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
        
            SizedBox(height: 2.h),
        
            const CommonTitleBar(title: "Items"),
            SizedBox(height: 2.h),
        
            Row(
              children: [
                SizedBox(width: 4.w),
                Text("Top Discount",style: TextStyle(
                  color: Constants.primaryColor,fontWeight: FontWeight.w600,fontSize: 18
                ),),
        
                Container(
                  height: 4.h,
                  width: 50.w,
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
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Constants.primaryColor,
                        size: 20,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Constants.primaryColor,
                        size: 20,
                      ),
                      hintText: '"Search"',
                      hintStyle: TextStyle(
                          color: Constants.primaryColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                      contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      border: InputBorder.none,
                    ),
                  ),
                ),
        
              ],
            ),
            
        
            GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                crossAxisSpacing: 0,mainAxisSpacing: 7,
                childAspectRatio: 0.9), itemBuilder: (context,index){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: allProductItemDetails(
                    "assets/groceries_page_images/groc_store.png",
                    "0.35 km",
                    "30min - 1hrs",
                    "Epigamia Greek Yogurt (90g cup)",
                    "High in protein and probiotics, available in various flavors without added sugar.",
                    "4.2"),
              );

            })
            
          ],
        ),
      ),
    );
  }

  Widget allProductItemDetails(String imagePath, String distance, String time,
      String title, String des, String rating) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          // margin: EdgeInsets.symmetric(horizontal: 2.w),
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
              SizedBox(height: 5),

              Padding(
                padding: EdgeInsets.only(left: 2.w),
                child: Row(
                  children: [
                    ratingWidget(rating),
                    SizedBox(width: 4.w),
                  ],
                ),
              ),
              SizedBox(height: 5),

              Container(
                padding: EdgeInsets.only(left: 2.w),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(fontSize: 6),
                      ),
                    ),
                    // const Spacer(),

                    Text(
                      "₹35",
                      style: TextStyle(
                          fontSize: 5,
                          decoration: TextDecoration.lineThrough, // Adds the line through the text
                          decorationColor: Colors.black, // Optional: Set the color of the line
                          decorationThickness: 1.0,
                          color: const Color(0xff000000).withOpacity(0.45)),
                    ),
                    Text(
                      " ₹50  ",
                      style: TextStyle(
                          fontSize: 5,
                          fontWeight: FontWeight.w600,
                          color: Constants.primaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                   padding: EdgeInsets.only(left: 2.w),

                  child: Text(
                    des,
                    style: const TextStyle(fontSize: 4),
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
                padding: EdgeInsets.only(left: 2.w),

                child: Text(
                  "20% off",
                  style: TextStyle(fontSize: 9, color: Constants.primaryColor),
                ),
              )
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(bottom: 18,right: 8),
          decoration: BoxDecoration(
            color: Constants.primaryColor,
            borderRadius: BorderRadius.circular(4)
          ),
          child: Icon(Icons.add,color: Colors.white,),
        )
      ],
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
