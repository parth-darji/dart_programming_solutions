// Program to cyclically rotate an array by one
// Input:  [1, 2, 3, 4, 5]
// Output: [5, 1, 2, 3, 4]

void main() {
  rotateArrayByOne([1, 2, 3, 4, 5]);
}

void rotateArrayByOne(List array) {
  List tempArray = [];

  // add the last element to the array
  tempArray.add(array[array.length - 1]);

  // add other element in the array (except last element)
  for (int i = 0; i < array.length - 1; i++) {
    tempArray.add(array[i]);
  }

  // assign tempArray value to array
  array = tempArray;

  // empty the temp array to remove from memory
  tempArray = [];

  print(array);
}
