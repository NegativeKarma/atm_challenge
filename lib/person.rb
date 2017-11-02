require './lib/account'

class Person
  attr_accessor :name, :cash, :account

  def initialize(name = nil)
    set_name(name)
    @cash = 0
    @account = nil
  end

  def create_account
    @account = Account.new({owner: self})
  end

  private

  def set_name(name)
    if name == nil
      raise 'Name required'
    else
      @name = name
    end
  end

end
