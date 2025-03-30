CREATE TABLE metrics_cpu_usage (
    id SERIAL PRIMARY KEY,
    server_name TEXT NOT NULL,
    cpu_usage_percent DECIMAL(5,2),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO metrics_cpu_usage (server_name, cpu_usage_percent) VALUES
('server-1', 45.2), ('server-2', 70.1), ('server-3', 89.6);

CREATE TABLE metrics_memory_usage (
    id SERIAL PRIMARY KEY,
    server_name TEXT NOT NULL,
    memory_usage_mb INT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO metrics_memory_usage (server_name, memory_usage_mb) VALUES
('server-1', 2048), ('server-2', 3072), ('server-3', 4096);

CREATE TABLE metrics_network_traffic (
    id SERIAL PRIMARY KEY,
    server_name TEXT NOT NULL,
    incoming_mbps DECIMAL(6,2),
    outgoing_mbps DECIMAL(6,2),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO metrics_network_traffic (server_name, incoming_mbps, outgoing_mbps) VALUES
('server-1', 120.5, 80.3), ('server-2', 150.8, 90.2), ('server-3', 200.4, 110.6);
