class Budget < SitePrism::Page
    set_url 'http://localhost:8000/budget'

    element :category_select, 'select[name="categoryId"]'
    element :description_field, 'input[name="description"]'
    element :value_field, 'input[name="value"]'
    element :table, '.containers-BudgetGrid-style__budgetGrid'
    element :report_link, 'a[href="/reports"]'
    element :last_tr_from_table, 'tbody > tr:last-of-type'

    def choose_income
        select("Income", from: "categoryId").select_option
    end

    def choose_category(category)
        select(category, from: "categoryId").select_option
    end

    def format_value(value)
        value.gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1,")
    end

end