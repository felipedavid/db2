const { Client } = require('pg');

const client = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'trabalho3',
    password: 'postgres',
    port: 5429,
});

client.connect(err => {
    if (err) throw err;
    console.log('Connected to the database!');
});

// a. Inserir uma atividade em algum projeto
const query_ins_atv = `insert into atividade(descricao, codProjeto, dataInicio, dataFim)
                        values ('APF - Atividade 1', 1, '2018-02-26', '2018-06-30');`;

client.query(query_ins_atv, (err, res) => {
    if (err) die(err);
});


// b. Atualizar o líder de algum projeto
const query_update_gerente = `update departamento set codGerente = 1 where sigla = 'DHC';`;
client.query(query_update_gerente, (err, res) => {
    if (err) die(err);
});


// c. Listar todos os projetos e suas atividades
const query_listar_projetos = `select * from projeto;`;
client.query(query_listar_projetos, (err, res) => {
    if (err) die(err);
    console.log('Projetos:', res);
    client.end();
});


const die = (err) => {
    throw err;
    client.end();
}