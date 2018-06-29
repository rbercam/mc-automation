require 'pry'

Given("I am on budget website") do
    budget.load
end

When("I add a new inflow with {string} and {string}") do |description, value|
    @budget.category_select.click
    @budget.choose_income
    @budget.description_field.set description
    @budget.value_field.set value
    click_button('Add')
end

Then("I see inflow registered") do
    within(@budget.table) do
        expect(@budget.last_tr_from_table.text).to include('Income')
        expect(@budget.last_tr_from_table.text).to include('Test')
        expect(@budget.last_tr_from_table.text).to include('$100.00')
    end
end