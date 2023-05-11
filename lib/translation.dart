Map<String, String> englisch = {
  "login": "Login",
  "signup": "Signup",
  "email": "Email",
  "password": "Password",
  "name": "Name",
  "logout": "Logout",
  "home": "Home",
  "account": "Account",
  "email-already-in-use": "Email already exists or is invalid",
  "invalid-email": "Email already exists or is invalid",
  "weak-password": "Password is too weak",
  "email-not-verified": "Email not verified. Please check your inbox.",
  "missing-email": "Please enter an email",
  "timeout": "The request timed out. Please try again.",
  "ok": "Ok",
  "cancel": "Cancel",
  "error": "Error",
};

Map<String, String> deutsch = {
  "login": "Anmelden",
  "signup": "Registrieren",
  "email": "Email",
  "password": "Passwort",
  "name": "Name",
  "logout": "Abmelden",
  "home": "Startseite",
  "account": "Konto",
  "email-already-in-use": "Email existiert bereits oder ist ungültig",
  "invalid-email": "Email existiert bereits oder ist ungültig",
  "weak-password": "Passwort ist zu schwach",
  "email-not-verified":
      "Email nicht verifiziert. Bitte überprüfen Sie Ihren Posteingang.",
  "missing-email": "Bitte geben Sie eine Email ein",
  "timeout": "Die Anfrage ist abgelaufen. Bitte versuchen Sie es erneut.",
  "ok": "Ok",
  "cancel": "Abbrechen",
  "error": "Fehler",
};

Map<String, String> language = englisch;

String t(String s) {
  return language[s] ?? s;
}
