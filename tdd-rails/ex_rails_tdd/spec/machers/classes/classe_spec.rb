require 'string_nao_vazia'

describe "Classe" do
  it 'be_instance_of' do
    expect(2).to be_instance_of(Integer) # Exatamente a classe
  end
  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(2).to be_kind_of(Integer) # Pode ser por herança
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size) # Se a classe corresponde a algum methodo
    expect('ruby').to respond_to(:count)
  end

  it 'be_a / be_an' do
    expect('ruby').to be_a(String) # igual ao be_king_of
    expect('ruby').to be_an(String)
  end
end
