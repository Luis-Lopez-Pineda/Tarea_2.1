import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person,
                      size: 40,
                     
                    ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Coffeestories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'lf.pineda@unah.hn',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Edit profile',
                style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                )),
              ),
              const SizedBox(height: 24),

                const Align(
                  alignment: Alignment.centerLeft, // Alinea solo este texto a la izquierda
                  child: Text(
                    'Inventories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8), // Espacio entre el texto y el card

              // Card for "My stores"
                Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SectionTile(
                      title: 'My stores',
                      leadingIcon: Icons.store,
                       trailing: Row(
                        mainAxisSize: MainAxisSize.min, // Para que ocupe solo el espacio necesario
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 180), // Espacio entre el círculo y la flechita
                          const Icon(Icons.arrow_forward, size: 25),
                        ],
                      ),
                      onTap: () {},
                    ),
                    const Divider(), // Divider entre "My stores" y "Support"
                    SectionTile(
                      title: 'Support',
                      leadingIcon: Icons.support,
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              const Align(
                  alignment: Alignment.centerLeft, // Alinea solo este texto a la izquierda
                  child: Text(
                    'Preferences',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8), // Espacio entre el texto y el card
              
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SectionTile(
                      title: 'Push notifications',
                      trailing: Switch(value: true, onChanged: (value) {}),
                      leadingIcon: Icons.notifications,
                    ),
                    const Divider(), // Divider between items
                    SectionTile(
                      title: 'Face ID',
                      trailing: Switch(value: true, onChanged: (value) {}),
                      leadingIcon: Icons.crop_free,
                    ),
                    const Divider(),
                    SectionTile(
                      title: 'PIN Code',
                      onTap: () {},
                      leadingIcon: Icons.lock,
                    ),
                    const Divider(),
                    SectionTile(
                      title: 'Logout',
                      titleColor: Colors.red,
                      onTap: () {},
                      leadingIcon: Icons.logout,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTile extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final Color? titleColor;
  final VoidCallback? onTap;
  final IconData? leadingIcon;

  const SectionTile({super.key, 
    required this.title,
    this.trailing,
    this.titleColor = Colors.black,
    this.onTap,
    this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      leading: leadingIcon != null ? Icon(leadingIcon, color: titleColor) : null,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: titleColor,
        ),
      ),
      trailing: trailing ?? const Icon(Icons.arrow_forward, size: 25),
      onTap: onTap,
    );
  }
}