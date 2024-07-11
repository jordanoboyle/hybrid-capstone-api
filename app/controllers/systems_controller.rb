class SystemsController < ApplicationController

  def index
    @systems = System.all
    render template: "systems/index"
  end

  def show
    @system = System.find_by(id: params[:id])
    render template: "systems/show"
  end
end
