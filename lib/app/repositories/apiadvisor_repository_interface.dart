import 'package:semana_do_flutter/app/models/apiadvisor_model.dart';

abstract class IApiAdvisor {
  Future<ApiadvisorModel> getTime();
}
