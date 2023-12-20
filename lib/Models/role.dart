class Role {
  final int id;	
	final String key;		

  Role({
    required this.id,
    required this.key,
  });

  factory Role.fromMap(Map roleMap){
    return Role(
      id : roleMap['id'],
      key : roleMap['key'],
    );
  }

}