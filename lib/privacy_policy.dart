import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 70),
          child: Text("Privacy Policy")),
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
              child: Text("Privacy Policy",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),)
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I built the [Hule Addis] app as an Ad Supported app. This SERVICE is provided by me at no cost and is intended for use as is. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
                child: Text("This page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my News Application. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
                child: Text("If you choose to use this Application, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the  Application. I will not use or share your information with anyone except as described in this Privacy Policy. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at [Hule Addis] unless otherwise defined in this Privacy Policy. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10.0,top: 20),
                child: Text("Information Collection and Use",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10,left: 10),
                child: Text("For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to views,comments. The information that I request will be retained on your device and is not collected by me in any way. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("The app does use third party services that may collect information used to identify you. ",style: TextStyle(fontSize: 18),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("The privacy policy of third party service providers used by the app",style: TextStyle(fontSize: 18),),
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
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Log Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Cookies",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("This Service does not use these “cookies” explicitly. However, the app may use third party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Service Providers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I may employ third-party companies and individuals due to the following reasons:",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,top: 10),
                child: Text("- To facilitate our Service;                                              ",style: TextStyle(fontSize: 18),),
              ),
            Padding(
              padding: EdgeInsets.only(left: 20,),
                child: Text("- To provide the Service on our behalf;                                        ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,),
                child: Text("- To perform Service-related services; or                                      ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,),
                child: Text("- To assist us in analyzing how our Service is used.",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I want to inform users of this Service that these third parties have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Security",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Links to Other Sites",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Children’s Privacy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do necessary actions. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Changes to This Privacy Policy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 10),
                child: Text("I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page. ",style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20),
                child: Text("Contact Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10,top: 20,bottom: 30),
                child: Text("If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at [https://t.me/geta_walelign].",style: TextStyle(fontSize: 18),),
            ),
          ],
        )
      ),

      
    );

  }
}