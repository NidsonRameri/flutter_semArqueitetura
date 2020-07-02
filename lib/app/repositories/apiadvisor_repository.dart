import 'package:semana_do_flutter/app/interfaces/client_http_service_interface.dart';
import 'package:semana_do_flutter/app/models/apiadvisor_model.dart';
import 'package:semana_do_flutter/app/repositories/apiadvisor_repository_interface.dart';

class ApiadvisorRepository implements IApiAdvisor {
  final IClientHttp client;

  ApiadvisorRepository(this.client);

  @override
  Future<ApiadvisorModel> getTime() async {
    var json = await client.get(
        "http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=23cc8b4ce1b30506beb7341c158368a1"); //link url

    ApiadvisorModel model = ApiadvisorModel.fromJson(json[0]);
    return model;
  }
}
