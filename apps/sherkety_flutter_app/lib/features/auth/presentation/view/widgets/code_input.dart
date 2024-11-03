import 'package:flutter/material.dart';
import 'package:sherkety_flutter_app/core/constants/asset_colors.dart';
import 'package:sherkety_flutter_app/core/constants/asset_spacing.dart';
import 'package:sherkety_flutter_app/core/theme/styles.dart';

class CodeInput extends StatefulWidget {
  const CodeInput({
    super.key,
    required this.controllers,
  });
  final List<TextEditingController> controllers;
  @override
  State<CodeInput> createState() => _CodeInputState();
}

class _CodeInputState extends State<CodeInput> {
  void onChanged(int index, String value) {
    if (value.isNotEmpty && index < widget.controllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
    if (index == widget.controllers.length - 1) {
      FocusScope.of(context).unfocus();
    }
  }

  final FocusNode firstFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    firstFocusNode.requestFocus();
  }

  @override
  void dispose() {
    firstFocusNode.dispose();
    for (var controller in widget.controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.controllers.length,
            (index) {
              return Expanded(
                child: Container(
                  height: 56,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: TextFormField(
                    style: Styles.headline300Heavy,
                    focusNode: index == 0 ? firstFocusNode : null,
                    controller: widget.controllers[index],
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: AssetColors.borderDefaultColor,
                        ),
                        borderRadius: BorderRadius.circular(
                          AssetSpacing.borderRadius,
                        ),
                      ),
                    ),
                    onChanged: (value) => onChanged(index, value),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
