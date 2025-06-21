bool isRTL(String text){
  final rtlRegex = RegExp(r'^[\u0600-\u06FF]');
  return rtlRegex.hasMatch(text);
}