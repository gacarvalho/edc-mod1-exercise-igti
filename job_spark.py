from pyspark.sql.functions import mean, max, min, col, count
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("ExerciseSpark 202203")
    .getOrCreate()
)

# Lendo os dados do enem 2020

enem = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter", ";")
    .load("s3://datalake-sesson-igti-edc/raw-data/enem/")    
)

# Gravando os dados no S3 no formato PARQUET

(
    enem
    .write
    .mode("overwrite")
    .format("parquet")
    .partitionBy("year")
    .save("s3://datalake-sesson-igti-edc/staging-data/enem/")
)