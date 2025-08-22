from collections import Counter
import re
import pandas as pd

file_path = '/Users/ade/Downloads/_chat.txt'

with open(file_path, 'r', encoding='utf-8') as file:
    chat_data = file.readlines()

message_pattern = re.compile(r'^\[\d{1,2}/\d{1,2}/\d{2,4}, \d{1,2}:\d{2}(?::\d{2})?\s?[APMapm]{0,2}\]\s([^:]+):')

names = []
for line in chat_data:
    match = message_pattern.match(line)
    if match:
        names.append(match.group(1))

user_message_counts = Counter(names)

top_5_users = user_message_counts.most_common(20)

top_5_df = pd.DataFrame(top_5_users, columns=["User", "Message Count"])

print(top_5_df)