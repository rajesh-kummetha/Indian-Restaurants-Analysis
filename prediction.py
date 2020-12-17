import pandas as pd
import numpy as np
from numpy import ndarray
from sklearn import linear_model
from sklearn.model_selection import train_test_split
from sklearn import metrics


a = pd.read_csv(r'/finpig/processedData/final.csv')
#print(a)

b = a['AVG_COST'].values
a['RATE_TEXT'],attribute = pd.factorize(a['RATE_TEXT'])
#print(attribute)
#print(a['RATE_TEXT'].unique())
c = a['RATING'].values 
v = a['RATE_TEXT'].values
#print(v)
#print(c)
d = a['VOTES'].values
e = a['PHOTO_COUNT'].values


rate_eff = a[['RATING', 'RATE_TEXT', 'VOTES', 'PHOTO_COUNT']] 
X = rate_eff.values
Y = a['AVG_COST'].values

X_train, X_test, Y_train, Y_test = train_test_split(X,Y,train_size = 0.7, test_size = 0.3, random_state =  10 )

reg = linear_model.LinearRegression()
reg.fit(rate_eff,a.AVG_COST)

print(reg.intercept_)
print(reg.coef_)
y_pred = reg.predict(X_train) 
z_pred = reg.predict(X_test)
print(y_pred)
print(z_pred)
f = pd.DataFrame({'Actual': Y_train, 'Predicted': y_pred})
r = pd.DataFrame({'Actual': Y_test, 'Predicted':z_pred})
print(f)
print(r)