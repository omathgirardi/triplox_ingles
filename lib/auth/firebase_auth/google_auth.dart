import 'package:firebase_auth/firebase_auth.dart';

Future<UserCredential?> googleSignInFunc() async {
  try {
    // ✅ Google Sign-In unificado para Web e Mobile
    GoogleAuthProvider authProvider = GoogleAuthProvider();
    return await FirebaseAuth.instance.signInWithPopup(authProvider);
  } catch (e) {
    print('Erro no login Google: $e');
    return null;
  }
}

Future<void> signOutWithGoogle() async {
  await FirebaseAuth.instance.signOut();
}
