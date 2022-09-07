require 'rails_helper'

RSpec.describe User, type: :model do
  describe "factory" do
    let!(:user) { create(:user) }

    context "レコードを登録した際" do
      it "Userモデルである" do
        expect(user.is_a? User).to be_truthy
      end
    end
  end
end
