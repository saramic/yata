require 'rails_helper'

feature 'User adds a standard counter numerous times and sees history as a graph', js: true do
  Steps 'Michael visits the yata site so as to track his pushups over time' do
    When 'Michael adds a tracker for pushups on the yata site' do
      visit root_path
      focus_on(:tracker) do |tracker|
        tracker.create_new_tracker('pushups')
        pending 'need a way to add a value to a tracker'
        tracker.add_value(40)
      end
      # click new tracker
      # name "pushups"
      # add number 40
    end

    Then 'he can successfully save his tracking' do
      # click save
      # see success message
    end

    When 'Michael visits the yata site again' do
      # visit site
    end

    Then 'he sees the tracked data from last time' do
      # data is there
    end

    And 'he can add more data' do
      # change data
      # save
    end

    When 'he looks at graphs' do
      # show graph
    end

    Then 'he sees graphed data over time' do
    end
  end
end

