
import 'package:quizApp/utils/constants.dart';

extension ParseToString on RouterURLS {
  String toShortString() {
    return this.toString().split('.').last;
  }
}