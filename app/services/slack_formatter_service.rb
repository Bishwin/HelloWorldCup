class SlackFormatterService

  def self.return_as_slack_json(unformatted_string)
    {
      "text": unformatted_string
    }
  end
end