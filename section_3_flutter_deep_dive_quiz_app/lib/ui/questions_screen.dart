import 'package:flutter/material.dart';
import 'package:section_3_flutter_deep_dive_quiz_app/data/question.dart';
import 'package:section_3_flutter_deep_dive_quiz_app/ui/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionsIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    // currentQuestionsIndex = currentQuestionsIndex + 1;
    // currentQuestionsIndex += 1;

    // set state tells flutter that the build method should be executed again.
    setState(() {
      currentQuestionsIndex++; // increments the values by just 1
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
