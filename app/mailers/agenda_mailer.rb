class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda

    mail to: @agenda.team.members.pluck(:email), subject:"アジェンダを削除しました"
  end
end
