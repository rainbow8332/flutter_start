class Students{
  // 자바 빈 같은것

  final int? id; // 오토 인크리먼트 
  final String code;
  final String name;
  final String dept;
  final String phone;

  Students(
    {this.id,
    required this.code,
    required this.name,
    required this.dept,
    required this.phone});

    Students.fromMap(Map<String, dynamic> res)
    // 생성자 
    : id = res['id'],
      code = res['code'],
      name = res['name'],
      dept = res['dept'],
      phone = res['phone'];

      Map<String, Object?> toMap(){
        return {'id': id, 'code': code,'name': name, 'dept': dept, 'phone': phone};
      }

}