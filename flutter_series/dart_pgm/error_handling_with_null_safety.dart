class InvalideUserDataException implements Exception {
  //implementing exception class's method

  final String msg;
  InvalideUserDataException(this.msg);

  @override
  String toString() => "InvalideUserDataException : $msg";
}

// for collecting user data
void processUser(Map<String, dynamic>? user) {
  //dynamic datatype for runtime value initialization
  if (user == null) {
    print('user data is missing');
    return;
  }

  //using ?. for safe access
  String? name = user["name"]?.toString();

  //providing default value using ??
  name = name ?? "Guest";

  //using ??= for only if null value
  user["city"] ??= "not known";

  //now passing nullable value so putting that in try block
  try {
    String? ageString = user["age"]?.toString();

    if (ageString == null) {
      throw InvalideUserDataException("please enter your age");
    }
    //might throw formatexception
    int age = int.parse(ageString);

    print('user processed successfully');
    print("Name : $name");
    print("Age : $age");
    print("city : ${user['city']}");
  }
  //handling specific error
  on FormatException catch (e) {
    print(e);
  }
  //custom error handle
  on InvalideUserDataException catch (e) {
    print(e);
  }
  //for all catch of unexpected error
  catch (e) {
    print("unexpected error : $e");
  }
  //always runs
  finally {
    print('Finish processing user data');
  }
}

void main() {
  print("example 1 --all good");
  processUser({"name": "ishita", "age": "21", "city": "junagadh"});

  print("example 2 --age missing");
  processUser({"name": "ishita", "city": "junagadh"});

  print("example 3 --age invalid");
  processUser({"name": "ishita", "age": "bc", "city": "junagadh"});

  print("example 4 --map null");
  processUser(null);
}
