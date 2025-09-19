void searchInList(List<String> words, String searchWord) {
  bool found = false;

  for (String word in words) {
    if (word == searchWord) {
      found = true;
      break;
    }
  }

  print(found ? "Found" : "Not Found");
}

void main() {
  List<String> words = ["Rania", "Ahmed", "Ali"];
  searchInList(words, "Rania");
  searchInList(words, "Yaser");
}
