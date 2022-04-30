class CostumerModel {
  int id;
  String name;
  String cpf;
  String phone;
  String email;
  int zipcode;
  String street;
  String district;
  String city;
  String state;
  int number;
  String? complement;
  String? observation;

  CostumerModel({
    required this.id,
    required this.name,
    required this.cpf,
    required this.phone,
    required this.email,
    required this.zipcode,
    required this.street,
    required this.district,
    required this.city,
    required this.state,
    required this.number,
    this.complement,
    this.observation,
  });

  factory CostumerModel.fromJSON(Map<String, dynamic> parsedJson) {
    return CostumerModel(
      id: parsedJson['id'],
      name: parsedJson['name'],
      phone: parsedJson['phone'],
      email: parsedJson['email'],
      cpf: parsedJson['cpf'],
      zipcode: parsedJson['zipcode'],
      street: parsedJson['street'],
      district: parsedJson['district'],
      city: parsedJson['city'],
      state: parsedJson['state'],
      number: parsedJson['number'],
      complement: parsedJson['complement'],
      observation: parsedJson['observation'],
    );
  }
}
