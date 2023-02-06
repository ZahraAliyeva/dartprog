import 'dart:ffi';
import 'dart:io';

void main() {

  String sentence = "My name is Zahra";

  var arr = sentence.split(' ');// [my, name, is, Zahra]
  
  for(int i=0; i<arr.length/2; i++) { // arr.length=4;
    var temp = arr[i]; //temp= arr[0]= my
    arr[i] = arr[arr.length-1-i]; //arr[0]= 4-1-0=3 -- arr[i]= arr[3]= Zahra
    arr[arr.length-1-i] = temp; //arr[3]= my
  }
   
  print(arr.join(' '));




  //Task 0:
  // Map user = {'id': 1, 'firstName': 'Zahra', 'lastName': 'Aliyeva'};
  
  // for(var s in user.entries) {
  //   print('${s.key}: ${s.value}');
  // }




  //Task 1:
  // stdout.write('Adinizi daxil edin:') ;
  // String? userName = stdin.readLineSync();

  // stdout.write('Yasinizi daxil edin:');
  // int? userAge = int.parse(stdin.readLineSync()!);

  // int years = 100 - userAge;

  // print('$userName, 100 yasiniza $years il qalib!');





  //Task 2:
  // stdout.write('Bir eded daxil edin:');
  // int? number = int.parse(stdin.readLineSync()!);

  // if(number%2 ==0) {
  //   print('$number cut ededir');
  // } else {
  //   print('$number tek ededir');
  // }

}