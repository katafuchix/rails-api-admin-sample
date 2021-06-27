class Master
  class InquiryCategory < Master
    has_many :inquiries
    validates :name, length: { minimum: 1, maximum: 50 }
  end
end
