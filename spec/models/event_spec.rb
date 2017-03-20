require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      event = Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "is invalid without a description" do
      event = Event.new(description: "")
      event.valid?
      expect(event.errors).to have_key(:description)
    end

    it "is invalid with a description longer than 500 characters" do
      event = Event.new(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus porta mi nec urna facilisis, nec porttitor felis sagittis. In porttitor tellus vel nibh fermentum, at ornare tellus ultrices. Pellentesque condimentum aliquam sollicitudin. Mauris posuere lectus vel sagittis luctus. Quisque volutpat tellus orci. Mauris porttitor ipsum consequat elit sollicitudin, eget lacinia tortor maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Maecenas nec sapien id dolor facilisis sodales vitae quis sapien. Nulla fringilla elit dolor, sit amet cras amet.")
      event.valid?
      expect(event.errors).to have_key(:description)
    end
  end

  describe "#bargain?" do
    let(:bargain_event) { create :event, price: 20 }
    let(:non_bargain_event) { create :event, price: 200 }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_event.bargain?).to eq(true)
      expect(non_bargain_event.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
    let!(:event1) { create :event, price: 100 }
    let!(:event2) { create :event, price: 200 }
    let!(:event3) { create :event, price: 300 }

    it "returns a sorted array of events by prices" do
      expect(Event.order_by_price).to match_array [event1, event2, event3]
    end
  end

  describe "association with user" do
    let(:user) { create :user }

    it "belongs to a user" do
      event = user.events.new

      expect(event.user).to eq(user)
    end
  end

  describe "association with booking" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:registration) { create :registration, event: event, user: guest_user }

    it "has guests" do
      expect(event.guests).to include(guest_user)
    end
  end

  describe ".alphabetized" do
    let!(:event1) { create :event, name: "Testing event"}
    let!(:event2) { create :event, name: "Another testing event" }
    let!(:event3) { create :event, name: "Yet another testing event" }

    it "returns a sorted array of events by name" do
      expect(Event.alphabetized).to match_array [event2, event1, event3]
    end
  end

  describe ".published" do
    let(:event1) {create :event, active: "true"}
    let(:event2) {create :event, active: "false"}
    let(:event3) {create :event, active: "true"}

    it "returns an array of published events" do
      expect(Event.published).to match_array [event1, event3]
    end
  end

  describe ".starts_before_and_ends_after" do
    let(:event1) {create :event, starts_at: 5.days.from_now, ends_at: 10.days.from_now}
    let(:event2) {create :event, starts_at: 15.days.from_now, ends_at: 20.days.from_now}
    let(:event3) {create :event, starts_at: 2.days.from_now, ends_at: 8.days.from_now}

    it "returns and array of events that start before and end after 2 given dates" do
      expect(Event.starts_before_and_ends_after(7.days.from_now)).to match_array [event1,event3]
    end
  end


end
