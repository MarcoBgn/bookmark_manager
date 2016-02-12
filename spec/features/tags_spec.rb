
feature 'Tags' do
  scenario 'visit a page filtered by bubbles' do
    visit_and_add_tag_bubbles
    visit_and_add_tag
    visit('/tags/bubbles') 
    expect(page).to have_content('soap.com')
    expect(page).to_not have_content('bbc.news.co.uk')
  end

  scenario 'User can add more tags to a link' do
    visit_and_add_tag
    click_button('BBC News')
    expect(page.status_code).to eq 200
    fill_in('tag', with: 'british') 
    click_button('Add Tag')
    expect(page).to have_content "Tags: news, british"
  end

end
