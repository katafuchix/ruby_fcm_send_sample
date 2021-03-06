require 'fcm'

fcm = FCM.new("[Cloud Message ServerKey Token]")
token = "[YOUR DEVICE FCM TOKEN]"

body = {
  message: {
    notification: {
      title: 'Push Notification Title',
      body: 'Message from FCM.',
      sound: 'default',
    }
  }
}

ret = fcm.send_with_notification_key(token, body)
