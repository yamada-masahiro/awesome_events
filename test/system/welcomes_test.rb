require "application_system_test_case"

class WelcomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
  
    assert_selector "h1", text: "イベント一覧"
  end

  test "show future event but no past one on the root page" do
    now = Time.zone.now
    future_event = FactoryBot.create(:event, start_at: now + 3.days)
    past_event   = FactoryBot.create(:event, start_at: now + 1.day )

    travel_to now + 2.days do
      visit root_url
      assert_selector    'h5', text: future_event.name
      assert_no_selector 'h5', text:   past_event.name
    end
  end
end
