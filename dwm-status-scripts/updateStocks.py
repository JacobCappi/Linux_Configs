import yfinance as yf


stocks = yf.Tickers("voo ftec")
names = ["VOO", "FTEC"]


for stock in names:
    name = stocks.tickers[stock].info['symbol']
    price = stocks.tickers[stock].info['regularMarketPrice']
    prevClose = stocks.tickers[stock].info['regularMarketPreviousClose']
    percent_change = str(round((((price - prevClose)/prevClose) * 100), 2))
    print(name +":",price,"("+percent_change+")", end=" ")
