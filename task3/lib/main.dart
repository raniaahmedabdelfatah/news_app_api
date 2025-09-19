


void sumand_count_function(List<int>numbers){
  int sum=0;
  int account=0;
  for(int num in numbers){
    sum+=num;
    if(num>50)
      account++;
  }

print("sum=$sum");
  print ("account greater than 50=$account");
}
void main(){
  List<int> nums = [10, 55, 30, 70, 5];
  sumand_count_function(nums);
}