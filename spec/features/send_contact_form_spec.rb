require 'spec_helper'

feature 'send form' do
  scenario 'with valid attributes' do
    visit new_contact_us_message_path
    fill_in 'contact_us_message[name]', with: 'My Title'
    fill_in 'contact_us_message[email]', with: 'email@josef.com'
    fill_in 'contact_us_message[subject]', with: 'subj'
    fill_in 'contact_us_message[content]', with: 'Content'
    click_on 'Send'

    expect(page).to have_content('Thank you for your message')
  end

  scenario 'with invalid attributes' do
    visit new_contact_us_message_path
    fill_in 'contact_us_message[name]', with: 'My Title'
    fill_in 'contact_us_message[email]', with: 'email'
    fill_in 'contact_us_message[subject]', with: 'subject'
    fill_in 'contact_us_message[content]', with: 'Content'
    click_on 'Send'

    expect(page).to have_content('ContactUsMessages#new')
  end
end
