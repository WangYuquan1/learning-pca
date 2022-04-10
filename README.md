# learning-pca

## Cloud Infrastructure learning path
1. Google Cloud Platform Fundamentals:Core Infrastructure
2. Architecting with Google Compute Engine or Google Kubernetes Engine
3. [Reliable Cloud Infrastructure: Design and Process](#reliable-cloud-infrastructuredesign-and-process)  
- [Workbook](#workbook)
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

## Workbook
#### 1a. Defining Your Case Study  
- payment system(Dorayaki)   
   
#### 1b. Case Study Name Here  
1. Brief description  
   1. ユーザー企業のお客様はアプリ・POS・チャージ機・SSCあらゆる端末経由で該当システムをアクセスし、決済を行える。
   2. ユーザー企業関連部署はお客様対応や、システム利用状況チェックできる。
2. List a few main features
3. List roles of typical users  
   1. API呼び出すクライアント（例：アプリ、SSC、POS、チャージ機、CRM）
   2. お客様対応（例：コンタクトセンター）
   3. 集計者（例：経理）
   4. 管理者（例：TFS）
#### 2a. Writing User Personas   
1. B2B　TRIAL 
   1. お客様はアプリ、チャージ機、POS、SSCを利用して、決済の動作を安全、かつスムーズにできるシステム。
   2. 関連部署（コンタクトセンター）はお客様のクレーム・問い合わせ対応できること
   3. 関連部署（TFS、経理）は定期的に利用状況を集計できること
2. B2B  導入したい他企業
3. end user? (各クライアント範囲？)    

※　ユーザーペルソナは、ユーザー（英語版）の仮説グループの目的と行動を表現したものである。ほとんどの場合、ペルソナは、ユーザーに対するインタビューから収集したデータから生成される[2]。ペルソナは、行動パターン、目的、スキル、態度などを含む1～2ページの説明文で表現され、ペルソナを現実的なキャラクターにするために、架空の個人的な詳細が含まれている。(https://ja.wikipedia.org/wiki/%E3%83%9A%E3%83%AB%E3%82%BD%E3%83%8A_(%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E3%82%A8%E3%82%AF%E3%82%B9%E3%83%9A%E3%83%AA%E3%82%A8%E3%83%B3%E3%82%B9))
#### 2b. Writing User Stories  
#### 3. Defining SLIs and SLOs
   
| User Story | SLO | SLI |
|-----------------------|------------|-----------|
|Balance Inquiry | Avaiable 99.95% | Fraction of 200 vs 500 HTTP responses from API endpoint measured per day |
|Balance Inquiry | 95% of requests will complete in under 300ms | Time to last byte GET requests measured every 10 seconds aggregated per minute |

※ Doyarakiサービスのみ(VD、４Uサービス含まない）  
※ 比較仕様　稼働率 99.95％  
・年間で 4.38 時間停止することに相当  
・月間で 21.9 分停止することに相当

#### 4a. Design Microservices for Your Application  
#### 5. Designing REST APIs  
#### 6. Defining Storage Characteristics  
#### 7. Choosing Google Cloud Storage and Data Services  
#### 8a. Defining Network Characteristics for Your Services  
#### 8b. Select the Load Balancers for Your Services  
#### 9. Diagramming Your Network