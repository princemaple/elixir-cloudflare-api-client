# Feedback

## Submit a feedback report

**POST** `/zones/{zone_id}/bot_management/feedback`

Submit a feedback report for the specified zone. Use `type` to indicate whether the report is a false positive (good traffic flagged as bot) or a false negative (bot traffic missed). Furthermore, you can also use `expression` as a wirefilter to identify the affected traffic sample.

See more accepted API fields and expression types at https://developers.cloudflare.com/bots/concepts/feedback-loop/#api-fields and https://developers.cloudflare.com/bots/concepts/feedback-loop/#expression-fields, respectively.



## List zone feedback reports

**GET** `/zones/{zone_id}/bot_management/feedback`

Returns all feedback reports previously submitted for the specified zone. Feedback reports help improve detection by sharing samples of traffic that were misclassified as bots or humans.


