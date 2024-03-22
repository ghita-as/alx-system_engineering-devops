Infrastructure Design:
User Accessing Website:
User: Initiates a request to access www.foobar.com.

DNS Record: Resolves www.foobar.com to the IP address of the load balancer.

Load Balancer (HAproxy): Receives incoming requests and distributes them across multiple servers to improve performance and reliability.

Web Servers (Nginx): Handle HTTP requests, serve static content, and forward dynamic content requests to the application server.

Application Server: Executes application logic, processes dynamic content requests, and interacts with the database.

Application Files (Code Base): Contains the website's codebase, including HTML, CSS, JavaScript, and server-side scripts.

Database Cluster (MySQL): Consists of a primary (master) node and replica (slave) nodes for redundancy and fault tolerance.

Specifics about the Infrastructure:
Why Additional Elements:

Load Balancer: Added to distribute incoming traffic evenly across multiple servers, enhancing performance and reliability.
Database Cluster: Implemented to ensure high availability, fault tolerance, and scalability of the database system.
Load Balancer Algorithm: Configured with a round-robin distribution algorithm. It works by sequentially allocating incoming requests to each server in turn, ensuring a fair distribution of traffic.

Active-Active vs. Active-Passive Setup:

Active-Active: Both servers are actively serving traffic simultaneously. Each server independently handles incoming requests, providing load balancing and redundancy.
Active-Passive: One server (active) serves traffic while the other (passive) remains on standby. In case of failure, the passive server becomes active, ensuring continuity of service.
Database Primary-Replica Cluster:

Primary Node: Handles both read and write operations. It receives write requests, updates the database, and replicates changes to replica nodes.
Replica Node: Receives replicated data from the primary node and serves read requests. It provides fault tolerance and scalability by offloading read operations from the primary node.
Issues with the Infrastructure:
Single Point of Failure (SPOF):

Load balancer: If it fails, incoming traffic won't be properly distributed.
Web servers: If one server fails, the load balancer will redirect traffic to other servers, but capacity might be impacted.
Database cluster: If the primary node fails without proper failover mechanisms, the database becomes inaccessible.
Security Issues:

No firewall: Lack of firewall protection exposes servers and services to potential security threats.
No HTTPS: Transmitting data over HTTP poses security risks as it's vulnerable to interception and tampering.
No Monitoring:

Without monitoring, it's challenging to detect and address performance issues, resource utilization, and potential security breaches in real-time.
