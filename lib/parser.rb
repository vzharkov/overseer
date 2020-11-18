class Parser
  def parse(command)
    Command.new(*parsed_args(command))
  end

  private

  def parsed_args(command)
    [nil, nil, nil, nil]
  end
end
