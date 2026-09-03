Sample Conversations: Regulatory Change Management

Conversation 1: Map RG-2026-07 obligations

User: "Map RG-2026-07 obligations to our services and produce a prioritized remediation plan for meeting the 2027-02-28 deadline."

Agent: Summary: Extracts obligations (encrypt staging & analytics, KMS rotation 90 days, retention 7 years) citing regulatory_notice_RG-2026-07.txt. Maps to services using service_control_mapping_expanded.csv rows with citations. Produces a prioritized backlog with owners and due dates aligned to 2027-02-28.

Conversation 2: Generate evidence bundle template for encryption-at-rest

User: "Create an evidence bundle template for encryption-at-rest and key rotation compliance for analytics team."

Agent: Outputs checklist of configs (S3 bucket server-side encryption, KMS key rotation policy, DB encryption configs), sample commands to extract settings, and expected artifacts (screenshots, config exports) with exact file path examples where repository contains placeholders.
