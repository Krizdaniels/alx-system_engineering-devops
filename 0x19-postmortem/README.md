Incidence Report on the Webstack Debugging 2 project of ALX School

Issue Summary:
- Duration: The outage occurred from April 12, 2024, 10:00 PM (WAT) to April 13, 2024, 2:00 AM (WAT), lasting for 4 hours.
- Impact: The web service experienced a complete outage, rendering it inaccessible to users. Approximately 90% of users were affected, reporting an inability to access the platform.
- Root Cause: The outage was caused by a database connection issue, leading to a failure in retrieving critical data necessary for serving web requests.

Timeline:
- April 12, 2024, 10:15 PM (WAT): The issue was detected through automated monitoring alerts indicating a sudden drop in database connectivity.
- Investigation began immediately, focusing on database servers and network configurations.
- Several misleading paths were explored, including potential network congestion and application code changes.
- The incident was escalated to the Database Operations team and the System Engineering team for further assistance.
- April 13, 2024, 1:45 AM (WAT): The incident was resolved after identifying and fixing a misconfigured firewall rule blocking database connections.

Root Cause and Resolution:
- Root Cause: A misconfigured firewall rule was blocking incoming connections to the database server, preventing the web application from accessing essential data.
- Resolution: The misconfigured firewall rule was corrected, allowing database connections to resume normal operation.

Corrective and Preventative Measures:
- Improvements:
 - Enhance monitoring systems to detect firewall rule changes promptly.
 - Implement automated testing for critical system configurations, including firewall rules.
 - Develop comprehensive documentation for firewall configurations to prevent future misconfigurations.
- Tasks:
 1. Update monitoring systems to include firewall rule change detection.
 2. Implement automated testing scripts to verify firewall configurations regularly.
 3. Conduct a review of firewall rules across all servers to ensure consistency and accuracy.
 4. Provide additional training for team members responsible for configuring firewall rules.
 5. Document firewall configurations and update the internal knowledge base for future reference.
