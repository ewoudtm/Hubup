require 'rails_helper'

RSpec.describe User, type: :model do

  describe "association with event" do
    let(:user) { create :user }
    let!(:event1) { create :event, user: user }
    let!(:event2) { create :event, user: user }

    it "has many events" do
      expect(user.events).to include(event1)
      expect(user.events).to include(event2)
    end

    it "deletes associated events" do
      expect { user.destroy }.to change(Event, :count).by(-2)
    end

  end

  describe "association with registring" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:registration) { create :registration, event: event, user: guest_user }

    it "has registrations" do
      expect(guest_user.registered_events).to include(event)
    end
end

end
