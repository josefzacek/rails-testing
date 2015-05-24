require 'rails_helper'

RSpec.describe ContactUsMessagesController, type: :controller do
  it 'responds successfully with an HTTP 200 status code' do
    get :new
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it 'renders the home template' do
    get :new
    expect(response).to render_template('new')
  end
end
