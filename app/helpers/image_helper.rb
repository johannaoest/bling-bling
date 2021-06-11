module ImageHelper
  def choose_image(bed)
    if bed.photo.attached?
      cl_image_path bed.photo.key
    else
      asset_path 'new_bed_icon.jpg'
    end
  end
end
