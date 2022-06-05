import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pi_dois/models/costumer_model.dart';
import 'package:pi_dois/services/api.dart';

class CostumerService {
  static String pathUrl = "Cliente";
  static String url = Api().urlBase();

  Future<List<CostumerModel>> getAllCostumers() async {
    try {
      Response response = await Dio().get(url + pathUrl);
      if (response.statusCode == 200) {
        var getCostumerData = response.data["results"] as List;
        var costumers =
            getCostumerData.map((e) => CostumerModel.fromJson(e)).toList();
        return costumers;
      } else {
        throw Exception("Falha ao carregar os clientes");
      }
    } catch (e) {
      throw Exception("Falha ao carregar os clientes $e");
    }
  }

  Future<CostumerModel> getCostumerById(String id) async {
    try {
      Response response = await Dio().get(url + pathUrl + id);
      if (response.statusCode == 200) {
        return CostumerModel.fromJson(response.data);
      } else {
        throw Exception("Falha ao carregar os clientes");
      }
    } catch (e) {
      print(e);
      throw Exception("Cliente não encontrado $e");
    }
  }

  Future<CostumerModel?> createCostumer(
      {required CostumerModel costumer}) async {
    CostumerModel? costumerCreate;
    try {
      Response response = await Dio().post(
        url + pathUrl,
        data: costumer.toJson(),
      );
      print('Usuário criado: ${response.data}');
      costumerCreate = CostumerModel.fromJson(response.data);
    } catch (e) {
      print('Erro ao criar usuário: $e');
      throw Exception("Erro ao cadastrar cliente $e");
    }

    return costumerCreate;
  }

  Future<CostumerModel?> updateCostumer(
      {required CostumerModel costumer, required String id}) async {
    CostumerModel? costumerCreate;
    try {
      Response response = await Dio().put(
        url + pathUrl + id,
        data: costumer.toJson(),
      );
      print('Usuário criado: ${response.data}');
      costumerCreate = CostumerModel.fromJson(response.data);
    } catch (e) {
      print('Erro ao editar o editar: $e');
      throw Exception("Erro ao editar cliente $e");
    }

    return costumerCreate;
  }

  Future<void> deleteCostumer(String id) async {
    try {
      await Dio().delete(url + pathUrl + '/' + id);
    } catch (e) {
      throw Exception("Erro ao deletar cliente $e");
    }
  }
}
