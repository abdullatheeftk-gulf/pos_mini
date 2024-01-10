class Constants{

  static const String baseUrlMobile = 'https://plucky-bulwark-405311.uc.r.appspot.com';
  static const String baseUrlWebAndDesktop = 'https://plucky-bulwark-405311.uc.r.appspot.com';

  static const String getAllCategories = '/category/getAllCategories';

  static const String getProductByACategory = '/product/getProductsByCategory';

  static const String addAProduct = '/product/addAProduct';
  static const String transliterate = '/transliterate';
  static const String translate = '/translate';

  static const String addProductImage = '/product/addAProductPhoto';

  static const String searchAProduct = '/product/searchAProduct';

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