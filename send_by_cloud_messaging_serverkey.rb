require 'fcm'

fcm = FCM.new("[Cloud Message ServerKey Token]")
token = "[YOUR DEVICE FCM TOKEN]"

body = {
  message: {
    token: "[YOUR DEVICE FCM TOKEN]",
    notification: {
      title: 'Push Notification Title',
      body: 'Message from FCM.'
    }
  }
}

ret = fcm.send_with_notification_key(token, body)
