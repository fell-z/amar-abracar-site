class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :validatable

  before_destroy :ensure_an_admin_remains

  private

  def ensure_an_admin_remains
    if AdminUser.count <= 1
      errors.add(:base, "Não pode deletar última conta de administrador")
      throw :abort
    end
  end
end
