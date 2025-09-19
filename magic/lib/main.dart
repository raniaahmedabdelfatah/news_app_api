

 import 'dart:io';

main(){
 print('Set1\n..............\n1\t3\t5\t7\t9\n\n11\t13\t15\t17\t19\n\n21\t23\t25\t27\t29\n');
 print('Set2\n..............\n2\t3\t6\t7\t10\n\n11\t14\t15\t18\t19\n\n22\t23\t26\t27\t30\n');
 print('Set3\n..............\n4\t5\t6\t7\t12\n\n13\t14\t15\t20\t21\t22\n\n23\t28\t29\t30\n');
 print('Set4\n..............\n8\t9\t10\t11\t12\n\n13\t14\t15\t24\t25\n\n26\t27\t28\t29\t30\n');
 print('Set4\n..............\n16\t17\t18\t19\t20\n\n21\t22\t23\t24\t25\n\n26\t27\t28\t29\t30\n');
 //طبعت كل tables للuser
 print("Think of the number from this tables");
 //
 List<List<int>>tables=
 [[1,3,5,7,9,11,13,15,17,19,21,23,25,27,29],
 [2,3,6,7,10,11,14,15,18,19,22,23,26,27,30],
 [4,5,6,7,12,13,14,15,20,21,22,23,28,29,30],
 [8,9,10,11,12,13,14,15,24,25,26,27,28,29,30],
 [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]];
 //هنا عملت list علشان اخزن فيها tables
 List<int>nums=[1,2,4,8,16];
 //هنا انا فهمت اللغز وهو انا عندي 5tables عشان اعرف الرقم بجمع اول رقم في كل table هو موجود فيها يعني مثلا رقم 5 دا موجود في table 1,4
 int result=0;
 //كريت متغير احط فيه النتيجه
 for(int i=0;i<tables.length;i++){
  //هنا لقتني عايزه اظهر table كل واحد لواحده واسال ال user هل الرقم موجوه فيه ولا لا
  print("\n Isyour number in this table?");
  print(tables[i]);
  stdout.write("Enter Y for yes or N for no:");
  String answer=stdin.readLineSync()!.trim().toUpperCase();
  if (answer=="Y"){
   result+=nums[i];
   //هنا هنجمه اول رقم في كل tables هيقول عليه ال user ان الرقم موجود فيها
  }
 }
 print ("\n let me guess......your num is:$result");
 //هنا طبعتله النتيجه
}




