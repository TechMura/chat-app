class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  # imageファイルとmessagesテーブルを紐づける。messagesテーブルにカラムを追加する必要はない。
  has_one_attached :image

  validates :content, presence: true
end
