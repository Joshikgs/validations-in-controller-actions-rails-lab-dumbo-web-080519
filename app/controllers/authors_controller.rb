class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to @author
    else
      # flash[:errors] = @author.errors.full_messages
      # flash[:attributes] = @author.attributes
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
