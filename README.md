🧪 HOW TO USE

✅ Clone or scaffold the structure above.

✅ Replace https://dev-api.yourcompany.com with your actual Apigee endpoint.

✅ Replace api-spec.yaml with your real Swagger/OpenAPI spec.

✅ Build Docker image and push to registry.

✅ Run locally: ./scripts/run_tests_locally.sh dev

✅ Run in K8s: ./scripts/run_in_k8s_job.sh

✅ Trigger via GitHub Actions or Jenkins.

Note: Add to Your Microservice Repo as Submodule

#!/bin/bash


1
2
3
cd your-apigee-microservice/
git submodule add https://github.com/your-org/apigee-robot-tests.git robot-tests
git commit -m "Add Robot Framework test suite as submodule"
Now your microservice repo includes its own test suite — perfect for monorepo or GitOps workflows.

