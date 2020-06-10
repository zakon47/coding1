import 'package:flutter/foundation.dart';

//класс 1 объекта
class Question{
  final String title;
  final List<Map<String,dynamic>> answers;
  Question({
    @required this.title,
    @required this.answers,
  });


}

//класс данных (все объекты)
class QuestionData{
  final List<Question> _data = [
    Question(title: "Первый вопрос", answers: [
      {'answer':'ответ1'},
      {'answer':'ответ2'},
      {'answer':'is correct', 'isCorrect': true},
      {'answer':'ответ4'},
    ]),
    Question(title: "второй вопрос", answers: [
      {'answer':'ответ1'},
      {'answer':'is correct', 'isCorrect': true},
      {'answer':'ответ3'},
      {'answer':'ответ4'},
    ])
  ];

  List<Question> get guestions => [..._data];
}