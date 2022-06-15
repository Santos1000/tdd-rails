require 'contador'

describe 'Matcher Change' do
  it { expect { Contador.incrementa }.to change { Contador.qnt } }
  it { expect { Contador.incrementa }.to change { Contador.qnt }.by(1) }
  it { expect { Contador.incrementa }.to change { Contador.qnt }.from(2).to(3) }
end
