import tweepy

# Authenticate to Twitter
auth = tweepy.OAuthHandler("", 
    "")
auth.set_access_token("", 
    "")

api = tweepy.API(auth)

try:
    api.verify_credentials()
    print("Authentication OK")
except:
    print("Error during authentication")

