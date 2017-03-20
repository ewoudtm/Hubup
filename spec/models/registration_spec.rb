require 'rails_helper'

RSpec.describe Registration, type: :model do

  describe ".order_by_creation_date" do
    let(:registration1) {create :registration, event: event, user: user, created_at: 5.days.ago}
    let(:registration2) {create :registration, created_at: 4.days.ago}
    let(:registration3) {create :registration, created_at: 6.days.ago}

    it "returns an array of registrations order in an ascending order of creation dates" do
      expect(Registration.order_by_creation_date).to match_array [registration2, registration1, registration3]
    end
  end






end
