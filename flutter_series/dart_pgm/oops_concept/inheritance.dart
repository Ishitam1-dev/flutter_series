class School {
  void teacherName() {
    print('teachers have their own unique name');
  }
}

//inheriting class school
class Students extends School {
  void StudentName() {
    print('Same for students they also have thier own unique name');
  }
}

void main() {
  Students S = Students();
  S.teacherName();
  S.StudentName();
}
