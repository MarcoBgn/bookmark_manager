require './models/link.rb'

describe Link do

  before do
    Link.create(url: "www.test.com", title: "Test")
  end

  
  xit 'has a url' do
    expect(Link.last.url).to eq "www.test.com"
  end

  xit 'has a title' do
    expect(Link.last.title).to eq "Test"
  end
end
