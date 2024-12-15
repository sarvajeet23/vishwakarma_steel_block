import 'package:flutter/material.dart';
import 'package:vishwakarama_steel_bloc/Modules/tab_bar_page.dart/pages/display_name.dart';
import 'package:vishwakarama_steel_bloc/Modules/tab_bar_page.dart/pages/documentation_and_services_page.dart';
import 'package:vishwakarama_steel_bloc/Modules/tab_bar_page.dart/pages/identity_and_address_page.dart';
import 'package:vishwakarama_steel_bloc/Modules/tab_bar_page.dart/pages/partner_k_y_c_page.dart';

import 'widget/arrow_paint.dart';

class CustomTabBarPage extends StatefulWidget {
  const CustomTabBarPage({super.key});

  @override
  _CustomTabBarPageState createState() => _CustomTabBarPageState();
}

class _CustomTabBarPageState extends State<CustomTabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _tabLabels = [
    '1. Identity and address',
    '2. Partner KYC',
    '3. Documentation & services',
    '4. Payment & Service',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabLabels.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildCustomTab(int index) {
    bool isSelected = _tabController.index == index;
    bool isPrevious = _tabController.index > index;

    return Flexible(
      flex: isSelected ? 3 : 1,
      child: GestureDetector(
        onTap: () {
          _tabController.animateTo(index);
        },
        child: CustomPaint(
          painter: ArrowPainter(
            color: isSelected || isPrevious
                ? const Color.fromARGB(255, 184, 85, 141)
                : Colors.grey.withOpacity(.5),
            isFirst: index == 0,
            isLast: index == _tabLabels.length - 1,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    isSelected ? _tabLabels[index] : (index + 1).toString(),
                    style: TextStyle(
                      color: isSelected || isPrevious
                          ? Colors.white
                          : Colors.black54,
                      fontWeight:
                          isSelected ? FontWeight.w400 : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _goToNextTab() {
    if (_tabController.index < _tabLabels.length - 1) {
      _tabController.animateTo(_tabController.index + 1);
    }
  }

  void _goToPreviousTab() {
    if (_tabController.index > 0) {
      _tabController.animateTo(_tabController.index - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -10,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Partner Set Up',
          style: TextStyle(color: Colors.grey[700], fontSize: 16),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Row(
            children: List.generate(_tabLabels.length, (index) {
              return _buildCustomTab(index);
            }),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          IdentityAndAddressPage(),
          PartnerKYCPage(),
          DocumentationAndServicesPage(),
          PaymentAndServicePage(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              onPressed: _goToPreviousTab,
              icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
              label: const Text('Back', style: TextStyle(color: Colors.grey)),
            ),
            SizedBox(
              width: 150,
              child: Card(
                borderOnForeground: false,
                elevation: .1,
                shadowColor: Colors.white,
                child: ElevatedButton(
                  onPressed: () {
                    if (_tabController.index < _tabLabels.length - 1) {
                      _goToNextTab();
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DisplayName()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    disabledBackgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        _tabController.index < _tabLabels.length - 1
                            ? 'Next'
                            : 'Submit',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

