import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo_list_app/core/colors/colors.dart';

class CustomAppBar extends StatelessWidget  implements PreferredSizeWidget {
    const CustomAppBar({super.key, this.preferredHeight = kToolbarHeight});

    final double preferredHeight;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 35, right: 24),
      child: Container(
        // padding: EdgeInsets.only(left: 12, right: 12),

              height: preferredHeight,

        child: Row(
          children: [ 
            Container(
              
              child: SvgPicture.asset('assets/icons/sort.svg', height: 30,),
            ),
            Spacer(),
            // const SizedBox(
            //   width: 20,
            // ),
            Text('Index', style: TextStyle(color: whiteTextColor, fontSize: 20, fontWeight: FontWeight.w400),),
            // SizedBox(width: 300,),
             Spacer(),
            Container(
              
                // height: 42,
                //  decoration:    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child:Image.asset('assets/icons/person.png', height: 50,),
            ),
          ],
        ),
      ),
    );
  }
  
  @override
  Size get preferredSize =>Size.fromHeight(preferredHeight);
}
