class ActorsController < ApplicationController
  def index
    render({:template => "actor_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    @the_actor = Actor.where({:id => the_id}).at(0)
    render({:template=>"actor_templates/details"})
  end

end
