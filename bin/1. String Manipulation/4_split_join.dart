void main() {
  const csvFileLine = 'Martin,Emma,12,Paris,France';
  print(csvFileLine);
  final fields = csvFileLine.split(',');
  print(fields);
  final joined = fields.join('-');
  print(joined);
}
