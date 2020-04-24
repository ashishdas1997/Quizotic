import 'question.dart';

class QuizBrain {
  int questionNumber = 0;
  List<Question> questionBank = [
    Question("Coronavirus (COVID-19) is an illness caused by a virus that can spread from person to person.", true),
    Question('People who are below the age of 25 do not catch Covid', false),
    Question('Covid does not stay on plastic for more than an hour', false),
    Question('Social distancing is the only key to avoid Covid', true),
    Question('Covid includes symptoms such as dry cough, shortness of breath and fever', true),
    Question('Washing your hands with a sanitizer or soap can protect you from contracting the virus', true),
    Question('We should report to the nearest hospital if we see symptoms', true),
    Question('Covid is a digestive disease', false),
    Question('The Corona virus disease has been announced a worldwide pandemic', true),
    Question('We should love and respect our doctors and police personnel who are protecting us', true),
    Question('There is a vaccine for Covid-19', false),
    Question("We should utilize our time by staying indoors during Covid-19", true)

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
