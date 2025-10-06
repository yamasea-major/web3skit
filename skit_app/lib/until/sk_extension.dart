extension StringExtension on int {
  // 添加反转字符串的方法
  String toStringForM() {
    if (this >= 10000 && this <= 10000000) {
      double fnum = this / 10000;
      String ret = fnum.toString() + 'M';
      return ret;
    }
    return toString();
  }
}
