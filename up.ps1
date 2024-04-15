$ErrorActionPreference = "Stop";

# Build all containers
Write-Host "Building containers..." -ForegroundColor Green
docker pull $env:NODE_IMAGE
docker-compose build
if ($LASTEXITCODE -ne 0) {
    Write-Error "Container build failed, see errors above."
}
docker-compose up -d