require 'pessoa'

shared_examples 'status' do |sentimento|
  it "#{sentimento}" do
    pessoa.send("#{sentimento}!")
    expect(pessoa.status).to eq("Sentindo-se #{sentimento.capitalize}!")
  end
end

describe 'Pessoa Status' do
  subject(:pessoa) { Pessoa.new }
  it_behaves_like 'status', :feliz
  it_behaves_like 'status', :contente
  it_behaves_like 'status', :triste
end
