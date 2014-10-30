require 'spec_helper'

describe 'Examples of messages' do

  let(:site) { TestSite.new }
  before { site.home.load }
  it 'should find all the things' do
    site.home.section_with_all_the_things.should have_all_the_things
  end

  it "shouldn't find all the things" do
    site.home.section_with_missing_things.should have_all_the_things
  end
end
