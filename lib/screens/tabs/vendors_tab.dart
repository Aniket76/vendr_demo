import 'dart:io';

import 'package:flutter/material.dart';
import 'package:vendr_demo/models/vendor.dart';
import 'package:vendr_demo/utils/colors_constants.dart';

class VendorsScreen extends StatefulWidget {
  const VendorsScreen({Key? key}) : super(key: key);

  @override
  _VendorsScreenState createState() => _VendorsScreenState();
}

class _VendorsScreenState extends State<VendorsScreen> {

  final TextEditingController _searchInputController = TextEditingController();

  final List<Vendor> _vendorsList = [];
  late List<Vendor> _filterVendorsList;

  @override
  void initState() {
    super.initState();

    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'Kolour Koncepts Intl.', state: 'Bangalore', country: 'India'));
    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'Apparel Promoters', state: 'Chittagong', country: 'Bangladesh'));
    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'YJC China Co.', state: 'Guangzhou', country: 'China'));
    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'Smart Tekstil', state: 'Istanbul', country: 'Turkey'));
    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'Khimjee Industries Ltd.', state: 'Delhi', country: 'India'));
    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'C and S Medical Equipment Group', state: 'Phnom Penh', country: 'Cambodia'));
    _vendorsList.add(const Vendor(imagePath: 'assets/profile_icon.png', isAssetsImage: true, title: 'Sara footwear Co. Ltd.', state: 'Ho Chi Minh', country: 'Vietnam'));

    _filterVendorsList = List.from(_vendorsList);
  }
  
  @override
  void dispose() {
    super.dispose();
    _searchInputController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16,8,16,8),
          color: offWhiteColor,
          child: TextField(
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.fromLTRB(10,0,10,0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search
                ),
                filled: true,
                fillColor: const Color(0xffe6e6e6),
                hintText: 'Search',
            ),
            controller: _searchInputController,
            onChanged: (value) {
              setState(() {
                _filterVendorsList = _vendorsList.where((x) => x.title.toLowerCase().contains(value.toLowerCase())).toList();
              });
              print(value);
            },
            onSubmitted: (value) {
              // Navigator.of(context).pop();
            },
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _filterVendorsList.length,
            itemBuilder: (BuildContext context,int index){
              return Column(
                children: [
                  ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(_filterVendorsList[index].imagePath),
                      ),
                      title:Text(_filterVendorsList[index].title),
                    subtitle: Text('${_filterVendorsList[index].state}, ${_filterVendorsList[index].country}'),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xffBDBDBD),
                    indent: 24,
                    endIndent: 24,
                    height: 0,
                  ),
                ],
              );
            }
        ),
        
      ],
    );
  }
}
