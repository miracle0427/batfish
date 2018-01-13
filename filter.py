with open('MAXSMT.smt', 'r') as infile, open('clean.smt', 'w') as outfile:
    data = infile.read()
    data = data.replace("\\|", "")
    outfile.write(data)
