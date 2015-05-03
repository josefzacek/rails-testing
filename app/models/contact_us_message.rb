class ContactUsMessage
  include ActiveModel::Model
  attr_accessor :name, :email, :subject, :content

  validates :name, :email, :subject, :content, presence: true
  validates_format_of :email, with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
end
