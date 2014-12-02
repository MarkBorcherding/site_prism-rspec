require 'spec_helper'

feature 'Having all the things' do
  let(:site) { TestSite.new }

  before { site.home.load }

  scenario 'when we have all the things' do
    expect(site.home.section_with_all_the_things).to have_all_the_things
  end

  scenario 'when we expect to not have all the things' do
    expect(site.home.section_with_missing_things).to_not have_all_the_things
  end

  scenario 'when we do not have all the things' do
    expect do
      expect(site.home.section_with_missing_things).to have_all_the_things
    end.to raise_exception(RSpec::Expectations::ExpectationNotMetError, /Could not find: thing_c/)
  end

  scenario 'when we expect to not find all the things' do
    expect do
      expect(site.home.section_with_all_the_things).to_not have_all_the_things
    end.to raise_exception(RSpec::Expectations::ExpectationNotMetError, /Didn't expected to find all the things for SectionWithThings/)
  end
end
