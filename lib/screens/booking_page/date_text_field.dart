import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTextField extends StatefulWidget {
  const DateTextField({Key? key, required this.labelText}) : super(key: key);
  final String labelText;

  @override
  State<DateTextField> createState() => _DateTextFieldState();
}

class _DateTextFieldState extends State<DateTextField>
    with AutomaticKeepAliveClientMixin {
  final _controller = TextEditingController();
  late FocusNode _focusNode;
  bool _hasFocus = false;
  Color _backgroundColor = const Color(0xFFF6F6F9);

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:
          widget.labelText == 'Дата рождения' ? DateTime(1923) : DateTime(2012),
      lastDate:
          widget.labelText == 'Дата рождения' ? DateTime.now() : DateTime(2035),
    );

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      setState(() {
        _controller.text = formattedDate;
        _isValid = true;
        _backgroundColor = const Color(0xFFF6F6F9);
      });
    }
  }

  bool _isValid = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    _focusNode.addListener(() {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
      if (!_focusNode.hasFocus) {
        isValid();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void isValid() {
    setState(() {
      final inputText = _controller.text.trim();
      if (inputText.isNotEmpty) {
        final dateFormat = DateFormat('yyyy-MM-dd');
        try {
          dateFormat.parseStrict(inputText);
          _isValid = true;
          _backgroundColor = const Color(0xFFF6F6F9);
        } catch (e) {
          _isValid = false;
          _backgroundColor = const Color(0xFFEB5757).withOpacity(0.15);
        }
      } else {
        _isValid = false;
        _backgroundColor = const Color(0xFFEB5757).withOpacity(0.15);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 52,
        width: MediaQuery.of(context).size.width,
        color: _backgroundColor,
        child: Focus(
          onFocusChange: (hasFocus) {
            setState(() {
              _hasFocus = hasFocus;
            });
          },
          child: TextFormField(
            controller: _controller,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
              labelText: widget.labelText,
              labelStyle: TextStyle(
                color: const Color.fromARGB(255, 169, 171, 183),
                fontSize: _hasFocus ? 12 : 17,
                fontFamily: 'SFPro',
                fontWeight: FontWeight.w400,
                height: _hasFocus ? 14.4 / 12 : 20.4 / 17,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              border: InputBorder.none,
            ),
            style: const TextStyle(
              color: Color.fromARGB(255, 20, 20, 43),
              fontSize: 16,
              fontFamily: 'SFPro',
              fontWeight: FontWeight.w400,
              height: 17.6 / 16,
            ),
            onChanged: (value) {
              isValid();
            },
            onTap: () {
              setState(() {
                _isValid = true;
                _backgroundColor = const Color(0xFFF6F6F9);
              });
              _selectDate(context);
            },
            focusNode: _focusNode,
            onFieldSubmitted: (_) {
              FocusScope.of(context).nextFocus();
            },
          ),
        ),
      ),
    );
  }

  @override

  bool get wantKeepAlive => true;
}
