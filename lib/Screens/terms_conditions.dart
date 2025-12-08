import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme   = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        title: Text(
          "Terms & Conditions",
          style: textTheme.titleLarge?.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: colorScheme.primary, // كان: Color(0xFF7F167F)
        ),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        thickness: 10,
        interactive: true,
        radius: const Radius.circular(10),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: DefaultTextStyle(
              style: textTheme.bodyMedium!.copyWith(
                color: colorScheme.onBackground,
                height: 1.4,
              ),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: """2D Floor Plan Generator App (Hues) 
Last Updated: 12-9-2025

""",
                      style: const TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """Welcome to the 2D Floor Plan Generator.
By accessing or using this App, you agree to the following Terms and Conditions.
If you do not agree, you may not use the App.
                        
""",
                    ),
                    const TextSpan(
                      text: "1. Overview",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

The App allows users to generate AI-powered 2D floor plans from text prompts, browse design ideas, save projects, and download generated results.
These Terms govern your use of the App and all related services.

""",
                    ),
                    const TextSpan(
                      text: "2. Eligibility",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

You must be:
At least 13 years old, and
Legally capable of agreeing to these Terms.
If you are using the App on behalf of a company, you confirm that you have the authority to do so.

""",
                    ),
                    const TextSpan(
                      text: "3. User Responsibilities",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

By using the App, you agree to:
Provide accurate information when creating an account.
Use the App ethically and legally.
Not misuse any AI-generated content.
Not attempt to reverse-engineer, hack, or disrupt the App.

""",
                    ),
                    const TextSpan(
                      text: "4. AI-Generated Content",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

The App uses AI to generate images and descriptions.
You understand and agree that:
AI-generated results may not always be accurate.
Designs are for conceptual use only, not for final construction or engineering approval.
You are fully responsible for how you use or interpret generated floor plans.
The App does not guarantee the technical correctness, safety, or real-world feasibility of any generated design.

""",
                    ),
                    const TextSpan(
                      text: "5. Ownership of Content",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

User Content
You retain ownership of:
Prompts you enter
Projects you save
Any personal notes or data you upload

AI-Generated Content
You may use, save, download, or share the generated floor plans for personal or professional use.
However, the App’s developers retain the right to:
Use anonymized generated content to improve the AI model
Store and analyze prompts for quality enhancement
No personally identifiable information will be shared.

""",
                    ),
                    const TextSpan(
                      text: "6. Restrictions",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

You may NOT use the App to generate content that is:
Illegal
Harmful, abusive, or discriminatory
Copyright-infringing
Related to unsafe building plans meant for real-world construction
The App is for conceptual visualizations only.

""",
                    ),
                    const TextSpan(
                      text: "7. Account & Data Security",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

You are responsible for:
Maintaining the confidentiality of your login information
All activity that occurs under your account
The App is not liable for any loss caused by unauthorized account access.

""",
                    ),
                    const TextSpan(
                      text: "8. Third-Party Services",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

The App may use third-party tools such as:
Firebase or Supabase (authentication, storage)
AI APIs for content generation
These services have their own Terms & Policies.
By using the App, you also agree to those policies.

""",
                    ),
                    const TextSpan(
                      text: "9. App Availability & Updates",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """   

We may update, improve, or modify the App at any time.
We do not guarantee uninterrupted service or error-free functionality.
Some features may be added, removed, or changed without notice.
 
""",
                    ),
                    const TextSpan(
                      text: "10. Limitation of Liability",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

The developers are not responsible for:
Inaccurate or misleading AI-generated designs
Data loss due to user error or device issues
Damages resulting from reliance on AI-generated content
Any indirect, incidental, or consequential damages
The App is provided “as is” without warranties.

""",
                    ),
                    const TextSpan(
                      text: "11. Termination",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

We may suspend or terminate access to the App if:
You violate these Terms
You misuse AI-generated content
You engage in harmful or fraudulent activity
You may delete your account at any time.

""",
                    ),
                    const TextSpan(
                      text: "12. Privacy",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

Your privacy is important.
Data collected is used only for:
App functionality
Improving AI accuracy
Account management and storage
No personal data is shared with third parties without your consent.
A full Privacy Policy can be provided upon request.

""",
                    ),
                    const TextSpan(
                      text: "13. Governing Law",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

These Terms are governed by the laws of Egypt.
Any disputes will be resolved under these laws.

""",
                    ),
                    const TextSpan(
                      text: "14. Contact Information",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(
                      text: """

For questions or support:
Email: Lameeszahed17@gmail.com

""",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
