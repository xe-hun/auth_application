import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PageLayout extends HookWidget {
  const PageLayout({
    super.key,
    required this.body,
    this.isLoading = false,
    this.errorMessage,
    this.appBar,
  });
  final Widget body;
  final bool isLoading;
  final String? errorMessage;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      late final Flushbar? flushbar;
      Future.microtask(() {
        flushbar = _buildErrorFlushbar(context)(errorMessage)?..show(context);
        FocusScope.of(context).unfocus();
      });
      return () => flushbar?.dismiss();
    }, [errorMessage]);

    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          body,
          Visibility(
            visible: isLoading,
            child: SafeArea(
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(color: Colors.black54),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: LinearProgressIndicator(
                      minHeight: 3,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Flushbar? Function(String?) _buildErrorFlushbar(
    BuildContext context,
  ) {
    return (message) {
      if (message == null) {
        return null;
      }
      return _flushBar(
        message: message,
        title: 'Error',
        icon: const Icon(Icons.warning_amber_rounded),
        backgroundColor: Theme.of(context).colorScheme.error,
      );
    };
  }

  Flushbar _flushBar(
      {required Color backgroundColor,
      required String message,
      required String title,
      required Icon icon}) {
    return Flushbar(
      title: title,
      message: message,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      flushbarPosition: FlushbarPosition.TOP,
      icon: icon,
      backgroundColor: backgroundColor,
    );
  }
}
