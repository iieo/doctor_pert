import 'package:animations/animations.dart';
import 'package:doctor_pert/models/doctor.dart';
import 'package:doctor_pert/models/dummy_data.dart';
import 'package:doctor_pert/screens/home_screen/components/osm_map.dart';
import 'package:doctor_pert/screens/search_screen/components/doctor_card.dart';
import 'package:doctor_pert/screens/search_screen/components/overview/overview.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:local_hero/local_hero.dart';

class SearchScreen extends StatefulWidget {
  final String searchQuery;
  final LatLng location;

  const SearchScreen(
      {super.key, required this.searchQuery, required this.location});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Doctor> doctors = List.generate(40, (index) => doctor1);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: AnimatedOverview(doctors: doctors)),
        const Expanded(
          flex: 3,
          child: OSMMap(),
        )
      ],
    );
  }
}

class AnimatedOverview extends StatefulWidget {
  final List<Doctor> doctors;

  const AnimatedOverview({
    super.key,
    required this.doctors,
  });

  @override
  State<AnimatedOverview> createState() => _AnimatedOverviewState();
}

class _AnimatedOverviewState extends State<AnimatedOverview>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 150), vsync: this);
    _scaleAnimation = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    _fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
  }

  void _toggleAnimation() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ListView.builder(
        itemCount: widget.doctors.length,
        itemBuilder: (context, index) {
          return DoctorCard(
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
              _toggleAnimation();
            },
            doctor: widget.doctors[index],
          );
        },
      ),
      AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.scale(
                scaleY: _scaleAnimation.value,
                child: Opacity(
                  opacity: _fadeAnimation.value,
                  child: child,
                ));
          },
          child: DoctorOverview(
            onPressed: _toggleAnimation,
            doctor: _selectedIndex < 0 ? null : widget.doctors[_selectedIndex],
          ))
    ]);
  }
}
