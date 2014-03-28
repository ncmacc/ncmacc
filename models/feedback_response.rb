class FeedbackResponse
  attr_accessor :name, :email_address, :message

  def initialize(options={})
    for key, value in options
      self.send("#{key}=", value)
    end
  end

  def validate!
    unless @name.is_a?(String) and @name.length > 0
      raise "Bad name."
    end

    unless @email_address.is_a?(String) and @email_address.length > 2
      raise "Bad email."
    end

    unless @message.is_a?(String) and @message.length > 0
      raise "No message."
    end
  end

  def deliver!
    
    Pony.mail :to => "ncmacc@gmail.com", :from => "ncmacc@gmail.com",
              :subject => "[NCMACC] #{self.name} has Left Feedback",
              :body => self.body
  end

  protected
  def body
    <<-EOF
#{self.name} <#{self.email_address}> left feedback on the website:
------------------------------------------
#{self.message}
EOF
  end
end
