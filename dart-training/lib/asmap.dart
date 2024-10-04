void main(){

  List<String>  footballplayers  =  ['ronaldo','messi','neymar'];
  footballplayers.asMap().forEach((index,  value)=> print("$value value is $index"));
}
//asmap() it converts the list to map where the keys are the index and values are the element at the index.