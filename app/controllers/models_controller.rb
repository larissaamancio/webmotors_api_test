class ModelsController < ApplicationController
  include Concerns::Cars

  def index
    persist_models(params[:webmotors_make_id])

    @models = Model.where(make_id: params[:webmotors_make_id])
  end

  private
  def persist_models(make_id)
    models({ marca: make_id }).each do |model|
      unless Model.where(name: model['Nome'], make_id: make_id).any?
        Model.create(make_id: make_id, name: model["Nome"])
      end
    end
  end
end
