// ignore_for_file: use_build_context_synchronously
import 'package:duration_button/duration_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdmproapp/modules/dashboard/bloc/dashboard_bloc.dart';
import 'package:sdmproapp/modules/dashboard/bloc/dashboard_event.dart';
import 'package:sdmproapp/modules/dashboard/bloc/dashboard_state.dart';
import 'package:sdmproapp/modules/dashboard/model/district.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:sdmproapp/modules/dashboard/model/mandal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late List<Districts> districtData = [];
  late List<Mandals> mandalData = [];
  @override
  void initState() {
    callDistrict();
    super.initState();
  }

  callDistrict() {
    BlocProvider.of<DashboardBloc>(context).add(DistrictFetchEvent());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Camera"),
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<DashboardBloc, DashboardState>(
              builder: (context, state) {
                if (state is DashboardDistrictLoaded) {
                  return DurationButton(
                      width: 1,
                      height: 1,
                      backgroundColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      coverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onComplete: () {
                        setState(() {
                          districtData = state.districtList;
                        });
                      },
                      onPressed: () {},
                      duration: Durations.medium2,
                      child: Container());
                }
                return Container();
              },
            ),
            DropdownButtonFormField(
              items: districtData
                  .map<DropdownMenuItem<Districts>>((e) =>
                      DropdownMenuItem(value: e, child: Text(e.districtName!)))
                  .toList(),
              onChanged: (value) {
               
              },
            )
          ],
        ),
      ),
    );
  }
}
