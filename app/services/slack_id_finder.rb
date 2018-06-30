class SlackIdFinder
  def self.process_id(slack_id_string)
    slack_id_string.slice!(2, 9)
  end

  def self.retrieve_user_object(slack_id)
    User.find_by(slackid: slack_id)
  end
end