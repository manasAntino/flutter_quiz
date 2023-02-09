// import 'dart:convert';

// import 'package:flutter_quiz/response_model.dart';
// import 'package:http/http.dart' as http;

// class APIResponse{
//   Future<ResponseModel> fetchDetails() async {
//     final response = await http.get(Uri.parse('https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=47.6204,-122.3491&radius=2500&type=restaurant&key=AIzaSyCFM57HPVEKYnjJkG9FKrSihPLfbH7WFzo'));

//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       return ResponseModel.fromJson(data);
//     } else {
//       throw Exception('Error');
//     }
//   }
// }