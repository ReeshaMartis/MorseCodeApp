class MorseController < ApplicationController
  def index
  end

  def about
  end
  def encode
    if params[:text].present?
      encoded_text = MorseService.encode(params[:text])

      storage_service = StorageService.new
      @record = storage_service.create(params[:text],encoded_text)
      @result = @record.translated_text

      flash.now[:notice] = "Encoded successfully!"
    else
      flash.now[:alert] = "Please enter text to encode."
    end
  end

 def decode
  if params[:text].present?
    decoded_text = MorseService.decode(params[:text])

    storage_service = StorageService.new
    @record = storage_service.create(decoded_text,params[:text] )
    @result = @record.original_text

    flash.now[:notice] = "Decoded successfully!"
  else
    flash.now[:alert] = "Please enter Morse code to decode."
  end
end

end
