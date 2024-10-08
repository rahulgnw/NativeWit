// a set is a collection of unique objects that can be of any data type, including strings, integers, doubles, and even other sets.
// Sets are similar to lists, but they do not allow duplicate elements.

void main(){
  // add method in set
  Set<String> fruitSet = {'apple', 'banana'};
  fruitSet.add('orange');
  print(fruitSet);


  //remove method in set
  fruitSet.remove('apple');
  print(fruitSet);


  //to check whether it contains
  print(fruitSet.contains('banana'));


  //to check the length
  print(fruitSet.length);


  //To convert set to list
  Set<String> fruitList = fruitSet.toSet();
  print(fruitList);

}


