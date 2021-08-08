import 'package:ibm_watson_assistant/ibm_watson_assistant.dart';

class Watson {
  static final auth = IbmWatsonAssistantAuth(
    assistantId: '036bd9b1-f69a-4e32-9221-ea16fb0d252a',
    url: 'https://api.eu-de.assistant.watson.cloud.ibm.com',
    apikey: 'PHu94tmbiKM-wdYwOkhQZUbCjf1WiuB77fS1NrQm2K7X',
  );
  static final IbmWatsonAssistant bot = IbmWatsonAssistant(auth);
  
 
  Future send(String text) async {
    if(text != ""){
    final _sessionId = await bot.createSession();
    return bot.sendInput(text, sessionId: _sessionId);}
  }
}
