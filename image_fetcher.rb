# update the methods below to make the test pass.

class ImageFetcher

  def initialize(data)
    @data = data
  end

  def count_children
    @data["data"]["children"].count
  end

  def first_child
    @data["data"]["children"].first["data"]
  end

  def all_images
    @data["data"]["children"].map {|child| child["data"]["url"] }
  end

  # fetch only the images that begin with `http://i.imgur.com`
  def only_imgur_images
    only_imgur = []
    children = @data["data"]["children"].each do |child|
      if child["data"]["url"].include?("http://i.imgur.com")
        only_imgur << child["data"]["url"]
      end
    end
    only_imgur
  end
end
