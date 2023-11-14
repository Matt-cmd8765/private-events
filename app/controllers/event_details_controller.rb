class EventDetailsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @event_details = @event.event_details.create(attendee_params)
    redirect_to events_path(@event)
  end

#   def destroy
#     @article = Article.find(params[:article_id])
#     @comment = @article.comments.find(params[:id])
#     @comment.destroy
#     redirect_to article_path(@article), status: see_other
#   end

  private
    def attendee_params
      params.require(:event_detail).permit(:attendee_id, :attended_event_id)
    end

#class end
end

