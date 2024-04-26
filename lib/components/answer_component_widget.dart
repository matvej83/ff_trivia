import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class AnswerComponentWidget extends StatefulWidget {
  const AnswerComponentWidget({
    Key? key,
    required this.answer,
  }) : super(key: key);

  final String answer;

  @override
  _AnswerComponentWidgetState createState() => _AnswerComponentWidgetState();
}

class _AnswerComponentWidgetState extends State<AnswerComponentWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Text(
        widget.answer,
        style: FlutterFlowTheme.title2,
      ),
    );
  }
}
