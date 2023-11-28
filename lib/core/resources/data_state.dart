import 'package:dio/dio.dart';
import 'package:flutter/physics.dart';

abstract class DataState<T> {
  final T ? data;
  final DioExceptionType ? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioExceptionType error) : super(error: error);
}