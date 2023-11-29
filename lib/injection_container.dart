import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/repository/article_repository_impl.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/repository/article_repository.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/usecases/get_article.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';

final sl = GetIt.instance; //We can acces from anywhere

Future<void> initializeDependencies() async {
  //be called before run app

  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Dependencies
  sl.registerSingleton<NewsApiService>(NewsApiService(sl()));
  
  sl.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(sl()));

  //Use Cases
  sl.registerSingleton<GetArticleUseCase>(GetArticleUseCase(sl()));

  //Bloc
  sl.registerSingleton<RemoteArticlesBloc>(RemoteArticlesBloc(sl())); //THIS CAN BE CHANGE
}