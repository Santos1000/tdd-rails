describe 'Matcher output' do
  it { expect { puts 'Barbara' }.to output.to_stdout }
  it { expect { print 'Barbara' }.to output('Barbara').to_stdout }
  it { expect { puts 'Barbara' }.to output(/Barbara/).to_stdout }

  it { expect { warn 'Barbara' }.to output.to_stderr }
  it { expect { warn 'Barbara' }.to output { 'Barbara\\n' }.to_stderr }
  it { expect { warn 'Barbara' }.to output(/Barbara/).to_stderr }

end
