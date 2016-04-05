Given(/^I am on the dominos homepage$/) do
  visit 'https://www.dominos.com'
  find('.qa-Cl_order').click
end


When(/^I continue to delivery$/) do
  find('.js-delivery').click
  find('#Address_Type_Select').send_keys 'Hotel'
  find('#Street').send_keys '335 POWELL ST # 503'
  find('#Address_Line_2').send_keys '503'
  find('#City').send_keys 'SAN FRANCISCO'
  find('#Region').send_keys 'CA'
  find('#Postal_Code').send_keys '94102-1804'
  find('.js-search-cta').click
end

Then(/^all entrees are available for order$/) do
  expect(page).to have_css('#entreesPage')
end
