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
    if (formulaData.trim().isNotEmpty) {
      String subString = formulaData.substring(formulaData.length - 2, formulaData.length - 1);
      if (subString != rem && subString != div && subString != mul && subString != sub && subString != add) {
        return formulaData.substring(0, formulaData.length - 1);
      } else {
        return formulaData.substring(0, formulaData.length - 3);
      }
    }
  }

  static String symbolPress(String formulaData, String symbol) {
    if (formulaData.trim().isNotEmpty) {
      bool canPress = true;
      formulaData += formulaData.substring(formulaData.length - 1, formulaData.length) == "." ? "0" : "";

      if (formulaData.length > 1) {
        String subString = formulaData.substring(formulaData.length - 2, formulaData.length - 1);
        canPress = !(subString == rem || subString == div || subString == mul || subString == sub || subString == add);
      }

      if (canPress) {
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
  }

  static bool pointPress(String formulaData) {
    if (formulaData.trim().isEmpty) {
      return true;
    } else {
      String cache = formulaData.replaceAll(rem, "#").replaceAll(div, "#").replaceAll(mul, "#").replaceAll(sub, "#").replaceAll(add, "#");
      List<String> splitString = cache.split("#");
      if (splitString.length == 0) {
        return true;
      } else {
        String lastString = splitString[splitString.length - 1];
        if (lastString.trim().isEmpty) {
          return true;
        } else {
          return lastString.contains(".");
        }
      }
    }
  }

  static String equalPress(String formulaData) {
    if (formulaData.trim().isEmpty) {
      return "0";
    } else {
      List<String> _numData = new List();
      List<String> _symData = new List();
      int cacheIndex = 0;

      formulaData = formulaData.replaceAll(" ", "");
      String lastChart = formulaData.substring(formulaData.length - 1, formulaData.length);
      if (lastChart == rem || lastChart == div || lastChart == mul || lastChart == sub || lastChart == add) {
        formulaData = formulaData.substring(0, formulaData.length - 1);
      }

      for (int i = 0; i < formulaData.length; i++) {
        String cache = formulaData[i];
        if (cache == rem || cache == div || cache == mul || cache == sub || cache == add) {
          _symData.add(cache);
          _numData.add(formulaData.substring(cacheIndex, i));
          cacheIndex = i + 1;
        }
      }
      if (cacheIndex < formulaData.length) {
        _numData.add(formulaData.substring(cacheIndex, formulaData.length));
      }

      print(_numData);
      print(_symData);
      return "0";
    }
  }
}
