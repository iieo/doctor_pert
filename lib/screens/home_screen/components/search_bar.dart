import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchBar extends StatelessWidget {
  SearchBar({super.key});

  final TextEditingController _searchController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  void _navigateToSearch(BuildContext context) {
    String searchQuery = _searchController.text;
    String location = "0,0";
    GoRouter.of(context).go(
      "/search?searchQuery=$searchQuery&location=$location",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //add shadow
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: t(PhraseKey.searchDoctor),
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.black,
              thickness: 1,
              width: 1,
            ),
            Expanded(
                child: TextField(
              controller: _locationController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: t(PhraseKey.searchZip),
                prefixIcon: const Icon(Icons.location_pin),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.zero,
                ),
              ),
            )),
            ElevatedButton.icon(
                onPressed: () => _navigateToSearch(context),
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      t(PhraseKey.search),
                      style: Theme.of(context).textTheme.labelMedium,
                    )))
          ],
        ));
  }
}
