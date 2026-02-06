
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static final String baseUrl = dotenv.env['BASE_URL'] ?? 'http://localhost:5000';

  static Uri addToCart = Uri.parse('$baseUrl/api/add_to_cart');
  static Uri login = Uri.parse('$baseUrl/api/login');
  static Uri register = Uri.parse('$baseUrl/api/register');
  static Uri verify_otp =  Uri.parse('$baseUrl/api/verify_otp');
  static Uri send_otp = Uri.parse('$baseUrl/api/send_otp');
  static Uri forgot_password = Uri.parse('$baseUrl/api/forgot_password');
  static Uri get_messages = Uri.parse('$baseUrl/api/get_messages');
  static Uri send_message = Uri.parse('$baseUrl/api/send_message');
  static Uri profile = Uri.parse('$baseUrl/api/profile');
  static Uri apply_voucher = Uri.parse('$baseUrl/api/apply-voucher');
  static Uri updateCartQty = Uri.parse('$baseUrl/api/update_cart_quantity');
  static Uri deleteFromCart = Uri.parse('$baseUrl/api/delete_from_cart');
  static Uri confirmOrder = Uri.parse('$baseUrl/api/confirm_order');
  static Uri order_feedback = Uri.parse('$baseUrl/api/order_feedback');
  static Uri remove_cart_items = Uri.parse('$baseUrl/api/remove-cart-items');
  static Uri place_order =  Uri.parse('$baseUrl/api/place-order');

  static Uri getProductsUri(String prType) {
    return Uri.parse('$baseUrl/api/products').replace(queryParameters: {
      'prType': prType,
    });
  }

  
  static Uri getProductsByType(String prType) {
    return Uri.parse('$baseUrl/api/products/by_type/$prType');
  }


  static String fullImageUrl(String path) {
    String cleanedPath = path.replaceAll('\\', '/').replaceFirst(RegExp(r'^/+'), '');
    return '$baseUrl/$cleanedPath';
  }

  static String teamsports_image(String path) {
     final normalizedPath = path.replaceAll('\\', '/');
    return Uri.encodeFull('$baseUrl/$normalizedPath');
  }

  static Uri showCart(String email) {
    return Uri.parse('$baseUrl/api/show_cart').replace(queryParameters: {
      'email': email,
    });
  }

  static Uri show_to_ship(String email) {
    return Uri.parse('$baseUrl/api/show_to_ship').replace(queryParameters: {
      'email': email,
    });
  }

  static Uri show_to_receive(String email) {
    return Uri.parse('$baseUrl/api/show_to_receive').replace(queryParameters: {
      'email': email,
    });
  }

  static Uri show_to_rate(String email) {
    return Uri.parse('$baseUrl/api/show_to_rate').replace(queryParameters: {
      'email': email,
    });
  }

  static Uri show_to_pay(String email) {
    return Uri.parse('$baseUrl/api/show_to_pay').replace(queryParameters: {
      'email': email,
    });
  }

  static Uri show_completed(String email) {
    return Uri.parse('$baseUrl/api/show_completed').replace(queryParameters: {
      'email': email,
    });
  }

  static Uri get_feedback(String productId) {
    return Uri.parse('$baseUrl/api/get_feedback/$productId');
  }

}
