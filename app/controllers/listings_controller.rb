class ListingsController < ApplicationController

  include Response
  include ExceptionHandler

  def index
    @users = []
    User.all.each { |user| @users << user.as_string }
    submission = SlackFormatterService.return_as_slack_json(@users.join("\n"))
    json_response(submission)
  end

  def create
    unprocessed_slack_id = request.params[:text]
    set_user(SlackIdFinder.process_id(unprocessed_slack_id))
    submission = SlackFormatterService.return_as_slack_json(@user.as_string)
    json_response(submission)
  end

  private

  def set_user(slack_id)
    @user = SlackIdFinder.retrieve_user_object(slack_id)
  end

end
