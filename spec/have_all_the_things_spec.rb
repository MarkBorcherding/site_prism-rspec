require 'spec_helper'

describe 'foo' do

  let(:site) { TestSite.new }
  before { site.home.load }
  it 'should find all the things' do
    site.home.ul.should have_all_the_things
  end

  it "shouldn't find all the things" do
    site.home.ol.should have_all_the_things
  end
end
