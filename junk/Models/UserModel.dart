class UserModel{
  late int id;
  late String name;
  late String email;

  UserModel({required this.id, required this.name, required this.email});

// Map to Object
  UserModel.fromMap(Map<String,dynamic> map){ 
    this.id = map["id"];
    this.name =map["name"];
    this.email = map["email"];
  }
//Object to Map

  Map<String,dynamic> toMap(){ 
      return { 
        "id": this.id,
        "name": this.name,
        "email": this.email
     };
    }
 
  }
