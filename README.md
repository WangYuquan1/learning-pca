# learning-pca

## Cloud Infrastructure learning path
1. Google Cloud Platform Fundamentals:Core Infrastructure
2. Architecting with Google Compute Engine or Google Kubernetes Engine
3. [Reliable Cloud Infrastructure: Design and Process](#reliable-cloud-infrastructuredesign-and-process)
## [Workbook](#workbook-1)
## Reliable Cloud Infrastructure:Design and Process
### Agenda
1. Defining Services
2. Microservice Design and Architecture
3. DevOps Automation
4. Choosing Storage Solutions
5. Google Cloud and Hybrid Network Architecture
6. Deploying Application to Google Cloud 
7. Designing Reliable Systems
8. Security
9. Maintenance and Monitoring

### Defining Services(サービスの定義)
1. 要件分析と設計（ユーザーのロールとペルソナ）  
2. KPI、SLI
3. SLO、SLA

### Workbook
1a. Defining Your Case Study  
- payment system(Dorayaki)   
   
1b. Case Study Name Here  
##### Brief description
##### List a few main features
##### List roles of typical users
2a. Writing User Personas  
2b. Writing User Stories  
3. Defining SLIs and SLOs  
| User Story | SLO | SLI |
|-----------------------|------------|-----------|
|Balance Inquiry | Avaiable 99.95% | Fraction of 200 vs 500 HTTP responses from API endpoint measured per day |
|Balance Inquiry | 95% of requests will complete in under 300ms | Time to last byte GET requests measured every 10 seconds aggregated per minute |

***
4a. Design Microservices for Your Application  
5. Designing REST APIs  
6. Defining Storage Characteristics  
7. Choosing Google Cloud Storage and Data Services  
8a. Defining Network Characteristics for Your Services  
8b. Select the Load Balancers for Your Services  
9. Diagramming Your Network