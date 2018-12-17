
When("I add new outflow with {string} and {string} and {string}") do |category, description, invalid_value|
    budget.category_select.click
    budget.choose_category(category)
    budget.description_field.set description
    budget.value_field.set invalid_value
end

Then("I can not register outflow without fill all fields") do
    expect(page).to have_button('Add', disabled: true)
end

When("I add new outflow successfuly with {string} and {string} and {string}") do |category, description, value|
    @category = category
    @value = budget.format_value(value)
    budget.category_select.click
    budget.choose_category(category)
    budget.description_field.set description 
    budget.value_field.set value
    click_button('Add')
end
  
Then("I check it on report screen") do
    report
    budget.report_link.click
    within(report.graph_legend_div) do
        expect(report.graph_legend.text).to include(@category)
        expect(report.graph_legend.text).to include(@value)
    end
end