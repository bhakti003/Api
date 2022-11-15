import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../Model/vasundhara_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class DashScreen extends StatefulWidget {
  List<SubCategory>? sublist;
  DashScreen({Key? key, this.sublist}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  final Uri _uri = Uri.parse("https://www.google.com/search?q=play+store&rlz=1C5CHFA_enIN987IN987&oq=pla&aqs=chrome.1.69i57j69i59j0i67i433j0i67l2j0i67i131i433j69i60l2.1799j0j7&sourceid=chrome&ie=UTF-8");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 9),
        child: ListView.separated(
          itemCount: widget.sublist!.length,
          itemBuilder: (context, index) {
            return Container(
                height: 15.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.green, blurRadius: 15, spreadRadius: 7),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 12.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(widget.sublist![index].icon!)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 10.h,
                        width: 40.w,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              overflow: TextOverflow.ellipsis,
                              widget.sublist![index].name!,
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                              maxLines: 2,
                              textAlign: TextAlign.start,
                            ),
                            RatingBar.builder(
                              
                              initialRating: double.parse(widget.sublist![index].star!.toString()) ,
                              itemSize: 2.h,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => Icon(Icons.star, color: Colors.grey.shade700,),
                              onRatingUpdate: (double value) {  },
                              unratedColor: Colors.grey,
                            ),
                            Text(widget.sublist![index].installedRange!),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 5.h,
                      width: 11.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Center(
                          child: GestureDetector(
                              onTap: () {
                                _launchUrl();
                              }, child: Text('Download'))),
                    )
                  ],
                ));
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 5.h,
            );
          },
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    if (!await launchUrl(_uri)) {
      throw 'Could not launch $_uri';
    }
  }
}
