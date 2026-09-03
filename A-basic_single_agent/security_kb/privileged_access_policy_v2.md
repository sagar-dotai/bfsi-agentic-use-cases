Privileged Access Policy - Draft (v2)

Scope
This policy applies to all human and machine privileged accounts used to access production, staging, and sensitive systems (including service accounts).

Policy
1. Authentication & Authorization
- All privileged accounts MUST use MFA which supports phishing-resistant methods (e.g., FIDO2) where available.
- Privileged roles must be assigned via role-based access controls (RBAC) and not by shared credentials.

2. Service Accounts
- Every service account must have a documented owner, purpose, and a defined review schedule.
- Service account secrets must be stored in an approved Secrets Manager and rotated at least every 90 days.

3. Access Reviews
- Quarterly access reviews are mandatory for all privileged roles. The review must be recorded (date, reviewer, action taken).

4. Remote Access
- Remote admin access must occur through approved jump hosts or bastion solutions with session recording enabled.
- Direct admin access from unmanaged networks is prohibited.

5. Exceptions
- Formal exception requests must be submitted and approved for any deviations; exceptions require compensating controls and an expiration date.

6. Auditing & Monitoring
- All privileged actions must be logged with sufficient detail for forensic analysis and retained according to retention policies.

7. Enforcement
- Violations of this policy may result in revocation of access and disciplinary action.

Known Issues & Remediations
- Legacy service accounts without owners identified in AF-2026-01 must be remediated within 30 days.

Review Cycle: Annual or on significant platform changes.
