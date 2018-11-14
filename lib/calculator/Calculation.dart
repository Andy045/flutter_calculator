

///
/// File Name
///
/// @author liujie https://github.com/Handy045
/// @description File Description
/// @date Created in 2018/11/12 9:13 AM
///
class Calculation {
  static final String rem = "%";
  static final String div = "/";
  static final String mul = "*";
  static final String sub = "-";
  static final String add = "+";

  static String delPress(String formulaData) {
    String subString = formulaData.substring(formulaData.length - 2, formulaData.length - 1);
    if (subString != rem && subString != div && subString != mul && subString != sub && subString != add) {
      return formulaData.substring(0, formulaData.length - 1);
    } else {
      return formulaData.substring(0, formulaData.length - 3);
    }
  }

  static String symbolPress(String formulaData, String symbol) {
    formulaData += formulaData.substring(formulaData.length - 1, formulaData.length) == "." ? "0" : "";
    String subString = formulaData.substring(formulaData.length - 2, formulaData.length - 1);
    if (subString != rem && subString != div && subString != mul && subString != sub && subString != add) {
      if (symbol == rem) {
        formulaData += " $symbol ";
      } else if (symbol == div) {
        formulaData += " $symbol ";
      } else if (symbol == mul) {
        formulaData += " $symbol ";
      } else if (symbol == sub) {
        formulaData += " $symbol ";
      } else if (symbol == add) {
        formulaData += " $symbol ";
      }
    }
    return formulaData;
  }

  static bool pointPress(String formulaData) {
    String cache = formulaData.replaceAll(rem, "#").replaceAll(div, "#").replaceAll(mul, "#").replaceAll(sub, "#").replaceAll(add, "#");
    List<String> splitString = cache.split("#");
    if (splitString.length == 0) {
      return true;
    } else {
      String lastString = splitString[splitString.length - 1];
      if (lastString
          .trim()
          .isEmpty) {
        return true;
      } else {
        return lastString.contains(".");
      }
    }
  }

  static String equalPress(String formulaData) {
    List<String> _numData;
    List<String> _symData;
  }
}
