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

### Microservices Design and architecture
1. Decompose monolithic application into microservices(モノリシックアプリをマイクロサービスを分解する).
   1. Microservices
      1. Microservicesを利用する理由 チームごとに独立して作業し、独自タイミングで本番環境に提供可能になること（組織のスケーリングでき、チームを追加すればスピード向上できる）
      2. Microservicesを利用する理由　要件に基づき個別に拡張可能ということ
2. Recognize appropriate microservice boundaries（明確な境界を設け）.
3. Aichitect stateful and stateless services to optimize scalability and reliability.
4. Implement services using 12-factor best practices.
5. Build loosely coupled services by implementing a well-designed REST architecture（適切なRESTアーキテクチャを実装することで、疎結合サービスを構築する）.
6. Design consistent,standard RESTfull service APIs（一貫性かつ標準RESTfullサービスAPIsを設計する.
