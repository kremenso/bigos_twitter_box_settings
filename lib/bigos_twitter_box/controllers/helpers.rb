module BigosTwitterBox
  module Controllers
    module Helpers
      extend ActiveSupport::Concern

      def bigos_twitter_box_widget(max_tag_id = nil, count = 60)

        Twitter.configure do |config|
          config.consumer_key = BigosTwitterBox.consumer_key
          config.consumer_secret = BigosTwitterBox.consumer_secret
          config.oauth_token = BigosTwitterBox.oauth_token
          config.oauth_token_secret = BigosTwitterBox.oauth_token_secret
        end


        posts = Twitter.user_timeline(BigosTwitterBox.twitter_login, :count => BigosTwitterBox.twitter_posts)
        render :partial=>"bigos_twitter_box/module/widget", :locals=>{:posts => posts}
      end

    end
  end
end