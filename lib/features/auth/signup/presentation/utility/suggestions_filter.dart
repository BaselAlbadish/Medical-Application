class SuggestionsFilter {
  static List<T> getSuggestions<T>(
    String pattern,
    List<T> list,
  ) {
    List<T> newList = [];

    for (int i = 0; i < list.length; i++) {
      if (list[i].toString().toLowerCase().contains(pattern.toLowerCase())) {
        newList.add(list[i]);
      }
    }
    return newList;
  }
}
