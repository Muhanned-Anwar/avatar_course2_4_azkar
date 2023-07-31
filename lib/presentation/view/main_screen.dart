import 'package:avatar_course2_4_azkar/core/constants.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_assets.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_colors.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_height.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_icon_sizes.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_raduis.dart';
import 'package:avatar_course2_4_azkar/core/resources/manager_width.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/base_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        title: baseText(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: ManagerColors.white,
              size: ManagerIconSizes.s36,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  ManagerAssets.azkarImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: ManagerWidth.w100,
              height: ManagerHeight.h40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ManagerColors.primaryColor,
                borderRadius: BorderRadius.circular(
                  ManagerRadius.r12,
                ),
              ),
              child: baseText(text: '1'),
            ),
          ),
        ],
      ),
    );
  }
}
