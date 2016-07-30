# Mixpanel-Devise integration on a Rails APP

* Ruby 2.3.1
* Rails 5.0.0
* Devise
* Mixpanel

# SETUP

Create file initializer/mixpanel.rb and copy and paste in the code below (substitute *your_mixpanel_token_here* with your actual mixpanel token).
```
MIXPANEL_TOKEN: *your_mixpanel_token_here*
```

If you deploy this APP to a remote server, remember to add MIXPANEL_TOKEN to ENV vars.
```
# for example, if you use Heroku type this into the console

heroku config:set MIXPANEL_TOKEN=my_token_string_goes_here
```

