import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    //bring the page to sign in using gmail
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain authentication details from request
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create new credintials for the user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    //sign in
    return FirebaseAuth.instance.signInWithCredential(credential);
  }
}
