import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_module/app_constant/constants.dart';
import 'package:groceries_module/util/extensions.dart';

class QuotationBottomSheet extends StatefulWidget {
  const QuotationBottomSheet({super.key});

  @override
  State<StatefulWidget> createState() {
    return QuotationBottomSheetState();
  }
}

class QuotationBottomSheetState extends State<QuotationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 3.h,
          ),
          Container(
            margin: const EdgeInsets.only(left: 8.0),
            child: const Text(
              'Choose a Option',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/groceries_page_images/louis.png",
                    fit: BoxFit.fill,
                    height: 15.h,
                    width: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text("5kg"),
                          Text(
                            "(32/kg)",
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("₹35"),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Constants.primaryColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              "₹360 Off",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withOpacity(0.10),
                          offset: Offset(0,3.79),
                          blurRadius: 3.79,
                          spreadRadius: 0
                        )
                      ]
                    ),
                    child: const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the row contents
                      children: [
                        Icon(Icons.remove,size: 16),
                        SizedBox(width: 10),
                        Text(
                          '2', // Display the current number
                          style: TextStyle(
                              fontSize: 18.0), // Adjust the font size as needed
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.add,size: 16,),
                      ],
                    ),
                  ),
                  SizedBox(width: 2.w),

                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/groceries_page_images/louis.png",
                    fit: BoxFit.fill,
                    height: 15.h,
                    width: 15.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text("5kg"),
                          Text(
                            "(32/kg)",
                            style: TextStyle(color: Colors.grey, fontSize: 11),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("₹35"),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Constants.primaryColor,
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              "₹360 Off",
                              style:
                                  TextStyle(fontSize: 9, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000).withOpacity(0.10),
                              offset: Offset(0,3.79),
                              blurRadius: 3.79,
                              spreadRadius: 0
                          )
                        ]
                    ),
                    child: const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Center the row contents
                      children: [
                        SizedBox(width: 10),
                        Text(
                          'Add', // Display the current number
                          style: TextStyle(
                              fontSize: 18.0), // Adjust the font size as needed
                        ),
                        Icon(Icons.add,size: 16,),
                      ],
                    ),
                  ),
                  SizedBox(width: 2.w),
                ],
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.only(left: 3.w),
            child: Text("Also paired by 10+ Customers"),
          ),

          Divider(
          ),

          Row(
            children: [
              Image.asset(
                "assets/groceries_page_images/louis.png",
                fit: BoxFit.fill,
                height: 10.h,
                width: 10.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text("5kg"),
                      Text(
                        "(32/kg)",
                        style: TextStyle(color: Colors.grey, fontSize: 8),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("₹35"),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            color: Constants.primaryColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          "₹360 Off",
                          style:
                          TextStyle(fontSize: 9, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff000000).withOpacity(0.10),
                          offset: Offset(0,3.79),
                          blurRadius: 3.79,
                          spreadRadius: 0
                      )
                    ]
                ),
                child: const Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center, // Center the row contents
                  children: [
                    SizedBox(width: 10),
                    Text(
                      'Add', // Display the current number
                      style: TextStyle(
                          fontSize: 18.0), // Adjust the font size as needed
                    ),
                    Icon(Icons.add,size: 16,),
                  ],
                ),
              ),
              SizedBox(width: 2.w),

            ],
          ),


        ],
      ),
    );
  }
}
