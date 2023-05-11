import 'package:doctor_pert/translation.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(t("appName"), style: Theme.of(context).textTheme.titleLarge),
      const SizedBox(height: 20),
      Text(t("appSlogan"), style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 35),
      Container(
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
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: t("searchDoctor"),
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
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: t("searchZip"),
                  prefixIcon: const Icon(Icons.location_pin),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              )),
              ElevatedButton.icon(
                  onPressed: () {},
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
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      child: Text(
                        t("search"),
                        style: Theme.of(context).textTheme.labelMedium,
                      )))
            ],
          ))
    ]);
    /*
    return Container(
        padding: const EdgeInsets.symmetric(
            vertical: Spacing.spacingStandardPadding),
        decoration: const BoxDecoration(
          color: MyColors.primary,
        ),
        child: Container(
            margin: const EdgeInsets.only(
              left: Spacing.spacingStandardMargin,
              right: Spacing.spacingStandardMargin,
            ),
            child: Row(children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MyColors.whitePureColor,
                    hintText: t("searchDoctor"),
                    prefixIcon: const Icon(Icons.search),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        bottomLeft:
                            Radius.circular(Spacing.borderRadiusStandard),
                        topLeft: Radius.circular(Spacing.borderRadiusStandard),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  key: _globalKey,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: MyColors.whitePureColor,
                    hintText: t("searchZip"),
                    prefixIcon: const Icon(Icons.location_pin),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: _height,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: MyColors.textColorWhite,
                      backgroundColor: MyColors.secondary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomRight:
                              Radius.circular(Spacing.borderRadiusStandard),
                          topRight:
                              Radius.circular(Spacing.borderRadiusStandard),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(t("search")),
                        const Icon(Icons.arrow_right),
                      ],
                    )),
              )
            ])));*/
  }
}
