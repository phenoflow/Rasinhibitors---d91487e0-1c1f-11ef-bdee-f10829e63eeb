# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"56240","system":"gprdproduct"},{"code":"58455","system":"gprdproduct"},{"code":"20975","system":"gprdproduct"},{"code":"828","system":"gprdproduct"},{"code":"55791","system":"gprdproduct"},{"code":"61564","system":"gprdproduct"},{"code":"5713","system":"gprdproduct"},{"code":"61651","system":"gprdproduct"},{"code":"7091","system":"gprdproduct"},{"code":"38991","system":"gprdproduct"},{"code":"60502","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rasinhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rasinhibitors-375mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rasinhibitors-375mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rasinhibitors-375mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
