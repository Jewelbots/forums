require_dependency 'rate_limiter'

class BirthdateController < ApplicationController
  skip_before_filter :check_xhr, only: [:index]
  before_filter :ensure_logged_in, only: [:live_post_counts]

  def index
    @birthdate = Birthdate.new

    respond_to do |format|
      format.html do
        # @list = list
        # store_preloaded(list.preload_key, MultiJson.dump(TopicListSerializer.new(list, scope: guardian)))
        render :index
      end
     # format.json do
     #   render_serialized(@test, TestSerializer)
     # end
    end
  end

end
