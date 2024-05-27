# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"44778","system":"gprdproduct"},{"code":"4645","system":"gprdproduct"},{"code":"55821","system":"gprdproduct"},{"code":"55187","system":"gprdproduct"},{"code":"11864","system":"gprdproduct"},{"code":"61442","system":"gprdproduct"},{"code":"60076","system":"gprdproduct"},{"code":"24484","system":"gprdproduct"},{"code":"53833","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rasinhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rasinhibitors-160mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rasinhibitors-160mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rasinhibitors-160mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
