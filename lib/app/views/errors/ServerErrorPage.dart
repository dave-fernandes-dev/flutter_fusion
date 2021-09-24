import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvc/app/views/widgets/Widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../helpers/Global.dart';

class ServerErrorPage extends StatelessWidget {
  ServerErrorPage({Key? key, required this.message, this.action, this.actionLabel = "Retry"}) : super(key: key);

  final String message;
  final VoidCallback? action;
  final String actionLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: SvgPicture.asset(
                assetIcon('server_error.svg'),
                width: MediaQuery.of(context).size.width * 0.65,
              ),
            ),
            SizedBox(height: 24.0),
            Text('Oops!', style: Theme.of(context).textTheme.headline3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0).copyWith(top: 8.0),
              child: Text(
                '$message',
                style: Theme.of(context).textTheme.subtitle1,
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 1),
            Button.flat(
              label: "Go Back",
              leading: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              ),
              onTap: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}