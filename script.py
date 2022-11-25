import os
from xml.etree import ElementTree as ET

path_of_the_directory = '/home/rballiu/EPG/python_script'
error_file = 'error_channel.txt'

def if_file_exist():
	if os.path.exists(error_file):
		append_write = 'a'
	else:
		append_write = 'w'
	return append_write

def channel_list():
	try:
		channel_list_d = {}
		tree = ET.parse('channelID.xml')
		root = tree.getroot()
	
		for child in root:
			channel_list_d[child.attrib.get('name')] = child.attrib.get('id')
		return channel_list_d
	except FileNotFoundError:	
		errori = open(error_file, if_file_exist())
		errori.write(FileNotFoundError + '\n')

def get_channel_conntent():
	try:
		for filename in os.listdir(path_of_the_directory):

			if filename.endswith(".xml") and filename != 'channelID.xml':
				tree = ET.parse(filename)
				root = tree.getroot()
				for child in root:
					if child.attrib.get('name') not in channel_list():	
						missing_channel = child.attrib.get('name') + " nga " + filename + " Nuk ekziston ne file channelID.xml"
						errori = open(error_file, if_file_exist())
						errori.write(missing_channel + '\n')
	except OSError:
		errori = open(error_file, if_file_exist())
		errori.write(OSError + '\n')


get_channel_conntent()
