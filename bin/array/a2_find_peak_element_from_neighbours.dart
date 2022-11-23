/// Input: array = [10, 20, 15, 2, 23, 90, 67]
/// Output: 20 or 90
/// Explanation: The element 20 has neighbors 10 and 15, both of them are less than 20, similarly 90 has neighbors 23 and 67.

void main() {
  List list = [0, 10, 14.5, 15, 200, 23, 90, 67, 100];
  findPeakElement(list);
}

void findPeakElement(List list) {
  List peakElements = [];
  for (int i = 0; i < list.length; i++) {
    // for first element
    if (i == 0) {
      if (list[i] > list[i + 1]) {
        peakElements.add(list[i]);
      }
      // for last element
    } else if (i == list.length - 1) {
      if (list[i] > list[i - 1]) {
        peakElements.add(list[i]);
      }
      // for other elements
    } else {
      if ((list[i] > list[i + 1]) && (list[i] > list[i - 1])) {
        peakElements.add(list[i]);
      }
    }
  }
  print(peakElements);
}
