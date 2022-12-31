extends Node

var file = File.new()
var dirs = Directory.new()

func save_data(file_name, data):
	file.open_compressed('user://game_save', File.WRITE, File.COMPRESSION_GZIP)
	file.store_string(to_json(data))
	file.close()
	print('Записано ', to_json(data) , ' в ', file_name)
	
func load_data(file_name):
	file.open_compressed('user://game_save', File.READ, File.COMPRESSION_GZIP)
	var content = file.get_as_text()
	file.close()
	if content:
		return parse_json(content)
	else:
		return null


