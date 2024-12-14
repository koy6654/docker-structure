# Kubernetes & Docker

(블로그 포스팅 중...)<br />

## k8s
#### 로컬 환경 Kubernetes 구조 예제
- /k8s/my-app
  - 단순한 Kubernetes ClusterIP Service(Node.js)
- /k8s/nginx/config
  - Kubernetes NodePort와 Nginx 설정을 사용하여 my-app에 연결시킨 예제
- /k8s/nginx/ingress
  - Kubernetes Ingress Controller와 Ingress를 사용하여 my-app에 연결시킨 예제

#### 실행
- ./k8s-run.sh
  - 관련 Kubernetes Component 초기화
- ./k8s-test.sh
  - 부하 테스트 실행 및 결과 확인

## redis
Redis cluster를 docker-compose로 실행시키는 docker-compose 예제
