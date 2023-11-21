require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "show /events/:id" do
    event = FactoryBot.create(:event)
    visit event_url(event)
  
    assert_selector "h1", text: event.name
  end

  test "show /events/new" do
    user = FactoryBot.create(:user)
    sign_in_as user

    visit new_event_url
    assert_selector 'h1', text: 'イベント作成'
  end
end
