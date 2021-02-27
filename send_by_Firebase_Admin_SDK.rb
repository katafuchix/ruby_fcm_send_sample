require 'googleauth'

scope = 'https://www.googleapis.com/auth/firebase.messaging'

authorizer = Google::Auth::ServiceAccountCredentials.make_creds(
  json_key_io: File.open('[Firebase Admin SDK private key json path]'),
  scope: scope)

access_token = authorizer.fetch_access_token!
access_key = "#{access_token['token_type']} #{access_token['access_token']}"

body = {
  message: {
    token: "[YOUR DEVICE FCM TOKEN]",
    notification: {
      title: 'Push Notification Title',
      body: 'Message from FCM.'
    }
  }
}

url = "https://fcm.googleapis.com/v1/projects/[Project ID]/messages:send"
conn = Faraday.new(url: url)
response = conn.post do |req|
    req.headers['Content-Type'] = 'application/json'
    req.headers['Authorization'] = access_key
    req.body = body.to_json
end
