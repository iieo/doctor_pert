// ignore_for_file: constant_identifier_names

enum Language { english, german }

enum PhraseKey {
  login,
  signup,
  email,
  password,
  name,
  logout,
  home,
  account,
  email_already_in_use,
  invalid_email,
  weak_password,
  email_not_verified,
  missing_email,
  timeout,
  ok,
  cancel,
  error,
  search,
  search_hint,
  search_no_results,
  search_results,
  searchDoctor,
  searchZip,
  signInWithGoogle,
  appName,
  appSlogan,
  findOnMap,
  contact,
  privacy_policy,
  imprint,
  or_login_with_email,
  go_login,
  go_signup,
  phone,
  fax,
  website,
  address,
  opening_hours,
  reservate,
  about,
  ratings,
  languages,
  specialities,
  general,
  chiropractor,
  dentist,
  dermatologist,
  dietitian,
  gynecologist,
  neurologist,
  ophthalmologist,
  orthopedist,
  pediatrician,
  psychiatrist,
  urologist,
  veterinarian,
  other,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
  open,
  closed,
  openingHours,
  no_entry,
  first_name,
  last_name,
  first_name_hint,
  last_name_hint,
  phone_hint,
  email_hint,
  reservation_overview_step,
  date,
  time,
  doctor,
  employee,
  patient,
  resend_verification_email,
  unknown_error,
  enter_password,
  enter_email,
  forgot_password,
  no_email_provided,
  email_sent_to,
  signup_failed,
  repeat_password,
  repeat_password_hint,
  passwords_dont_match,
}

