import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_module/app_constant/constants.dart';
import 'package:groceries_module/ui_design/home_pages/option_dialog.dart';
import 'package:groceries_module/util/extensions.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 7.w, right: 10.w,top: 2.h),
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
          
              const SizedBox(height: 10),
          
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                padding: EdgeInsets.symmetric(vertical: 0.5.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0,4),
                      blurRadius: 4,spreadRadius: 0,
                      color: const Color(0xff000000).withOpacity(0.03)
                    )
                  ],
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                          onTap: () {
                            setState(() {});
                          },
                          child:
                          switchDetailsWidget("Sort")),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child:
                        switchDetailsWidget("Filter"
                      ),
                    ),
                    )
                  ],
                ),
              ),
          
              ListView.builder(
                  shrinkWrap: true,itemCount: 10,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                return Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: const Color(0xff1A4514).withOpacity(0.20)))
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset("assets/groceries_page_images/louis.png",fit: BoxFit.fill,height: 15.h,width: 14.h,),
                          Positioned(
                              top: 1.h,
                              left: 3.w,
                              child: Image.asset("assets/groceries_page_images/discount_tag.png",fit: BoxFit.fill,height: 2.h,width: 6.h,)),
                          
                          Positioned(
                              top: 1.h,
                              left: 4.w,
                              child: const Text("50% Off",style: TextStyle(
                                fontSize: 9,color: Colors.white
                              ),))
                        ],
                      ),
          
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Shakti Bhog",style: TextStyle(
                            fontSize: 12,color: Colors.grey
                          ),),
                          const Text("Louis Vuitton",style: TextStyle(fontWeight: FontWeight.w600),),
          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center, // Center the stars
                            children: List.generate(5, (index) {
                              return Icon(
                                index < 4 ? Icons.star : Icons.star_border, // Filled star for ratings up to 4, empty star for the rest
                                color: Colors.amber, // Color of the stars
                                size: 24.0, // Size of the stars
                              );
                            }),
                          ),
          
                          Row(
                            children: [
                              const Text("5kg"),
                              const Text("(32/kg)",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 11
                              ),),
                              const SizedBox(width: 20),
                              const Text("₹35"),
                               SizedBox(width: 8.w),
          
                              GestureDetector(
                                onTap: (){
                                  showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                                    ),
                                    builder: (BuildContext context) {
                                      return QuotationBottomSheet(
                                      );
                                    },
                                    context: context,
                                  );
                                  },
                                child: Container(
                                  padding:const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Constants.primaryColor)
                                  ),
                                  child: const Row(
                                    children: [
                                      Text("2 Option"),
                                      Icon(Icons.keyboard_arrow_down,size: 13,)
                                    ],
                                  ),
                                ),
                              ),
                              
                            ],
                          ),
                          const SizedBox(height: 5),
          
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Constants.primaryColor,
                              borderRadius: BorderRadius.circular(4)
                            ),
                            child: const Text("Get extra 2% off on 1 item(s) (Price Inclusive...",style: TextStyle(
                              fontSize: 9,color: Colors.white
                            ),),
                          )
          
                        ],
                      )
          
                    ],
                  ),
                );
              })
          
            ],
          ),
        ),
      ),
    );
  }
  Widget switchDetailsWidget(String title) =>
      Container(
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.sort),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      );

}
