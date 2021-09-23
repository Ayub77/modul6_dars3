class User{
  String name="";
  String email="";
  String phone="";
  String password="";
  String confirmpassword="";

  User(this.name,this.email,this.phone,this.password,this.confirmpassword);
  User.from(this.email,this.password);

    User.fromJson(Map<String, dynamic> json)
   : name = json['name'],
     email = json['email'],
     phone = json['phone'],
     password = json['password'],
     confirmpassword = json['confirmpassword'];


    Map<String, dynamic> toJson()=>{
      'name' : name,
      'email' : email,
      'phone' : email,
      'password' : email,
      'confirmpassword' : email,

    };



}