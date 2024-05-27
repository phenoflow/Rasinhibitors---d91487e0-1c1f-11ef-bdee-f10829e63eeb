# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"41743","system":"gprdproduct"},{"code":"1780","system":"gprdproduct"},{"code":"60597","system":"gprdproduct"},{"code":"34719","system":"gprdproduct"},{"code":"59903","system":"gprdproduct"},{"code":"58201","system":"gprdproduct"},{"code":"54057","system":"gprdproduct"},{"code":"55296","system":"gprdproduct"},{"code":"56975","system":"gprdproduct"},{"code":"14738","system":"gprdproduct"},{"code":"1807","system":"gprdproduct"},{"code":"11448","system":"gprdproduct"},{"code":"34937","system":"gprdproduct"},{"code":"51601","system":"gprdproduct"},{"code":"59750","system":"gprdproduct"},{"code":"1293","system":"gprdproduct"},{"code":"56204","system":"gprdproduct"},{"code":"59351","system":"gprdproduct"},{"code":"6437","system":"gprdproduct"},{"code":"52659","system":"gprdproduct"},{"code":"58108","system":"gprdproduct"},{"code":"54735","system":"gprdproduct"},{"code":"54049","system":"gprdproduct"},{"code":"56104","system":"gprdproduct"},{"code":"54843","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rasinhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rasinhibitors-150mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rasinhibitors-150mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rasinhibitors-150mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
