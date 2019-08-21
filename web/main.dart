import 'dart:html';

void main() {
  Element output = querySelector('#output');
  TextAreaElement handle = TextAreaElement()..id = 'handle';
  output.append(handle);
  output.appendHtml('</br>');
  TextAreaElement message = TextAreaElement()..id = 'message';
  output.append(message);
  output.appendHtml('</br>');
  TextAreaElement url = TextAreaElement()..id = 'url' ..value = 'url will appear here.';
  ButtonElement submit = ButtonElement()..id = 'submit'..text = 'Generate url';
  submit.onClick.listen((e){
    url.value = 'http://farragofiction.com:8500/TalkButlerBot?chatHandle=${pr(handle.value)}&input=${pr(message.value)}';
    });
  output.append(submit);
  output.appendHtml('</br>');
  output.append(url);
  handle.onChange.listen((e){
    url.value = 'http://farragofiction.com:8500/TalkButlerBot?chatHandle=${pr(handle.value)}&input=${pr(message.value)}';
  });
  message.onChange.listen((e){
    url.value = 'http://farragofiction.com:8500/TalkButlerBot?chatHandle=${pr(handle.value)}&input=${pr(message.value)}';
  });
}
String pr(String input){
  var str = input;
  print('Replacing!');
  str = str.replaceAll('%', '%25');
  str = str.replaceAll('!', '%21');
  str = str.replaceAll('#', '%23');
  str = str.replaceAll('\$', '%24');
  str = str.replaceAll('&', '%26');
  str = str.replaceAll('\'', '%27');
  str = str.replaceAll('(', '%28');
  str = str.replaceAll(')', '%29');
  str = str.replaceAll('*', '%2A');
  str = str.replaceAll('+', '%2B');
  str = str.replaceAll(',', '%2C');
  str = str.replaceAll('/', '%2F');
  str = str.replaceAll(':', '%3A');
  str = str.replaceAll(';', '%3B');
  str = str.replaceAll('=', '%3D');
  str = str.replaceAll('?', '%3F');
  str = str.replaceAll('@', '%40');
  str = str.replaceAll('[', '%5B');
  str = str.replaceAll(']', '%5D');
  str = str.replaceAll(' ', '+');
  return str;
}