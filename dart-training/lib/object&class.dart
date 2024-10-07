class SimpleInterest{
  double?  principal;
  double?  rate;
  double? time;
  double interest(){
    return (principal! * rate! * time!)/100;
  }
}
void main(){
  SimpleInterest simpleInterest = SimpleInterest();
  simpleInterest.principal=2000;
  simpleInterest.rate=100;
  simpleInterest.time=2999;
  print("Simple Interest is ${simpleInterest.interest()}.");
}