class Photo < ActiveRecord::Base

  def gen_link(direction)
    if direction == "prev"
      linkobj = Photo.where("id < ?", id).order("id DESC").first
    else
      linkobj = Photo.where("id > ?", id).order("id ASC").first
    end

    linkobj
  end
end
