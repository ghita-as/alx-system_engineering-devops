Infrastructure Design:
User Accessing Website:
User: Initiates a request to access www.foobar.com.

DNS Record: Resolves www.foobar.com to the IP address of the load balancer.

Load Balancer (with SSL termination): Receives incoming HTTPS requests, decrypts them, and distributes them across multiple servers.

Web Servers (Nginx): Serve web pages and handle encrypted HTTPS traffic received from the load balancer.

Application Servers: Execute application logic and process dynamic content requests securely.

Database Cluster (MySQL): Consists of multiple nodes for redundancy and scalability, with at least one node capable of accepting writes.

Specifics about the Infrastructure:
Why Additional Elements:

Firewalls: Added to enforce security policies, control incoming and outgoing traffic, and protect against unauthorized access.
SSL Certificate: Used to serve traffic over HTTPS, ensuring encrypted communication between clients and servers for data confidentiality and integrity.
Monitoring Clients: Deployed to collect and analyze system metrics, logs, and performance data to ensure optimal performance, detect anomalies, and troubleshoot issues proactively.
Purpose of Firewalls: Firewalls are used to filter network traffic, allowing only authorized connections and blocking potentially malicious traffic. They help safeguard the infrastructure from cyber threats and unauthorized access attempts.

Reason for Serving Traffic over HTTPS: HTTPS encrypts data transmitted between the user's browser and the web server, ensuring confidentiality and integrity of sensitive information such as login credentials, personal data, and financial transactions.

Role of Monitoring:

Monitoring is used to track the health, performance, and security of the infrastructure in real-time.
It helps identify and resolve issues promptly, optimize resource utilization, and ensure service availability and reliability.
Data Collection by Monitoring Tool:

Monitoring clients (data collectors) gather various types of data, including system metrics (CPU, memory, disk usage), application logs, network traffic, and security events.
The collected data is sent to a centralized monitoring platform (e.g., Sumo Logic) for analysis, visualization, and alerting.
Monitoring Web Server QPS:

To monitor web server QPS (Queries Per Second), metrics such as HTTP request count and response time can be collected and analyzed.
Monitoring tools can generate alerts based on predefined thresholds, enabling administrators to detect and mitigate performance issues.
Issues with the Infrastructure:
SSL Termination at Load Balancer:

Terminating SSL at the load balancer means that decrypted traffic is transmitted within the internal network, potentially exposing sensitive data to interception. It's safer to maintain end-to-end encryption whenever possible.
Single MySQL Server Accepting Writes:

Having only one MySQL server capable of accepting writes poses a single point of failure. If this server fails, write operations will be unavailable, impacting the application's functionality and data consistency.
Identical Servers with All Components:

Deploying servers with identical components increases the risk of widespread failures due to software bugs, configuration errors, or security vulnerabilities affecting all servers simultaneously. Introducing diversity in server configurations can mitigate this risk.
