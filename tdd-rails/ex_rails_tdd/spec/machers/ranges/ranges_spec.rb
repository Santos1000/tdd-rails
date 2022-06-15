describe (1..5), 'Ranges' do
  it "#cober" do
    expect(subject).to cover(2)
    expect(subject).to cover(2, 4)
    expect(subject).not_to cover(0, 6)
  end

  it { is_expected.to cover(2) }
  it { is_expected.to cover(2, 4) }
  it { is_expected.not_to cover(0, 6) }

  it { expect(subject).to cover(3) }
end
