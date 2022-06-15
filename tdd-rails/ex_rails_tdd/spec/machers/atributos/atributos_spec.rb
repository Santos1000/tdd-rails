require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   puts 'Before'
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   puts 'After'
  #   @pessoa.name = "sem name!"
  #   puts ">>>#{@pessoa.inspect}"
  # end
  around(:each) do |teste|
    puts 'Before'
    @pessoa = Pessoa.new

    teste.run

    puts 'After'
    @pessoa.name = "sem name!"
    puts ">>>#{@pessoa.inspect}"
  end

  it 'have_attributes' do

    @pessoa.name = "Barbara"
    @pessoa.idade = 18
    expect(@pessoa).to have_attributes(name: start_with("B"), idade: (be >= 18))
  end

  it 'have_attributes' do
    @pessoa.name = "Bianca"
    @pessoa.idade = 34
    expect(@pessoa).to have_attributes(name: start_with("B"), idade: (be >= 18))
  end
end
