class Truck
  def initialize(name)
    @name = name
  end

  def twitter_name
    @name
  end

  def twitter_name=(name)
    @name = name
  end
end

def remove_at(name)
  name.gsub("@", "")
end

[Truck.new("@rposborne"), Truck.new("mikewest")].each do |truck|
  p truck.twitter_name = remove_at(truck.twitter_name)
  p truck.twitter_name
end


Truck.all.each do |t|
  t.twitter = t.twitter.gsub("@", "")
  t.save
end
