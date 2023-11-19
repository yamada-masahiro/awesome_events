class TicketsController < ApplicationController
  def new
    # events#show にて logged_in? == false の場合、
    # 「参加する」リンクをクリックすると、このアクションが呼び出される
    raise ActionController::RoutingError, '未ログイン状態で TicketsController#new にアクセス'
  end

  def create
    event = Event.find params[:event_id]
    @ticket = current_user.tickets.build do |t|
      t.event_id = event.id
      t.comment = params[:ticket][:comment]
    end

    if @ticket.save
      redirect_to event, notice: 'このイベントに参加表明しました'
    end
  end
end
