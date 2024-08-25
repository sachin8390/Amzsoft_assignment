import 'package:flutter/cupertino.dart';
import 'package:groceries_module/util/extensions.dart';

class CommonTitleBar extends StatelessWidget {
  final String title;
  const CommonTitleBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      child: Row(
        children: [
          Container(
            width: 10.w,
            height: 0.3,
            color: const Color(0xff347A2A),
          ),
           Text("   $title  "),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 5.w),
              height: 0.3,
              color: const Color(0xff347A2A),
            ),
          ),
        ],
      ),
    );
  }
}
