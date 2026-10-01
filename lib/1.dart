//Write a program to print your name in Dart.
/*void main() {
  String name = "Tasmia"; // Replace "Your Name" with your actual name
  print("My name is $name");
}*/
//Write a program to print Hello I am “John Doe” and Hello I’am “John Doe” with single and double quotes.
/*void main(){
  String name="john doe";
  print("Hello i am $name");
  print('Hello i am $name');
}*/
//Declare constant type of int set value 7.
/*void main(){
  const int value=7;
  print("val is $value");
}*/
//Write a program in Dart that finds simple interest. Formula= (p * t * r) / 100;
/*void main(){
  double principal=5000;
  double time=3;
  double rate=2;
  double simple_interest=(principal*time*rate)/100;
  print ("$simple_interest");
}*/
//Write a program to print a square of a number using user input.
/*import 'dart:io';
void main(){
  stdout.write("Enter your number: ");
  int num=int.parse(stdin.readLineSync()!);
  print("sqare:${num*num}");
}*/
//Write a program to print full name of a from first name and last name using user input.
/*import 'dart:io';
void main(){
  stdout.write("enter your first name: ");
  String? f_name=stdin.readLineSync();
    stdout.write("enter your last name: ");
    String? l_name=stdin.readLineSync();
    print("${f_name} ${l_name}");


}*/
//Write a program to find quotient and remainder of two integers.
/*import 'dart:io';

void main() {
  // Read dividend
  stdout.write("Enter dividend: ");
  int dividend = int.parse(stdin.readLineSync()!);

  // Read divisor
  stdout.write("Enter divisor: ");
  int divisor = int.parse(stdin.readLineSync()!);

  // Calculate quotient and remainder
  int quotient = dividend ~/ divisor;
  int remainder = dividend % divisor;

  // Output results
  print("Quotient: $quotient");
  print("Remainder: $remainder");
}
*/
/*import 'dart:io';

void main() {
  stdout.write("Enter a string: ");
  String input = stdin.readLineSync()!;

  // Remove all spaces
  String noSpaces = input.replaceAll(' ','');

  print("String without spaces: $noSpaces");
}*/
//abstract class
/*abstract class Animal{
  String name;
  String sound;
  Animal(this.name,this.sound);
  void makesound();
}
class Dog extends Animal{
  Dog(String name,String sound):super(name,sound);
  @override
  void makesound(){
    print("the name of the animal is $name");
      print("the sound of the animal is $sound");

  }


}
class Cat extends Animal{
  Cat(String name,String sound):super(name,sound);
  @override
  void makesound(){
    print("the name of the animal is $name");
      print("the sound of the animal is $sound");

  }
  

}
void main(){
  Dog dog=Dog("Jerman Shefaerd","vaw");
  dog.makesound();
  Cat cat =Cat("Billi","meaw meaw");
  cat.makesound();
}
*/
//interface
/*abstract class Animal{
  void makesound();
  void eat();

}
abstract class FlyingAnimal{
  void fly();
}
class Dog implements Animal,FlyingAnimal{
  String name,food;
  int? wing;
  Dog(this.name,this.food,this.wing);
  @override
  void makesound(){
    print("$name makes a sound");
  }
  @override
  void eat(){
    print("$name eats food");
  }
  @override
  void fly(){
    print("$name cant with $wing wings");
  }

}
void main(){
  Dog dog=Dog("shepard","meat",0);
  dog.makesound();
  dog.eat();
  dog.fly();
}*/
/*
class Animal{
  string? name;
  int? age;
  int? lifespan;
  void displayinfo(){
    print("name:$name");
    print("age:$age");
    print("lifespan:$lifespan");
  }

}*/
/*class Person{
  String? name;
  String? phone;
  bool? ismariied;
  int? age;
void displayinfo(){
  print("name:$name");
  print("phone:$phone");
  print("ismariied:$ismariied");
  print("age:$age");
}
}
void main(){
  Person person=Person();
  person.name="Tasmia";
  person.phone="0180000000";
  person.ismariied=false;
  person.age=22;
  person.displayinfo();
}*/
/*class Teacher{
  String? name;
  int? age;
  String? subject;
 double? salary;
 Teacher(this.name,this.age,this.subject,this.salary);
 void display(){
  print("name:$name");
  print("age:$age");
  print("subject:$subject");
  print("salary:$salary");

 }
}
void main(){
  Teacher t1=Teacher("Syed",26,"Physics",500000);
  t1.display();
  Teacher t2=Teacher("Syeda",23,"chemistry",500000);
  t2.display();
}*/
//
/*class Employee{
  int? _id=0;
  String? _name=" ";
  int getId(){
    return _id!;
  }
  String getName(){
    return _name!;

  }
  void setId(int id){
    this._id=id;

  }
  void setName(String Name){
    this._name=Name;

  }
}
void main(){
  Employee emp=Employee();
  emp.setId(1);
  emp.setName("Sowad");
  print(emp.getId());
  print(emp.getName());

}*/
//
