import tweepy


consumer_key = ""
consumer_secret = ""
access_token = ""
access_token_secret = ""

client = tweepy.Client(
    consumer_key=consumer_key, consumer_secret=consumer_secret,
    access_token=access_token, access_token_secret=access_token_secret
)

# Create Tweet

# The app and the corresponding credentials must have the Write permission

# Check the App permissions section of the Settings tab of your app, under the
# Twitter Developer Portal Projects & Apps page at
# https://developer.twitter.com/en/portal/projects-and-apps

# Make sure to reauthorize your app / regenerate your access token and secret 
# after setting the Write permission

response = client.create_tweet(
    text="613.eth*/7595dae9cde82218336a5457ed9d55ec898c51623f73a69eefaa57a2cc9194fc.eth registered by 0x6b3210caa59c0367EdC0b0e60636dB02A623cE58"
)
print(f"https://twitter.com/user/status/{response.data['id']}")

