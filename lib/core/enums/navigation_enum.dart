
// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum NavigationTab {
  OVERVIEW('Overview', path: '/overview', icon: Icons.trending_up),
  DRIVERS('Drivers', path: '/drivers', icon: Icons.drive_eta),
  CLIENTS('Clients', path: '/clients', icon: Icons.people_alt_outlined),
  AUTH('Log Out', path: '/authentication', icon: Icons.exit_to_app);

  const NavigationTab(this.name, {required this.path, required this.icon});
  final String name;
  final String path;
  final IconData icon;
}
