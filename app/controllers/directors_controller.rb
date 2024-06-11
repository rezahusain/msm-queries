class DirectorsController < ApplicationController
  def index
    render({:template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    @the_director = Director.where({:id => the_id}).at(0)
    render({:template=>"director_templates/details"})
  end

  def young
    render({:template=>"director_templates/youngest"})
  end

  def old
    render({:template=>"director_templates/oldest"})
  end

end
