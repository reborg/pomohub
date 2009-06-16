require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "layouts/_footer.html.haml" do

  before(:each) do
    render
  end

  it 'contains the legalese' do
    response.should have_tag('p#legalese')
  end

  it 'contains the footer links' do
    response.should have_tag('div#footer-links')
  end

end
