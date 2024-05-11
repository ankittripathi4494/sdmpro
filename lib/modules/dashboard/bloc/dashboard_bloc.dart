// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdmproapp/modules/dashboard/bloc/dashboard_event.dart';
import 'package:sdmproapp/modules/dashboard/bloc/dashboard_state.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:sdmproapp/modules/dashboard/model/district.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(DashboardInitial()) {
    on<DistrictFetchEvent>((event, emit) async {
      emit(DashboardDistrictLoading());
      try {
        http.Response districtAPIResponse = await http.post(Uri.http(
            "tsprepanchayat.telangana.gov.in",
            "PPVAPICMS/api/Master/GetDistricts"));
        print(districtAPIResponse.statusCode);
        if (districtAPIResponse.statusCode == 200) {
          print(districtAPIResponse.body);
          var jsondistrictAPIResponse = DistrictResponse.fromJson(
              convert.jsonDecode(districtAPIResponse.body));
          print(
              "Disitrict Instamce:- ${jsondistrictAPIResponse.districts.toString()}");
          if (jsondistrictAPIResponse.districts!.isNotEmpty) {
            emit(DashboardDistrictLoaded(
                districtList: jsondistrictAPIResponse.districts!));
          } else {
            emit(DashboardDistrictLoaded(districtList: []));
          }
        } else {
          print("Request Failed with status ${districtAPIResponse.statusCode}");
          emit(DashboardDistrictFailed(
              errorMessage:
                  "Request Failed with status ${districtAPIResponse.statusCode}"));
        }
      } on Exception catch (e) {
        print("General Exception : ${e.toString()}");
        emit(DashboardDistrictFailed(errorMessage: e.toString()));
      }
    });
  }
}
