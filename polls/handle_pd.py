def csv_to_html_table(file_path):
    with open(file_path, 'r') as f:
        ls = f.read().split('\n')
        head = ls.pop(0).split(',')
        head.pop(0)
        head.insert(0, 'No')
        table = '<table>\n'
        table += '<thead>\n<tr>\n'
        table += ''.join(['<th>%s</th>' % col.strip('"') for col in head])
        table += '\n</tr>\n<thead>\n<tbody>\n'
        for line in ls:
            if not line:
                continue
            tmp = line.split(',')
            table += '<tr>\n'
            table += '<th>%s</th>' % tmp.pop(0).strip('"')
            table += ''.join(['<td>%s</td>' % td.strip('"') for td in tmp])
            table += '\n</tr>\n'
        table += '</tbody>\n</table>\n'
    return table
