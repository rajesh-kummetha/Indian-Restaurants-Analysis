register '/usr/lib/pig/piggybank.jar';
define csvStore org.apache.pig.piggybank.storage.CSVExcelStorage();



-- Loading the Data from PreProcessing Datasets into PIG variables to combine and transform the data 

preProc_Data_1 = load '/ca675_2_datasets/PreProcessing/andhra.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_2 = load '/ca675_2_datasets/PreProcessing/tamilnadu.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_3 = load '/ca675_2_datasets/PreProcessing/keral.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_4 = load '/ca675_2_datasets//PreProcessing/uttar.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_5 = load '/ca675_2_datasets//PreProcessing/madhya.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_6 = load '/ca675_2_datasets//PreProcessing/telengana.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_7 = load '/ca675_2_datasets//PreProcessing/bihar.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_8 = load '/ca675_2_datasets//PreProcessing/orissa.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_9 = load '/ca675_2_datasets//PreProcessing/bengal.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_10 = load '/ca675_2_datasets//PreProcessing/jammukash.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_11 = load '/ca675_2_datasets//PreProcessing/delhi.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_12 = load '/ca675_2_datasets//PreProcessing/goa.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_13 = load '/ca675_2_datasets//PreProcessing/karnataka.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_14 = load '/ca675_2_datasets//PreProcessing/maharastra.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

preProc_Data_15 = load '/ca675_2_datasets//PreProcessing/pujab.csv' using csvStore(';', 'YES_MULTILINE','NOCHANGE','SKIP_INPUT_HEADER') AS (res_id:int	name:chararray,establishment:chararray,url:chararray,address:chararray,city:chararray,city_id:chararray,locality:chararray,latitude:chararray,longitude:chararray,zipcode:chararray,country_id::chararray,locality_verbose:chararray,cuisines:chararray,timings:chararray,average_cost_for_two:chararray,price_range:chararray,currency:chararray,highlights:chararray,aggregate_rating:chararray,rating_text:chararray,votes:chararray,photo_count:chararray,opentable_support:chararray,delivery:chararray,takeaway:chararray,state:chararray)

--Combining the raw datasets to perform preprocessing
preProc_Comb_Data  = UNION  preProc_Data_1,preProc_Data_2,preProc_Data_3,preProc_Data_4,preProc_Data_5,preProc_Data_6,preProc_Data_7,preProc_Data_8,preProc_Data_9,preProc_Data_10,preProc_Data_11,preProc_Data_12,preProc_Data_13,preProc_Data_14,preProc_Data_15 ;


preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(establishment,"[",'');

preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(establishment,"]",'');

preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(establishment,"'",'');

preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(highlights,"'",'');

preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(highlights,"[",'');

preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(highlights,"]",'');

preProc_Fin_Data  =  FOREACH preProc_Comb_Data   GENERATE (res_id,name,establishment,url,address,city,city_id,locality,latitude,longitude,zipcode,country_id,locality_verbose,cuisines,timings,average_cost_for_two,price_range,currency,highlights,aggregate_rating,rating_text,votes,photo_count,opentable_support,delivery,takeaway,state),REPLACE(establishment,"√©",'e');
--Filtering the rows that contain null values in Latitute and Longitude 
preProc_Data_Filter = filter preProc_Fin_Data by (latitude is not null) and (longitude is not null);

finData  = foreach preProc_Data_Filter generate  name as Name,establishment as Eshtablishment,url as URL,address as Address,city as City,locality as Locality,latitude as Latitute,longitude as Longitude,zipcode as Zipcode,cuisines as Cusines,timings as Timings,average_cost_for_two as Average_Cost,price_range as Price Range,currency as Currency,highlights as Highlights,aggregate_rating as Aggregare_Rating,rating_text as rating_text,votes as votes,delivery as Delivery,takeaway as Takeaway,state as State;
--Storing the Data to HDFS
store finData into '/finpig/processedData/final.csv' using csvStore(',');

-- create google cloud bucket and store the file in it
gsutil du -s gs://indian-restaurants/
gsutil cp final.csv gs://indian-restaurants/