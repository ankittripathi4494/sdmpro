class MandalResponse {
  String? responseCode;
  String? responseMessage;
  List<Mandals>? mandals;

  MandalResponse({this.responseCode, this.responseMessage, this.mandals});

  MandalResponse.fromJson(Map<String, dynamic> json) {
    responseCode = json['ResponseCode'];
    responseMessage = json['ResponseMessage'];
    if (json['Mandals'] != null) {
      mandals = <Mandals>[];
      json['Mandals'].forEach((v) {
        mandals!.add(Mandals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ResponseCode'] = responseCode;
    data['ResponseMessage'] = responseMessage;
    if (mandals != null) {
      data['Mandals'] = mandals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Mandals {
  String? mandalId;
  String? mandalName;

  Mandals({this.mandalId, this.mandalName});

  Mandals.fromJson(Map<String, dynamic> json) {
    mandalId = json['MandalId'];
    mandalName = json['MandalName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MandalId'] = mandalId;
    data['MandalName'] = mandalName;
    return data;
  }
}