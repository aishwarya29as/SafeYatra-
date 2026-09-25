import 'package:flutter/material.dart';


import 'safety_map_screen.dart';
import 'check_safety_screen.dart';



void main() {
  runApp(const SafeYatraApp());
}

class SafeYatraApp extends StatelessWidget {
  const SafeYatraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SafeYatra",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

//////////////////////////////////////////////////////////
// LOGIN SCREEN
//////////////////////////////////////////////////////////

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SafeYatra Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [

              const SizedBox(height: 20),

              const Icon(
                Icons.shield,
                size: 100,
                color: Colors.blue,
              ),

              const SizedBox(height: 20),

              const Text(
                "Welcome to SafeYatra",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "Travel Smart • Stay Safe",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 35),

              const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                  labelText: "Email",
                ),
              ),

              const SizedBox(height: 20),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                    );

                  },
                ),
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignupScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Create New Account",
                  style: TextStyle(fontSize: 16),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////
// SIGNUP SCREEN
//////////////////////////////////////////////////////////

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(

          child: Column(

            children: [

              const SizedBox(height: 20),

              const Icon(
                Icons.person_add,
                size: 90,
                color: Colors.blue,
              ),

              const SizedBox(height: 20),

              const Text(
                "Create SafeYatra Account",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 18),

              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),

              const SizedBox(height: 18),

              const TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 18),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  child: const Text(
                    "Create Account",
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Account Created Successfully!",
                        ),
                      ),
                    );

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                    );

                  },
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Already have an account? Login",
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
// ======================================================
// HOME SCREEN
// ======================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SafeYatra"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 15),

            const Icon(
              Icons.shield,
              size: 90,
              color: Colors.blue,
            ),

            const SizedBox(height: 15),

            const Text(
              "Welcome to SafeYatra",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Your Personal Safety Companion",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 35),

//-------------------------------------------------------
// SOS BUTTON
//-------------------------------------------------------


SizedBox(
  height: 60,
  child: ElevatedButton.icon(
    icon: const Icon(Icons.warning, size: 30),
    label: const Text(
      "SOS",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      foregroundColor: Colors.white,
    ),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "🚨 SOS Activated!\nEmergency SMS has been sent successfully.",
          ),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 3),
        ),
      );
    },
  ),
),

