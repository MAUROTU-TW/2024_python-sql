import streamlit as st

#st.write("# Hello!sreamlitWord")


import psycopg2
connection = psycopg2.connect(host='dpg-csehq5jtq21c738c82g0-a.singapore-postgres.render.com',database='render_a21',user='render_a21_user',password='LtyqwUeXcgYPiPe9v4oBjlzm0vyOV9l9')
cursor = connection.cursor()
cursor.execute("SELECT * FROM stations;")
rows = cursor.fetchall()
names = []
for row in rows:
    names.append(row[2])

option = st.selectbox(
    "請選擇您最愛的車站?",
    names
)

st.write("您的最愛是:", option)

    
#st.write(names)