Map<PhraseKey, Map<Language, String>> languageMapping = {
  PhraseKey.login: {Language.english: "Login", Language.german: "Anmelden"},
  PhraseKey.signup: {
    Language.english: "Signup",
    Language.german: "Registrieren"
  },
  PhraseKey.email: {Language.english: "Email", Language.german: "Email"},
  PhraseKey.password: {
    Language.english: "Password",
    Language.german: "Passwort"
  },
  PhraseKey.name: {Language.english: "Name", Language.german: "Name"},
  PhraseKey.logout: {Language.english: "Logout", Language.german: "Logout"},
  PhraseKey.home: {Language.english: "Home", Language.german: "Home"},
  PhraseKey.account: {Language.english: "Account", Language.german: "Account"},
  PhraseKey.email_already_in_use: {
    Language.english: "Email already in use or invalid",
    Language.german: "Email existiert bereits oder ist ungültig"
  },
  PhraseKey.invalid_email: {
    Language.english: "Email already in use or invalid",
    Language.german: "Email existiert bereits oder ist ungültig"
  },
  PhraseKey.weak_password: {
    Language.english: "Password is too weak",
    Language.german: "Passwort ist zu schwach"
  },
  PhraseKey.email_not_verified: {
    Language.english: "Email not verified. Please check your inbox.",
    Language.german:
        "Email nicht verifiziert. Bitte überprüfen Sie Ihr Postfach."
  },
  PhraseKey.missing_email: {
    Language.english: "Please enter an email",
    Language.german: "Bitte geben Sie eine Email ein"
  },
  PhraseKey.timeout: {
    Language.english: "The request timed out. Please try again.",
    Language.german:
        "Die Anfrage ist abgelaufen. Bitte versuchen Sie es erneut."
  },
  PhraseKey.ok: {Language.english: "Ok", Language.german: "Ok"},
  PhraseKey.cancel: {Language.english: "Cancel", Language.german: "Abbrechen"},
  PhraseKey.error: {Language.english: "Error", Language.german: "Fehler"},
  PhraseKey.search: {Language.english: "Search", Language.german: "Suchen"},
  PhraseKey.search_hint: {
    Language.english: "Search for doctors, hospitals, etc.",
    Language.german: "Suche nach Ärzten, Krankenhäusern, etc."
  },
  PhraseKey.search_no_results: {
    Language.english: "No results found",
    Language.german: "Keine Ergebnisse gefunden"
  },
  PhraseKey.search_results: {
    Language.english: "Results",
    Language.german: "Ergebnisse"
  },
  PhraseKey.searchDoctor: {
    Language.english: "Search for doctor",
    Language.german: "Suche nach Ärzten"
  },
  PhraseKey.searchZip: {
    Language.english: "Search for ZIP",
    Language.german: "Suche nach PLZ"
  },
  PhraseKey.appName: {
    Language.english: "Doctor Pert",
    Language.german: "Doctor Pert"
  },
  PhraseKey.appSlogan: {
    Language.english: "Find your doctor nearby",
    Language.german: "Finde deinen Arzt in der Nähe"
  },
  PhraseKey.findOnMap: {
    Language.english: "Find on map",
    Language.german: "Auf Karte anzeigen"
  },
  PhraseKey.contact: {Language.english: "Contact", Language.german: "Kontakt"},
  PhraseKey.privacy_policy: {
    Language.english: "Privacy Policy",
    Language.german: "Datenschutz"
  },
  PhraseKey.imprint: {
    Language.english: "Imprint",
    Language.german: "Impressum"
  },
  PhraseKey.or_login_with_email: {
    Language.english: "Or login with email",
    Language.german: "Oder mit Email anmelden"
  },
  PhraseKey.go_login: {
    Language.english: "Go to login",
    Language.german: "Zur Anmeldung"
  },
  PhraseKey.go_signup: {
    Language.english: "Go to signup",
    Language.german: "Zur Registrierung"
  },
  PhraseKey.phone: {Language.english: "Phone", Language.german: "Telefon"},
  PhraseKey.fax: {Language.english: "Fax", Language.german: "Fax"},
  PhraseKey.website: {Language.english: "Website", Language.german: "Website"},
  PhraseKey.address: {Language.english: "Address", Language.german: "Adresse"},
  PhraseKey.opening_hours: {
    Language.english: "Opening hours",
    Language.german: "Öffnungszeiten"
  },
  PhraseKey.reservate: {
    Language.english: "Reservate",
    Language.german: "Reservieren"
  },
  PhraseKey.about: {Language.english: "About", Language.german: "Über"},
  PhraseKey.ratings: {
    Language.english: "Ratings",
    Language.german: "Bewertungen"
  },
  PhraseKey.languages: {
    Language.english: "Languages",
    Language.german: "Sprachen"
  },
  PhraseKey.specialities: {
    Language.english: "Specialities",
    Language.german: "Spezialisierungen"
  },
  PhraseKey.general: {
    Language.english: "General",
    Language.german: "Allgemein"
  },
  PhraseKey.chiropractor: {
    Language.english: "Chiropractor",
    Language.german: "Chiropraktiker"
  },
  PhraseKey.dentist: {Language.english: "Dentist", Language.german: "Zahnarzt"},
  PhraseKey.dermatologist: {
    Language.english: "Dermatologist",
    Language.german: "Dermatologe"
  },
  PhraseKey.dietitian: {
    Language.english: "Dietitian",
    Language.german: "Diätologe"
  },
  PhraseKey.gynecologist: {
    Language.english: "Gynecologist",
    Language.german: "Gynäkologe"
  },
  PhraseKey.neurologist: {
    Language.english: "Neurologist",
    Language.german: "Neurologe"
  },
  PhraseKey.ophthalmologist: {
    Language.english: "Ophthalmologist",
    Language.german: "Augenarzt"
  },
  PhraseKey.orthopedist: {
    Language.english: "Orthopedist",
    Language.german: "Orthopäde"
  },
  PhraseKey.pediatrician: {
    Language.english: "Pediatrician",
    Language.german: "Kinderarzt"
  },
  PhraseKey.psychiatrist: {
    Language.english: "Psychiatrist",
    Language.german: "Psychiater"
  },
  PhraseKey.urologist: {
    Language.english: "Urologist",
    Language.german: "Urologe"
  },
  PhraseKey.veterinarian: {
    Language.english: "Veterinarian",
    Language.german: "Tierarzt"
  },
  PhraseKey.other: {Language.english: "Other", Language.german: "Andere"},
  PhraseKey.monday: {Language.english: "Monday", Language.german: "Montag"},
  PhraseKey.tuesday: {Language.english: "Tuesday", Language.german: "Dienstag"},
  PhraseKey.wednesday: {
    Language.english: "Wednesday",
    Language.german: "Mittwoch"
  },
  PhraseKey.thursday: {
    Language.english: "Thursday",
    Language.german: "Donnerstag"
  },
  PhraseKey.friday: {Language.english: "Friday", Language.german: "Freitag"},
  PhraseKey.saturday: {
    Language.english: "Saturday",
    Language.german: "Samstag"
  },
  PhraseKey.sunday: {Language.english: "Sunday", Language.german: "Sonntag"},
  PhraseKey.open: {Language.english: "Open", Language.german: "Offen"},
  PhraseKey.closed: {
    Language.english: "Closed",
    Language.german: "Geschlossen"
  },
  PhraseKey.openingHours: {
    Language.english: "Opening hours",
    Language.german: "Öffnungszeiten"
  },
  PhraseKey.no_entry: {
    Language.english: "No entry yet",
    Language.german: "Noch kein Eintrag"
  },
  PhraseKey.first_name: {
    Language.english: "First name",
    Language.german: "Vorname"
  },
  PhraseKey.last_name: {
    Language.english: "Lats name",
    Language.german: "Nachname"
  },
  PhraseKey.first_name_hint: {
    Language.english: "Enter your first name",
    Language.german: "Geben Sie ihren Vornamen ein"
  },
  PhraseKey.last_name_hint: {
    Language.english: "Enter your last name",
    Language.german: "Geben Sie ihren Nachnamen ein"
  },
  PhraseKey.phone_hint: {
    Language.english: "Enter your phone number",
    Language.german: "Geben Sie ihre Telefonnummer ein"
  },
  PhraseKey.email_hint: {
    Language.english: "Enter your email address",
    Language.german: "Geben Sie ihre Email-Adresse ein"
  },
  PhraseKey.reservation_overview_step: {
    Language.english: "KA was hier sthen soll",
    Language.german: "KA was hier sthen soll"
  },
  PhraseKey.date: {Language.english: "Date", Language.german: "Datum"},
  PhraseKey.doctor: {Language.english: "Doctor", Language.german: "Arzt"},
  PhraseKey.employee: {
    Language.english: "Employee",
    Language.german: "Mitarbeiter"
  },
  PhraseKey.patient: {Language.english: "Patient", Language.german: "Patient"},
  PhraseKey.time: {Language.english: "Time", Language.german: "Uhrzeit"},
  PhraseKey.signInWithGoogle: {
    Language.english: "Sign in with Google",
    Language.german: "Mit Google anmelden"
  },
  PhraseKey.forgot_password: {
    Language.english: "Forgot password?",
    Language.german: "Passwort vergessen?"
  },
  PhraseKey.enter_email: {
    Language.english: "Enter your email address",
    Language.german: "Geben Sie ihre Email-Adresse ein"
  },
  PhraseKey.enter_password: {
    Language.english: "Enter your password",
    Language.german: "Geben Sie ihr Passwort ein"
  },
  PhraseKey.signup_failed: {
    Language.english: "Sign up failed",
    Language.german: "Anmeldung fehlgeschlagen"
  },
  PhraseKey.passwords_dont_match: {
    Language.english: "passwords don't match",
    Language.german: "Passwörte stimmen nicht überein"
  },
  PhraseKey.repeat_password: {
    Language.english: "Repeat password",
    Language.german: "Passwort wiederholen"
  },
  PhraseKey.repeat_password_hint: {
    Language.english: "Repeat your password",
    Language.german: "Wiederholen Sie ihr Passwort"
  }
};

Language language = Language.german;

String t(PhraseKey key) {
  var m = languageMapping[key];
  if (m == null) {
    return key.toString();
  }

  return m[language] ?? key.toString();
}
