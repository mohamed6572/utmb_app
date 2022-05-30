class utmbUserModel {
   String? name;
   String? email;
   String? phone;
   String? uId;
   String? image;
   String? cover;
   String? prenom;
   String? dnaisance;
   String? specailite;


  utmbUserModel({
     this.name,
     this.email,
     this.phone,
     this.uId,
     this.image,
     this.cover,
     this.prenom,
     this.dnaisance,
     this.specailite,
  });

  utmbUserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];
    cover = json['cover'];
    image = json['image'];
    prenom = json['prenom'];
    dnaisance = json['dnaisance'];
    specailite = json['specailite'];
  }

  Map<String, dynamic> toJson(){
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'cover': cover,
      'uId': uId,
      'image': image,
      'prenom': prenom,
      'dnaisance': dnaisance,
      'specailite': specailite,
    };
  }
}
