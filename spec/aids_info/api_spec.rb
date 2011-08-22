require 'helper'

describe AidsInfo::Client::API do
  context 'search' do
    it 'returns the the resutlt' do
      stub_get('DrugsNew/drug.aspx?displayxml=true&name=combivir').
        to_return(:status => 200, :body => "", :headers => {})
      AidsInfo::Client.new.search('combivir')
      a_get('DrugsNew/drug.aspx?displayxml=true&name=combivir').should have_been_made
    end
  end
end
