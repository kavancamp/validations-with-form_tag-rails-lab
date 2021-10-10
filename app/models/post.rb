class Post < ActiveRecord::Base
    validates :title, presence:true, allow_blank: false
    validates :content, length: { minimum: 100,
    too_short: "%{count} characters is the minimum allowed" }, allow_blank: false
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
end
