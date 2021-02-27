# ruby_fcm_send_sample
FireBase Cloud Message Send Samle

## Getting FCM Token
- swift

```
import Firebase

if let token = Messaging.messaging().fcmToken {
  print(token)
}
```
## Send by Firebase Admin SDK
1. Go to the management screen like the Google API console with Firebase console site> Gear> Privileges.
2. Click Service Account> Create Service Account to create an account
3. Ignore role selection and OK
4. Check "Provide new private key"> Specify json file for file
5. Do not check "Enable delegation for the entire G Suite domain"
6. Save the json file because it will be dropped when you create it (Note that this file can never be dropped)

- send_by_Firebase_Admin_SDK.rb

## Send by Cloud Messaging Server Key
1. Go to the management screen like the Google API console with Firebase console site> Gear> Cloud Messaging.
2. Copy Server Key Value(Token).

- send_by_cloud_messaging_serverkey.rb
