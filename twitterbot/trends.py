trends_result = api.trends_place(1)
for trend in trends_result[0]["trends"]:
    print(trend["name"])

