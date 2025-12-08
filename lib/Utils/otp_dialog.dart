import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Future<void> showOtpEmailDialog(
    BuildContext context, {
      required String appName,
      required String email,
      required String code,
      DateTime? expiresAt,
    }) async {
  await showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "OTP",
    transitionDuration: const Duration(milliseconds: 250),
    pageBuilder: (context, anim1, anim2) {
      return const SizedBox.shrink();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      String expiryText;
      if (expiresAt != null) {
        final formatted = DateFormat('hh:mm').format(expiresAt);
        expiryText = "Expires at $formatted";
      } else {
        expiryText = "Valid for 5 minutes";
      }

      // لو حابة تقفليها أوتوماتيك بعد 4 ثواني (اختياري)
      Future.delayed(const Duration(seconds: 4), () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      });

      return Align(
        alignment: Alignment.topCenter,
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, -1),
            end: const Offset(0, 0),
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeOut),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFF7F167F),
                      child: Icon(
                        Icons.email_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // السطر الأول: اسم الأبلكيشن والإيميل
                          Text(
                            appName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            email,
                            style: const TextStyle(
                              fontSize: 11,
                              color: Colors.black45,
                            ),
                          ),
                          // السطر الثاني: label صغيرة + الكود الكبير
                          Row(
                            children: [
                              const Text(
                                "Verification code:",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                code,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 4,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 4),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
