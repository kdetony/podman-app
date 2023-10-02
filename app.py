#import mysql.connector
import pymysql

def mysqlconnect(): 
    conn = pymysql.connect(user='python', passwd='password',db='pydb')
    cur = conn.cursor()
    cur.execute("SELECT * FROM py_queue")
    output = cur.fetchall()
    print(output)
    # To close the connection
    conn.close()
  
# Driver Code
if __name__ == "__main__":
    mysqlconnect()
