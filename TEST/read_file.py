import xml.etree.ElementTree as ET
import os
from datetime import datetime, timedelta
import time
#from channel_list_one import channel_list
from channel import channel_list

# from channel_list_one import channel_list

new_text = []
schedule_list = []
dic = {}
encoding = "ISO-8859-1"
def generate_dic(file):
    event = {}
    tree = ET.parse(file)
    root = tree.getroot()
    event_child = root[0][1].tag
    for channel in root.findall('channel'):
        channel_name = channel.get('name')
        for id, child in enumerate(root.iter(event_child)):
            try:
                start_time_f = child.get('start_time')
                short_title = child.find('short_event_descriptor').text
                title = child.find('short_event_descriptor').get('name')
                decsription = child.find('extended_event_descriptor/text').text
                decsription = decsription.replace("   ","")
            except AttributeError:
                with open('error.txt','a') as error_file:
                    decsription = "None"
                    error_file.write(f'{datetime.now()}==> koha errorit qe file: {file} ka problem. Description ndoshte eshte bosh\n')
            try:
                start_time = datetime.strptime(start_time_f, '%Y-%m-%d %H:%M:%S').strftime("%Y%m%d%H%M%S")
                duration = child.get('duration')
                element = dict(
                    start_time=start_time,
                    duration=duration,
                    title=title,
                    short_title=short_title,
                    decsription=decsription
                )
                event[f'event_{id}'] = element
            except TypeError:
                with open('error.txt', 'a') as error_file:
                    error_file.write(f'{datetime.now()}==> koha errorit qe file: {file} ka problem. ne konvertimin e kohes\n')

    dic[channel_name] = event
    # return dic
    # print(len(get_count_root.xpath(".//event")))


# print(generate_dic('EuroSport 2 HD A1.xml'))

#
def create_dat(channel_id, channel_name_list):

    if dic.get(channel_name_list):
        for key, event in dic.get(channel_name_list).items():
            # for nr, event in value.items():
            # print(event.get('title'))
            try:
                start_time = event.get('start_time')
                start_date = start_time[0:8]
                start_hour = start_time[8:12]
                f_duration = int(event.get('duration'))
                duration = time.strftime("%H%M", time.gmtime(f_duration))


                print(start_date, start_hour, "DURATION", duration)
                program_string = channel_id + "-" + start_time + "|" + event.get('title').replace("   ","") + "|" + "||" + event.get('decsription').replace("\n", "") + "||||||||||||||||||||||||||||||||||||||\n"
                program_schedule = channel_id + "|" + channel_id + "-" + start_time + "|" + start_date + "|" + start_hour + "|" + duration + "|||||||||||||||||||||\n"

            except TypeError:
                with open('error.txt', 'a') as error_file:
                    error_file.write(f'{datetime.now()}==> koha errorit qe file {channel_name_list}: ka problem. Nuk u gjet Start_time/Duration ne Dictionary nga ky channel xml\n')
            with open('Program2.dat', 'r') as program_dat:
                dat_list = program_dat.read()
                # dat_list.close()
                if program_string in dat_list:
                    print("I FOOOOUND ONEEEEE")
                else:
                    new_text.append(program_string)
                    schedule_list.append(program_schedule)
            print(program_string)
    else:
        start_time_f = datetime.now()
        s_1 = start_time_f.strftime("%H")
        start_time = start_time_f.strftime("%Y%m%d%H%M%S")
        title = f'Programet e {channel_name}'
        start_date = start_time[0:8]
        start_hour = "0800"
        program_string = channel_id + "-" + start_time + "|" + title + "|" + "||" + title + "||||||||||||||||||||||||||||||||||||||\n"
        program_schedule = channel_id + "|" + channel_id + "-" + start_time + "|" + start_date + "|" + start_hour + "|" + "2400" + "|||||||||||||||||||||\n"
        new_text.append(program_string)
        schedule_list.append(program_schedule)


# create_dat()
for filename in os.listdir('.'):
    if not filename.endswith('.xml'): continue
    if filename == "allchannels.xml": continue
    if filename == "channelID.xml": continue
    if filename.__contains__('channelID'): continue
    if filename.__contains__('ott'):continue
    if filename == "BBF.xml": continue
    if filename == "SuperSport-4.xml": continue
    if filename == "EuroSport 2 HD A1.xml": continue
    generate_dic(filename)

try:
    for channe_id, channel_name in channel_list.items():
        create_dat(channe_id, channel_name)
except Exception:
    with open('error.txt', 'a') as error_file:
        error_file.write(f'{datetime.now()}==> koha errorit qe file: {filename} ka problem. Nuk ekzekutohet dot create_dat function\n')
with open('Program2.dat', 'w') as program_write:
    for line in new_text:
        program_write.write(line)

with open('Schedule2.dat','w') as schedule_write:
    for line in schedule_list:
        schedule_write.write(line)
print(dic.get('Top Channel'))
