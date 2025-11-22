import 'package:injectable/injectable.dart';
import 'package:new_app/common/api_service.dart';
import 'package:new_app/features/news/data/data_source/local/local_news.dart';
import 'package:new_app/features/news/data/data_source/remote/remote_news.dart';
import 'package:new_app/features/news/data/model/response_model/news_response_model.dart';
import 'package:new_app/features/news/domain/entity/news_entity.dart';
import 'package:new_app/features/news/domain/repository/news_repo.dart';

//@Injectable(as: NewsRepository)
class NewsRepositoryImplementation extends NewsRepository {
  final LocalNews? localNews;
  final RemoteNews? remoteNews;

  NewsRepositoryImplementation({this.localNews, this.remoteNews});

  @override
  Future<NewsEntity> getNews(bool isLocal) async {
    if (isLocal) {
      final model = await localNews!.getLocalNews();
      return model.toEntity();
    } else {
      final model = await remoteNews!.getRemoteNews();
      return model.toEntity();
    }
  }
}
