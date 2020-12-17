feature 'When I want to be able to add a new Diary Entry' do
  scenario 'I want a form in which to submit my entry' do
    visit('/diary/new')
    expect(page).to have_field('entry')
    expect(page).to have_button('add')
  end
end
