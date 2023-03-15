import 'dart:developer';

import 'package:http/http.dart' as http;
import './question_model.dart';
import 'dart:convert';

class DBconnect{

  final url = Uri.parse('https://quizapp-6d0b8-default-rtdb.firebaseio.com/'
      'question.json');
  Future<void> addQuestion(Question question) async{
    http.post(url,body: json.encode({
      'title':question.title,
      'options': question.options,
    }));
  }


  Future<List<Question>> fetchQuestions() async {
   return http.get(url).then((response){
     var data = json.decode(response.body) as Map<String, dynamic>;
     List<Question> newQuestions = [];
      log('fetched: $data');
     data.forEach((key, value) {
       var newQuestion = Question(
         id: key,//the encrypted key
         title: value['title'],//title of question
         options: Map.castFrom(value['options']),
         // options: Map.castFrom(value['options']), //options of question
       );
        newQuestions.add(newQuestion);
     });
     return newQuestions;

    });
  }
}