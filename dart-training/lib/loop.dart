void main(){
  List <int>numbers = [1,2,3,4,5];
  List <int>digits = [6,7,8,9,10];
  int total = 0;
  digits.forEach((num)=>total=total+num);
  print(total);
  double avg  = total/(numbers.length);
  print(avg);

}