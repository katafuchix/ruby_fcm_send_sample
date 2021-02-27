require 'fcm'

fcm = FCM.new("AAAAZj-T3gA:APA91bErxfmnq8RzWutppwvIPkKE7CYNDrQrbX3nOkXHBMwoB0tRl3s5EElVv9dyzlmzlbVFgTQgzzub-OrpBu1AJYv9G545kY0vBHAvM8SgUakPaRIhz9sJHRlCvo6KpfpJ7xSgI2Rh")

#token = "feb9GzvDEURjt5r9qFzN-x:APA91bESUn6YHD-XZ3KdF3G6uLIcuz-ubLorsev04CS4WGw0WckpCQ-amSEaUy7QNOal8dtoUybhMeH-5ou0iWbu1GOv77bH9SAHsJGP4s6A_0zvykyAUpX1eOKtEmqgxcU2PZxHsbJQ"
token = "eSvJRWsdakYluU4SPNicym:APA91bHHq3g4kmvCdDB1sVb9baT2FI6Ak3z3VpS8ifGkjk_s7pyF5ELbrEtyxpTZ_HzXeiPyjhr3TuiAt6gJ_0kSS7MyCjYXWMFufAATnVmYrdI89nZohycqHJ6P2iGYm1QJCnmBHneY"

opts = {
  "notification" => {
    "body" => "新着記事があります！"
  }
}
ret = fcm.send_with_notification_key(token, opts)
p ret
