module PageFragments
  module Tracker
    def create_new_tracker(tracker_name)
      browser.find('.new-tracker').click
      browser.find('.new-tracker-name').set(tracker_name)
      browser.find('.new-tracker-create').click
    end
  end
end
