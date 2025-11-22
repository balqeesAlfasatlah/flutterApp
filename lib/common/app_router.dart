import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app/common/routes.dart';
import 'package:new_app/features/login/login_email_screen.dart';
import 'package:new_app/features/login/login_screen.dart';
import 'package:new_app/features/news/data/data_source/remote/remote_news.dart';
import 'package:new_app/features/news/data/repository_imp/newa_repo_impl.dart';
import 'package:new_app/features/news/domain/repository/news_repo.dart';
import 'package:new_app/features/news/domain/usecases/news_use_case.dart';
import 'package:new_app/features/news/presentation/bloc/news_bloc.dart';
import 'package:new_app/features/news/presentation/news_screen.dart';
import 'package:new_app/features/register/register_screen.dart';
import 'package:new_app/features/splash/splash_screen.dart';

import 'api_service.dart';

class AppRouter {
  MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.loginEmailScreen:
        return MaterialPageRoute(builder: (_) => const LoginEmailScreen());

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case Routes.newsScreen:
        final dio = Dio(BaseOptions(baseUrl: "https://newsdata.io/api/1/"));
        final apiService = ApiService(dio);
        final remoteNews = RemoteNews(apiService);
        final repository = NewsRepositoryImplementation(
          localNews: null,
          remoteNews: remoteNews,
        );
        final useCase = GetNewsUseCase(repository);
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NewsBloc(useCase)..add(GetNewsEvent()),
            child: const NewsScreen(),
          ),
        );

      default:
        throw Exception('This route name does not exit');
    }
  }
}
