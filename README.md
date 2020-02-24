# Data Wrangling
**Project 1 (Pew research dataset)**

This dataset consists of religions and the number of candidates sampled in a research survey
Problematic columns renamed.
Dataset put in a tidy format.

**The final output has the following columns**

- religion, string
- income_range, string
- frequency, integer

**Project 2 (Billboard weekly music rank dataset)**

This dataset was in an untidy format and the goal was to reshape this dataset.
**The final dataframe includes**
- artiste, string
- track, string
- genre, string
- date.entered, datetime
- date.peaked, datetime
- week, integer; 

*I used the code below to extract the week number from the text*

music['week'] = music['week'].str.extract('(\d+)').astype(int)

- rank, float. Ideally, we should use an int data type for the rank but we have nulls in that column. The Pandas library does not allow you to have an integer column with nulls.
- entered_to_peak, int: This is a column with the difference between the date the song peaked and the date it entered into the billboard chart.



