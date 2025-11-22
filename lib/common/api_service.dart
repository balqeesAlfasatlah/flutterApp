import 'package:new_app/features/news/data/model/response_model/news_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://newsdata.io/api/1/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("latest")
  Future<NewsResponseModel> loadLatestNews({
    @Query("apikey") required String apiKey,
    @Query("country") required String country,
    @Query("category") required String category,
  });
}
