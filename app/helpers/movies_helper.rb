module MoviesHelper

def image_form_column(record, input_name)
  file_column_field 'record', :image, :onkeypress=> 'return numbersonly(event, false)'
end

#onkeypress event is used to advoid typing characters in file field

def image_column(record)
  image_tag url_for_file_column(record, 'image') if record.image
end
  
end
