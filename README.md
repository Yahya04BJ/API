# Terraform API Gateway Module

Ce module Terraform configure une API Gateway sur AWS, avec une ressource `/test` intégrée à une fonction Lambda. Ce module est conçu pour être utilisé dans un environnement de test local (ex. avec LocalStack) 
## Prérequis

- **Terraform** version X.X ou supérieure
- **LocalStack** (si vous souhaitez tester en local)

## Installation

Assurez-vous que Terraform est correctement installé et configuré :
bash
terraform -v

installer docker 

installer localstack sur un container docker 
## Variables
| Nom | Type     | Description                |
| :-------- | :------- | :------------------------- | 
| `api_name` | `string` | Nom de l'API Gateway |
| `lambda_arn` | `string` | ARN de la fonction Lambda pour l'intégration |
| `stage_name` | `string` | Nom du stage pour le déploiement de l'API Gateway | 



## Outputs
| Nom | Description                |
| --- | -----------                |
| `api_url` |  URL de l'API Gateway configurée |
 
## Ressources créées 
Ce module crée les ressources suivantes :

- **AWS API Gateway REST API** : pour gérer les requêtes HTTP
- **AWS API Gateway Resource**  : pour définir le chemin /test
- **AWS API Gateway Method**  : méthode GET associée à /test
- **AWS API Gateway Integration**  : intégration avec une fonction Lambda
- **AWS API Gateway Deployment**  : déploiement de l'API
 
## Authors

- [@YAHYA](https://www.github.com/Yahya04BJ)

