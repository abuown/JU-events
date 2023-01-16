import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class JuEventsFirebaseUser {
  JuEventsFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

JuEventsFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<JuEventsFirebaseUser> juEventsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<JuEventsFirebaseUser>(
            (user) => currentUser = JuEventsFirebaseUser(user));
