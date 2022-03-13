import boto3 # py -m pip install boto3
import pandas as pd
import csv

# Criando um cliente para interagir com AWS S3

s3_client = boto3.client('s3')

# Upload dataset na AWS - disponibilizacao
s3_client.upload_file("A_Processar/MICRODADOS_ENEM_2020.csv",
                      "datalake-sesson-igti-edc",
                      "data/enem/data-busca-web-programa-computadores-2020.csv")



s3_client.download_file("datalake-sesson-igti-edc",
                        "data/baseDadosBuscaWebProgramaComputadores-Periodo2020-extaido09012021.csv",
                        "data/baseDadosBuscaWebProgramaComputadores-Periodo2020-extaido09012021.csv")

# Controle dos arquivos >> local

file = 'data/baseDadosBuscaWebProgramaComputadores-Periodo2020-extaido09012021.csv'
out_file= 'data/data-busca-web-programa-computadores-2020.csv'

df_file = pd.read_csv(file, encoding='ISO-8859-1', sep='|', )
df_file.to_csv(out_file, encoding='UTF-8', sep=";")

print(df_file)

# Retornando os files novamente para AWS

s3_client.upload_file("data/data-busca-web-programa-computadores-2020.csv",
                      "datalake-sesson-igti-edc",
                      "data/data-busca-web-programa-computadores-2020.csv")