//-------------------------------------------------------
// TRANSLATOR
//-------------------------------------------------------

            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.translate, size: 30),
                label: const Text(
                  "Translator",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const TranslatorScreen(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

//-------------------------------------------------------
// EMERGENCY CONTACTS
//-------------------------------------------------------

            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.contact_phone, size: 30),
                label: const Text(
                  "Emergency Contacts",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const EmergencyContactsScreen(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

//-------------------------------------------------------
// SAFETY MAP
//-------------------------------------------------------

            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.map, size: 30),
                label: const Text(
                  "Safety Map",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SafetyMapScreen(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

//-------------------------------------------------------
// CHECK MY SAFETY
//-------------------------------------------------------

            SizedBox(
              height: 60,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.security, size: 30),
                label: const Text(
                  "Check My Safety",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CheckSafetyScreen(),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 40),

            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    Icon(
                      Icons.travel_explore,
                      color: Colors.blue,
                      size: 45,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Travel Tips",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "• Share your location with family.\n\n"
                      "• Avoid isolated places at night.\n\n"
                      "• Keep emergency contacts ready.\n\n"
                      "• Trust your instincts.\n\n"
                      "• Use SafeYatra whenever you travel.",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Stay Safe • Travel Smart",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
// ======================================================
// SOS SCREEN
// ======================================================

class SOSScreen extends StatelessWidget {
  const SOSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency SOS"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(90),
          ),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  "🚨 SOS Activated!\nEmergency SMS has been sent successfully.",
                ),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 3),
              ),
            );
          },
          child: const Text(
            "SOS",
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
// =====================================================
// TRANSLATOR SCREEN
// =====================================================

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({super.key});

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {

  final TextEditingController controller = TextEditingController();

  String selectedLanguage = "Kannada";

  String translatedText = "";

  final Map<String, Map<String, String>> translations = {

    "I need help": {
      "Hindi": "मुझे मदद चाहिए",
      "Kannada": "ನನಗೆ ಸಹಾಯ ಬೇಕು",
      "Telugu": "నాకు సహాయం కావాలి",
      "Tamil": "எனக்கு உதவி வேண்டும்",
      "Malayalam": "എനിക്ക് സഹായം വേണം",
    },

    "Please call the police": {
      "Hindi": "कृपया पुलिस को बुलाइए",
      "Kannada": "ದಯವಿಟ್ಟು ಪೊಲೀಸರಿಗೆ ಕರೆ ಮಾಡಿ",
      "Telugu": "దయచేసి పోలీసులను పిలవండి",
      "Tamil": "காவல்துறையை அழைக்கவும்",
      "Malayalam": "ദയവായി പോലീസിനെ വിളിക്കൂ",
    },

    "Where is the nearest hospital?" : {
      "Hindi": "सबसे नज़दीकी अस्पताल कहाँ है?",
      "Kannada": "ಹತ್ತಿರದ ಆಸ್ಪತ್ರೆ ಎಲ್ಲಿದೆ?",
      "Telugu": "సమీప ఆసుపత్రి ఎక్కడ ఉంది?",
      "Tamil": "அருகிலுள்ள மருத்துவமனை எங்கே?",
      "Malayalam": "ഏറ്റവും അടുത്ത ആശുപത്രി എവിടെയാണ്?",
    },

    "I am lost": {
      "Hindi": "मैं रास्ता भूल गया हूँ",
      "Kannada": "ನಾನು ದಾರಿ ತಪ್ಪಿದ್ದೇನೆ",
      "Telugu": "నేను దారి తప్పాను",
      "Tamil": "நான் வழி தவறிவிட்டேன்",
      "Malayalam": "ഞാൻ വഴി തെറ്റി",
    },

    "Thank you": {
      "Hindi": "धन्यवाद",
      "Kannada": "ಧನ್ಯವಾದಗಳು",
      "Telugu": "ధన్యవాదాలు",
      "Tamil": "நன்றி",
      "Malayalam": "നന്ദി",
    },
  };

  void translate() {

    String input = controller.text.trim();

    if (translations.containsKey(input)) {

      setState(() {

        translatedText =
            translations[input]![selectedLanguage]!;

      });

    } else {

      setState(() {

        translatedText =
            "Translation not available.\n\n"
            "Try these:\n\n"
            "• I need help\n"
            "• Please call the police\n"
            "• Where is the nearest hospital?\n"
            "• I am lost\n"
            "• Thank you";

      });

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Translator"),
        centerTitle: true,
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          children: [

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter English Sentence",
                hintText: "Example : I need help",
              ),
            ),

            const SizedBox(height:20),

            DropdownButtonFormField<String>(

              value: selectedLanguage,

              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),

              items: const [

                DropdownMenuItem(
                  value: "Hindi",
                  child: Text("Hindi"),
                ),

                DropdownMenuItem(
                  value: "Kannada",
                  child: Text("Kannada"),
                ),

                DropdownMenuItem(
                  value: "Telugu",
                  child: Text("Telugu"),
                ),

                DropdownMenuItem(
                  value: "Tamil",
                  child: Text("Tamil"),
                ),

                DropdownMenuItem(
                  value: "Malayalam",
                  child: Text("Malayalam"),
                ),

              ],

              onChanged: (value){

                setState(() {

                  selectedLanguage=value!;

                });

              },

            ),

            const SizedBox(height:20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: translate,
                child: const Text("Translate"),
              ),
            ),

            const SizedBox(height:30),

            Container(

              width: double.infinity,

              padding: const EdgeInsets.all(15),

              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),

              child: Text(
                translatedText,
                style: const TextStyle(fontSize:18),
              ),

            ),

          ],
        ),
      ),
    );
  }
}

// =====================================================
// EMERGENCY CONTACTS SCREEN
// =====================================================

class EmergencyContactsScreen extends StatelessWidget {

  const EmergencyContactsScreen({super.key});

