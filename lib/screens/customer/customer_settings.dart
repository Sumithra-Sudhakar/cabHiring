import 'package:flutter/material.dart';
import 'package:cabhiring/utils/colors.dart' as colors;


class CustomerSetting extends StatefulWidget {
  const CustomerSetting({Key? key}) : super(key: key);

  @override
  State<CustomerSetting> createState() => _CustomerSettingState();
}

class _CustomerSettingState extends State<CustomerSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldbackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.scaffoldbackground,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: colors.primarytextcolor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
children: [

],
            ),
          )
        ],
      ),
    );
  }
}
