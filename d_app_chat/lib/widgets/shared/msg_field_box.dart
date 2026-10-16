import 'package:flutter/material.dart';

class MsgFieldBox extends StatelessWidget {
  const MsgFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

final colors = Theme.of(context).colorScheme;
final textController = TextEditingController();
final focusNode = FocusNode();

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: InputDecoration(
        hintText: 'Type a message...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.outline),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: colors.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.send, color: colors.primary),
          onPressed: () {
            final text = textController.text;
            textController.clear();
            print("send : $text");
            focusNode.requestFocus();
          },
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      onFieldSubmitted: (value) {
        print('onFieldSubmitted: $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('onChanged: $value');
      },
    );
  }
}