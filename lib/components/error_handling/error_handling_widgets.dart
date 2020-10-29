import 'package:flutter/cupertino.dart';
import 'package:flutter_persistent_socket/communication/socket_api.dart';
import 'package:flutter_persistent_socket/communication/socket_messages.dart';
import 'package:gm5_utils/mixins/subsctiptions_mixin.dart';

import '../../messages.dart';

typedef SocketFormFieldBuilder = Widget Function(BuildContext context, List<String> errors);
typedef SocketFormLayoutBuilder = Widget Function(BuildContext context, List<Widget> fields);

class SocketFormElement {
  final String id;
  final SocketFormFieldBuilder builder;
  final Widget widget;

  SocketFormElement({this.id, this.builder, this.widget}) : assert(builder != null || widget != null);

  Widget getWidget(BuildContext context, List<String> errors) => widget ?? builder(context, errors);
}

class SocketForm extends StatefulWidget {
  final List<SocketFormElement> fields;
  final List<SocketTxMessage> relatedTxMessages;
  final SocketFormLayoutBuilder layoutBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final bool autoClearErrorsOnRelatedTx;

  const SocketForm({
    Key key,
    @required this.fields,
    @required this.relatedTxMessages,
    this.layoutBuilder,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.autoClearErrorsOnRelatedTx = true,
  }) : super(key: key);

  @override
  SocketFormState createState() => SocketFormState();
}

class SocketFormState extends State<SocketForm> with SubscriptionsMixin {
  SocketApi get socketApi => SocketApi.of(context);
  List<String> relatedTxMessageTypes;
  Map<String, List> errors = {};

  @override
  Widget build(BuildContext context) {
    List<Widget> fields = widget.fields.map((e) => e.getWidget(context, errors[e.id]?.cast<String>())).toList();
    if (widget.layoutBuilder != null) return widget.layoutBuilder(context, fields);
    return Column(
      mainAxisAlignment: widget.mainAxisAlignment,
      crossAxisAlignment: widget.crossAxisAlignment,
      children: fields,
    );
  }

  @override
  void initState() {
    super.initState();
    relatedTxMessageTypes = widget.relatedTxMessages.map((e) => e.messageType).toList();
    listen(socketApi.getMessageHandler(RxFormErrors()), _onFormErrors);
    if (widget.autoClearErrorsOnRelatedTx) {
      for (SocketTxMessage txMessage in widget.relatedTxMessages) {
        listen(socketApi.getTxMessageHandler(txMessage), (_) => clearFormErrors());
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    cancelSubscriptions();
  }

  void _onFormErrors(RxFormErrors newErrors) {
    print(relatedTxMessageTypes.contains(newErrors.data.relatedMessageType));
    if (!relatedTxMessageTypes.contains(newErrors.data.relatedMessageType)) return;
    setState(() {
      errors = newErrors.data.errors.map((key, value) => MapEntry(key, value.list));
    });
  }

  void clearFormErrors() {
    setState(() {
      errors = {};
    });
  }
}
