class Command
  attr_reader :name, :who, :title, :when_time

  def initialize(name, who, title, when_time)
    @name = name
    @who  = who
    @title = title
    @when_time = when_time
  end
end
