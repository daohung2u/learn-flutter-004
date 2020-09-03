import 'package:quizzler/question.dart';

class QuestionBrain {
  // store list of question
  List<Question> question = [
    Question("1 + 1 = 2", true),
    Question("2 + 2 = 4", true),
    Question("4 + 1 = 5", true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  int currentQuestion = 0;

//  do next question
  void nextQuestion() {
    currentQuestion++;
  }

  //get question
  String getQuestion() {
    return question[currentQuestion].question;
  }

  // check user answer
  bool checkAnswer(bool userAnswer) {
    bool correctAnswer = question[currentQuestion].answer;
    return correctAnswer == userAnswer;
  }

  bool isFinished() {
    return currentQuestion == question.length - 1;
  }
}
