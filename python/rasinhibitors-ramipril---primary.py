# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"56704","system":"gprdproduct"},{"code":"57235","system":"gprdproduct"},{"code":"56148","system":"gprdproduct"},{"code":"57073","system":"gprdproduct"},{"code":"761","system":"gprdproduct"},{"code":"62039","system":"gprdproduct"},{"code":"32857","system":"gprdproduct"},{"code":"57658","system":"gprdproduct"},{"code":"45264","system":"gprdproduct"},{"code":"61985","system":"gprdproduct"},{"code":"147","system":"gprdproduct"},{"code":"52399","system":"gprdproduct"},{"code":"34698","system":"gprdproduct"},{"code":"55299","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rasinhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rasinhibitors-ramipril---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rasinhibitors-ramipril---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rasinhibitors-ramipril---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
