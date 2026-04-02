# Demo Node Guardrails

A small Node.js hello world application that is ready for a Git repository and includes a practical GitHub Actions security guardrails workflow.

The repository is designed for demos. The default branch should stay clean, then you can create short demo branches to show how scan results appear in pull requests and in GitHub code scanning.

## What is included

- Simple Node.js hello world application
- GitHub Actions workflow for security guardrails
- Dependency Review on pull requests
- Gitleaks for secret scanning
- OSV scanning for repository and SBOM
- CycloneDX SBOM generation
- Checkov for IaC scanning when Terraform files are present
- Demo scripts that create predictable findings

## Run the app locally

```bash
npm install
npm start
```

The application listens on `http://localhost:3000`.

## Suggested demo flow

### 1. Push the repository as is

Use this as the clean baseline. The app is intentionally simple and should give you a straightforward starting point.

### 2. Show a vulnerable dependency scenario

Create a branch and run:

```bash
./demo/scenarios/add-vulnerable-axios.sh
```

This installs `axios@0.21.0` so you can demo dependency review, OSV findings, and the SBOM output. OSV lists a vulnerability for Axios 0.21.0. See the OSV record for details.

- https://osv.dev/vulnerability/CVE-2020-28168

### 3. Show a leaked secret scenario

Create a branch and run:

```bash
./demo/scenarios/add-fake-secret.sh
```

This adds a file with an obviously fake GitHub personal access token pattern so Gitleaks has something easy to catch.

### 4. Show a weak infrastructure as code scenario

Create a branch and run:

```bash
./demo/scenarios/add-bad-iac.sh
```

This adds a small Terraform file with intentionally weak S3 settings so Checkov has findings to report.

## Suggested talking points for the demo

- A risky dependency change becomes visible at pull request time
- Known vulnerabilities can show up through OSV scanning
- The SBOM gives you inventory for impact analysis
- Secret scanning catches mistakes before they become incidents
- IaC scanning expands the baseline beyond application code
- The value is guardrails around the delivery flow, not security theater

## Notes

- Keep the main branch clean for a simple green baseline
- Use short lived demo branches for each scenario
- The fake secret is for scanner testing only and must not be reused anywhere real
