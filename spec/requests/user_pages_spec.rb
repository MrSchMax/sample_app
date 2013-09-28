require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "singup page" do
  	before { visit singup_path }

  	it { should have_content('Sing up') }
  	it { should have_title(full_title('Sing up')) }
  end
end
