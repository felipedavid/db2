const { PrismaClient } = require('@prisma/client');

const prisma = new PrismaClient();

// a. Inserir uma atividade em algum projeto
prisma.atividade.create({
    data :{
        descricao: "",
        codprojeto: 1,
        datainicio: new Date(),
        datafim: new Date(),
    }
});

// b. Atualizar o líder de algum projeto
prisma.departamento.update({
    where: {
        sigla: "DHC",
    },
    data: {
        codgerente: 1,
    },
})

// c. Listar todos os projetos e suas atividades
prisma.projeto.findMany()
    .then(projetos => {
        console.log(projetos);
    });