// Use sort to order the grades from highest to lowest.
// Use where to find all the B grades, that is, all the scores between 80 and 90 .

void main() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort((v1, v2) => v2.compareTo(v1));
  print(scores);

  final bGrades =
      scores.where((element) => element >= 80 && element <= 90).toList();
  print(bGrades);
}
