const DAO = require('../model/DAO/respiracao.js');
const messages = require('../messages.js');


const getAll = async function(){
    const resultJSON ={}
    const dados = await DAO.selectALL()
    if(dados){
        if(dados.length>0){
            resultJSON.dados = dados
            resultJSON.quantidade = dados.length
            resultJSON.status_code = messages.SUCCESS_CREATED_ITEM.status_code

            return resultJSON
        } else {
            return messages.ERROR_NOT_FOUND; // 404
        }
    } else {
        return messages.ERROR_INTERNAL_SERVER_DB; // 500
    }
}
const getId = async function(id){
    const resultJSON ={}
    const dados = await DAO.selectById(id)
    if(dados){
        if(dados.length>0){
            resultJSON.dados = dados
            resultJSON.quantidade = dados.length
            resultJSON.status_code = messages.SUCCESS_CREATED_ITEM.status_code
            return resultJSON
        } else {
            return messages.ERROR_NOT_FOUND; // 404
        }
    } else {
        return messages.ERROR_INTERNAL_SERVER_DB; // 500
    }
}

const setInserir = async function (dados) {
            let json = {}
            if (
                dados.nome == '' || dados.nome == undefined || dados.nome == null || dados.nome.length > 50 ||
                dados.descricao == '' || dados.descricao == undefined || dados.descricao == null || dados.descricao.length > 500 ||
                dados.img == '' || dados.img == undefined || dados.img == null || dados.img.length > 200
            ) {
                return messages.ERROR_REQUIRED_FIELDS //400
            } else {
                let result = await DAO.insert(dados)
                if (result) {
                    json.dados = dados
                    json.status = messages.SUCCESS_CREATED_ITEM.status
                    json.status_code = messages.SUCCESS_CREATED_ITEM.status_code
                    json.message = messages.SUCCESS_CREATED_ITEM.message
                    return json //201
                } else {
                    return messages.ERROR_INTERNAL_SERVER_DB //500
                }
            }
}
const setAtualizar = async function (dados,id) {
    let json = {}
    if(isNaN(id)){
        return messages.ERROR_REQUIRED_FIELDS
    }
    if (
        dados.nome == '' || dados.nome == undefined || dados.nome == null || dados.nome.length > 50 ||
        dados.descricao == '' || dados.descricao == undefined || dados.descricao == null || dados.descricao.length > 500 ||
        dados.img == '' || dados.img == undefined || dados.img == null || dados.img.length > 200
    ) {
        return messages.ERROR_REQUIRED_FIELDS //400
    } else {
        let result = await DAO.update(dados,id)
        if (result) {
            if(result>0){
                json.dados = dados
                json.status = messages.SUCCESS_CREATED_ITEM.status
                json.status_code = messages.SUCCESS_CREATED_ITEM.status_code
                json.message = messages.SUCCESS_CREATED_ITEM.message
                return json //201
            } else {
                return messages.ERROR_NOT_FOUND
            }
        } else {
            return messages.ERROR_INTERNAL_SERVER_DB //500
        }
    }
}
const setExcluir = async function (id) {
    let json={}
    let result = await DAO.deletar(id)
    if(result){
        json.status = messages.SUCCESS_ACCEPTED_ITEM.status
        json.status_code = messages.SUCCESS_ACCEPTED_ITEM.status_code
        json.message = messages.SUCCESS_ACCEPTED_ITEM.message
        return json //202
    } else {
        return messages.ERROR_NOT_FOUND //404
    }
}
module.exports = {
    getAll,
    getId,
    setInserir,
    setAtualizar,
    setExcluir
}