import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vasundhara_api/Controller/controller_get.dart';
import 'package:sizer/sizer.dart';
import 'package:vasundhara_api/Model/vasundhara_model.dart';
import 'package:vasundhara_api/Screen/dash_screen.dart';

import '../Model/vasundhara_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller = Get.put(HomePageController());
  @override
  void initState() {
    Controller.getApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> Container(
          child: Controller.model.value.appCenter == null
              ? Center(
                  child: CircularProgressIndicator(),)
              : ListView.separated(
                  itemCount: Controller.model.value.appCenter!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 8.h,
                      width: 2.w,
                      decoration: BoxDecoration(color: Colors.grey),
                      child: Center(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DashScreen(sublist: Controller.model.value.appCenter![index].subCategory),
                                    ));
                              },
                              child: Text(Controller.model.value.appCenter![index].name!, style: TextStyle(fontSize: 20.sp)))),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 5.h,
                    );
                  },
                ),
        ),
      ),
    );
  }
}
