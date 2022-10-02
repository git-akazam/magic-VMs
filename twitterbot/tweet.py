
import tweepy

# Authenticate to Twitter
auth = tweepy.OAuthHandler("", "")
auth.set_access_token("", "")

# Create API object
api = tweepy.API(auth)


# Create a tweet
api.update_status("Hello from Tweepy")
