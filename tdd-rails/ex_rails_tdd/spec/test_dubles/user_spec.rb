describe "Test Double" do
  it '--' do
    user = double
    allow(user).to receive_messages(name: 'Babara', password: 'secret')
    puts user.name
    puts user.password
  end
end
