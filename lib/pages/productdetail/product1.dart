import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/cupertino.dart';
import '/appbar.dart';
import '/navbar.dart';

class popup extends StatelessWidget {
  const popup({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
      child: CupertinoButton(
          child: const Text("oooo"),
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (BuildContext builder) {
                  return CupertinoPopupSurface(
                      child: Container(
                          color: CupertinoColors.white,
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: 400,
                          child: Center(
                            child: CupertinoButton(
                              child: const Text('Close'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          ),
                          );
                }
                );
          }
          ),
    )
    );
  }
}
