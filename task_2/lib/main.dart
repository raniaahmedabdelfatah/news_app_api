void evennum(List<int>numbers){
  for(int num in numbers) {
    if (num % 2 != 0)
      continue;

    print(num);
  }
}
void main(){
  List<int>nums=[1,4,6,9,8];
  evennum(nums);
}