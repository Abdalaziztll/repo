// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuestionModel {
  final String question;
  final List<String> options;
  final int CorrectAnswerIndex;
  QuestionModel({
    required this.question,
    required this.CorrectAnswerIndex,
    required this.options,
  });

}

List<List<QuestionModel>> allLevel = [QuestionsForLevelone,QuestionsForLevel2];


  List<QuestionModel> QuestionsForLevelone = [
    
    QuestionModel(
        question: "من هو اول معرف بالاسلام بالقارة الافريقية",
        CorrectAnswerIndex: 1,
        options: ["أبو جهل", "جعفر بن ابي طالب", "حذيفة بن اليمان", "عبادة بن الصامت"]),
    QuestionModel(
        question: "من صاحب سر الرسول",
        CorrectAnswerIndex: 2,
        options: ["عبد الله بن رواحة", "سعد بن الربيع", "حذيفة بن اليمان", "خالد بن الوليد"]),
    QuestionModel(
        question: "من بنود صلح الحديبة ",
        CorrectAnswerIndex: 2,
        options: [" أن يعودا للمكة", "أن يهاجر المسلمون من المدينة", " أن يعود المسلمون ذلك العام فلا يدخلون مكة", "ليس اي مما سبق"]),
    QuestionModel(
        question: " في اي سنة كانت عمرة القضاء",
        CorrectAnswerIndex: 2,
        options: ["في السنة الثالثة للهجرة", "في السنة الثانية للهجرة", "في السنة السابعة للهجرة ", "في السنة الثامنة للهجرة"]),
  ];

  List<QuestionModel> QuestionsForLevel2 = [
    
    QuestionModel(
        question: "من هي أم عمارة",
        CorrectAnswerIndex: 3,
        options: ["أم سلمة", "الخنساء", "خديجة بنت خويلد", "نسيبة بنت كعب"]),
    QuestionModel(
        question: "من القائل : يارب لولا انت ما اهتدينا    ولا تصدقنا ولا صلينا",
        CorrectAnswerIndex: 1,
        options: ["حسان بن ثابت ", "عبد الله بن رواحة", ]),
    QuestionModel(
        question: "من شاعر الرسول",
        CorrectAnswerIndex: 0,
        options: [" حسان بن ثابت ", "عبد الله بن رواحة", ]),
    QuestionModel(
        question: "اخى النبي بين عبد الرحمن بن عوف و سعد بن الربيع",
        CorrectAnswerIndex: 0,
        options: ["صح", "خطأ", ]),
  ];