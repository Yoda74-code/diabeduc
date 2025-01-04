import 'dart:ui';

import 'package:get/get.dart';

import '../functions/functions.dart';

class Languages implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
////Theme
          "GO FOR": "GO FOR",
          "BETTER": "BETTER",
          "HEALTH": "HEALTH",
          "WITH": "WITH",
          "your language preference can be": "your language preference can be",
          "changed at any time in settings": "changed at any time in settings",
          "French": "French",
          "English": "English",
          "Welcome": "Welcome",
          "please fill the information below":
              "please fill the information below",
          "fname": "Please enter your first name",
          "lname": "Please enter your last name",
          "First Name": "First Name",
          "last Name": "Familly Name",
          "Birthday date": "Birthday date",
          "Choissi ton Avatar": "Choose your Avatar",
          "Explore": "Explore",
          "Learn with\n us how to take\n care of you and\n your\n diabetes":
              "Learn with\n us how to take\n care of you and\n your\n diabetes",
          "personal info": "personal info",
          "help center": "help center",
          "moins de 8 ans": "Under 8 years old",
          "plus de 9 ans": "Over 9 years old",

          "Privacy": "Privacy Policy",
          "theme": "Theme",
          "plzTheme": "Please choose a theme",
          "lightTheme": "Light Theme",
          "darkTheme": "Dark Theme",

          "medicineName": "Medicine name",
          "enterMedicineName": "Please enter Medicine name",
          "medicineName>2":
              "The name of the medicine must have more than two letters",
          "SearchMed": "Search a medicine...",
          "NoResultForSearch": "There are no results for your search",

