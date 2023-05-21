import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/about_overview_tab.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/contact_overview_tab.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/ratings_overview_tab.dart';
import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class DoctorOverviewBody extends StatefulWidget {
  final Doctor doctor;
  const DoctorOverviewBody({super.key, required this.doctor});

  @override
  State<DoctorOverviewBody> createState() => DoctorOverviewBodyState();
}

class DoctorOverviewBodyState extends State<DoctorOverviewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: 3,
          child: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                  child: Text(t("about"),
                      style: Theme.of(context).textTheme.labelMedium)),
              Tab(
                  child: Text(t("ratings"),
                      style: Theme.of(context).textTheme.labelMedium)),
              Tab(
                  child: Text(t("contact"),
                      style: Theme.of(context).textTheme.labelMedium)),
            ],
          ),
        ),
        const Divider(
          height: 0,
        ),
        TabBarView(
            controller: _tabController,
            physics: ScrollPhysics(),
            children: [
              AboutOverviewTab(doctor: widget.doctor),
              RatingsOverviewTab(doctor: widget.doctor),
              ContactOverviewTab(doctor: widget.doctor)
            ])
      ],
    );
    /*return Column(
      children: [
        DefaultTabController(
          length: 3,
          child: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                  child: Text(t("about"),
                      style: Theme.of(context).textTheme.labelMedium)),
              Tab(
                  child: Text(t("ratings"),
                      style: Theme.of(context).textTheme.labelMedium)),
              Tab(
                  child: Text(t("contact"),
                      style: Theme.of(context).textTheme.labelMedium)),
            ],
          ),
        ),
        const Divider(
          height: 0,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: TabBarView(
                controller: _tabController,
                physics: ScrollPhysics(),
                children: [
                  AboutOverviewTab(doctor: widget.doctor),
                  RatingsOverviewTab(doctor: widget.doctor),
                  ContactOverviewTab(doctor: widget.doctor)
                ]))
      ],
    );*/
  }
}
