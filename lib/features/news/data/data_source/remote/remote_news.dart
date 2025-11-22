import 'package:new_app/common/api_service.dart';
import 'package:new_app/features/news/data/model/response_model/news_response_model.dart';
import 'package:new_app/features/news/domain/entity/news_entity.dart';

class RemoteNews {
  final ApiService apiService;
  RemoteNews(this.apiService);

  Future<NewsResponseModel> getRemoteNews() async {
    final response = await apiService.loadLatestNews(
      apiKey: "pub_0deb44e61bb5498d95d6ded5c0b1f577",
      country: "us",
      category: "technology",
    );
    return response;
  }
}
