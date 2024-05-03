import 'package:flutter/material.dart';

class PostNewAdScreen extends StatefulWidget {
  const PostNewAdScreen({super.key});

  @override
  State<PostNewAdScreen> createState() => _PostNewAdScreenState();
}

class _PostNewAdScreenState extends State<PostNewAdScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _imageController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post New Advertisement"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                    hintText: "Ad Title", labelText: "Ad Title"),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Your Ad Title";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _categoryController,
                decoration: const InputDecoration(
                    hintText: "Ad Category", labelText: "Ad Category"),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Your Ad Category";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(
                    hintText: "Ad Price", labelText: "Ad Price"),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Your Asking Price";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                controller: _imageController,
                decoration: const InputDecoration(
                    hintText: "Ad Image", labelText: "Ad Image"),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return "Enter Your Ad Image";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {}
                    },
                    child: const Text("Add")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
