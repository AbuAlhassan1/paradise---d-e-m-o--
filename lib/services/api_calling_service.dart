import 'package:http/http.dart' as http;

class Remote {

  static final client = http.Client();

  Future<String> getPosts (int pageIndex, int pageSize) async {

    String url = "http://91.92.144.77:5656/api/MawaredEcommerce/Matrix/GetOnPages?pageIndex=$pageIndex&pageSize=$pageSize";

    var response = await client.get(Uri.parse(url));

    if ( response.statusCode == 200 ) {
      return response.body;
    }
    return response.statusCode.toString();
  }

}