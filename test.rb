require 'roo-xls'

# xlsx = Roo::Spreadsheet.open('./sheet.xls')
# xlsx = Roo::Excelx.new("./new_prices.xlsx")

# Use the extension option if the extension is ambiguous.
xlsx = Roo::Spreadsheet.open 'sheet', extension: :xls
# xlsx = Roo::Spreadsheet.open('sheet', extension: :xls)

xlsx.info