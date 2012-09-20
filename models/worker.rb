class Worker
  attr_accessor :first_name, :last_name, :courses_taught, :education, :image, :title

  def initialize(options={})
    for key, value in options
      self.send("#{key}=", value)
    end
    self.education = [self.education] if self.education.is_a?(String)
    self.courses_taught = [self.courses_taught] if self.courses_taught.is_a?(String)
  end

  def name
    [self.first_name, self.last_name].compact.join(" ")
  end

  def self.pull(worker_type)
    return [] unless %w(faculty staff volunteers).include?(worker_type)

    file = File.open("datastores/#{worker_type}.json")
    worker_json_array = JSON.parse(file.read)
    file.close

    worker_json_array.collect{|worker_json| self.new worker_json }
  end
end
