require 'helper'

describe AidsInfo::Client::API do
  context 'search' do
    it 'returns the the resutlt' do
      stub_request(:get, "http://aidsinfo.nlm.nih.gov/DrugsNew/drug.aspx?displayxml=true&name=combivir").
        to_return(:status => 200, :body => "", :headers => {})
      combivir = AidsInfo::Client.new.search('combivir')
      a_get('http://aidsinfo.nlm.nih.gov/DrugsNew/drug.aspx?displayxml=true&name=combivir').should have_been_made
    end
  end
end
