class StorageService
    def index
        records = Morsestore.all
        return records
    end

    def create(original_text,translated_text)
        original_text_up = original_text.strip.upcase
        translated_text_up = translated_text.strip 
        record = Morsestore.find_by(original_text: original_text_up)
        if record
            record
        else
            Morsestore.create!(original_text: original_text_up,translated_text: translated_text_up)
        end
    end
end
