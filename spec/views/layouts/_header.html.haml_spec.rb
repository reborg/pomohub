require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "layouts/_header.html.haml" do

  before(:each) do
    render
  end

  it 'contains the site actions' do
    response.should have_tag('div#site-actions') do
      with_tag('a', 'Login')
    end
  end

end
