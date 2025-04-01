#!/bin/bash

# Configuração do banco de dados
DB_NAME="grafana_db"
DB_USER="grafana_user"
DB_HOST="localhost"
DB_PORT="5433"
DB_PASSWORD="grafana" 

# Criar tabela se não existir
TABLE_CREATION_SQL="
CREATE TABLE IF NOT EXISTS wsl_processes (
    id SERIAL PRIMARY KEY,
    pid INT NOT NULL,
    username TEXT NOT NULL,
    cpu_usage DECIMAL(5,2),
    mem_usage DECIMAL(5,2),
    command TEXT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
"

echo "Criando tabela wsl_processes se não existir..."
echo "$TABLE_CREATION_SQL" | PGPASSWORD="$DB_PASSWORD" psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME"

# Capturar processos em execução no WSL
echo "Capturando processos ativos no WSL..."
PROCESS_DATA=$(ps aux --sort=-%cpu | awk 'NR>1 {print $2, $1, $3, $4, $11}' | head -20)

# Inserir dados no banco
echo "Inserindo dados no PostgreSQL..."
while read -r pid user cpu mem cmd; do
    # Escapar possíveis aspas no comando
    cmd_escaped=$(echo "$cmd" | sed "s/'/''/g")
    
    INSERT_SQL="INSERT INTO wsl_processes (pid, username, cpu_usage, mem_usage, command)
                VALUES ($pid, '$user', $cpu, $mem, E'$cmd_escaped');"

    echo "$INSERT_SQL" | PGPASSWORD="$DB_PASSWORD" psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME"
done <<< "$PROCESS_DATA"

echo "Dados inseridos com sucesso!"


