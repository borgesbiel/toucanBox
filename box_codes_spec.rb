require_relative 'box_codes'

describe BoxCodes do
  let(:users) { BoxCodes.users }
  let(:box_codes) { BoxCodes.box_codes }

  it 'has users' do
    expect(users).not_to be_empty
  end

  it 'has box codes' do
    expect(box_codes).not_to be_empty
  end

  it 'should return users box codes to receive' do
    expect(BoxCodes.box_codes_to_receive).not_to be_empty
  end
end
