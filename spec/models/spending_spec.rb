require 'rails_helper'

RSpec.describe Spending, type: :model do
  describe '支出登録' do
    before do
      @spending = FactoryBot.build(:spending)
    end

    context '支出登録できるとき' do
      it '全項目埋めていれば支出登録できる' do
        expect(@spending).to be_valid
      end
    end

    context '支出登録できるとき' do
      it 'spending_category_idが空では登録できない' do
        @spending.spending_category_id = nil
        @spending.valid?
        expect(@spending.errors.full_messages).to include("Spending category can't be blank", 'Spending category is not a number')
      end

      it 'spending_category_idが0では登録できない' do
        @spending.spending_category_id = 0
        @spending.valid?
        expect(@spending.errors.full_messages).to include('Spending category must be other than 0')
      end

      it 'priceが空では登録できない' do
        @spending.price = nil
        @spending.valid?
        expect(@spending.errors.full_messages).to include("Price can't be blank", 'Price is not a number')
      end

      it 'priceが数字でなければ登録できない' do
        @spending.price = 'a'
        @spending.valid?
        expect(@spending.errors.full_messages).to include('Price is not a number')
      end

      it 'priceが正の数でなければ登録できない' do
        @spending.price = '-100'
        @spending.valid?
        expect(@spending.errors.full_messages).to include('Price must be greater than or equal to 0')
      end
    end
  end
end
