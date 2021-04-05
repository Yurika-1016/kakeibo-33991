require 'rails_helper'

RSpec.describe Income, type: :model do
  describe '収入登録' do
    before do
      @income = FactoryBot.build(:income)
    end
    context '収入登録できるとき' do
      it '適切な情報を全て入力すると登録できる' do
        expect(@income).to be_valid
      end
    end

    context 'ユーザー登録できないとき' do
      it 'income_category_idが空では登録できない' do
        @income.income_category_id = nil
        @income.valid?
        expect(@income.errors.full_messages).to include("Income category can't be blank", 'Income category is not a number')
      end
      it 'income_category_idが0では登録できない' do
        @income.income_category_id = 0
        @income.valid?
        expect(@income.errors.full_messages).to include('Income category must be other than 0')
      end
      it 'priceが空では登録できない' do
        @income.price = nil
        @income.valid?
        expect(@income.errors.full_messages).to include("Price can't be blank", 'Price is not a number')
      end
      it 'priceが正の数以外では登録できない' do
        @income.price = -100
        @income.valid?
        expect(@income.errors.full_messages).to include('Price must be greater than or equal to 0')
      end
      it 'priceが数字以外では登録できない' do
        @income.price = 'a'
        @income.valid?
        expect(@income.errors.full_messages).to include('Price is not a number')
      end
    end
  end
end
