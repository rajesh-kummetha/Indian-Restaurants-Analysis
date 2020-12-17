import pandas as pd
import re
import numpy as np
from geopy.geocoders import Nominatim

indStates = ['Andhra Pradesh'
'Arunachal Pradesh' 
,'Assam'
'Bihar',
'Chhattisgarh',
'Goa',
'Gujarat',
'Haryana',
'Himachal Pradesh',
'Jammu and Kashmir', 
'Jharkhand',
'Karnataka',
'Kerala',
'Madhya Pradesh',
'Maharashtra',
'Manipur',
'Meghalaya',
'Mizoram',
'Nagaland',
'Odisha',
'Punjab',
'Rajasthan',
'Sikkim',
'Tamil Nadu',
'Telangana',
'Tripura',
'Uttar Pradesh',
'Uttarakhand',
'West Bengal',
'Andaman and Nicobar Islands',
'Chandigarh',
'Dadra and Nagar Haveli',
'Daman and Diu',
'Lakshadweep',
'Delhi',
'Puducherry',]
indStates=list(map(str.lower, indStates))
states = {}
gStates = []
nStates = []
finStates = []
newRate = []
i=0


def getState(cities):
    for i in range(len(cities)):
        gStates.append(states[cities[i]])


def getNewState(cities):
    
    c= list(set(cities))
    print(c)
    for i in range(len(c)):
        geolocator = Nominatim(user_agent="myAppGeo")
        location = geolocator.geocode(c[i].lower()) 
        lloc = list(location)  
        lloc = list(lloc[1])
        lloc = str(lloc[0])+","+str(lloc[1])
        print(lloc)

        reloc = Nominatim(user_agent="reLoc")
        location2 = reloc.reverse(lloc)
        location2 = location2.raw 

        if 'address' in location2.keys() :
            location2=location2['address']
        if 'state' in location2.keys():
            states[c[i]] = location2['state']

    print(states)
        
         
    


def preProcData(fileloc,filename):

#Input the CSV file from the location 
    unProcDS = pd.read_csv(fileloc+filename)
    unProcDS = unProcDS.astype({"latitude": str, "longitude": str})
   
    print('Started processing of '+filename+" ...")

    lat = unProcDS['latitude'].tolist()
    lon = unProcDS['longitude'].tolist()
    getstate(lat,lon)
    getNewState(unProcDS['city'].tolist())
    getState(unProcDS['city'].tolist())

    


    rates = ['Excellent','Good','Poor','Very Good','Average']
    
    
    for index,row in unProcDS.iterrows(): 
        if row['rating_text'] not in rates :
            newRate.append("Not rated") 
        else :
            newRate.append(row['rating_text'])
    unProcDS['new_rating'] = newRate    
    
    for index,row in unProcDS.iterrows():
        if row['city'] in states.keys():
            finStates.append(states[row['city']])
        else :
            finStates.append('NA')
    
    unProcDS['state'] = finStates


    #Writing the processed data to CSV files at the Output folder
    unProcDS.to_csv("/Users/NikeshPothabattula/Desktop/CA675/PreProcessed/"+"preProcFin"+filename)
    print("Sucessfully Processed "+filename+" to Location "+fileloc[0:len(fileloc)-12]+"PreProcessed/"+"preProc"+filename+"\n")
    

 
if __name__=="__main__": 
    preProcData('/Users/NikeshPothabattula/Desktop/CA675/','dataset.csv')


