require 'spec_helper'

feature "Having any of the things" do
  let(:site) { TestSite.new }

  before { site.home.load }

  scenario "when we have some of the things" do
    expect(site.home.section_with_missing_things).to have_any_of_the_things
  end

  scenario "when we have none of the things" do
    expect(site.home.section_with_none_of_the_things).to_not have_any_of_the_things
  end

  scenario "when we do not have any of the things" do
    expect do
      expect(site.home.section_with_none_of_the_things).to have_any_of_the_things
    end.to raise_exception(RSpec::Expectations::ExpectationNotMetError, /Expected to find at least part of SectionWithThings/)
  end

  scenario "when we expect to not find any of the things" do
    expect do
      expect(site.home.section_with_missing_things).to_not have_any_of_the_things
    end.to raise_exception(RSpec::Expectations::ExpectationNotMetError, /Found: thing_a, thing_b/)
  end
end
