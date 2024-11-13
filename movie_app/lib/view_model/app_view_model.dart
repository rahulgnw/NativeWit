import 'dart:async';

import 'dart:math';

import 'package:built_collection/src/list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:movie_app/models/cast_model.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/core/api_service.dart';
import 'package:movie_app/data/api_service_impl.dart';
import 'package:movie_app/models/auth_user.dart';
import 'package:movie_app/core/firebase_service.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/models/tv_show_model.dart';
import 'package:state_notifier/state_notifier.dart';

import '../data/firebase_service_impl.dart';
import '../models/app_state.dart';
import '../models/review.dart';

class AppViewModel extends StateNotifier<AppState> {
  AppViewModel() : super(AppState());

ApiService apiService=ApiServiceImpl();
  FirebaseService fireBaseService = FireBaseServiceImpl();


  AppState getState()=>state;
  Future<void> getPopularMovie() async {
    BuiltList<MovieModel> popular = await apiService.getPopularMovie() ;
    state = state.rebuild((p0) => p0.popularMovies = popular.toBuilder());
  }
  Future<void> getTopRatedMovie()async {
    BuiltList<MovieModel> topRated =await apiService.getTopRatedMovie();
    state = state.rebuild((p1)=> p1.topRatedMovie= topRated.toBuilder() );
  }

  Future<void> getUpcomingMovie()async{
    BuiltList<MovieModel> upcoming = await apiService.getUpcomingMovie();
    state = state.rebuild((p2)=> p2.upcomingMovie=upcoming.toBuilder());
  }

  Future<void> getCastForMovie({required int id})async{
    BuiltList<CastModel> movie_credits =await apiService.getCastForMovie(id: id);
    state = state.rebuild((p3)=>p3.castForMovie= movie_credits.toBuilder());

  }
  Future<void> getMoviesOfCast({required int id}) async {
    BuiltList<MovieModel> moviesCast = await apiService.getMovieOfCast(id: id);
    state = state.rebuild((p4) => p4.movieOfCast = moviesCast.toBuilder());
  }

  Future<void> getTvShowsOfCast({required int id}) async {
    BuiltList<TvShowModel> tvCast = await apiService.getTvShowsOfCast(id: id);
    state = state.rebuild((p5) => p5.tvShowsOfCast = tvCast.toBuilder());
  }



  Future<String> sendOtp({required String phoneNo}) async {
    return await fireBaseService.sendOtp(phoneNo: phoneNo);
  }


  Future<void> verifyOtp({required String smsCode, required String vid}) async {
    await fireBaseService.verifyOtp(
      otp: smsCode,
      vid: vid,
    );
    var currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      throw 'user not Found';
    }
    if (currentUser.phoneNumber == null) {
      throw 'phone number is not valid';
    }
    AuthUser user = (await fireBaseService.getUser(
        uid: currentUser.uid, phoneNo: currentUser.phoneNumber!));

    state = state.rebuild((p) => p.currentUser = user.toBuilder());
  }

  Future<void> createMovieReview({
    required String movieId,
    required Review review,
  }) async {
    await fireBaseService.createMovieReview(movieId: movieId, review: review);
  }

  Future<void> createTvReview({
    required String tvId,
    required Review review,
  }) async {
    await fireBaseService.createTvReview(tvId: tvId, review: review);
  }

  Future<void> deleteMovieReview({
    required String movieId,
    required String reviewId,
  }) async {
    await fireBaseService.deleteMovieReview(
        movieId: movieId, reviewId: reviewId);
  }

  Future<void> deleteTvReview(
      {required String tvId, required String reviewId}) async {
    await fireBaseService.deleteTvReview(tvId: tvId, reviewId: reviewId);
  }

  Map<String, StreamSubscription<BuiltList<Review>>> movieSubscription = {};

  @override
  void dispose() {
    super.dispose();
    movieSubscription.values.forEach((b) => b.cancel());
    tvSubscription.values.forEach((b) => b.cancel());
  }

  void listenMovie({required String movieId}) {
    movieSubscription[movieId] = fireBaseService
        .listenMovieReview(movieId: movieId).asBroadcastStream()
        .listen((BuiltList<Review> e) {
      state = state.rebuild((b) => b.movieReview[movieId] = e);
    });
  }

  Map<String, StreamSubscription<BuiltList<Review>>> tvSubscription = {};

  void listenTv({required String tvId}) {
    tvSubscription[tvId] = fireBaseService
        .listenTvReview(tvId: tvId).asBroadcastStream().listen((
        BuiltList<Review> e) {
      state = state.rebuild((b) => b.tvReview[tvId] = e);
    });
  }


Future<void> updateMovieReview(
    {required String movieId, required Review review}) async {
  await fireBaseService.updateMovieReview(movieId: movieId, review: review);
}

Future<void> updateTvReview(
    {required String tvId, required Review review}) async {
  await fireBaseService.updateTvReview(tvId: tvId, review: review);
}

}
