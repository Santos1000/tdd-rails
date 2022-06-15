class Contador
  @qnt = 0

  def self.qnt
    @qnt
  end

  def self.incrementa
    @qnt += 1
  end
end
