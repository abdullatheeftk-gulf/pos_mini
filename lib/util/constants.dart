class Constants{

  static const String baseUrlMobile = 'https://plucky-bulwark-405311.uc.r.appspot.com';
  static const String baseUrlWebAndDesktop = 'https://plucky-bulwark-405311.uc.r.appspot.com';

  static const String getAllCategories = "/category/getAllCategories";
  static const String getACategoryById = "/category/getACategoryById";
  static const String addACategory = "/category/addCategory";
  static const String updateACategory = "/category/updateACategory";
  static const String deleteACategory = "/category/deleteACategory";

  static const String getFoodItemByACategory = '/foodItem/getFoodItemsByCategory';

  static const String userLogin = "/user/loginUser";
  static const String adminLogin = "/admin/loginAdminUser";

  static const String updateAdminUser = "/admin/updateAdminUser";
  static const String addUser = "/admin/addUser";
  static const String getAllUsers = "/admin/getAllUsers";
  static const String updateUser = "/admin/updateUser/";
  static const String deleteOneUser = "/admin/deleteOneUser/";

  static const String addAFoodItem = '/foodItem/addAFoodItem';
  static const String updateAFoodItem = "/foodItem/updateAFoodItem";
  static const String deleteAFoodItem = "/foodItem/deleteAFoodItem";

  static const String transliterate = '/transliterate';
  static const String translate = '/translate';

  // Dine in section
  static const String getAllAreas = '/area/getAllAreas';
  static const String addArea = '/area/add';




  static const String addFoodItemImage = '/foodItem/addAFoodItemPhoto';
  static const String updateFoodItemPhoto = '/foodItem/updateFoodItemPhoto';
  static const String removeAFoodItemPhoto = '/foodItem/removeAFoodItemPhoto';



  static const String searchAFoodItem = '/foodItem/searchAFoodItem';



  static const String getSelectedCategories = "/food_item/getSelectedCategories";




  static const String generateInvoice = '/cart/generateInvoice';

  static const String generalApiCallingErrorMessage = "There have some problem";


  // Error codes
  static const generalErrorCode = 600;
  static const networkErrorCode = 601;
  static const connectionTimeOutErrorCode = 602;
  static const jsonConvertException = 603;

  //shared preferences
  static const saveBaseUrlToSharedPreferences = "save_base_url";

}