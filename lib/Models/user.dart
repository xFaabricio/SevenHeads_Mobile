class User {
  final int id;	
	final String name;	
	final String login;	
	final String password;	
	final String email;	
	final DateTime lastLogin;	
	final DateTime createDateTime;	
	final DateTime upDateTimeDateTime;	
	final DateTime inactiveDateTime;	
	final DateTime blockedDateTime;	
	final bool active;	
	final bool blocked;
	final int tryQuantity;
	final String countryCode;
	final String phoneNumber;
	final String codeRecoveryPassword;
	final bool firstLogin;
	final bool changePassword;
	final bool verified;
	final bool agreeTerms;
	final String idApi;

  User({
    required this.id,
    required this.name,
    required this.login,
    required this.password,
    required this.email,
    required this.lastLogin,
    required this.createDateTime,
    required this.upDateTimeDateTime,
    required this.inactiveDateTime,
    required this.blockedDateTime,
    required this.active,
    required this.blocked,
    required this.tryQuantity,
    required this.countryCode,
    required this.phoneNumber,
    required this.codeRecoveryPassword,
    required this.firstLogin,
    required this.changePassword,
    required this.verified,
    required this.agreeTerms,
    required this.idApi,
  });

  factory User.fromMap(Map userMap){
    return User(
      id : userMap['id'],
      name : userMap['name'],
      login : userMap['login'],
      password : userMap['password'],
      email : userMap['email'],
      lastLogin : userMap['lastLogin'],
      createDateTime : userMap['createDateTime'],
      upDateTimeDateTime : userMap['upDateTimeDateTime'],
      inactiveDateTime : userMap['inactiveDateTime'],
      blockedDateTime : userMap['blockedDateTime'],
      active : userMap['active'],
      blocked : userMap['blocked'],
      tryQuantity : userMap['tryQuantity'],
      countryCode : userMap['countryCode'],
      phoneNumber : userMap['phoneNumber'],
      codeRecoveryPassword : userMap['codeRecoveryPassword'],
      firstLogin : userMap['firstLogin'],
      changePassword : userMap['changePassword'],
      verified : userMap['verified'],
      agreeTerms : userMap['agreeTerms'],
      idApi : userMap['idApi'],      
    );
  }

}