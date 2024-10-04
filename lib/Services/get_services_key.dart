import 'package:googleapis_auth/auth_io.dart';

class GetServerKey{
  Future<String> getServerKeyToken()async{
    var scopes=[
      'https://www.googleapis.com/auth/userinfo.email',
      'https://www.googleapis.com/auth/firebase.database',
      'https://www.googleapis.com/auth/firebase.messaging',
    ];

    final  client=await clientViaServiceAccount(ServiceAccountCredentials.fromJson({
  "type": "service_account",
  "project_id": "web-boiler-template",
  "private_key_id": "e46cdf0dd7792a0c8adcfb033a7585046ee8c6af",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQChs7JWgxj7drqN\nrMQxFX1tekir7/7GRMxw35c6pKnrcfgUHGEQK4te+shCUuVADE+XGGM/DpGM/4EG\nYf07u5oFZbdkupFVhxY4EljkS3iGRGCjrOi/QXJSItUh7axpjT8TvYnoLQnFepst\nRricwcR6XdtgCoKxYKbkegkgheMhd5T3sRoDeeATWfGH6mOWdaCq0bgbbjl3egPI\n3LTNtLcKyRNGy9nDmPo0mZU5szoWBb9Ux48fmzNNm7jtxHUp4CwO2be980rSykEg\njwz+HW3s17rJMOiQwbWorGF5o2POu4+BeKk8P6d7hrbdvS2Nx1vboeXs7thee5LG\nMwKF758/AgMBAAECggEAI2mXrlOSlouXamyCIN+8csvbe3AZQzGQ9k05MNob7lis\nxDa82Q44PQo97ix6UU8A5S2tmoMlxBO2nX+7NigtIG54veIP7wOhDZGTDxgqInl6\nEo5NAImkMDG5rG8BGbKZtEiHmaW3ZJynvEAnMQlMbqH8Z6mVmqP4mMPTGODJb6wH\n2cDZCxIM47AWrMlEnXdfHSMvFIAVJ6z0nS1HUyUkhPq3lknxSgASo903SZf6vJxQ\nBVgoGsxPy4HbyCQ6H/QFHY+/ufYMPis1JUQzZpEHRpisKCA3tlAyahlAIF3jxX8e\nwG/XMoCi1D/ATmJxcLUW/cFWbe1YyoJyAn2VhUXaLQKBgQDX15pxuU9FHHWYMx9M\nnOmzu+FmxNCNl5iCOVB9duXoefROr6GovmaAL7Fl+F+FP4N/fC9KCyJleo5hJ7pg\nWBSuot8TfbvewxxtWWvDu6+oaCobqRlzhkN68dGkOHDcjl63dGy1XNK34NwiZyYG\nWV3IFBorDTbmirsgLtmSHkACawKBgQC/yW9IP/rkomHr0Q/g30YDc7D8JbtUthi9\nrTrRmbRjT9/32Ak6YGqES0+G+FpF9sPyvphDB5GPP3XXqYAp8+MRls6keFWiOihl\nFZYEZ8epd80UsvFVlefajUP0FRQGdtQmDKlbvPfZusebqGvnCOrTpWu0kqaIPvIR\nmMre7qGTfQKBgBeRXzfTuCgft2drDZvb9li9xxrlmrAbQXfWskdA2FHOHzMIUmqO\nf7q3enNb73IpQT6GXNOE67iQ7UMGh39FntyCxEDolb75Jv15qh6xO7jzxsVGbZUD\nsBKYnP+Fei1bDlSRzdzvycJyNxc6lBhVYbwbFdBlnP0HYO9erjsaOnsJAoGAJ1nm\nenWePiFPZDpuPp6xV+36B5KaYGRIqUqNAgq+p43xD4KFSjQURvbI55G3vBlI1Vrk\nFQTNig3kWQ7PXExNcAN4fOiv8Wxrc2o9cMP2hMAvFSsuN3hdrUtFAST+CeGB4BjC\n+y7H0CXx5O9mzG3Y+Po9Ijzg7J21v4SRQ7LE9mUCgYB5tPVowXzOq1raNybWOkof\nTsUp9YuwkntgCpe9UOOMG4i66pw+kpz07+XOqA35uU3eC1xTLiwH4PqWGuCSJw1c\nQu1xjTyYEI5j0EUw5vQEotS9oNyCeiEXaeB/uTEMkl641BOMefu3y4HXQeKvCiJW\nDBqPrE2bhpUoDTONxu3gZQ==\n-----END PRIVATE KEY-----\n",
  "client_email": "firebase-adminsdk-pmpc4@web-boiler-template.iam.gserviceaccount.com",
  "client_id": "108425459976271425811",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-pmpc4%40web-boiler-template.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
), scopes);

var token=client.credentials.accessToken.data;

    return  token;
  }
}