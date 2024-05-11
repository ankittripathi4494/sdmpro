import 'package:sdmproapp/modules/dashboard/model/district.dart';

class DashboardState {}

final class DashboardInitial extends DashboardState {}

final class DashboardDistrictLoading extends DashboardState {}

final class DashboardDistrictLoaded extends DashboardState {
  late List<Districts> districtList;
  DashboardDistrictLoaded({required this.districtList});
}

final class DashboardDistrictFailed extends DashboardState {
  final String errorMessage;
  DashboardDistrictFailed({required this.errorMessage});
}
