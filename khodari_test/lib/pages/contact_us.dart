import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:khodari_test/signin/signin.dart';
import 'package:khodari_test/utils/constants.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> with TickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  bool _isEmailValid = true;
  bool _isSubmitting = false;

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    isShow = true;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const FirebaseAuthForm()));
              },
              child: const Text("SignIn to see messages"))
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            ListTile(
              leading: const Icon(Icons.phone),
              title: Text(isEnglish ? "Mobile Number" : "رقم الهاتف"),
            ),
            ListTile(
              leading: const Icon(Icons.mobile_screen_share),
              title: Text(isEnglish ? "Contact Number" : "الهاتف الأرضي"),
            ),
            ListTile(
              leading: const Icon(Icons.fax),
              title: Text(isEnglish ? "Fax" : "فاكس"),
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: Text(isEnglish ? "Email" : "البريد الالكتروني"),
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(
                  isEnglish ? "Amman-Moqabalen" : "الموقع :عمان المقابلين"),
            ),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: isEnglish ? 'Email Address' : "البريد الالكتروني",
                hintText: 'your_email@example.com',
                errorText: _isEmailValid
                    ? null
                    : 'Please enter a valid email address.',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email address.';
                }

                // Improved email validation with more robust regex:
                if (!RegExp(r"^[a-zA-Z0-9.+-]+@[a-zA-Z0-9-]+.[a-zA-Z]+$")
                    .hasMatch(value)) {
                  _isEmailValid = false;
                  return isEnglish
                      ? 'Please enter a valid email address.'
                      : 'الرجاء ادخال بريد الكتروني صحيح';
                }

                _isEmailValid = true;
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              controller: _messageController,
              minLines: 4,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: isEnglish ? 'Message' : "رسالتك",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return isEnglish
                      ? 'Please enter your message.'
                      : 'الرجاء ادخال رسالتك ';
                }
                return null;
              },
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _isSubmitting ? null : () => _submitFeedback(),
              child: _isSubmitting
                  ? const Center(child: CircularProgressIndicator())
                  : Text(isEnglish ? 'Submit Feedback' : "ارسال الرسالة"),
            ),
          ],
        ),
      ),
    );
  }

  void _submitFeedback() async {
    if (!_formKey.currentState!.validate()) {
      return; // Don't submit if form is invalid
    }

    setState(() {
      _isSubmitting = true;
    });
    FirebaseFirestore.instance.collection("messages").doc().set(
        {"email": _emailController.text, "message": _messageController.text});

    _formKey.currentState!.reset();

    setState(() {
      _isSubmitting = false;
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Feedback Submitted'),
          content: const Text('Thank you for your feedback!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    });
  }
}
