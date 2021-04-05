class IncomeCategory < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '給与' },
    { id: 2, name: '賞与' },
    { id: 3, name: '副収入' },
    { id: 4, name: '臨時収入' }
  ]

  include ActiveHash::Associations
  has_many :incomes
end
