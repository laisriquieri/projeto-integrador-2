class ProductModel {
  int id;
  String descricao;
  String tamanho;
  String cor;
  int valorCusto;
  int valorVenda;
  String? observation;

  ProductModel({
    required this.id,
    required this.descricao,
    required this.tamanho,
    required this.cor,
    required this.valorCusto,
    required this.valorVenda,
    this.observation,
  });

  factory ProductModel.fromJSON(Map<String, dynamic> parsedJson) {
    return ProductModel(
      id: parsedJson['id'],
      descricao: parsedJson['descricao'],
      tamanho: parsedJson['tamanho'],
      cor: parsedJson['cor'],
      valorCusto: parsedJson['valorCusto'],
      valorVenda: parsedJson['valorVenda'],
      observation: parsedJson['observation'],
    );
  }
}
