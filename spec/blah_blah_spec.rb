require 'spec_helper'

describe 'foo' do

  let(:site) { TestSite.new }
  it 'should find all the things' do
    site.home.load
    site.home.ul.should be_blah
    site.home.ol.should be_blah
  end
end
