import 'question.dart';

class QuizBrain {
  int questionNumber = 0;
  List<Question> questionBank = [
    Question("Albert Einstein was awarded the Nobel Prize in Physics", true),
    Question('Baby koalas are called joeys.', true),
    Question('Gone with the Wind takes place in Savannah, Georgia.', false),
    Question('The American Civil War ended in 1776.', false),
    Question('A right triangle can never be equilateral.', true),
    Question('Snow White’s seven dwarfs all worked as lumberjacks.', false),
    Question('There are seven red stripes in the United States flag.', true),
    Question('No bird can fly backwards.', false),
    Question(
        'The Bill of Rights contains 10 amendments to the Constitution.', true),
    Question('You can lead a cow downstairs but not upstairs.', false),
    Question('Approximately one quarter of human bones are in the feet', true),
    Question("A slug's blood is green", true)
  ];

  void nextQuestion() {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestionText() {
    return questionBank[questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return questionBank[questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (questionNumber >= questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }
  void reset() {
    questionNumber = 0;
  }
}