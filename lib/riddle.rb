class Riddle
  attr_reader :id, :text, :level
  attr_accessor :text
  @@riddles = {}
  @@total_rows = 0

  def initialize(text, level, id)
    @text = text
    @level = level
    @id = id || @@total_rows += 1
  end

  def self.all
    @@riddles.values()
  end

  def save
    @@riddles[self.id] = Riddle.new(self.text, self.level, self.id)
  end

  def self.clear
    @@riddles = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@riddles[id]
  end

end



