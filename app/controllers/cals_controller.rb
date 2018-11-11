class CalsController < ApplicationController
  def index
    @query = params[:query]
    @tkk = params[:tkk]

    source = File.read(Rails.root.join("app/assets/javascripts/cals_hash.js"))
    context = ExecJS.compile(source)
    unless(@result = context.call("calcHash", @query, @tkk))
      errors.add :membership_number, "is an invalid number"
    end
  end

  def show
    render html: "Hihi"
  end
end