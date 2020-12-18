feature 'When I want to be able to add a new Diary Entry,' do
  scenario 'I want a textarea in which to submit my entry' do
    visit('/diary/new')
    expect(page).to have_field('entry')
    expect(page).to have_button('add')
  end

  scenario 'I want my entry to be recorded for future reference' do
    visit('/diary/new')
    fill_in('entry', with: 'Test Entry')
    click_button('add')
    expect(page).to have_content('Test Entry')
  end
end

feature 'When I want to be able to give each Diary Entry a title,' do
  scenario "I want a text field for title when submitting my entry" do
    visit('/diary/new')
    fill_in('title', with: 'Test Title')
    click_button('add')
    expect(page).to have_content('Test Title')
  end
end
