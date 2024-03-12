import 'package:flutter/material.dart';
import 'package:glass/HomePage1.dart';
import 'package:glass/levels.dart';
import 'package:glass/quesyionmodel.dart';
import 'package:lottie/lottie.dart';

bool isCorrect = false;
bool isSelected = false;
int correct_counter = 0;
int incorrect_counter = 0;

class questionPage extends StatefulWidget {
  final int currentLevel;

  questionPage({Key? key, required this.currentLevel}) : super(key: key);

  @override
  _questionPageState createState() => _questionPageState();
}

class _questionPageState extends State<questionPage> {
  int currentQuestionIndex = 0;

  void nextQuestion() {
    setState(() {
      isSelected = false;
      currentQuestionIndex++;
      if (currentQuestionIndex >= QuestionsForLevelone.length) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(" the questions have completed")));
        currentQuestionIndex = QuestionsForLevelone.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = allLevel[widget.currentLevel][currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
          flexibleSpace: Image(
            image: AssetImage("image/3.jpg"),
            fit: BoxFit.fill,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'اختبار',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ]),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("image/3.jpg"),
          fit: BoxFit.fill,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                question.question,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: question.options.length,
                itemBuilder: (context, optionIndex) {
                  final optionText = question.options[optionIndex];

                  return Container(
                    color: Colors.white.withOpacity(0.3),
                    margin: EdgeInsets.zero,
                    child: InkWell(
                      onTap: () {
                        isCorrect = optionIndex == question.CorrectAnswerIndex;
                        setState(() {
                          isSelected = true;
                        });
                        if (isCorrect && isSelected) {
                          correct_counter++;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text("Correct!"),
                                backgroundColor: Colors.green),
                          );
                        } else {
                          incorrect_counter++;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Incorrect.")),
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: !isSelected
                                    ? Colors.white.withOpacity(0.3)
                                    : (question.CorrectAnswerIndex ==
                                            optionIndex)
                                        ? Colors.green
                                        : Colors.red,
                                alignment: Alignment.centerLeft,
                                height: 40,
                                child: Text(
                                  optionText,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                            Icon(
                              !(isCorrect && isSelected)
                                  ? Icons.check
                                  : Icons.close,
                              size: 24,
                              color: isCorrect ? Colors.white : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: nextQuestion,
                  child: Text(
                    "السؤال التالي",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3))),
                ),
              ),
            ),
            //////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(":النتيجة"),
                              ),
                              content: SizedBox(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: LottieBuilder.network(
                                                "https://lottie.host/41a2b092-ee8f-4bff-afc4-75d9b3ca03c6/YioXRhThKD.json"),
                                          ),
                                          Text(" عدد الاجابات الصحيحة :" +
                                              "${correct_counter} ")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 40,
                                            height: 40,
                                            child: LottieBuilder.network(
                                              "https://lottie.host/98c266de-6ece-4241-ac54-28bf9c01f625/PsVNxD1ekr.json",
                                              errorBuilder:
                                                  (context, error, stackTrace) {
                                                // ! add error builder make your app useful when it on offline mode
                                                return Icon(Icons.check);
                                              },
                                            ),
                                          ),
                                          Text(" عدد الاجابات الخاطئة :" +
                                              "${incorrect_counter} ")
                                        ],
                                      )
                                    ],
                                  )),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      // ! We Must use Navigator.pop
                                      // ! because it make nested route like this
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => Levels(
                                      //         LevelNameForClassLevel: "",
                                      //         TheValueOfAdvancedInLevel: 0),
                                      //   ),
                                      // );
                                      Navigator.pop(context);
                                    },
                                    child: Text("حسناً"))
                              ],
                            ));
                  },
                  child: Text(
                    "انهاء الاختبار",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "${correct_counter}    ---- ${incorrect_counter}",
        ),
      ),
    );
  }
}
