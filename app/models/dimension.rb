class Dimension < ApplicationRecord
  # METER = ["< 10m", "10-20m", "> 20m"]
  # validates :meter, inclusion: { in: METER }

  def name
    meter
  end
end
