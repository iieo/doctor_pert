import 'dart:html';

import 'package:doctor_pert/models/medical_practice.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/overview_header.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/tabs/about_overview_tab.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/tabs/contact_overview_tab.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/tabs/ratings_overview_tab.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorOverview extends StatelessWidget {
  final MedicalPractice? doctor;
  final Function() onPressed;
  const DoctorOverview(
      {super.key, required this.doctor, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    if (this.doctor == null) {
      return const SizedBox.shrink();
    }

    MedicalPractice doctor = this.doctor!;

    SliverAppBar getSliverAppBar() {
      return SliverAppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onPressed,
        ),
        expandedHeight: 420,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: OverviewHeader(
            doctor: doctor,
          ),
        ),
        floating: true,
        snap: false,
        bottom: TabBar(
          tabs: [
            Tab(
              icon: const Icon(Icons.info),
              text: t(PhraseKey.about),
            ),
            Tab(
              icon: const Icon(Icons.star),
              text: t(PhraseKey.ratings),
            ),
            Tab(
              icon: const Icon(Icons.phone),
              text: t(PhraseKey.contact),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              getSliverAppBar(),
            ];
          },
          body: TabBarView(
            children: [
              AboutOverviewTab(doctor: doctor),
              RatingsOverviewTab(doctor: doctor),
              ContactOverviewTab(doctor: doctor)
            ],
          ),
        ),
      ),
    );
  }
}
