class SharedDataRepository{
  static String adminPassword = "";

  String getAdminPassword(){
    return adminPassword;
  }

  void setAdminPassword(String value){
    adminPassword = value;
  }
}