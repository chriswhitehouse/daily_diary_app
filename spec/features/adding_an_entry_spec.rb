feature 'When I want to be able to add a new Diary Entry' do
  scenario 'I want a textarea in which to submit my entry' do
    visit('/diary/new')
    expect(page).to have_field('entry')
    expect(page).to have_button('add')
  end

  scenario 'I want my entry to be recorded for future reference' do
    visit('/diary/new')
    fill_in('entry', with: "Test Entry 1")
    click_button('add')
    expect(page).to have_content('Test Entry 1 Added to Diary')
  end

end
