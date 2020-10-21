class BankAccount

  attr_reader :money

  def initialize(amount, owner)
    @money = amount
    @owner = owner
  end

  def withdraw(amount)
    change_balance(-amount)
  end

  def deposit(amount)
    change_balance(amount)
  end

  private

  def change_balance(amount)
    @money += amount
  end

end

guilhermes_account = BankAccount.new(10000, "Guilherme")
# guilhermes_account.change_balance(50000) => Raises an error!
guilhermes_account.deposit(50000)
guilhermes_account.withdraw(30000)

puts guilhermes_account.money
