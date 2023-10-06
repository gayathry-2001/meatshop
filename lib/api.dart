import 'package:dio/dio.dart';
import 'package:meatshopproj/modals/loginmodal.dart';
import 'package:meatshopproj/modals/registermodal.dart';
import 'package:meatshopproj/url/url.dart';

class Api{
  static Api instance = Api();
  factory(){
    return instance;
  }


final dio = Dio();
final url = URL();

Api(){
  dio.options =BaseOptions(
    baseUrl: url.baseUrl,
    responseType: ResponseType.json
  );
}

Future <Regimodal?> registerUserApi (FormData formData) async{
  try{
   final result = await dio.post(url.regiEnd,data: formData);
   return Regimodal.fromJson((result.data));
  }
  on DioException catch(e){
    print(e);
  }
  catch(e){
    print(e);
  }
}

Future <Loginmodal?> loginUserApi (FormData formData) async{
  try{
    final result = await dio.post(url.loginEnd,data: formData);
    return Loginmodal.fromJson(result.data);
  }
  on DioException catch(e){
    print(e);
  }
  catch(e){
    print(e);
  }
}

}