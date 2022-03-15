class OwnerMailer < ApplicationMailer
  def owner_mail(owner)
    @owner = owner
    
    mail to: @owner, subject: "管理者になりました！"
  end
end
