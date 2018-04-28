require 'rails_helper'

feature 'User adds a standard counter numerous times and sees history as a graph' do
  Steps 'Michael visits the yata site so as to track his pushups over time' do
    When 'Michael adds a tracker for pushups on the yata site' do
      visit root_path
      pending 'need a page fragment/page model implementation'
      fail 'need to create a page model to interact with page'
      # click new tracker
      # focus_on(:tracker).create_new_tracker('pushups')
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

