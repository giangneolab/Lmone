class Place < ApplicationRecord
  validates :name, :introduce, :logo_url, :county, :address, :phone_number, presence: true

  scope :by_county, -> (county) { where county: county }
  scope :by_catalog, -> (catalog) { where catalog: catalog }
  scope :hot_places, -> { order(views_count: :DESC) }
  # scope :recomended, -> { options }
  scope :search_name, -> (search) { where('name LIKE ?', "%#{search}%") }

  def self.upcoming_dating
    []
    # datings.where('end_date >= ? ', Time.zone.now)
  end

  def self.cutleries
    []
    # datings.where(status: 'done')
  end

  def self.upcoming_promotion
    []
    # promotions.where('end_date >= ? ', Time.zone.now)
  end

  def self.dating?
    present_dating.present?
  end

  def self.promotion?
    upcoming_promotion.present?
  end
end
