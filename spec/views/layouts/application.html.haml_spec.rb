require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "layouts/application.html.haml" do

  before(:each) do
    render
  end

  it 'should have the container inside the body' do
    response.should have_tag('body') do
      with_tag('div.container')
    end
  end

end
