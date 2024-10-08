//

//add list
void main(){
  List<String> fruitList = ['apple', 'banana'];
  fruitList.add('orange');
  print(fruitList);

  //remove list
fruitList.remove('apple');
print(fruitList);

//Getting the length of a list: You can get the length of a list using the length property.
 print(fruitList.length);

 //You can also change the value of List. You can do it by listName[index]=value;
  fruitList[1]="Grapes";
print(fruitList);
}

