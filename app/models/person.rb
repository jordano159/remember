class Person < ApplicationRecord
    has_rich_text :life_story
    include PgSearch::Model
    pg_search_scope :search, 
                    against: [:name, :age, :rank, :fall_date, :heb_fall_date, :burial_place, :ken, :garin],
                    using: {
                        tsearch: { prefix: true }
                    }
end
