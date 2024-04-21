#!/bin/awk -f

# A defined region in file is such that the set of lines that starts with the line `# REGION` and ends with the line `# ENDREGION`.  Write an AWK script  to print the lines that contain only digits within the defined region.

/^# REGION$/,/^# ENDREGION$/{
	if($0 ~ /^[0-9]+$/){
		print $0
	}
}
