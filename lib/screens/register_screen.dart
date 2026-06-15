import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  const Text('Rejoindre', style: TextStyle(fontSize: 28, fontWeight:
              FontWeight.bold)),
              const Text('SmartQuiz DB', style: TextStyle(fontSize: 28, fontWeight:
              FontWeight.bold, color: Colors.blue)),
              const SizedBox(height: 8),
              const Text('Crée ton compte gratuitement et commence à progresser.',
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),

              const Text('PRÉNOM', style: TextStyle(fontSize: 12, fontWeight:
              FontWeight.bold)),
              const SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: 'Ton prénom',
                  prefixIcon: const Icon(Icons.person_outline), border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
              const SizedBox(height: 20),

              const Text('NOM', style: TextStyle(fontSize: 12, fontWeight:
              FontWeight.bold)),
              const SizedBox(height: 8),
              TextFormField(decoration: InputDecoration(hintText: 'Ton nom de famille', prefixIcon: const Icon(Icons.person_outline), border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
      const SizedBox(height: 20),

      const Text('ADRESSE EMAIL', style: TextStyle(fontSize: 12, fontWeight:
      FontWeight.bold)),
      const SizedBox(height: 8),
      TextFormField(decoration: InputDecoration(hintText:
      'exemple@email.com', prefixIcon: const Icon(Icons.email_outlined), border:
      OutlineInputBorder(borderRadius: BorderRadius.circular(12)))),
      const SizedBox(height: 20),

      const Text('CRÉER UN MOT DE PASSE', style: TextStyle(fontSize: 12,
          fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      TextFormField(obscureText: true, decoration: InputDecoration(hintText: '8 caractères minimum', prefixIcon: const Icon(Icons.lock_outline), suffixIcon:
      const Icon(Icons.visibility_outlined), border: OutlineInputBorder(borderRadius:
      BorderRadius.circular(12)))),
      const SizedBox(height: 8),
      const Text('Force du mot de passe: Moyen', style: TextStyle(color:
      Colors.orange, fontSize: 12)),
      const SizedBox(height: 20),

      Row(children: [Checkbox(value: true, onChanged: (val) {}),
      const Expanded(child: Text("J'accepte les Conditions d'utilisation et la Politique de confidentialité", style: TextStyle(fontSize: 12))),
        ],
      ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, padding:
          const EdgeInsets.symmetric(vertical: 16), shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          child: const Text("S'INSCRIRE", style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold)),
        ),
        ],
      ),
    ),
    ),
    );
  }
}

class Politique {
}