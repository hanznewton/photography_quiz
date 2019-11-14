import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'If you are shooting a photo and want to get a greater depth of field in the image, '
        'you shoot at a higher f-stop value',
        false),
    Question(
        'A tripod is an essential piece of equipment for night photography',
        true),
    Question('The “Nifty Fifty” describes a 50mm f1.8 lens', true),
    Question('A macro lens is a lens that makes you a pro', false),
    Question(
        'A telephoto lens is a lens used for sports and wild life photography".',
        true),
    Question('The amount of light or darkness in a photo is known as the ISO',
        false),
    Question(
        'Perfect exposure is a result of the right mixture of: Shutter speed + aperture + resolution ',
        false),
    Question(
        'The unit of measurement of light in photography is candelabra', false),
    Question('aperture is measured in f-stop values', true),
    Question('A high aperture will produce a shallow depth of field', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int questionBankLength() {
    return _questionBank.length;
  }

//  bool isFinished() {
//    if (_questionNumber >= _questionBank.length - 1) {
//
//
//      print('Now returning true');
//      return true;
//
//    } else {
//      return false;
//    }
//  }

//
//  void reset() {
//    _questionNumber = 0;
//  }
//}

  void reset() {
    _questionNumber = 0;
  }
}
