class EventMailer < ApplicationMailer

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    # Берём у юзер его email
    # Subject тоже можно переносить в локали
    mail to: event.user.email, subject: "Новая подписка на #{event.title}"
  end

  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email, subject: "Новый комментарий @ #{event.title}"
  end

  def photo(photo, email, event)
    @photo = photo
    @event = event

    mail to: email, subject: "Новое фото #{event.title}"
  end
end
