import 'package:flutter/material.dart';

final ColorScheme HueColorScheme = ColorScheme(
  brightness: Brightness.light,

  // ⭐ Primary – Neon Purple matching lines in background
  primary: const Color(0xFF7F2BFF),
  onPrimary: Colors.white,
  primaryContainer: const Color(0xFFEADDFF),
  onPrimaryContainer: const Color(0xFF24005A),

  // ⭐ Secondary – Glow Pink (اللون اللي شبه الخطوط الرفيعة)
  secondary: const Color(0xFFFF5CF4),
  onSecondary: const Color(0xFF320017),
  secondaryContainer: const Color(0xFFFFD6FA),
  onSecondaryContainer: const Color(0xFF400020),

  // ⭐ Tertiary – Soft Tech Blue (للchips والkeywords)
  tertiary: const Color(0xFF7BAEFF),
  onTertiary: Colors.white,
  tertiaryContainer: const Color(0xFFE0EDFF),
  onTertiaryContainer: const Color(0xFF00254A),

  // ⭐ Error
  error: const Color(0xFFFF4C4C),
  onError: Colors.white,

  // ⭐ Background / Surface (فاتح يناسب شاشات الأبلكيشن العادية)
  background: const Color(0xFFF6F3FF),
  onBackground: const Color(0xFF130B2E),

  surface: Colors.white,
  onSurface: const Color(0xFF130B2E),

  // ⭐ Outline / Shadow
  outline: const Color(0xFFC2B5FF),
  shadow: const Color(0xFF14092B),
);
