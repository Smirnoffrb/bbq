module ApplicationHelper
  # Возвращает путь к аватарке данного юзера
  def user_avatar(user)
    if user.avatar.attached?
      user.avatar.variant(:thumb)
    else
      asset_path('user.png')
    end
  end

  def fa_icon(icon_class)
    content_tag 'i', '', class: "bi bi-#{icon_class}"
  end

  def user_avatar_thumb(user)
    if user.avatar.present?
      user.avatar.variant(:thumb)
    else
      asset_path('user.png')
    end
  end

  def event_photo(event)
    if event.photos.any?
      event.photos.last
    else
      asset_path('event.jpg')
    end
  end

  def event_thumb(event)
    if event.photos.any?
      events.photos.sample.variant(:thumb)
    else
      asset_path('event_thumb.jpg')
    end
  end
end

