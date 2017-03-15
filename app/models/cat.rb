class Cat < ApplicationRecord
  has_attached_file :picture,
                    styles: { medium: '300x300>' },
                    path: '/cats/:id/:style.:extension',
                    default_url: '/cats/:id/:style.png'

  validates_attachment_content_type :picture,
                                    content_type: ['image/jpeg',
                                                   'image/jpg',
                                                   'image/png']

  def medium_picture_url
    expire_seconds = 7.days.seconds # match minio client
    picture.expiring_url(expire_seconds, :medium)
  end
end
