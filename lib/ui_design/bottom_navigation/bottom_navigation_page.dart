
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:groceries_module/app_constant/constants.dart';
import 'package:groceries_module/ui_design/home_pages/groceries_home_page.dart';
import 'package:groceries_module/ui_design/home_pages/groceries_module.dart';
import 'package:groceries_module/util/extensions.dart';

class BottomNavigationTabPage extends StatefulWidget {
  const BottomNavigationTabPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigationTabPage> createState() =>
      _BottomNavigationTabPageState();
}

class _BottomNavigationTabPageState extends State<BottomNavigationTabPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100.w.toDouble(),
        child: Scaffold(
            body: _tabController != null
                ? TabBarView(
                    controller: _tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      GroceriesHomePage(),
                      Text("Hello"),
                      Text("Hello"),

                    ],
                    // const MyProfilePage(),
                  )
                : const Center(child: CircularProgressIndicator.adaptive()),
            bottomNavigationBar: Material(
              elevation: 3,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 6.h.toDouble(),
                    width: 70.w.toDouble(),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                _currentTabIndex = 0;
                                _tabController!.animateTo(_currentTabIndex);
                                // checkLocationPermission();
                                setState(() {});
                              },
                              child: bottomBarItem(
                                "assets/bottom_nav/home.png",
                                0,
                                _currentTabIndex,
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                _currentTabIndex = 1;
                                _tabController!.animateTo(_currentTabIndex);
                                // checkLocationPermission();
                                setState(() {});
                              },
                              child: bottomBarItem(
                                "assets/bottom_nav/cart.png",
                                1,
                                _currentTabIndex,
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                _currentTabIndex = 2;
                                _tabController!.animateTo(_currentTabIndex);
                                // checkLocationPermission();
                                setState(() {});
                              },
                              child: bottomBarItem(
                                "assets/bottom_nav/groc.png",
                                2,
                                _currentTabIndex,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GroceriesModule()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Constants.primaryColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(7),bottomLeft: Radius.circular(7),bottomRight: Radius.circular(7))
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                      child: Row(
                        children: [
                          const Text("GROCERY",style: TextStyle(
                            color: Colors.white
                          ),),
                          Image.asset("assets/bottom_nav/arrow.png",height: 2.h,width: 2.h,)
                        ],
                      ),
                    ),
                  )

                ],
              ),
            )),
      ),
    );
  }

  Widget bottomBarItem(
      String imgPath, int index, int currIndex) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisSize: MainAxisSize.min,
      children: [
        //tab indicator
        Container(
          alignment: Alignment.center,
          child: AnimatedContainer(
            curve: Curves.linear,
            duration: Duration(milliseconds: currIndex == index ? 250 : 280),
            width: currIndex == index ? 14.w : 0,
            height: 3, //tab == _Tab.values[_currentTabIndex] ? 3 : 0,
            margin: EdgeInsets.only(bottom: 1.h),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Constants.primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(4),
                  bottomLeft: Radius.circular(4)),
            ),
            child: const Text(""),
          ),
        ),

        //icon
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(bottom: 2),
          child: Image.asset(
            //_getAssetForTab(tab),
            imgPath,
            color: currIndex == index ? Constants.primaryColor : null,
            width: 22.0,
            height: 22.0,
          ),
        ),

      ],
    );
  }
}
