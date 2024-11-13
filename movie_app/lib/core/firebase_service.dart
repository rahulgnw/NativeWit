
import 'package:built_collection/built_collection.dart';

import '../models/auth_user.dart';
import '../models/review.dart';

abstract class FirebaseService {
  Future<String> sendOtp({required String phoneNo});

  Future<String> verifyOtp({required String otp, required String vid});

  Future<AuthUser> getUser({required String uid, required String phoneNo});

  Future<Review> getMovieReview(
      {required String movieId, required String reviewId});

  Future<void> updateMovieReview(
      {required String movieId, required Review review});

  Future<void> deleteMovieReview(
      {required String movieId, required String reviewId});

  Future<void> createMovieReview(
      {required String movieId, required Review review});

  Stream<BuiltList<Review>> listenMovieReview({required String movieId});

  Future<Review> getTvReview({required String tvId, required String reviewId});

  Future<void> updateTvReview({required String tvId, required Review review});

  Future<void> deleteTvReview({required String tvId, required String reviewId});

  Future<void> createTvReview({required String tvId, required Review review});

  Stream<BuiltList<Review>> listenTvReview({required String tvId});

}
