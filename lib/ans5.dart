//Create a simple quiz application using oop that allows users to play and view their scores.
import 'dart:io';

class Question {
  String question;
  List<String> options;
  int answer;

  Question(this.question, this.options, this.answer);

  void displayQuestion() {
    print(question);
    for (int i = 0; i < options.length; i++) {
      print("${i + 1}. ${options[i]}");
    }
  }
}

class Quiz {
  List<Question> questions;
  int score=0;

  Quiz(this.questions); 

  void playQuiz() {
    for (int i = 0; i < questions.length; i++) {
      print("\nQuestion ${i + 1}:");
      questions[i].displayQuestion();
      stdout.write("Enter your answer (1-${questions[i].options.length}): ");
      int userAnswer = int.parse(stdin.readLineSync()!);

      if (userAnswer == questions[i].answer) {
        print("Correct!");
        score++;
      } else {
        print("Incorrect. The correct answer is: ${questions[i].answer}");
      }
    }

    print("\nQuiz Completed!");
    print("Your Score: $score/${questions.length}");
  }
}

void main() {
  
  List<Question> questions = [
    Question(
      "What is the capital of Nepal?",
      ["Paris", "Kathmandu", "Delhi", "Dhaka"],
      2,
    ),
    Question(
      "What is the national animal of Nepal",
      ["Cat", "Dog", "Lion", "Cow"],
    4,
    ),

  ];


  Quiz quiz = Quiz(questions);

  
  quiz.playQuiz();
}