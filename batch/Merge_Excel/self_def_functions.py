# import openpyxl
# import os

def copy_data(src, dest_cell):

    for row in src:
        for cell in row:
            dest_cell.value = cell.value
            dest_cell = dest_cell.offset(row=0, column=1)
        dest_cell = dest_cell.offset(row=1, column=1-(dest_cell.col_idx))
