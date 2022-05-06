import 'package:dio/dio.dart';
import 'package:pi_dois/models/costumer_model.dart';
import 'package:pi_dois/services/api.dart';

class CostumerService {
  static String pathUrl = "/93961540-09b7-42d9-aede-1f9ab356194a";
  static String url = Api().urlBase();

  Future<List<CostumerModel>> getAllCostumers() async {
    try {
      Response response = await Dio().get(url + pathUrl);
      if (response.statusCode == 200) {
        var getCostumersData = response.data as List;
        var costumers =
            getCostumersData.map((e) => CostumerModel.fromJSON(e)).toList();
        return costumers;
      } else {
        throw Exception('Falha ao carregar clientes');
      }
    } catch (e) {
      throw Exception('Falha ao carregar clientes');
    }
  }

  Future<CostumerModel> getCostumerById(int id) async {
    try {
      Response response = await Dio().get(url + pathUrl);
      if (response.statusCode == 200) {
        var getCostumersData = response.data;
        var costumers = getCostumersData.map((e) => CostumerModel.fromJSON(e));
        return costumers;
      } else {
        throw Exception('Falha ao carregar clientes');
      }
    } catch (e) {
      throw Exception('Falha ao carregar clientes');
    }
  }
}
