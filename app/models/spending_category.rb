class SpendingCategory < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '食費' },
    { id: 2, name: '日用品' },
    { id: 3, name: '家賃' },
    { id: 4, name: '電気・ガス・水道' },
    { id: 5, name: '通信費' },
    { id: 6, name: '交通費' },
    { id: 7, name: '交際費' },
    { id: 8, name: '美容・ファッション' },
    { id: 9, name: '自己投資' },
    { id: 10, name: '病院' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :spendings
end
