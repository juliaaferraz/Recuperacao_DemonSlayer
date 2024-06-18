const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

const tabela = 'respiracoes'

const selectALL = function () {
    const sql = `select * from ${tabela}`
    const result = prisma.$queryRawUnsafe(sql)
    return result
}
const selectById = function (id) {
    const sql = `select * from ${tabela} where id = ${id}`
    const result = prisma.$queryRawUnsafe(sql)
    return result
}
const insert = async function (dados) {
    let sql = `INSERT INTO ${tabela} (nome,descricao,imagem) VALUES ("${dados.nome}","${dados.descricao}","${dados.img}");`
    let result = await prisma.$executeRawUnsafe(sql)
    if(result){
        return true;
    } else {
        return false
    }
}
const update = async function (dados, id) {
    let sql = `update ${tabela} set 
    nome = "${dados.nome}",
    descricao = "${dados.descricao}",
    imagem= "${dados.img}" 
    where id = ${id};`
    let result = await prisma.$executeRawUnsafe(sql)
    if(result){
        return true;
    } else {
        return false
    }
}
const deletar = async function (id) {
        const sql = `DELETE FROM ${tabela} WHERE id = ${id}`;
        let result = await prisma.$executeRawUnsafe(sql)
        if(result){
            return true;
        } else {
            return false
        }
}

module.exports = {
    selectALL,
    selectById,
    insert,
    update,
    deletar
}