class CostumerModel {
  int id;
  String name;
  String cpf;
  String birthDate;
  String phone;
  String email;
  String zipcode;
  String street;
  String district;
  String city;
  String state;
  String? number;
  String? complement;
  String? observation;

  CostumerModel({
    required this.id,
    required this.name,
    required this.cpf,
    required this.birthDate,
    required this.phone,
    required this.email,
    required this.zipcode,
    required this.street,
    required this.district,
    required this.city,
    required this.state,
    this.number,
    this.complement,
    this.observation,
  });

  factory CostumerModel.fromJson(Map<String, dynamic> json) {
    return CostumerModel(
      id: json['id'],
      name: json['nome'],
      cpf: json['cpf_cnpj'],
      birthDate: json['data_nascimento'],
      phone: json['telefone'],
      email: json['email'],
      zipcode: json['cep'],
      street: json['logradouro'],
      district: json['bairro'],
      city: json['cidade'],
      state: json['uf'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'nome': name,
        'cpf_cnpj': cpf,
        'data_nasciento': birthDate,
        'telefone': phone,
        'email': email,
        'cep': zipcode,
        'logradouro': street,
        'bairro': district,
        'cidade': city,
        'uf': state
      };
}
