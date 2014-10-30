require 'spec_helper'

feature "Widget management" do
  let(:site) { TestSite.new }

  before { site.home.load }

  scenario "when we have all the things" do
    expect(site.home.section_with_all_the_things).to have_all_the_things
  end

  scenario "when we do not have all the things" do
    expect(site.home.section_with_missing_things).to have_all_the_things
  end
end