////////////
          "Home": "Home",
          "language": "Choose your language",
          "Posts": "My Posts",
          "Profil": "Profil",
          "enterbirthDate": "Please fill the date of your birthDay",
          "enterMedicinePhoneNumber": "Please fill your mobile number",
          "MedicinePhoneNumber": 'Phone Number',
          "PickImage": "Pick image",
          "CategoryChoose": "Choosing the category of the medecine",
          "SelectCate": "Please Select the Category of the medicine",
          "DescMedicin": "Please enter the Description of the medicine",
          "Description": "Description of the medicine...",
          "Publier": "Post",
          "Annuler": "Cancel",
          "select": "Please choose Picture",
          "ExpirationDate": "Expiry date : ",
          "Contacter": "Contact",
          "ListEmpty": "No posts",
          "Supprimer": "Delete",
          "english": "English",
          "francais": "French",
          "arab": "Arabic",
          "sendingEmailMessage":
              "An email has been sent to change the password to your account: ",
          "DtaExp": "Medicine expiration date",
          "addmed": "Add Medicine",
          "DONE": "DONE",
          "continue": "Continue",
          "email-already-in-use": "Email Already used",
          "user-not-found": "User Not Found",
          "wrong-password": "Wrong Password please try again",
          "AccountConfirmed": "Account confirmed, log in",

          "noConnection": "There is no internet Connection",
          "login": "Sign In",
          "forgotYourPassword?": "Forgot your password ?",
          "forgotPasswordMessage":
              "Enter your email, and we will send you a link to enter a new password.",
          "password": "Password",
          "resetPassword": "Reset password",
          "weWillSendUReset": "No worries we will send you reset instructions.",
          "send": "Send",
          "sendEmail": "Send email",
          "SendLink": "Send link",
          "EmailVerification": "Email Verification",
          "EmailVerificationMessage":
              "A verification email has been sent to your email address",
          "ResendEmail": "Resend",

          "sendSMSVerification": "Send SMS Verification",
          "enterNewPassword": "Please enter your new password",
          "passwordsNoMatch": "Passwords do not match",
          "enterAnEmail": "Please enter an email",
          "enterValidEmail": "Please enter a valid email",
          "enterPassword": "Please enter your password",
          "password<8": "Password can't be smaller than 8 letter",
          "password>20": "Password can't be larger than 20 letter",
          "enterCodePIN": "Please enter the Code PIN",
          "invalidEmailOrPassword": "invalid email or password",
          "verifyCode": "Verify code",
          "invalidCode": "The code you provided is invalid",
          "enterSMS": "Please enter the sms sent to your phone number",
          "successResetPassword": "Your password has been successfully reset",
          "email": "Email",
          "phoneNumber": "Phone number",
          "phoneNumberUpdated": "Phone number updated successfully",

          "enterValidPhoneNumber": "enter a valid phone number", //
          "userName": "Username",
          "firstName": "First name",
          "lastName": "Last name",
          "birthday": "Birthday",
          "birthplace": "Birthplace",
          "confirm": "Confirm", "cancel": "Cancel", "validate": "Validate",
          "refuse": "Refuse",

          "usernameValidator":
              "The username field must be at least 3 characters.",
          "usernameUpdated": "Username updated successfully",
          "fillYourUserName": "Please fill Your Username",
          "usernameTaken": "The username has already been taken.",
          "ownUsername": "You didn't change your information",
          'weakPassword': "The password provided is too weak.",
          "emailInUse": "The account already exists for that email.",
          "emailNotFound": "No user found for specified email.",
          "wrongPassword": "Wrong password provided.",
          "resetPasswordEmail": "A secret code has just been sent to ",
          "resendSecretCodeEmail": "Resend secret code",
          "changeEmail": "Change email",
          "somethingWentWrong": "something went wrong",
          "Settings": "Settings",
          "Account": "Account",
          "yourInformations": "Your informations",
          "informations": "Informations",
          "changePassword": "Change password",
          "updatePhoneNumber": "Update phone number",
          "oldPassword": "Old password",
          "newPassword": "New password",
          "pleaseWait": "Please wait",
          "PersonalInformation": "Personal informations",
          "Language": "Language",
          "DarkMode": "Dark Mode",
          "signOut": "Sign out",
          "aboutUs": "About us",
          "onlyAdmin": "Only super admins",
          "openAppSettings": "Open App Settings",
          "pleaseAllowPermissions": "Please allow permissions",
          "areUSure": "Are you sure ?",

          //////////////////////////////////////
          "registration": "Registration",
          "goBack": "Go back",
          "field3c": "This field must be at least 3 characters.",
          "enterBirthplace": "Please enter birthplace",
          "enterBirthday": "Please enter birthday",
          "signUpSuccess": "Account created successfully",
          "submit": "Submit",
          "imageTooBig": "Image too big",
          //CREATE NEW ROLE///////////////
          "createRole": "Create a new role",
          "createRole1": "Complete the following steps to create a new role",
          "createRole2": "Start",
          "createRole3": "Role name",
          "createRole4": "Please enter the new role name",
          "createRole5": "Next",
          "createRole6": "Permissions",
          "createRole7":
              "from the following list, allow permissions for this new role",
          "createRole8": "Finish",
          "createRole9": "Role name",
          "enterRoleName": "Please enter a role name",
          "roleCreated": "Role created successfully",
          "roleNameTaken": "This role name already exists",
          "addPermissions": "Please add a permission",
          "permissionUsed": "Can't delete permission used in a role",
          "roleUsed": "Can't delete a role given to a user",
          //CREATE NEW ROLE///////////////

          //ROLE MANAGEMENT/////////////////
          "roleManagement": "Roles Management",
          "roles": "Roles",
          "permissionsManagement": "Permissions management",
          //ROLE MANAGEMENT/////////////////
          "users": "Users",
          "delete": "Delete",
          "edit": "Edit",
          "newPermission1": "Please enter a name",
          "newPermission2": "Permission name",
          "roleUpdated": "Role updated successfully",
          "roleDeleted": "Role deleted successfully",
          "permissionDeleted": "Permission deleted successfully",
          "permissionCreated": "Permission created successfully",
          "permissionNameTaken": "This name has already been taken",

          ///usersManagement ////////
          "createAccount": "Sign Up",
          "studentOrTeacher":
              "Please choose below what type of user you want to create",
          "student": "Student",
          "teacher": "Teacher",
          "selectOne": "Please select a type",
          "usersManagement": "Users Management",
          "allUsers": "All users",
          "createNewUser": "Create new user",
          "enable": "Enable",
          "disable": "Disable",
          "accountEnabled": "Account enabled successfully",
          "accountDisabled": "Account disabled successfully",
          "updatedSuccess": "Updated successfully",
          "searchByName": "Please enter a name",
          "searchByEmail": "Please enter a email",
          "alreadyHaveThismember": "This person is already added",
          "searching": "Searching: ",
          "clear": "Clear",
          "noResults": "No results",
          "noRoles": "No roles",

          ///usersManagement ////////
          ///
          /////projectManagement////

          "projectManagement": "Project management",
          "status": "Status",
          "updateStatus": "Update status",
          "statusUpdatedSuccess": "Status updated successfully",

          "projectAdvanc": "Project Advancement",
          "update": "Update",

          "viewMyProject": "View project",

          "editMyProject": "Edit project",
          "tasks": "Tasks",
          "comments": "Comments",
          "remarks": "Remarks",
          "justNow": "Just now",
          "remarkDeleted": "Remark deleted successfully",
          "commentDeleted": "Comment deleted successfully",

          "projectObserv": "Project observations",
          "withdraw": "Withdraw",
          "periodsManagement": "Periods Management",
          "period": "Period",
          "selectPeriod": "Select a period",
          "startTime": "Start date",
          "endTime": "End date",
          "periodUpdated": "Period updated successfully",
          "periodConflics": "The new period conflicts with an existing period ",
          "enterADate": "Please enter a date",
          "startDateBeforeEndDate": "Start date must be before end date",
          "validated": "accepted",
          "pending": "pending",
          "refused": "refused",
          "recourse": "recourse",
          "recourse_validated": "Validated after recourse",
          "recourse_refused": "Refused after recourse",
          "viewRemarks": "View remarks",
          "viewComments": "View comments",
          "viewObservs": "View observations",
          "viewTasks": "View tasks",

          "viewReplies": "View replies",
          "cantChangeStatus": "Can't change status",
          "addAReply": "Add a reply",
          "daysAgo": "@daysAgo days ago",
          "enterARemark": "Please enter a remark",
          "enterAComment": "Please enter a comment",
          "enterAobservation": "Please enter an observation",
          "enterATask": "Please enter a task",
          "deadline": "Deadline",
          "approvDate": "approvement date",
          "fileDownloadedTO": "FILE DOWNLOADED TO PATH:",
          "nothingToDownload": "There is nothing to download",

          "viewSubmissions": "view submissions",
          "requiredAttachs": "Required attachments",
          "atLeast1": "There should be at least one left",
          "editYourProject": "Do you want to edit your project?",
          "seeBelowRemarks":
              "You can see down below all the remarks given to your project",

          "domicileEstab": "Domicile establishment",
          "selectDomicileEstab": "please select a domicile establishment",

          "projectType": "Project type",
          "selectProjectType": "please select a Project type",

          "infoInnovativeIdea": "Informations of innovative idea",
          "trademarkName": "Trademark name",
          "enterTrademarkName": "Please enter trademark name",

          "sciNameInnovProd": "Scientific name of innovative product",
          "enterSciNameInnovProd":
              "Please enter a scientific name of innovative product",
          "summary": "Summary",
          "enterSummary": "Please enter a summary of your project",
          "projectTeam": "Project's team",
          "add": "Add",
          "managementTeam": "Management team",
          "supervisor": "Supervisor",
          "cosupervisor": "Co-Supervisor",
          "visorIsntCovisor":
              "A person can't be supervisor and co-supervisor at the same time",

          "attachments": "Attachments",
          "UCAddFiles":
              "You can add files to your project, allowed formats are: .pdf, .docx",
          "editCanceled": "Edit is canceled",
          "projctAdded": "Project added successfully",
          "projectsManagement": "Projects management",
          "projectsTable": "Projects table",
          "diplomaStartUp": "A diploma-a startup",
          "diplomaPatent": "A diploma-a patent",

          "title": "Title",
          "description": "Description",
          "fillFiled": "Please fill in this field",
          "enterRessName": "Enter resource name",
          "taskAdded": "Task added successfully",
          "taskDeleted": "Task deleted successfully",
          "taskValidated": "Task validated successfully",
          "taskEdited": "Task edited successfully",
          "noPermission": "You don't have permission",
          "authorize": "Authorize",
          "authorizeSucc": "Authorized successfully",

          "projectDeleted": "Project deleted successfully",
          "createProject": "Create new project",
          "defensesTable": "Defenses Table",
          "createNewDefense": "Create New Defense",
          "createNewDefenseSucc": "Defense created successfully",

          "defensesManag": "Defenses Management",
          "date": "Date",
          "time": "Time",
          "room": "Room",
          "otherPlace": "Other place",
          "mode": "Mode",
          "nature": "Nature",
          "president": "President",
          "examiners": "Examiners",
          "guest": "Guest",
          "viewDefence": "View Defense",
          "viewDelibration": "View Deliberation",
          "reserves": "Reserves",
          "mark": "Mark",
          "mention": "Mention",
          "appreciation": "Appreciation",
          "examinersLength": "There must be 2 or 3 examiners",

          ///////////////
          ////// Explore menu
          "Diabet ?" :"Diabetes ?",
          "Treatment" :"Treatment",
          "Healthy eating":"Healthy eating",
          "Blood sugar management":"Blood sugar management",
          "Physical activity":"Physical activity",
          "Chatbot":"Chatbot",
          ///
          
          /// home_traitment
          
          "Did you drink a cup?": "Did you drink a cup?", 
           "Yes":"Yes",
           "No":"No",
           "Change Goals":"Change Goals", 
           "Daily Water Goal":"Daily Water Goal",
           "Daily Step Goal":"Daily Step Goal",
           "Cancel":"Cancel",
           "Save":"Save",
           "Congratulations! You have reached your daily goal.":"Congratulations! You have reached your daily goal.",
           "Congratulations! You have reached your daily step goal.":"Congratulations! You have reached your daily step goal.",
           "Activity Tracker":"Activity Tracker",
           "Calories Burned":"Calories Burned",
           "Cups":"Cups",
           "Steps":"Steps",
           "Current Activity:":"Current Activity:",
            
          /// 
          /// home_food
          "Enter search term":"Enter search term",
          "No products found":"No products found",
          "Brands:":"Brands:",
          "Categories:":"Categories:",
          "Labels:":"Labels:",
          "Countries:":"Countries:",
          "Purchase Places:":"Purchase Places:",
          "Manufacturing Places:":"Manufacturing Places:",
          "Ingredients:":"Ingredients:",
          "Nutriscore Grade:":"Nutriscore Grade:",
          "Eco Score:":"Eco Score:",

          /// 
          /// home_blood_sugar
          "Insulin Dosage Calculation":"Insulin Dosage Calculation",
          "Weight (kg)":"Weight (kg)",
          "Target Blood Glucose (mmol/L)":"Target Blood Glucose (mmol/L)",
          "Current Blood Glucose (mmol/L)":"Current Blood Glucose (mmol/L)",
          "Meal Carbohydrates (grams)":"Meal Carbohydrates (grams)",
          "Close":"Close",
          
          "Total Daily Insulin:":"Total Daily Insulin:",
          "Basal Insulin:":"Basal Insulin:",
          "Bolus Insulin:":"Bolus Insulin:",
          "Insulin Per Meal:":"Insulin Per Meal:",
          "Correction Dosage:":"Correction Dosage:",
          "Carbohydrate Dosage:":"Carbohydrate Dosage:",
          "units":"units",

          "Nutrition facts":"Nutrition facts",
          "As sold for 100 g / 100 ml":"As sold for 100 g / 100 ml",
          "As sold per serving":"As sold per serving",
          "No product found":"No product found",
          "Calculate Insulin Dosage":"Calculate Insulin Dosage",

          "Energy":"Energy",
          "Carbohydrates":"Carbohydrates",
          "Sugars":"Sugars",
          "Fiber":"Fiber",
          "Proteins":"Proteins",
          "Salt":"Salt",
          "Fat":"Fat",


          /// 
        },
        "fr": {

          /// home_blood_sugar
          /// 
          "Energy":"Énergie",
          "Carbohydrates":"Les glucides",
          "Sugars":"Sucres",
          "Fiber":"Fibre",
          "Proteins":"Protéines",
          "Salt":"Sel",
          "Fat":"grasse ",
          /// 
          "Insulin Dosage Calculation":"Calcul de la dose d'insuline",
          "Weight (kg)":"Poids (kg)",
          "Target Blood Glucose (mmol/L)":"Glycémie cible (mmol/L)",
          "Current Blood Glucose (mmol/L)":"Glycémie actuelle (mmol/L)",
          "Meal Carbohydrates (grams)":"Glucides des repas (grammes)",
          "Close":"Fermer",
          
          "Total Daily Insulin:":"Insuline quotidienne totale:",
          "Basal Insulin:":"Insuline basale:",
          "Bolus Insulin:":"Bolus d'insuline:",
          "Insulin Per Meal:":"Insuline par repas:",
          "Correction Dosage:":"Dosage correcteur:",
          "Carbohydrate Dosage:":"Dosage des glucides:",
          "units":"unités",

          "Nutrition facts":"Valeur nutritive",
          "As sold for 100 g / 100 ml":"Vendu par 100 g / 100 ml",
          "As sold per serving":"Vendu par portion",
          "No product found":"Aucun produit trouvé",
          "Calculate Insulin Dosage":"Calculer le dosage d'insuline",
          /// 

          /// home_food
          /// 
          "Enter search term":"Entrez le terme de recherche",
          "No products found":"Aucun produits trouvé",
          "Brands:":"Marques:",
          "Categories:":"Catégories:",
          "Labels:":"Étiquettes:",
          "Countries:":"Des pays:",
          "Purchase Places:":"Lieux d'achat:",
          "Manufacturing Places:":"Lieux de fabrication:",
          "Ingredients:":"Ingrédients:",
          "Nutriscore Grade:":"Note Nutriscore:",
          "Eco Score:":"Score écologique:",
          //
          /// home_traitment
          
          "Did you drink a cup?": "Avez-vous bu de l'eau?",
          "Yes":"Oui",
          "Change Goals":"Changer les objectifs",
          "Daily Water Goal":"Objectif d'eau quotidien", 
          "Daily Step Goal":"Objectif de marche quotidien",  
          "Cancel":"Annuler",
          "Save":"Sauvegarder",
          "Congratulations! You have reached your daily goal.":"Félicitations! Vous avez atteint votre objectif quotidien",
          "Congratulations! You have reached your daily step goal.":"Félicitations! Vous avez atteint votre objectif de marche quotidien.",
          "Activity Tracker":"Traqueur d'activité",
          "Calories Burned":"Calories dépensées",
          "Cups":"Eau",
          "Steps":"Des pas",
          "Current Activity:":"Activité actuel:",
           
          /// 


          ///Explore menu
          "Diabet ?" :"Diabet ?",
          "Treatment" :"Traitment",
          "Healthy eating":"Alimentation",
          "Blood sugar management":"Gestion glycémie",
          "Physical activity":"Activité physique",
          "Chatbot":"Chatbot",
          ///
          ////Theme
          "GO FOR": "ALLER POUR",
          "BETTER": "MIEUX",
          "HEALTH": "SANTÉ",
          "WITH": "AVEC",
          "your language preference can be":
              "votre préférence linguistique peut être",
          "changed at any time in settings":
              "modifié à tout moment dans les paramètres",
          "French": "Français",
          "English": "Anglais",
          "Welcome": "Bienvenu",
          "please fill the information below":
              "veuillez remplir les informations ci-dessous",
          "fname": "Entrez votre prénom s'il vous plait",
          "lname": "Entrez votre nom de famille s'il vous plait",
          "First Name": "Prénom",
          "last Name": "Nom de famille",
          "Birthday date": "Date de naissance",
          "Choissi ton Avatar": "Choisir ton avatar",
          "Explore": "Explorer",
          "Learn with\n us how to take\n care of you and\n your\n diabetes":
              "Apprenez avec\n nous comment\n prendre soin de \n vous et\n de votre\n diabète",
          "personal info": "Informations personnelles",
          "help center": "Centre d'aide",
          "moins de 8 ans": "Moins de 8 ans",
           "plus de 9 ans": "Plus de 9 ans",
          ///
          "Privacy": "Politique de Confidentialité",
          "theme": "Thème",
          "plzTheme": "Veuillez choisir un thème",
          "lightTheme": "Thème clair",
          "darkTheme": "Thème sombre",
          "Home": "Home",
          "medicineName": "Nom du médicament",
          "enterMedicineName": "Veuillez entrer le nom du médicament",
          "medicineName>2":
              "Le nom du médicament doit comporter plus de deux lettres",
          "SearchMed": "Rechercher un médicament...",
          "NoResultForSearch": "Il n'y a aucun résultat pour votre recherche",

////////////
          "language": "Choisissez votre langue",
          "Posts": "Mes Postes",
          "Profil": "Profil",
          "enterbirthDate":
              "S'il vous plaît remplir la date d'éxpiration de la médecine",
          "enterMedicinePhoneNumber":
              "Veuillez indiquer votre numéro de téléphone portable",
          "MedicinePhoneNumber": 'Numéro de téléphone',
          "PickImage": "Choisir l'image",
          "CategoryChoose": "Choissir la catégorie du medicament",
          "SelectCate": "Veuillez sélectionner la catégorie du livre",
          "DescMedicin": "S'il vous plaît entrer la description du médicament",
          "Description": "Description du médicament...",
          "Publier": "Publier",
          "ExpirationDate": "Date d'expiration : ",
          "Contacter": "Contacter",
          "ListEmpty": "Pas de publication",
          "Supprimer": "Supprimer",
          "Annuler": "Annuler",
          "select": "S'il vous plaît choisir une image",
          "addmed": "Ajouter un médicament",
          "english": "Anglais",
          "francais": "Français",
          "arab": "Arabe",
          "sendingEmailMessage":
              "Un email a été envoyé pour changer le mot de passe de votre compte :",
          "DtaExp": "Date d'expiration du médicament",

          "continue": "Continuez",
          "noConnection": "Il n'y a pas de connexion Internet",
          "login": "Connexion",
          "forgotYourPassword?": "Mot de passe oublié ?",
          "forgotPasswordMessage":
              "Entrez votre email et nous vous enverrons un lien pour saisir un nouveau mot de passe.",
          "email-already-in-use": "Adresse e-Mail déjà utilisée",
          "user-not-found": "Utilisateur non trouvé",
          "wrong-password": "Mot de passe incorrect, veuillez réessayer",
          "AccountConfirmed": "Compte confirmé, connectez-vous",

          "password": "Mot de passe",
          "resetPassword": "Réinitialiser le mot de passe",
          "weWillSendUReset":
              "Pas de soucis, nous vous enverrons des instructions de réinitialisation.",
          "send": "Envoyer",
          "sendEmail": "Envoyer un e-mail",
          "EmailVerification": "Vérification de l'E-mail",
          "EmailVerificationMessage":
              "Un e-mail de vérification a été envoyé à votre adresse e-mail",
          "ResendEmail": "Renvoyer",
          "SendLink": "Envoyer un lien",

          "userName": "Nom d'utilisateur",
          "sendSMSVerification": "Envoyer la vérification par SMS",
          "enterNewPassword": "Veuillez entrer votre nouveau mot de passe",
          "passwordsNoMatch": "Les mots de passe ne correspondent pas",
          "enterAnEmail": "Entrez un e-mail",
          "enterValidEmail": "entrez une adresse e-mail valide",
          "enterPassword": "S'il vous plait entrez votre mot de passe",
          "password<8":
              "le mot de passe ne peut pas être inférieur à 8 lettres",
          "password>20": "le mot de passe ne peut pas dépasser 20 lettres",
          "enterCodePIN": "Veuillez entrer le code PIN",
          "verifyCode": "Vérifier le code",
          "invalidCode": "Le code que vous avez fourni n'est pas valide",
          "enterSMS":
              "Veuillez entrer le sms envoyé à votre numéro de téléphone",
          "successResetPassword":
              "Votre mot de passe a été réinitialisé avec succès",
          "email": "Email",
          "phoneNumber": "Numéro de téléphone",
          "phoneNumberUpdated": "Numéro de téléphone mis à jour avec succès",

          "enterValidPhoneNumber": "entrez un numero de téléphone valide", //
          "firstName": "Prénom",
          "lastName": "Nom de famille",
          "birthday": "Date de naissance",
          "birthplace": "Lieu de naissance",
          "confirm": "Confirmer", "cancel": "Annuler", "validate": "Valider",
          "refuse": "Refuser",

          "usernameValidator":
              "Le champ du nom d'utilisateur doit contenir au moins 3 caractères.",
          "fillYourUserName": "Veuillez remplir votre nom d'utilisateur",
          "usernameUpdated": "Nom d'utilisateur mis à jour avec succès",
          "usernameTaken": "Le nom d'utilisateur est déjà pris.",
          "ownUsername": "Vous n'avez pas changé votre informations",
          'weakPassword': "Le mot de passe fourni est trop faible.",
          "emailInUse": "Le compte existe déjà pour cet e-mail.",
          "emailNotFound": "Aucun utilisateur trouvé pour l'e-mail spécifié.",
          "wrongPassword": "Mauvais mot de passe.",
          "resetPasswordEmail": "Un code secret vient d'être envoyé à",
          "resendSecretCodeEmail": "Renvoyer le code secret",
          "changeEmail": "Changer l'e-mail",
          "invalidEmailOrPassword": "email ou mot de passe invalide",
          "somethingWentWrong": "quelque chose s'est mal passé",
          "Settings": "Paramètres",
          "Account": "Compte",
          "yourInformations": "Vos informations",
          "informations": "Informations",

          "changePassword": "Changer le mot de passe",
          "updatePhoneNumber": "Mettre à jour le numéro de téléphone",
          "PersonalInformation": "Informations personnelles",
          "oldPassword": "Ancien mot de passe",
          "newPassword": "Nouveau mot de passe",
          "pleaseWait": "Veuillez patienter",
          "Language": "Langue",
          "DarkMode": "Mode sombre",
          "signOut": "Se déconnecter",
          "aboutUs": "À propos de nous",
          "onlyAdmin": "Seuls les super-administrateurs",
          "openAppSettings": "Ouvrir les paramètres",
          "pleaseAllowPermissions": "Veuillez autoriser les autorisations",
          "areUSure": "Vous êtes sûr",

          //////////////////////////////////////
          "registration": "Inscription",
          "goBack": "Retourner",
          "field3c": "ce champ doit contenir au moins 3 caractères.",
          "enterBirthplace": "Veuillez entrer le lieu de naissance",
          "enterBirthday": "Veuillez saisir la date de naissance",
          "signUpSuccess": "Compte créé avec succès",
          "submit": "Soumettre",
          "imageTooBig": "Image trop grande",

          //CREATE NEW ROLE///////////////
          "createRole": "Créer un nouveau rôle",
          "createRole1":
              "Suivez les étapes suivantes pour créer un nouveau rôle",
          "createRole2": "Commencer",
          "createRole3": "Nom de rôle",
          "createRole4": "Veuillez entrer le nouveau nom de rôle",
          "createRole5": "Suivant",
          "createRole6": "Autorisations",
          "createRole7":
              "dans la liste suivante, autorisez les autorisations pour ce nouveau rôle",
          "createRole8": "Finir",
          "createRole9": "Nom de rôle",
          "enterRoleName": "Veuillez entrer un nom de rôle",
          "roleCreated": "Rôle créé avec succès",
          "roleNameTaken": "Ce nom de rôle existe déjà",
          "addPermissions": "Veuillez ajouter une autorisation",
          "permissionUsed":
              "Impossible de supprimer l'autorisation utilisée dans un rôle",
          "roleUsed":
              "Impossible de supprimer un rôle attribué à un utilisateur",

          //ROLE MANAGEMENT/////////////////
          "users": "Utilisateurs",
          "delete": "Supprimer",
          "edit": "Modifier",
          "newPermission1": "Veuillez entrer un nom",
          "newPermission2": "Nom de l'autorisation",
          "roleUpdated": "Rôle mis à jour avec succès",
          "roleDeleted": "Rôle supprimé avec succès",
          "permissionDeleted": "Autorisation deleted successfully",
          "permissionCreated": "Autorisation créée avec succès",
          "permissionNameTaken": "Ce nom a déjà été pris",

          ///usersManagement ////////
          "createAccount": "Créer un compte",
          "studentOrTeacher":
              "Veuillez choisir ci-dessous quel type d'utilisateur vous souhaitez créer",
          "student": "Étudiant",
          "teacher": "Professeur",
          "selectOne": "Veuillez sélectionner un type",

          "usersManagement": "Gestion des utilisateurs",
          "allUsers": "Tous les utilisateurs",
          "createNewUser": "Créer un nouvel utilisateur",
          "enable": "Activer",
          "disable": "Désactiver",
          "accountEnabled": "Compte activé avec succès",
          "accountDisabled": "Compte désactivé avec succès",
          "updatedSuccess": "Mis à jour avec succés",
          "searchByName": "Veuillez entrer un nom",
          "searchByEmail": "Veuillez entrer un email",
          "alreadyHaveThismember": "Cette personne est déjà ajoutée",

          "searching": "Recherche: ",
          "clear": "Effacer",
          "noResults": "Aucun résultat",
          "noRoles": "Aucun rôle",

          ///usersManagement ////////
          ///
          ///
          //projectManagement////

          "projectManagement": "Gestion des projets",
          "status": "Statut",
          "updateStatus": "Mettre à jour le statut",
          "statusUpdatedSuccess": "Statut mis à jour avec succès",

          "projectAdvanc": "Avancement du projet",
          "update": "Mise à jour",

          "viewMyProject": "Voir projet",
          "editMyProject": "Modifier projet",
          "tasks": "Tâches",
          "comments": "Commentaires",
          "remarks": "Remarques",
          "justNow": "Juste maintenant",
          "remarkDeleted": "Remarque supprimée avec succès",
          "commentDeleted": "Commentaire supprimée avec succès",

          "projectObserv": "Observations du projet",

          "withdraw": "Retirer",

          "periodsManagement": "Gestion des périodes",
          "period": "Période",
          "selectPeriod": "Sélectionnez une période",
          "startTime": "Date de début",
          "endTime": "Date de fin",
          "periodUpdated": "Période mise à jour avec succès",
          "periodConflics":
              "La nouvelle période est en conflit avec une période existante ",

          "enterADate": "Veuillez entrer une date",
          "startDateBeforeEndDate":
              "La date de début doit être avant à la date de fin",

          "validated": "Validé",
          "pending": "En attente",
          "refused": "Refusé",
          "recourse": "Eecours",
          "recourse_validated": "Validé après recours",
          "recourse_refused": "Refusé après recours",

          "viewRemarks": "Voir les remarques",
          "viewComments": "Voir les commentaires",
          "viewObservs": "Voir les observations",
          "viewTasks": "Voir les tâches",

          "viewReplies": "Voir les réponses",
          "cantChangeStatus": "Impossible de changer de statut",

          "addAReply": "Ajouter une réponse",

          "daysAgo": "il y a @daysAgo jour(s)",

          "enterARemark": "Veuillez entrer une remarque",
          "enterAComment": "Veuillez entrer un commentaire",
          "enterAobservation": "Veuillez entrer une observation",
          "enterATask": "Veuillez entrer une tâche",
          "deadline": "Date limite",
          "approvDate": "date d'approbation",
          "fileDownloadedTO": "FICHIER TÉLÉCHARGÉ VERS CHEMIN:",
          "nothingToDownload": "Il n'y a rien à télécharger",

          "viewSubmissions": "voir les soumissions",
          "requiredAttachs": "Pièces jointes requises",
          "atLeast1": "Il devrait en rester au moins un",

          "editYourProject": "Vous souhaitez modifier votre projet ?",
          "seeBelowRemarks":
              "Vous pouvez voir ci-dessous toutes les remarques données à votre projet",

          "domicileEstab": "Établissement de domicile",
          "selectDomicileEstab":
              "veuillez sélectionner un établissement de domicile",

          "projectType": "Type de projet",
          "selectProjectType": "veuillez sélectionner un type de projet",

          "infoInnovativeIdea": "Informations sur l'idée innovante",
          "trademarkName": "Nom de la marque",
          "enterTrademarkName": "Veuillez saisir le nom de la marque",

          "sciNameInnovProd": "Nom scientifique du produit innovant",
          "enterSciNameInnovProd":
              "Veuillez entrer un nom scientifique de produit innovant",
          "summary": "Résumé",
          "enterSummary": "Veuillez entrer un résumé de votre projet",
          "projectTeam": "L'équipe du projet",
          "add": "Ajouter",
          "managementTeam": "Équipe de direction",
          "supervisor": "Superviseur",
          "cosupervisor": "Co-superviseur",
          "visorIsntCovisor":
              "Une personne ne peut pas être superviseur et co-superviseur en même temps",
          "attachments": "Pièces jointes",
          "UCAddFiles":
              "Vous pouvez ajouter des fichiers à votre projet, les formats autorisés sont : .pdf, .docx",
          "editCanceled": "La modification est annulée",
          "projctAdded": "Projet ajouté avec succès",

          "projectsManagement": "Gestion de projets",
          "projectsTable": "Tableau des projets",
          "diplomaStartUp": "Un diplôme-Une startup",
          "diplomaPatent": "Un diplôme-Un Brevet",
          ///////////////
          ///
          "title": "Titre",
          "description": "Description",
          "fillFiled": "Veuillez remplir ce champ",
          "enterRessName": "Entrez le nom de la ressource",
          "taskAdded": "Tâche ajoutée avec succès",
          "taskDeleted": "Tâche supprimée avec succès",
          "taskValidated": "Tâche validée avec succès",
          "taskEdited": "Tâche modifiée avec succès",
          "noPermission": "Vous n'avez pas l'autorisation",
          "authorize": "Autoriser",
          "authorizeSucc": "Autorisé avec succès",

          "projectDeleted": "Projet supprimé avec succès",
          "createProject": "Créer un nouveau projet",
          "defensesTable": "Table des soutenances",
          "createNewDefense": "Créer une nouvelle soutenance",
          "createNewDefenseSucc": "Défense créée avec succès",

          "defensesManag": "Gestion des soutenances",
          "date": "Date",
          "time": "Heure",
          "room": "Salle",
          "otherPlace": "Autre endroit",
          "mode": "Mode",
          "nature": "Nature",
          "president": "Président",
          "examiners": "Examinateurs",
          "guest": "Invité",
          "viewDefence": "Voir la soutenance",
          "viewDelibration": "Voir la délibération",
          "reserves": "Réserves",
          "mark": "Marque",
          "mention": "Mention",
          "appreciation": "Appréciation",
          "examinersLength": "Il doit y avoir 2 ou 3 examinateurs",
        },
      };

  static Locale initLang() {
    if (MainFunctions.sharredPrefs!.getString("codeLang") == null) {
      // if (Get.deviceLocale! != Locale('en') &&
      //     Get.deviceLocale! != Locale('fr') &&
      //     Get.deviceLocale! != Locale('ar')) {
      //   return Locale('en');
      // } else {
      return Get.deviceLocale!;
      // }
    } else {
      return Locale(MainFunctions.sharredPrefs!.getString("codeLang")!);
    }
  }
}
