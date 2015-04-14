class Status
  attr_accessor :text, :checked_at, :secret

  def self.all
    s1 = Status.new('Hello world 2', Time.now - 240 * 24 * 3600, 'secret password not to be exposed')
    s2 = Status.new('Hello world 1', Time.now - 100 * 24 * 3600, 'secret password not to be exposed')
    [s1, s2]
  end

  def initialize(text, checked_at, secret)
    @text = text
    @checked_at = checked_at
    @secret = secret
  end
end
