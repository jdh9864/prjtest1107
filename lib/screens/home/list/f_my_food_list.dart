import 'package:flutter/material.dart';
import 'package:refri_project/common/widget/w_height_and_width.dart';
import 'package:refri_project/screens/home/list/home_selected_list.dart';
import 'package:velocity_x/velocity_x.dart';

class MyFoodListFragment extends StatelessWidget {
  const MyFoodListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 10),
            Text('상품', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(width: 30),
            Text('재료명', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(width: 150),
            Text('유통기한', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                getMyFoodList(context),
              ],
            ),
          ),
        ),
      ],
    );
  }



  Widget getMyFoodList(BuildContext context) => Column(
        children: [
          //Row(children: [
            //width10,
            //'상품'.text.size(16).bold.make(),
            //width30,
            //'재료명'.text.size(16).bold.make(),
            //width150,
            //'유통기한'.text.size(16).bold.make(),
          //]),
          MySelectedList(),
        ],
      );
}