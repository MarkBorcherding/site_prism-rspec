
require_relative '../../lib/site_prism/rspec/matchers/have_all_the_things'
module SitePrism::RSpec::Matchers
  RSpec.describe HaveAllTheThings, '#matches?' do

    context "when things do not match" do
      it { expect(subject.matches?(actual)).to be_false}
    end
  end
end
