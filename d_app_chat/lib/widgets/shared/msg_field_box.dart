import 'package:flutter/material.dart';
import 'package:d_app_chat/providers/chat_provider.dart';
import 'package:provider/provider.dart';
import 'package:d_app_chat/domain/entities/msg.dart';

class MsgFieldBox extends StatelessWidget {
  const MsgFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textController = TextEditingController();
    final focusNode = FocusNode();

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: colors.surface.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(Icons.person),
              SizedBox(width: 12),
              Text('Emisor'),
              const SizedBox(width: 12),
              Expanded(
                child: Consumer<ChatProvider>(
                  builder: (context, chatProvider, child) {
                    return Row(
                      children: [
                        const Text('Yo'),
                        Expanded(
                          child: Slider(
                            min: 0,
                            max: 1,
                            divisions: 1,
                            value: chatProvider.selectedSender == Who.me
                                ? 0.0
                                : 1.0,
                            onChanged: (value) {
                              chatProvider.changeSelectedSender(
                                value < 0.5 ? Who.me : Who.other,
                              );
                            },
                          ),
                        ),
                        const Text('El otro'),
                      ],
                    );
                  },
                ),
                // Consumer<ChatProvider>(
                //   builder:(context, chatProvider, child) {
                //     return Row(
                //       children: [
                //         Text("Yo", style: TextStyle(
                //           color: chatProvider.selectedSender == Who.me
                //           ? colors.onSurface : colors.primary,
                //           fontSize: 16,
                //           fontWeight: chatProvider.selectedSender == Who.me
                //           ? FontWeight.bold : FontWeight.normal
                //         )),
                //         const SizedBox(width: 12,),
                //         Expanded(
                //           child: Slider(value: chatProvider.selectedSender == Who.me ? 1 : 0,
                //           onChanged: (value) {
                //             chatProvider.changeSelectedSender(
                //               value == 1 ? Who.me : Who.other
                //             );
                //           }
                //           )
                //         ),
                //         Text("The other", style: TextStyle(
                //           color: chatProvider.selectedSender == Who.other
                //           ? colors.onSurface : colors.primary,
                //           fontSize: 16,
                //           fontWeight: chatProvider.selectedSender == Who.other
                //           ? FontWeight.bold : FontWeight.normal
                //         )),
                //         const SizedBox(width: 12,),
                //       ]
                //     );
                //   },
                // )
              ),
            ],
          ),
        ),
        TextFormField(
          focusNode: focusNode,
          controller: textController,
          decoration: InputDecoration(
            hintText: 'Type a message...',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
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
                final chatProvider = context.read<ChatProvider>();
                final text = textController.text;

                textController.clear();
                chatProvider.addMsg(text);
                focusNode.requestFocus();
              },
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          onFieldSubmitted: (value) {
            final chatProvider = context.read<ChatProvider>();
            final text = textController.text;
            chatProvider.addMsg(text);
            textController.clear();
            focusNode.requestFocus();
          },
          onChanged: (value) {
            print('onChanged: $value');
          },
        ),
      ],
    );
  }
}
