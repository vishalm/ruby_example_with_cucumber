Given(/^I have two number ([-+]?[0-9]*\.?[0-9]+) and ([-+]?[0-9]*\.?[0-9]+) into the calculator$/) do |param1, param2|
  @var1 = param1.to_f
  @var2 = param2.to_f
end
When(/^I perform (addition|subtraction|multiplication|division)$/) do |operator|
  @actual_result = SimpleCalculator.new.send(operator,@var1,@var2)
end
Then(/^the result should be ([-+]?[0-9]*\.?[0-9]+) on the screen$/) do |expected_result|
  expect(@actual_result).to eq(expected_result.to_f)
end