  Widget buildCard(
      IconData icon,
      Color color,
      String title,
      String number) {

    return Card(

      elevation:4,

      child: ListTile(

        leading: Icon(
          icon,
          color: color,
          size:35,
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text("Dial : $number"),

      ),

    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Emergency Contacts"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Police Emergency",
              style: TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height:15),

            buildCard(
              Icons.local_police,
              Colors.blue,
              "Police Control Room",
              "100",
            ),

            buildCard(
              Icons.phone,
              Colors.green,
              "National Emergency",
              "112",
            ),

            const SizedBox(height:25),

            const Text(
              "Hospital Emergency",
              style: TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),

            const SizedBox(height:15),

            buildCard(
              Icons.local_hospital,
              Colors.red,
              "Ambulance",
              "108",
            ),

            buildCard(
              Icons.medical_services,
              Colors.red,
              "Medical Emergency",
              "102",
            ),

            const SizedBox(height:25),

            const Text(
              "Other Important Numbers",
              style: TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height:15),

            buildCard(
              Icons.fire_truck,
              Colors.orange,
              "Fire Service",
              "101",
            ),

            buildCard(
              Icons.security,
              Colors.purple,
              "Disaster Management",
              "1078",
            ),

            buildCard(
              Icons.woman,
              Colors.pink,
              "Women Helpline",
              "1091",
            ),

            buildCard(
              Icons.child_care,
              Colors.teal,
              "Child Helpline",
              "1098",
            ),

          ],
        ),
      ),
    );
  }
}
// =====================================================
// CHECK SAFETY SCREEN
// =====================================================

class CheckSafetyScreen extends StatefulWidget {
  const CheckSafetyScreen({super.key});

  @override
  State<CheckSafetyScreen> createState() => _CheckSafetyScreenState();
}

class _CheckSafetyScreenState extends State<CheckSafetyScreen> {

  bool locationShared = false;
  bool emergencyContactsReady = false;
  bool travellingInDaylight = false;
  bool internetAvailable = false;
  bool powerBankCharged = false;

  int safetyScore = 0;

  void calculateSafety() {

    int score = 0;

    if (locationShared) score += 20;
    if (emergencyContactsReady) score += 20;
    if (travellingInDaylight) score += 20;
    if (internetAvailable) score += 20;
    if (powerBankCharged) score += 20;

    setState(() {
      safetyScore = score;
    });

    String message;

    if (score >= 80) {
      message = "You are in a SAFE condition for travel.";
    } else if (score >= 60) {
      message = "You are MODERATELY safe. Be careful.";
    } else {
      message = "You may be at RISK. Please improve safety measures.";
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  Color getScoreColor() {
    if (safetyScore >= 80) return Colors.green;
    if (safetyScore >= 60) return Colors.orange;
    return Colors.red;
  }

  String getSafetyStatus() {
    if (safetyScore >= 80) return "SAFE";
    if (safetyScore >= 60) return "MODERATE";
    return "RISKY";
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Check My Safety"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Before travelling, check the following:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            CheckboxListTile(
              title: const Text("I have shared my live location"),
              value: locationShared,
              onChanged: (value) {
                setState(() {
                  locationShared = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Emergency contacts are saved"),
              value: emergencyContactsReady,
              onChanged: (value) {
                setState(() {
                  emergencyContactsReady = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("I am travelling during daylight"),
              value: travellingInDaylight,
              onChanged: (value) {
                setState(() {
                  travellingInDaylight = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Internet connection is available"),
              value: internetAvailable,
              onChanged: (value) {
                setState(() {
                  internetAvailable = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("My phone / power bank is charged"),
              value: powerBankCharged,
              onChanged: (value) {
                setState(() {
                  powerBankCharged = value!;
                });
              },
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: calculateSafety,
                child: const Text(
                  "Check Safety Score",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  children: [

                    Text(
                      "Safety Score",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: getScoreColor(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "$safetyScore / 100",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: getScoreColor(),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      getSafetyStatus(),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: getScoreColor(),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Quick Safety Tips",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Text("• Keep your phone charged."),
                    SizedBox(height: 8),

                    Text("• Avoid sharing personal details with strangers."),
                    SizedBox(height: 8),

                    Text("• Use verified transport services."),
                    SizedBox(height: 8),

                    Text("• Keep emergency cash available."),
                    SizedBox(height: 8),

                    Text("• Inform family before long journeys."),
                    SizedBox(height: 8),

                    Text("• Trust your instincts and avoid unsafe areas."),

                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Center(
              child: Text(
                "SafeYatra • Your Safety Matters",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}