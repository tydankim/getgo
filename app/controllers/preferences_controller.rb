# class PreferencesController
class PreferencesController < ApplicationController
  def show
    @user = User.find params[:user_id]
    @preference = @user.preference
  end

  def new
    url = 'https://getgo-api.herokuapp.com/agencies/GO/routes'
    response = HTTParty.get(url)
    response_body = JSON.parse response.body
    @routes = []
    response_body['routes'].each do |route|
      option = route['id'] + ' ' + route['long_name']
      @routes << [option, route['id']]
    end

    # routes_url = 'https://getgo-api.herokuapp.com/agencies/GO/routes'
    # routes_response = HTTParty.get(routes_url)
    # routes_body = JSON.parse routes_response.body
  end

  def edit
  end

  def create
    # @user = current_user
    #
    # @preference = Preference.find_or_initialize_by(user_id: @user.id)
    # @preference.attributes = preference_params
    # @preference.save
    #
    # @schedule = [{ name: "blah"}]


      # redirect_to schedules_path, notice: 'Preference added!'
    # else
      # redirect_to new_user_preference_path, notice: 'Please try again'
    # end
  end

  def update
    # @new_route = ..
    # @new_from_stop = ..
    # @new_to_stop = ..
    # @user = User.find(:user_id)
    # @preference = @user.preference
    # @preference.route = @new_route
    # @preference.from_stop = @new_from_stop
    # @preference.to_stop = @new_to_stop
  end

  def destroy
    @user = User.find params[:user_id]
    @preference = @user.preference
    @preference.destroy
    redirect_to schedules_path
  end

  private

  def preference_params
    params.require(:preference).permit(:route, :from_stop, :to_stop)
  end
end
