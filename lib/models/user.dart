// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class Users {
//   String? email;
//   String? password;
//   String? token;

//   Users({this.email, this.password, this.token});

//   factory Users.createAuth(Map<String, dynamic> object) {
//     return Users(email: object['email'], password: object['password']);
//   }

//   static Future<Users> loginAPI(String email, String password) async {
//     Uri apiURL = Uri.parse("https://reqres.in/api/login");

//     var apiResult =
//         await http.post(apiURL, body: {"email": email, "password": password});
//     var jsonObject = json.decode(apiResult.body);

//     return Users.createAuth(jsonObject);
//   }
// }
