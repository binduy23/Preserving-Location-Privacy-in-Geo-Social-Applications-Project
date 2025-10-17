Preserving Location Privacy in Geo-Social Applications

This project presents **LocX**, a novel system designed to protect user location privacy in geo-social platforms without compromising query accuracy or relying on trusted servers. It introduces secure, user-specific, distance-preserving coordinate transformations that allow location-based queries to be processed correctly while keeping actual location data hidden from servers and adversaries.

---

System Overview

 Modules
- **LocX Module**: Splits location mapping into L2I and I2D for privacy and efficiency.
- **Proxy Server**: Stores L2I via untrusted proxies like Tor nodes or NATs.
- **Index Server**: Handles transformed coordinates for query processing.
- **Data Server**: Stores encrypted location data securely and efficiently.

Architecture
- Distance-preserving transformations
- One-hop proxy indirection
- Encrypted index and data separation
- Privacy-preserving query evaluation

---

Technologies Used

| Component        | Technology             |
|------------------|------------------------|
| Language         | Java (J2SE, J2ME)      |
| Database         | MS SQL Server 2005     |
| UI               | Java Swing / Applets   |
| Networking       | Java TCP/IP Sockets    |
| Charting         | JFreeChart             |
| Platform         | Windows XP             |

---

 How to Run
1. Clone the repository
2. Import SQL schema into MS SQL Server 2005
3. Compile Java code using JDK
4. Run the application using Java VM
5. Use provided credentials to simulate location-based queries


Features
- Location obfuscation using coordinate transformations
- Secure friend-based location sharing
- Encrypted index and data separation
- Proxy-based data routing
- Efficient query processing on transformed data

---

Input & Output Design
- **Input**: User location, friend list, query type
- **Validation**: Format checks, error messages, secure entry
- **Output**: Location results, privacy alerts, encrypted data views

---

Testing
- **Unit Testing**: Validates internal logic and data flow
- **Integration Testing**: Ensures modules interact correctly
- **System Testing**: Verifies full system behavior
- **Acceptance Testing**: Confirms user requirements are met

