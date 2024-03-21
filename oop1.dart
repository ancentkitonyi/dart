// The challenge is to create a program that has the following features:
// An object-oriented model that uses classes and inheritance
// A class that implements an interface
// A class that overrides an inherited method
// An instance of a class that is initialized with data from a file
// A method that demonstrates the use of a loop

import 'dart:io';

class About_Me{
  void info() {
    print("I want to override this method");
  }
}
// A class that overrides an inherited method
class Real_Me extends About_Me {
  @override
  void info(){
    print("\nHi, I'm a versatile professional at the intersection of design, development, and customer experience. With a degree in Information Technology, I've evolved into a UX Designer and Web Developer with a passion for creating seamless and intuitive digital experiences.");
  }
}
// An interface
abstract class Portfolio {
  void printInfo(); 
}
// Class that implements an interface
class Summary implements Portfolio {
  String name;
  int age;
  String gender;
  String country;
  List<String> hobbies;

  Summary(this.name, this.age, this.gender, this.country, this.hobbies);
  
  // Method to initialize data from a file
  static Future<Summary> fromFile(String fileName) async {
    var fileContent = await File(fileName).readAsString();
    var data = fileContent.split(',');
    var hobbies = data.sublist(4);
    return Summary(data[0], int.parse(data[1]), data[2], data[3], hobbies);
  }
  @override
  void printInfo(){
    print("Name: $name \nAge: $age \nGender: $gender \nCountry: $country");
    print("\nHobbies");
    // A method that demonstrates the use of a loop
    for (var hobby in hobbies) {
      print("- $hobby");
    }
  }
}

void main() async{
  // Create an instance of Summary from a file
  var summary = await Summary.fromFile('personData.txt');
  summary.printInfo();
  // Create an instance of Real_Me
  var realMe = Real_Me();
  realMe.info();
}