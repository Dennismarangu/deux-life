def index
  @rooms = Room.all
  render json: @rooms
end
def show
  @room = Room.find(params[:id])
  render json: @room
end
def update
  @room = Room.find(params[:id])
  @room.update(is_booked: params[:is_booked])
  render json: @room
end
