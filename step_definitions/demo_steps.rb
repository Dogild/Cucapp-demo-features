Given /^the user hit the key command and a$/ do
  app.gui.simulate_keyboard_event     "a", [$CPCommandKeyMask]
  app.gui.wait_for                    "//CPTextField[cucappIdentifier='cucappIdentifier-field-name']"
  sleep(0.5)
end

Given /^the user make a left click on the add button$/ do
  app.gui.simulate_left_click         "//CPButton[cucappIdentifier='cucappIdentifier-button-bar-add']", []
  app.gui.wait_for                    "//CPTextField[cucappIdentifier='cucappIdentifier-field-name']"
  sleep(0.5)
end

Then /^I enter the value (.*)$/ do |value|
  app.gui.wait_for                    "//CPTextField[cucappIdentifier='cucappIdentifier-field-name']"
  app.gui.simulate_keyboard_events    value , []
end

Then /^I press the key enter$/ do
  app.gui.simulate_keyboard_events    $CPNewlineCharacter, []
  sleep(0.5)
end

Then /^I should have the value (.*)$/ do |value|
  app.gui.wait_for                    "//CPTextField[cucappIdentifier='cucappIdentifier-tableView-cell-"+value+"']"
  app.gui.value_is_equal              "//CPTextField[cucappIdentifier='cucappIdentifier-tableView-cell-"+value+"']", value
end

Then /^I drop (.*) on (.*)$/ do |first_value, second_value|
  app.gui.simulate_left_click                   "//CPTextField[cucappIdentifier='cucappIdentifier-tableView-cell-"+second_value+"']", []
  app.gui.simulate_dragged_click_view_to_view   "//CPTextField[cucappIdentifier='cucappIdentifier-tableView-cell-"+second_value+"']", "//CPTextField[cucappIdentifier='cucappIdentifier-tableView-cell-"+first_value+"']", []
end

