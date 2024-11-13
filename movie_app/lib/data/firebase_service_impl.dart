import 'dart:async';

import 'package:built_collection/src/list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:movie_app/core/firebase_service.dart';
import 'package:movie_app/models/auth_user.dart';
import 'package:movie_app/models/review.dart';

class FireBaseServiceImpl implements FirebaseService {
  FirebaseAuth auth = FirebaseAuth.instance;

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @override
  Future<String> sendOtp({required String phoneNo}) async {
    String vid = '';
    Completer _c = Completer();
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (PhoneAuthCredential credential) {
        if (credential.verificationId?.isNotEmpty ?? false) {
          vid = credential.verificationId!;
          if (!_c.isCompleted) _c.complete();
        }
      },
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        vid = verificationId;
        if (!_c.isCompleted) _c.complete();
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        vid = verificationId;
        if (!_c.isCompleted) _c.complete();
      },
    );
    await Future.wait([_c.future]);
    return vid;
  }

  @override
  Future<String> verifyOtp({required String otp, required String vid}) async {
    PhoneAuthCredential credential =
        PhoneAuthProvider.credential(verificationId: vid, smsCode: otp);
    await auth.signInWithCredential(credential);
    UserCredential user = await auth.signInWithCredential(credential);
    var userid = user.user?.uid;
    if (userid == null) {
      throw 'user not identified';
    }
    return userid;
  }

  CollectionReference<Map<String, dynamic>> get userCollection =>
      firestore.collection("users");

  CollectionReference<Map<String, dynamic>> get movieCollection =>
      firestore.collection("movie");

  CollectionReference<Map<String, dynamic>> get tvCollection =>
      firestore.collection("tv");

  CollectionReference<Map<String, dynamic>> movieReviewCollection(
          String movieId) =>
      movieCollection.doc(movieId).collection("review");

  CollectionReference<Map<String, dynamic>> tvReviewCollection(String tvId) =>
      tvCollection.doc(tvId).collection("review");

  @override
  Future<AuthUser> getUser(
      {required String uid, required String phoneNo}) async {
    var userDoc = userCollection.doc(uid);
    Map<String, dynamic>? userdata = (await userDoc.get()).data();
    if (userdata == null) {
      var authUser = AuthUser((b) => b
        ..phoneNo = phoneNo
        ..id = uid);
      userDoc.set(authUser.toJson());
      return authUser;
    }
    return AuthUser.fromJson(userdata);
  }

  @override
  Future<void> createMovieReview({
    required String movieId,
    required Review review,
  }) async {
    var doc = movieReviewCollection(movieId).doc();
    var r = review.rebuild((b) => b.id = doc.id);
    await doc.set(r.toJson());
  }

  @override
  Future<void> createTvReview({
    required String tvId,
    required Review review,
  }) async {
    var doc = tvReviewCollection(tvId).doc();
    var r = review.rebuild((r) => r.id = doc.id);
    await doc.set(r.toJson());
  }

  @override
  Future<void> deleteMovieReview({
    required String movieId,
    required String reviewId,
  }) async {
    await movieReviewCollection(movieId).doc(reviewId).delete();
  }

  @override
  Future<void> deleteTvReview(
      {required String tvId, required String reviewId}) async {
    await tvReviewCollection(tvId).doc(reviewId).delete();
  }

  @override
  Future<Review> getMovieReview(
      {required String movieId, required String reviewId}) async {
    Map<String, dynamic>? data =
        (await movieReviewCollection(movieId).doc(reviewId).get()).data();
    if (data == null) {
      throw "Movie Review Not Found";
    }
    return Review.fromJson(data);
  }

  @override
  Future<Review> getTvReview(
      {required String tvId, required String reviewId}) async {
    Map<String, dynamic>? data =
        (await tvReviewCollection(tvId).doc(reviewId).get()).data();
    if (data == null) {
      throw "Tv review not found";
    }
    return Review.fromJson(data);
  }

  @override
  Stream<BuiltList<Review>> listenMovieReview({required String movieId}) {
    Stream<QuerySnapshot<Map<String, dynamic>>> s =
        movieReviewCollection(movieId).snapshots();
    Stream<BuiltList<Review>> data = s.map(
        (QuerySnapshot<Map<String, dynamic>> b) =>
            b.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> e) {
              return Review.fromJson(e.data());
            }).toBuiltList());
    return data;
  }

  @override
  Stream<BuiltList<Review>> listenTvReview(
      {required String tvId})  {
    Stream<QuerySnapshot<Map<String, dynamic>>> s =
        tvReviewCollection(tvId).snapshots();
    Stream<BuiltList<Review>> data = s.map(
            (QuerySnapshot<Map<String, dynamic>> b) =>
            b.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> e) {
              return Review.fromJson(e.data());
            }).toBuiltList());
    return data;

  }

  @override
  Future<void> updateMovieReview(
      {required String movieId, required Review review}) async {
    await movieReviewCollection(movieId).doc(review.id).set(review.toJson());
  }

  @override
  Future<void> updateTvReview(
      {required String tvId, required Review review}) async {
    await tvReviewCollection(tvId).doc(review.id).set(review.toJson());
  }
}
