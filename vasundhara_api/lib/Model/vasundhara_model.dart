class Vasundhara {
  int? status;
  String? message;
  List<Data>? data;
  List<AppCenter>? appCenter;
  NativeAdd? nativeAdd;
  TranslatorAdsId? translatorAdsId;

  Vasundhara(
      {this.status,
        this.message,
        this.data,
        this.appCenter,
        this.nativeAdd,
        this.translatorAdsId});

  Vasundhara.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['app_center'] != null) {
      appCenter = <AppCenter>[];
      json['app_center'].forEach((v) {
        appCenter!.add(new AppCenter.fromJson(v));
      });
    }
    nativeAdd = json['native_add'] != null
        ? new NativeAdd.fromJson(json['native_add'])
        : null;
    translatorAdsId = json['translator_ads_id'] != null
        ? new TranslatorAdsId.fromJson(json['translator_ads_id'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.appCenter != null) {
      data['app_center'] = this.appCenter!.map((v) => v.toJson()).toList();
    }
    if (this.nativeAdd != null) {
      data['native_add'] = this.nativeAdd!.toJson();
    }
    if (this.translatorAdsId != null) {
      data['translator_ads_id'] = this.translatorAdsId!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  int? appId;
  int? position;
  String? name;
  String? thumbImage;
  String? appLink;
  String? packageName;
  String? fullThumbImage;
  int? splashActive;

  Data(
      {this.id,
        this.appId,
        this.position,
        this.name,
        this.thumbImage,
        this.appLink,
        this.packageName,
        this.fullThumbImage,
        this.splashActive});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appId = json['app_id'];
    position = json['position'];
    name = json['name'];
    thumbImage = json['thumb_image'];
    appLink = json['app_link'];
    packageName = json['package_name'];
    fullThumbImage = json['full_thumb_image'];
    splashActive = json['splash_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['app_id'] = this.appId;
    data['position'] = this.position;
    data['name'] = this.name;
    data['thumb_image'] = this.thumbImage;
    data['app_link'] = this.appLink;
    data['package_name'] = this.packageName;
    data['full_thumb_image'] = this.fullThumbImage;
    data['splash_active'] = this.splashActive;
    return data;
  }
}

class AppCenter {
  int? id;
  int? position;
  String? name;
  int? isActive;
  String? catgeory;
  List<SubCategory>? subCategory;


  AppCenter(
      {this.id,
        this.position,
        this.name,
        this.isActive,
        this.catgeory,
        this.subCategory});

  AppCenter.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
    name = json['name'];
    isActive = json['is_active'];
    catgeory = json['catgeory'];
    if (json['sub_category'] != null) {
      subCategory = <SubCategory>[];
      json['sub_category'].forEach((v) {
        subCategory!.add(new SubCategory.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['position'] = this.position;
    data['name'] = this.name;
    data['is_active'] = this.isActive;
    data['catgeory'] = this.catgeory;
    if (this.subCategory != null) {
      data['sub_category'] = this.subCategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SubCategory {
  int? id;
  int? appId;
  int? position;
  String? name;
  String? icon;
  String? star;
  String? installedRange;
  String? appLink;
  String? banner;
  int? isActive;
  int? imageActive;
  String? bannerImage;

  SubCategory(
      {this.id,
        this.appId,
        this.position,
        this.name,
        this.icon,
        this.star,
        this.installedRange,
        this.appLink,
        this.banner,
        this.isActive,
        this.imageActive,
        this.bannerImage});

  SubCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    appId = json['app_id'];
    position = json['position'];
    name = json['name'];
    icon = json['icon'];
    star = json['star'];
    installedRange = json['installed_range'];
    appLink = json['app_link'];
    banner = json['banner'];
    isActive = json['is_active'];
    imageActive = json['image_active'];
    bannerImage = json['banner_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['app_id'] = this.appId;
    data['position'] = this.position;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['star'] = this.star;
    data['installed_range'] = this.installedRange;
    data['app_link'] = this.appLink;
    data['banner'] = this.banner;
    data['is_active'] = this.isActive;
    data['image_active'] = this.imageActive;
    return data;
  }
}

class NativeAdd {
  int? id;
  int? position;
  String? image;
  String? playstoreLink;
  String? packageName;
  int? isActive;
  int? imageActive;

  NativeAdd(
      {this.id,
        this.position,
        this.image,
        this.playstoreLink,
        this.packageName,
        this.isActive,
        this.imageActive});

  NativeAdd.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
    image = json['image'];
    playstoreLink = json['playstore_link'];
    packageName = json['package_name'];
    isActive = json['is_active'];
    imageActive = json['image_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['position'] = this.position;
    data['image'] = this.image;
    data['playstore_link'] = this.playstoreLink;
    data['package_name'] = this.packageName;
    data['is_active'] = this.isActive;
    data['image_active'] = this.imageActive;
    return data;
  }
}

class TranslatorAdsId {
  String? banner;
  String? interstitial;

  TranslatorAdsId({this.banner, this.interstitial});

  TranslatorAdsId.fromJson(Map<String, dynamic> json) {
    banner = json['banner'];
    interstitial = json['interstitial'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['banner'] = this.banner;
    data['interstitial'] = this.interstitial;
    return data;
  }
}
