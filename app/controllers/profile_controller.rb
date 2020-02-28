class ProfileController < ApplicationController
  def index
    # @instruments = current_user.instruments
    @instruments = if current_user.admin
      policy_scope(Instrument)
    else
      policy_scope(Instrument).where(user: current_user)
    end
  end
end
