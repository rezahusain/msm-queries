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
    @youngest_director = Director.order(dob: :desc).limit(1).at(0)
    @date = @youngest_director.dob.strftime("%B %e, %Y")
    render({:template=>"director_templates/youngest"})
  end

  def old
    @oldest_director = Director.order(:dob).limit(1).at(0)
    @date = @oldest_director.dob.strftime("%B %e, %Y")
    render({:template=>"director_templates/oldest"})
  end

end
