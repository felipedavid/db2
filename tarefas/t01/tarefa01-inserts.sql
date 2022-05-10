INSERT INTO funcionario VALUES 
	(DEFAULT, 'mario',  'm', '2000-12-11', 2500, 4),
	(DEFAULT, 'lilian', 'f', '2000-11-11', 2200, 5),
	(DEFAULT, 'vitor',  'm', '2000-10-11', 2900, 4),
	(DEFAULT, 'maria',  'f', '2000-01-12', 2300, 4),
	(DEFAULT, 'marcos', 'm', '1998-11-11', 2000, 2);

INSERT INTO departamento VALUES
	(DEFAULT, 'MUI', 'Departamento 1', 1),
	(DEFAULT, 'TA', 'Departamento 2', 3),
	(DEFAULT, 'GH', 'Departamento 3', 2),
	(DEFAULT, 'GH2', 'Departamento 4', 2),
	(DEFAULT, 'NOIDEA', 'Departamento 5', 1);

INSERT INTO projeto VALUES
	(DEFAULT, 'Projeto 1', 'projeto X...', 3, 1, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'Projeto 2', 'projeto X...', 5, 1, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'Projeto 3', 'projeto X...', 2, 2, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'Projeto 4', 'projeto X...', 1, 2, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'Projeto 5', 'projeto X...', 3, 2, '1999-05-05', '2000-05-05');

INSERT INTO atividade VALUES
	(DEFAULT, 'terminar isso', 'fazer aquilo', 1, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'terminar isso', 'fazer aquilo', 3, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'terminar isso', 'fazer aquilo', 2, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'terminar isso', 'fazer aquilo', 1, '1999-05-05', '2000-05-05'),
	(DEFAULT, 'terminar isso', 'fazer aquilo', 5, '1999-05-05', '2000-05-05');

INSERT INTO atividade_projeto VALUES
	(2, 3),
	(1, 2),
	(1, 5),
	(3, 2),
	(5, 1);
