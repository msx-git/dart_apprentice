// https://telegra.ph/Regex-Summary-01-01

void main() {
  final regex = RegExp('cat');
  print(regex.hasMatch("concatenation")); // true
  print(regex.hasMatch("dog")); // false
  print("${regex.hasMatch("cats")} \n"); // true

  // The . dot character will match any single character
  final matchSingle = RegExp('c.t');
  print(matchSingle.hasMatch('cat')); // true
  print(matchSingle.hasMatch('cot')); // true
  print(matchSingle.hasMatch('cut')); // true
  print("${matchSingle.hasMatch('ct')} \n"); // true

  // (+) The plus sign means the character it follows can occur one or more times.
  final oneOrMore = RegExp('wo+w');
  print(oneOrMore.hasMatch('ww')); // false
  print(oneOrMore.hasMatch('wow')); // true
  print(oneOrMore.hasMatch('wooow')); // true
  print("${oneOrMore.hasMatch('wooooooow')} \n"); // true

  // (*) The asterisk means the character it follows can occur zero or more times
  final zeroOrMore = RegExp('wo*w');
  print(zeroOrMore.hasMatch('ww')); // true
  print(zeroOrMore.hasMatch('wow')); // true
  print(zeroOrMore.hasMatch('wooow')); // true
  print("${zeroOrMore.hasMatch('wooooooow')} \n"); // true

  // multiple instances of any character
  // similar to (startsWith && endsWith)
  final anyOneOrMore = RegExp('w.+w');
  print(anyOneOrMore.hasMatch('ww')); // false
  print(anyOneOrMore.hasMatch('wow')); // true
  print(anyOneOrMore.hasMatch('w123w')); // true
  print("${anyOneOrMore.hasMatch('wABCDEFGw')} \n"); // true

  // Only the characters you
  // put inside the square brackets will be used to find a match.
  // The set [ao] matches one "a" or one "o" but not both
  final set = RegExp('b[oa]t');
  print(set.hasMatch('bat')); // true
  print(set.hasMatch('bot')); // true
  print(set.hasMatch('but')); // false
  print(set.hasMatch('boat')); // false
  print("${set.hasMatch('bt')} \n"); // false

  // You can also specify ranges inside the brackets if you use the "-" dash character:
  final letters = RegExp('[a-zA-Z]');
  print(letters.hasMatch('a')); // true
  print(letters.hasMatch('H')); // true
  print(letters.hasMatch('3z')); // true
  print("${letters.hasMatch('2')} \n"); // false

  // If you want to specify which characters not to match, add ^ just after the left bracket:
  // [^ao] matches one of any character except a or o .
  final excluded = RegExp('b[^ao]t');
  print(excluded.hasMatch('bat')); // false
  print(excluded.hasMatch('bot')); // false
  print(excluded.hasMatch('but')); // true
  print(excluded.hasMatch('boat')); // false
  print("${excluded.hasMatch('bt')} \n"); // false

  // match a special character itself
  final escaped = RegExp(r'c\&t');
  print(escaped.hasMatch('c&t')); // true
  print("${escaped.hasMatch('cat')} \n"); // false

  // Contains any number?
  final numbers = RegExp('[0-9]');
  print(numbers.hasMatch('5552021')); // true
  print("${numbers.hasMatch('abcefg2')} \n"); // true

  // Contains only number?
  // ^ : Matches the beginning of the string.
  // [0-9] : Matches one number in the range 0-9.
  // + : Matches one or more instances of the previous character, in this case, one or more numbers in the range 0-9.
  // $ : Matches the end of the string.
  final onlyNumbers = RegExp(r'^[0-9]+$');
  print(onlyNumbers.hasMatch('5552021')); // true
  print(onlyNumbers.hasMatch('CefGlue2')); // false
}
