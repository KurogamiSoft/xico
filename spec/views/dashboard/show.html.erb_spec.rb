# spec/views/dashboard/show.html.erb_spec.rb

require 'rails_helper'

RSpec.describe "dashboard/show.html.erb", type: :view do
  it 'displays the default content' do
    render
    expect(rendered).to match(/<h1>Dashboard#show<\/h1>/)
    expect(rendered).to match(/<p>Find me in app\/views\/dashboard\/show.html.erb<\/p>/)
  end
end
