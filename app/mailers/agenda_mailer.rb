class AgendaMailer < ApplicationMailer
  def agenda_mail(agenda)
    @agenda = agenda

    mail to: @agenda.team.members.pluck(:email), subject: I18n.t('views.messages.delete_agenda')
  end
end
