
import tweepy


consumer_key = fetch_response.get("consumer_key")
consumer_secret = fetch_response.get("consumer_secret")
access_token = fetch_response.get("access_token")
access_token_secret =  fetch_response.get("access_token_secret")

client = tweepy.Client(
    consumer_key=consumer_key, consumer_secret=consumer_secret,
    access_token=access_token, access_token_secret=access_token_secret
)



response = client.create_tweet(
    text="sample tweet"
)
print(f"https://twitter.com/user/status/{response.data['id']}")

 