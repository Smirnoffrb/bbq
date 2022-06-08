class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  validates :event, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }
  validate :avoid_subscription_for_event_owner
  validate :user_exists

  def user_name
    user&.name || super
  end

  def user_email
    user&.email || super
  end

  def avoid_subscription_for_event_owner
    errors.add(:user_email, :own_event) if user == event.user
  end

  def user_exists
    errors.add(:user_email, :cant_use) if User.exists?(email: user_email)
  end
end
