class MorseController < ApplicationController
  def index
  end

  def about
  end
  def encode
    if params[:text].present?
      flash.now[:notice] = "Encoded successfully!"
    else
      flash.now[:alert] = "Please enter text to encode."
    end
  end

 def decode
  if params[:text].present?
    flash.now[:notice] = "Decoded successfully!"
  else
    flash.now[:alert] = "Please enter Morse code to decode."
  end
end

end
