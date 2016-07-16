class HomeController < ApplicationController
  include Concerns::Cars

  def index
    persist_makes(makes)

    @makes = Make.all
  end

  private
    def persist_makes(makes)
      makes.each do |maker|
        next if Make.find_by_name(maker["Nome"])
        Make.create(name: maker["Nome"], webmotors_id: maker["id"])
      end
  end
end