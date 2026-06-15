import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.person,
                color: Colors.white)),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Bonjour', style: TextStyle(fontSize: 12, color: Colors.grey)),
                Text('Amina', style: TextStyle(fontSize: 16, fontWeight:
                FontWeight.bold, color: Colors.black)),
              ],
            )
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(color: Colors.amber.shade100, borderRadius:
            BorderRadius.circular(20)),
            child: Row(
              children: const [
                Icon(Icons.bolt, color: Colors.amber, size: 18),
                Text('41 250 XP', style: TextStyle(color: Colors.amber, fontWeight:
                FontWeight.bold)),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Bannière IA
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.blue, borderRadius:
              BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Propulsé par l\'IA', style: TextStyle(color: Colors.white70,
                      fontSize: 12)),
                  const SizedBox(height: 8),
                  const Text('Prêt à tester vos connaissances ?', style: TextStyle(color:
                  Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                    child: const Text('GÉNÉRER SMARTQUIZ', style: TextStyle(color:
                    Colors.white)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Statistiques rapides
            Row(
              children: [
                _buildStatCard('7', 'Jours consécutifs', Icons.local_fire_department,
                    Colors.orange),
                _buildStatCard('84%', 'Taux de réussite', Icons.check_circle_outline,
                    Colors.green),
                _buildStatCard('3h 20m', 'Temps total', Icons.access_time, Colors.blue),
              ],
            ),
            const SizedBox(height: 24),

            const Text('ACTIVITÉ RÉCENTE', style: TextStyle(fontWeight:
            FontWeight.bold, color: Colors.grey)),
            const SizedBox(height: 12),
            _buildActivityItem('Introduction au Marketing', 'Économie • Aujourd\'hui',
                '8/10', Colors.green),
            _buildActivityItem('Réseaux Informatiques', 'Informatique • Hier', '6/10',
                Colors.orange),
            _buildActivityItem('Gestion de Projet', 'Management • Il y a 3 jours', '9/10',
                Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(value, title, icon, color) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Icon(icon, color: color),
              const SizedBox(height: 8),
              Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize:
              16)),
              Text(title, textAlign: TextAlign.center, style: const TextStyle(fontSize: 10,
                  color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActivityItem(title, subtitle, score, color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(score, style: TextStyle(fontWeight: FontWeight.bold, color: color,
                fontSize: 16)),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}