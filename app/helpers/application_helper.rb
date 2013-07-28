module ApplicationHelper
  def attachment_image_tag br
    if br.photo_file_name.nil?
      image_tag "placeholder.png"
    else
      image_tag br.photo_url
    end
  end
end
