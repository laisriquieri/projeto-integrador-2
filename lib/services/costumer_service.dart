import 'package:dio/dio.dart';
import 'package:pi_dois/models/costumer_model.dart';

class CostumerService {
  Future<List<CostumerModel>> getAllCostumers() async {
    try {
      Response response = await Dio()
          .get('https://mocki.io/v1/93961540-09b7-42d9-aede-1f9ab356194a');
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
}
