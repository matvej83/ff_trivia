import 'dart:math' as math;

int generateRandomCode() {
  return math.Random().nextInt(9000) + 1000;
}

int generateRandomOffset() {
  return math.Random().nextInt(10000);
}

int calculateNewScore(
  int currentScore,
  int currentValue,
  bool correct,
) {
  return currentScore + (correct ? 1 : -1) * currentValue;
}

bool isNotNullOrEmpty(String? question) {
  // return whether a string is not null or empty
  return question != null && question.isNotEmpty;
}
