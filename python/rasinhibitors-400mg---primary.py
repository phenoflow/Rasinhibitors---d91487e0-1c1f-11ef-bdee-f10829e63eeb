# Victor W Zhong, Juhaeri Juhaeri, Stephen R Cole, Christian M Shay, Carolyn A Chew-Graham, Penny Gordon-Larsen, Evangelos Kontopantelis, Elizabeth J Mayer-Davis, 2024.

import sys, csv, re

codes = [{"code":"20117","system":"gprdproduct"},{"code":"61292","system":"gprdproduct"},{"code":"53220","system":"gprdproduct"},{"code":"15096","system":"gprdproduct"},{"code":"43915","system":"gprdproduct"},{"code":"47616","system":"gprdproduct"},{"code":"5988","system":"gprdproduct"},{"code":"14943","system":"gprdproduct"},{"code":"6351","system":"gprdproduct"},{"code":"58669","system":"gprdproduct"},{"code":"14870","system":"gprdproduct"},{"code":"56606","system":"gprdproduct"},{"code":"43322","system":"gprdproduct"},{"code":"9731","system":"gprdproduct"},{"code":"47467","system":"gprdproduct"},{"code":"54726","system":"gprdproduct"},{"code":"60007","system":"gprdproduct"},{"code":"40668","system":"gprdproduct"},{"code":"575","system":"gprdproduct"},{"code":"47727","system":"gprdproduct"},{"code":"41205","system":"gprdproduct"},{"code":"13123","system":"gprdproduct"},{"code":"11251","system":"gprdproduct"},{"code":"40639","system":"gprdproduct"},{"code":"46792","system":"gprdproduct"},{"code":"13821","system":"gprdproduct"},{"code":"16285","system":"gprdproduct"},{"code":"47573","system":"gprdproduct"},{"code":"42285","system":"gprdproduct"},{"code":"41203","system":"gprdproduct"},{"code":"55358","system":"gprdproduct"},{"code":"46715","system":"gprdproduct"},{"code":"24359","system":"gprdproduct"},{"code":"18202","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('rasinhibitors-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["rasinhibitors-400mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["rasinhibitors-400mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["rasinhibitors-400mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
