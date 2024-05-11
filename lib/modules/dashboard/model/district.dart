class DistrictResponse {
  String? responseCode;
  String? responseMessage;
  List<Districts>? districts;

  DistrictResponse({this.responseCode, this.responseMessage, this.districts});

  DistrictResponse.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    responseMessage = json['ResponseMessage'];
    if (json['Districts'] != null) {
      districts = <Districts>[];
      json['Districts'].forEach((v) {
        districts!.add(Districts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ResponseCode'] = responseCode;
    data['ResponseMessage'] = responseMessage;
    if (districts != null) {
      data['Districts'] = districts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Districts {
  String? districtId;
  String? districtName;

  Districts({this.districtId, this.districtName});

  Districts.fromJson(Map<String, dynamic> json) {
    districtId = json['DistrictId'];
    districtName = json['DistrictName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['DistrictId'] = districtId;
    data['DistrictName'] = districtName;
    return data;
  }
}