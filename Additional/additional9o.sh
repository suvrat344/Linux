#!/bin/bash

# Raj is a lazy student,he is in his bachelor's degree programme.He has decided to apply for a masters in data science program in    various universities,so he wrote a general letter template and populated the respective values such as university name,experience andcurrent position.
# Write a script to achieve the same and get the university name,experience,and current_position from the standard input respectivelyand print the populated text.
# **Template: template.txt**
# Dear Members of the Admission Committee,
# I am writing to apply for the Master's in Data Science program at [University Name]. With a strong background in data analysis and # a passion for innovation, I am eager to join your esteemed institution to further refine my skills and contribute to the field.
# Through [mention years] of experience in [Your Current or Previous Position], I've gained proficiency in programming, statistics,  # and data visualization. I am drawn to [University Name] for its reputation, cutting-edge research, and interdisciplinry approach,  # which align perfectly with my aspirations.
# I am excited about the prospect of learning from [University Name]'s distinguished faculty and collaborating with fellow students  # who share my enthusiasm. Enclosed is my resume for your consideration.
# Thank you for the opportunity to apply. I look forward to the chance of joining the Master's in Data Science program at [University# Name].
# Sincerely,
# Raj

read -r university_name
read -r experience
read -r current_position

sed -e "s/\[University Name\]/$university_name/g" -e "s/\[mention years\]/$experience/g" -e "s/\[Your Current or Previous Position\]/$current_position/g" template.txt
