import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:rest_api_ui/post_new_ad_screen.dart';

enum PopUpMenuType { edit, delete }

class AdListScreen extends StatefulWidget {
  const AdListScreen({super.key});

  @override
  State<AdListScreen> createState() => _AdListScreenState();
}

class _AdListScreenState extends State<AdListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Advertisement List"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                    "https://images.unsplash.com/photo-1489824904134-891ab64532f1"),
              ),
              title: const Text("Ad Title"),
              subtitle: const Wrap(
                spacing: 16,
                children: [
                  Text("Asking Price"),
                  Text("Ad Category"),
                  Text("Featured or Not")
                ],
              ),
              trailing: PopupMenuButton<PopUpMenuType>(
                onSelected: (type) {},
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: PopUpMenuType.edit,
                    child: Row(
                      children: [
                        Icon(IconlyLight.edit),
                        SizedBox(width: 8),
                        Text("Edit"),
                      ],
                    ),
                  ),
                  const PopupMenuItem(
                    value: PopUpMenuType.delete,
                    child: Row(
                      children: [
                        Icon(IconlyLight.delete),
                        SizedBox(width: 8),
                        Text("Delete"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PostNewAdScreen()),
            );
          },
          icon: const Icon(IconlyLight.plus),
          label: const Text("Post Ad")),
    );
  }
}
