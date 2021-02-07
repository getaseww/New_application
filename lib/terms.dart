import 'package:flutter/material.dart';
class TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text("Terms and conditions")),
        backgroundColor: Colors.blue[700],
        leading:IconButton(
            icon: Icon(Icons.arrow_back,color:Colors.black),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
      ),

      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 30.0,left: 30.0),
              child: Text("Terms and conditions",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("By downloading or using this app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re  allowed to modify the app, any part of the app, or our trademarks in any way since my app is an open source project.The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to me.",style: TextStyle(fontSize: 18))
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
                child: Text("I am committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
                child: Text("The [hule addis] app stores and processes personal data that you have provided to us, in order to provide my Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the [hule addis] app won’t work properly or at all.",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("The app does use third party services that declare their own Terms and Conditions. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("Read the Terms and Conditions of third party service providers used by the app",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("Google Play Services",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("AdMob",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0,top: 10),
                child: Text("You should be aware that there are certain things that I will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but I cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
                child: Text("If you’re using the app outside of an area with Wi-Fi, you should remember that your terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("Along the same lines, I cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, I cannot accept responsibility. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("With respect to my responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavour to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. I accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("At some point, we may wish to update the app. The app is currently available on Android – the requirements for system(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. I am not promise that it will always update the app so that it is relevant to you and/or works with the Android version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Changes to This Terms and Conditions",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Terms and Conditions on this page. ",style: TextStyle(fontSize: 18),),
            ),
            
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Contact Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20,bottom: 30),
                child: Text("If you have any questions or suggestions about my Terms and Conditions, do not hesitate to contact me at [https://t.me/geta_walelign].",style: TextStyle(fontSize: 18),),
            ),
          ],
        )
      ),

      
    );
  }
}