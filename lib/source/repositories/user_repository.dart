import '../services/http.dart';
import '../models/user.dart';

class UserRepository {
  User? user;

  Future<bool> get(int id) async {
    final HttpResponse httpResponse = await Http.get('/user/$id');

    if (httpResponse.ok) {
      user = User.fromMap(httpResponse.body);
    }

    return httpResponse.ok;
  }
}
