#!/usr/bin/python

def print_format_table(): 
	""" 
	Prints table of formatted text format options	
	""" 
	for style in range(8): 
		for fg in range(30,38):
			s1=''
			for bg in range(40, 48):
				frmat = ';'.join([str(style), str(fg), str(bg)])
				s1 += '\x1b[%sm %s \x1b[0m' % (frmat, frmat)
			print(s1)
		print('\n')

print_format_table() 
