


void printEven(int start, int end) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void printIfOdd(List numbers) {
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 1) {
      print("odd number found");
      return;
    }
  }
  print("No odd number");
}

void printStrignWithCap(final myString){

    var lines = myString.split("\n");
  print(lines[0].toUpperCase());
  print(lines[1].toUpperCase());
  print(lines[2].toLowerCase());
}


class User {
  int id;
  bool isLogged;
  String username;
  String gender;
  bool canComment;
  String photo;
  String email;
  int level;
  String semester;
  String country;
  bool enabled;
  List<String> pushTokens;
  String role;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.isLogged,
      this.username,
      this.gender,
      this.canComment,
      this.photo,
      this.email,
      this.level,
      this.semester,
      this.country,
      this.enabled,
      this.pushTokens,
      this.role,
      this.createdAt,
      this.updatedAt});

  User.admin(Map<String, dynamic> json){
    id = json['id'];
    isLogged = json['isLogged'];
    username = json['username'];
    gender = json['gender'];
    canComment = json['canComment'];
    photo = json['photo'];
    email = json['email'];
    level = json['level'];
    semester = json['semester'];
    country = json['country'];
    enabled = json['enabled'];
    pushTokens = json['pushTokens'].cast<String>();
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isLogged = json['isLogged'];
    username = json['username'];
    gender = json['gender'];
    canComment = json['canComment'];
    photo = json['photo'];
    email = json['email'];
    level = json['level'];
    semester = json['semester'];
    country = json['country'];
    enabled = json['enabled'];
    pushTokens = json['pushTokens'].cast<String>();
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['isLogged'] = this.isLogged;
    data['username'] = this.username;
    data['gender'] = this.gender;
    data['canComment'] = this.canComment;
    data['photo'] = this.photo;
    data['email'] = this.email;
    data['level'] = this.level;
    data['semester'] = this.semester;
    data['country'] = this.country;
    data['enabled'] = this.enabled;
    data['pushTokens'] = this.pushTokens;
    data['role'] = this.role;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }

 @override
  String toString() {
    return "UserDate = {${this.id} ${this.country} }";
  }
}



class Course {
  final int id;
  final String status;
  final String level;
  final String language;
  double numberOfHours;
  int numberOfEnrolledStudents;
  Category category;
  String description;
  List<String> objectives;
  List<String> requirements;
  List<String> include;
  String nameAr;
  String nameEn;
  String photo;
  Teacher teacher;
  int price;
  int rating;
  bool hasOfferNow;
  String discountStartedAt;
  String discountFinishedAt;
  bool visibility;
  int passingPercentage;
  String createdAt;
  String updatedAt;

  Course(
      {this.id,
      this.status,
      this.level,
      this.language,
      this.numberOfHours,
      this.numberOfEnrolledStudents,
      this.category,
      this.description,
      this.objectives,
      this.requirements,
      this.include,
      this.nameAr,
      this.nameEn,
      this.photo,
      this.teacher,
      this.price,
      this.rating,
      this.hasOfferNow,
      this.discountStartedAt,
      this.discountFinishedAt,
      this.visibility,
      this.passingPercentage,
      this.createdAt,
      this.updatedAt});
}

class Category {
  int id;
  String nameAr;
  String nameEn;
  String photo;
  int category;
  String createdAt;
  String updatedAt;

  Category(
      {this.id,
      this.nameAr,
      this.nameEn,
      this.photo,
      this.category,
      this.createdAt,
      this.updatedAt});
}

class Teacher {
  int id;
  String username;
  String photo;
  String role;

  Teacher({this.id, this.username, this.photo, this.role});
}



void main() {
  printEven(1, 7);
  List li = [2, 4, 6, 6, 6, 324, 56, 24];
  printIfOdd(li);

  const String myString = """
The wren
Earnshis living
Noiselessly
""";
  
  printStrignWithCap(myString);
  
//   var nestedObjText={"id":4,
//                      "nameAr":"علومحاسب",
//                       "nameEn":"ComputerScience",
//               "photo":"https://goud.fra1.digitaloceanspaces.com/e6d283a4961e3863/1608838409880/softwareengineering.jpg",
//   "createdAt":"2020-12-24T19:33:31.990Z", "updatedAt": "2020-12-24T19:33:31.990Z"};
  
// var decodeObject = jsonDecode(nestedObjText);
//   print(decodeObject);
  
  
  
  
  
  
}


