require "rails_helper"

feature "User creates todos" do
    scenario "sucessfully" do
        visit root_path
        click_on "Add a new todo"
        fill_in "todo_title", with: "Buy Milk"
        click_on "Submit"

        expect(page).to have_css ".todos li", text:"Buy Milk"
    end
end