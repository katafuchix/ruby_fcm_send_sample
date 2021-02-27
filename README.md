# ruby_fcm_send_sample
FireBase Cloud Message Send Samle

## getting FCM Token
- swift

```
import Firebase

if let token = Messaging.messaging().fcmToken {
  print(token)
}
```
## send by Firebase Admin SDK
1. Go to the management screen like the Google API console with Firebase console site> Gear> Privileges.
2. Click Service Account> Create Service Account to create an account
3. Ignore role selection and OK
4. Check "Provide new private key"> Specify json file for file
5. Do not check "Enable delegation for the entire G Suite domain"
6. Save the json file because it will be dropped when you create it (Note that this file can never be dropped)
