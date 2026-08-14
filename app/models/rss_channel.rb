class RssChannel < ApplicationRecord
    validates :url, presence: true, uniqueness: true
    validates :title, presence: true
end
