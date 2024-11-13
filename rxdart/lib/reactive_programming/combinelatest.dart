void main(){
  Observable<Integer> obs1 = Observable.just(1, 1, 1);
  Observable<Integer> obs2 = Observable.just(2, 2);

  Observable.concat(obs1, obs2)
      .subscribe(x -> Timber.d("item: " + x)));
}