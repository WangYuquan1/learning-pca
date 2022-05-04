# learning-pca

## Cloud Infrastructure learning path
1. Google Cloud Platform Fundamentals:Core Infrastructure
2. Architecting with Google Compute Engine or Google Kubernetes Engine
3. [Reliable Cloud Infrastructure: Design and Process](#reliable-cloud-infrastructuredesign-and-process)  
- [Workbook](https://github.com/WangYuquan1/learning-pca-workbook)
## Reliable Cloud Infrastructure:Design and Process
### Agenda
1. Defining Services
2. Microservice Design and Architecture
3. [DevOps Automation](#devops-automation)
4. Choosing Storage Solutions
5. [Google Cloud and Hybrid Network Architecture](#google-cloud-and-hybrid-network-architecture)
6. [Deploying Application to Google Cloud](#deploying-application-to-google-cloud)
7. [Designing Reliable Systems](#designing-reliable-systems)
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
3. Aichitect stateful and stateless services to optimize scalability and reliability.（状態管理、信頼性、スケーラビリティ）
4. Implement services using 12-factor best practices.（12要素のベストプラクティス）
   1. The Twelve-Factor App　merit
      1. maximize portability　最大移植性
      2. Deploy to the cloud　
      3. Enable continuous deployment
      4. scale easily
   2. The Twelve-Factor App
      1. Codebase(バージョン管理されている1つのコードベースと複数のデプロイ) ※バージョン管理（Git)、アプリごとコードリポジトリがありとその逆も同じ
      2. Dependencies(依存関係を明示的に宣言し分離する)
      3. Config(設定を環境変数に格納する)　※　secrets,connection strings,endpoints etc..をコードに書かないこと。エンバイロメントヴァリアブルに保存すること。
      4. Backing service(バックエンドサービスをアタッチされたリソースとして扱う)※DBや外部サービスはアタッチ/デタッチ可能なリソースとして捉え、コードを修正しなくても変更できるように環境変数に設定値(URLやユーザ情報等)を定義しましょう。
      5. Build,release,run（ビルド、リリース、実行の3つのステージを厳密に分離する.ビルドとリリースとRUNと、各ステージで一意に識別可能なアーティファクトが生成される）
      6. Processes（アプリケーションを1つもしくは複数のステートレスなプロセスとして実行する）※状態管理必要な場合、独自のデータストアとキャッシュで状態管理
      7. Port binding(サービスはポート番号を使って公開する。アプリはその一部としてウエブサーバをバンドルし、Apacheのような個別サーバは不要)
      8. Concurrency(並行性。プロセスモデルによってスケールアウトする)
      9.  Disposability(廃棄容易性。高速な起動とグレースフルシャットダウンで堅牢性を最大化する）※プロセスの起動と停止が高速に行えるような構成にしましょう。プロセスの起動が高速であればあるほど、スケールが容易になるためです。また停止前にはリクエストの受付停止、処理中リクエストの完了待機、各リソースの廃棄を行う(グレースフル)ようにしましょう。
      10. Dev/prod parity(開発、ステージング、本番環境をできるだけ一致させた状態を保つ)
      11. Logs(ログをイベントストリームとして扱う)※ファイル出力ではなく標準出力に出力させ、ツールで1箇所に集約するようにしましょう。
      12. Admin processes(管理タスクを1回限りのプロセスとして実行する)※管理プロセスはアプリケーションの初期化処理として実行させるようにしましょう。なぜなら手動で管理を実行するとオペミスが発生する可能性があるためです。できる限り自動化しましょう)

※参照：https://qiita.com/supreme0110/items/17c58c660137e23ef713

5. Build loosely coupled services by implementing a well-designed REST architecture（適切なRESTアーキテクチャを実装することで、疎結合サービスを構築する）.
   1. マイクロサービスベースのアプリケーションの最重要なPOINTは、対外に完全に独立したマイクロサービスをデプロイできる
   2. REST
   3. HTTP
      1. リクエストライン（Get,Post,PutなどのHTTP動詞、URI、プロトコルバージョン）
      2. ヘッダー変数
      3. リクエスト本文
   4. HTTP動詞
      1. GET　retrieve data
      2. POST create data
      3. PUT create or alter data
      4. DELETE remove data
   5. HTTP responses code:3-digit http status code
      1. 200 codes for success
      2. 400 codes for client errors
      3. 500 codes for server errors
6. Design consistent,standard RESTfull service APIs（一貫性かつ標準RESTfullサービスAPIsを設計する.
   1. 命名
   2. エラー処理
   3. ドキュメント
   4. バージョン管理
   5. 互換性
   6. OpenAPI
   7. gRPC

### DevOps Automation
1. Automate service deployment using CI/CD pipelines.
2. Leverage Cloud Source Repositories for source and version control.
3. Automate builds with Cloud Build and build triggers.
4. Manage container images with Container Registry.
5. Investigate infrastructure with code using Cloud Deployment Manager and Terraform.

### Google Cloud and Hybrid Network Architecture
Learning objectives
1. Design VPC networks to optimize for cost,security,and performance.(VPCネットワークを設計してコスト、セキュリティ、パフォーマンスを最適化した)
2. Configure global and regional load balancers to provide access to services.(サービスへのアクセスを提供するためのグローバルとリージョンのロードバランサを構成します)
   1. Global load balance
      1. HTTP load balancer（グローバル、エニーキャストIPを使用でき、DNSルックアップが簡略化され、送信元に最も近いリージョンにルーティングされる）
      2. TCP&SSL proxies
   2. Regional load balancer
      1. supported by HTTP,TCP,and UDP
      2. Can have a public or private IP address
3. Leverage Cloud CDN to provide lower latency and decrease network egress.（構成でCloud　CDNを有効化することでレイテンシーや外向きトラフィックが減るためネットワークコストが削減されます）
4. Evaluate network architecture using the Network Intelligence Center.（Network Intelligence Centerによるアーキテクチャの評価や、ヒアリング、VPN、Cloud Interconnectなどのネットワーク接続オプション紹介します）
   1. VPCピアリング　　2つVPC接続する
   2. Cloud VPN(99.9%)　VPCとオンプレミスネットワークや別のクラウドネットワークに接続する（IPsec VPNトンネルを介して2つのNWを安全に接続できる。動的な接続はCloud Router必要）
   3. HA VPN(99.99%)
   4. Cloud Interconnect 専用の高速接続が必要な場合
      1. Dedicated Interconnect
      2. Partner Interconnect

### Deploying Application to Google Cloud
### Designing Reliable Systems
Learning objectives  
1. availability,durability,and scalability(可用性、耐久性、スケーラビリティ)
2. 単一障害点や相関障害,カスケード障害を回避するフォールトトレラントなシステムの実装方法　※中国語：容错系统
3. 分散システムの過負荷が問題になる場合の回路ブレーカーや切り捨て型指数バックオフなどを使用した過負荷障害の回避方法
4. 遅延削除により復元力があるデータストレージを実現する
5. 通常の動作状態、劣化した動作状態、および障害シナリオの設計
6. 災害シナリオを分析し、災害復旧の計画、実装、テスト/シミュレーションを行う