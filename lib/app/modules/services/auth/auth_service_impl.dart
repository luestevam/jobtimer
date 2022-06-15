import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:job_time/app/modules/services/auth/auth_services.dart';

class AuthServiceImpl implements AuthService {
  @override
  Future<void> singnIn() async {
    final googleUser = await GoogleSignIn().signIn();

    final googleAuth = await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<void> singnOut() async {
    await FirebaseAuth.instance.signOut();
    GoogleSignIn().disconnect();
  }
}
