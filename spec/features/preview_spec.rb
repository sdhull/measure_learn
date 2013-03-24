require 'spec_helper'

describe "Previewing a report", :js => true do
  let(:query) do
    "SELECT *, count(1) as num_sales, date(created_at) as sale_date from sales group by sale_date"
  end

  it "allows a user to preview their report" do
    visit "/measure_learn/reports/new"
    fill_in "Query", :with => query
    click_on "Preview"
    page.should have_selector("svg")
    json = page.evaluate_script "JSON.stringify(graph.series[0].data)"
    hash = JSON.parse(json)
  end
end
