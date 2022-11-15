import 'dart:convert';

import 'package:get/get.dart';
import 'package:vasundhara_api/Model/vasundhara_model.dart';
import 'package:http/http.dart' as http;

class HomePageController extends GetxController {
  var model = Vasundhara().obs;
  getApi() async {
    print('Call Api');
    var show = await http.get(Uri.parse(
        "http://vasundharaapps.com/artwork_apps/api/AdvertiseNewApplications/17/com.latest.status.message.text.jokes.funny"));
    if (show.statusCode == 200) {
      //print("Responce${show.body}");
      model.value = Vasundhara.fromJson(jsonDecode(show.body));
    }
  }
}
