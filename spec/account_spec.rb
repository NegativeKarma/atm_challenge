require './lib/account'

describe Account do
  it 'is a four numbers code' do
    expect(subject.pin_code.to_s.length).to eq 4
  end
  it 'has 0 balance on initialize' do
    expect(subject.balance).to eq 0
  end
  it 'is expected to have an expiry date on intialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
  end

end
