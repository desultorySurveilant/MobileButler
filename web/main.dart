import 'dart:html';

import 'dart:svg';

void main() {
  Element output = querySelector('#output');
  TextInputElement handle = TextInputElement()..id = 'handle';
  output.append(handle);
  TextInputElement message = TextInputElement()..id = 'message';
  output.append(message);
  TextElement url = TextElement();
  ButtonElement submit = ButtonElement()..id = 'submit';
  submit.onClick.listen((e){
    url.text = 'http://farragofiction.com:8500/TalkButlerBot?chatHandle=${pr(handle.value)}&input=${pr(message.value)}';
    });
  output.append(submit);
  output.append(url);
}
String pr(String str){
  str.replaceAll(' ', '+');
  str.replaceAll('!', '%21');
  str.replaceAll('#', '%23');
  str.replaceAll('\$', '%24');
  str.replaceAll('%', '%25');
  str.replaceAll('&', '%26');
  str.replaceAll('\'', '%27');
  str.replaceAll('(', '%28');
  str.replaceAll(')', '%29');
  str.replaceAll('*', '%2A');
  str.replaceAll('+', '%2B');
  str.replaceAll(',', '%2C');
  str.replaceAll('/', '%2F');
  str.replaceAll(':', '%3A');
  str.replaceAll(';', '%3B');
  str.replaceAll('=', '%3D');
  str.replaceAll('?', '%3F');
  str.replaceAll('@', '%40');
  str.replaceAll('[', '%5B');
  str.replaceAll(']', '%5D');
  return str;
}