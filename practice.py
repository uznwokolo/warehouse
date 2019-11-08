import sqlite3, time
from bottle import route, run, template, post, request, redirect


@route('/stock')
def show_stock():
    db = sqlite3.connect('whstock.db')
    c = db.cursor()
    c.execute("SELECT id,name,location FROM whstock")
    data = c.fetchall()
    c.close()
    output = template('warehouse_stock', rows=data)
    return output

@route('/default')
def default():
    time.sleep(4)
    redirect('/stock') 

@post('/additem')
def addItem():
    itemId = request.forms.get('itemId')
    itemNm = request.forms.get('itemName')
    itemLc = request.forms.get('itemLocation')
    
    db = sqlite3.connect('whstock.db')
    try:
        db.execute("INSERT INTO whstock (id,name,location) VALUES (?, ?, ?)", (itemId, itemNm, itemLc))
        # If it fails due to an error, say primary key error, it skips to the except block
        # db.commit doesn't run. The code in finally block runs afterward...
        db.commit()
        db.close()
        redirect('/stock')
        #If nothing goes wrong, redirect to the stock page 
    except sqlite3.Error as e:
        #print(e)
        return template('sql_error')
        #If there's an SQL error, redirect to the sql_error template
    finally:
        db.close()   

run(host='0.0.0.0', reloader=True, port=8080, debug=True)


class StockItem(object):
    def __init__(self, si_id, si_name, si_location):
        self.stockitem_id = si_id
        self.stockitem_name = si_name
        self.stockitem_location = si_location
    
    def get_stockItemId(self):
        return self.stockitem_id
    
    def get_stockItemName(self):
        return self.stockitem_name
    
    def get_stockItemLocation(self):
        return self.stockitem_location
    
    def __repr__(self):
        return f"{self.stockitem_id}/{self.stockitem_name}/{self.stockitem_location}"


class Warehouse(object):
    def __init__(self, wh_name, wh_address):
        self.warehouse_name = wh_name
        self.warehouse_address = wh_address
        self.stock = []
        
    def get_warehouseName(self):
        return self.warehouse_name
    
    def get_warehouseAddress(self):
        return self.warehouse_address
        
    def addItemToStock(self, stock_item):
        self.stock.append(stock_item)
        print("An item has been added to warehouse stock.")
        
    def displayStock(self):
        for item in self.stock:
            print(item)
        #print(self.stock)
