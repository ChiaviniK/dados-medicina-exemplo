-- Banco de Dados Relacional: Clínica Médica
CREATE TABLE medicos (
    id_medico INTEGER PRIMARY KEY,
    nome_medico TEXT NOT NULL,
    especialidade TEXT NOT NULL,
    crm TEXT NOT NULL,
    valor_consulta REAL NOT NULL
);

CREATE TABLE consultas (
    id_consulta TEXT PRIMARY KEY,
    id_paciente INTEGER NOT NULL,
    id_medico INTEGER NOT NULL,
    data_consulta TEXT NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES medicos (id_medico)
);

INSERT INTO medicos (id_medico, nome_medico, especialidade, crm, valor_consulta) VALUES
(10, 'Dra. Helena Vasconcelos', 'Cardiologia', 'CRM-SP 112233', 350.00),
(20, 'Dr. Marcos Vinicius', 'Ortopedia', 'CRM-SP 445566', 300.00),
(30, 'Dra. Camila Nogueira', 'Dermatologia', 'CRM-SP 778899', 280.00),
(40, 'Dr. Rafael Mendes', 'Endocrinologia', 'CRM-SP 990011', 320.00);

INSERT INTO consultas (id_consulta, id_paciente, id_medico, data_consulta, status) VALUES
('ATD-101', 201, 10, '2026-11-10', 'Realizada'),
('ATD-102', 202, 20, '2026-11-11', 'Realizada'),
('ATD-103', 201, 10, '2026-11-12', 'Realizada'),
('ATD-104', 203, 30, '2026-11-14', 'Realizada'),
('ATD-105', 205, 40, '2026-11-15', 'Realizada'),
('ATD-106', 999, 20, '2026-11-16', 'Emergência');
