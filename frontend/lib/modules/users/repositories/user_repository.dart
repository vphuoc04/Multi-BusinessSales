// Api
import 'package:frontend/api/api.dart';

class UserRepository {
  final Api api = Api();

  // Get user info by id
  Future<dynamic> user(int id, { required String token }) {
    return api.get(
      'user/$id',
      headers: {
        'Authorization': 'Bearer $token'
      }
    );
  }

  // Add new user
  Future<dynamic> add(
    int catalogueId,
    String firstName,
    String middleName,
    String lastName,
    String email,
    String phone,
    String password, 
    { required String token }
  ){
      return api.post('add_user', {
        'catalogueId': catalogueId,
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'email': email,
        'phone': phone,
        'password': password
      },
      headers: {
        'Authorization': 'Bearer $token'
      }
    );
  }

  // Fetch user info data
  Future<dynamic> get(int catalogueId,{ required String token}) {
    return api.get(
      'user_belong_cataloge/$catalogueId',
      headers: {
        'Authorization': 'Bearer $token'
      }
    );
  }

  // Edit user
  Future<dynamic> edit(
    int id,
    int catalogueId,
    String firstName,
    String middleName,
    String lastName,
    String email,
    String phone,
    String password, 
    { required String token }
  ){
    return api.put('edit_user/$id', {
        'catalogueId': catalogueId,
        'firstName': firstName,
        'middleName': middleName,
        'lastName': lastName,
        'email': email,
        'phone': phone,
        'password': password
      },
      headers: {
        'Authorization': 'Bearer $token'
      }
    );
  }

  // Delete user
  Future<dynamic> delete(int id, { required String token }) {
    return api.delete(
      'delete_user/$id',
      headers: {
        'Authorization': 'Bearer $token'
      }
    );
  }
}