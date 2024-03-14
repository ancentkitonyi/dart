// working with classes and objects in OOP

class PersonalInfo{
// properties of instructor
String name;
String phone;
bool isMarried;
int age;
String country;
String hobby;

// constructor - parametric constructor parameter 
PersonalInfo(this.name, this.phone, this.isMarried, this.age, this.country, this.hobby);

// method / function
void displayInfo(){
print("Name: $name");
print("Phone Number: $phone");
print ("Is married: ${isMarried ? 'Married': 'single'}");
print("Age is: $age");
print("My Country is: $country");
print("My hobby is: $hobby");

}
}

// main function to create the object 
void main(){
var info = PersonalInfo("Ancent", "0706144397", false, 26, "Kenya", "Watching Football");
// call the function 
info.displayInfo();
}