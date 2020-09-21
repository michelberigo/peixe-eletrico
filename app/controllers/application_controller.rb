class ApplicationController < ActionController::Base
    before_action :get_recents_months

    def get_recents_months
        mesesPostagens = Post.order("created_at DESC").group_by { |post|
            post.created_at.beginning_of_month
        }

        @mesesPostagens = mesesPostagens
    end
end
