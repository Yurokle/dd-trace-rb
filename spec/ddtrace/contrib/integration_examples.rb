RSpec.shared_examples 'peer service' do
  it do
    subject
    expect(span.get_tag('peer.service')).to_not be nil
    expect(span.get_tag('peer.service')).to eq(span.service)
  end
end
