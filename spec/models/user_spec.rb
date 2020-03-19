require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @affiliation = FactoryBot.create(:affiliation_1)
    @affiliation_2 = FactoryBot.create(:affiliation_2)
    @user = FactoryBot.create(:user_1)
    @user_2 = FactoryBot.create(:user_2)
  end

  describe 'バリデーションテスト' do
    describe '単順項目' do
      it '空のpasswordなら無効であること' do
        @user.password = ''
        expect(@user).not_to be_valid
      end

      it '8文字未満のpasswordなら無効であること' do
        @user.password = 'a' * 7
        expect(@user).not_to be_valid
      end

      it '129文字以上のpasswordなら無効であること' do
        @user.password = 'a' * 129
        expect(@user).not_to be_valid
      end

      it '空のnameなら無効であること' do
        @user.name = ''
        expect(@user).not_to be_valid
      end

      it '31文字以上のnameなら無効であること' do
        @user.name = 'a' * 31
        expect(@user).not_to be_valid
      end

      it '51文字以上のemailなら無効であること' do
        @user.email = "#{'a' * 45}@a.com"
        expect(@user).not_to be_valid
      end

      it '重複したemailなら無効であること' do
        @user_2.email = 'test_1@a.com'
        expect(@user_2).not_to be_valid
      end

      it '入力規則に従っていないemailなら無効であること' do
        @user_2.email = 'test_1a.com'
        expect(@user_2).not_to be_valid
      end

      it '1つしかadminが残っていないなら削除できないこと' do
        @user.destroy
        expect(@user).not_to be_valid
      end

    end
  end

end