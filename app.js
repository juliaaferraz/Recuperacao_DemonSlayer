var express = require ('express')
var servidor = express()
var bodyParser = require ('body-parser')
const bodyParserJSON = bodyParser.json()
var cors = require('cors') 

servidor.use((request,response,next)=>{
    response.header('Access-Control-Allow-Origin','*');
    response.header('Access-Control-Allow-Methods','GET, POST, PUT, DELETE, OPTIONS');
    servidor.use(cors());
    next();
})

const controllerLocais= require('./controller/controller_locais.js')


servidor.get('/local',cors(), async function(request,response){
    const dados = await controllerLocais.getAll()
    response.status(dados.status_code)
    response.json(dados)
})
servidor.get('/local/:id',cors(), async function(request,response){
    const dados = await controllerLocais.getId(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.post('/local',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await controllerLocais.setInserir(dadosBody)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.put('/local/:id',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await controllerLocais.setAtualizar(dadosBody,request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.delete('/local/:id', cors(), async function(request,response){
    let dados = await controllerLocais.setExcluir(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})


const controllerPersonagem= require('./controller/controller_personagem.js')


servidor.get('/personagem',cors(), async function(request,response){
    const dados = await controllerPersonagem.getAll()
    response.status(dados.status_code)
    response.json(dados)
})
servidor.get('/personagem/:id',cors(), async function(request,response){
    const dados = await controllerPersonagem.getId(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.post('/personagem',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await controllerPersonagem.setInserir(dadosBody)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.put('/personagem/:id',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await controllerPersonagem.setAtualizar(dadosBody,request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.delete('/personagem/:id', cors(), async function(request,response){
    let dados = await controllerPersonagem.setExcluir(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})

const controllerGrupo= require('./controller/controller_grupo.js')


servidor.get('/grupo',cors(), async function(request,response){
    const dados = await controllerGrupo.getAll()
    response.status(dados.status_code)
    response.json(dados)
})
servidor.get('/grupo/:id',cors(), async function(request,response){
    const dados = await controllerGrupo.getId(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.post('/grupo',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await controllerGrupo.setInserir(dadosBody)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.put('/grupo/:id',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await controllerGrupo.setAtualizar(dadosBody,request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.delete('/grupo/:id', cors(), async function(request,response){
    let dados = await controllerGrupo.setExcluir(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})


const controllerRespiracao= require('./controller/controller_respiracao.js')


servidor.get('/respiracao',cors(), async function(request,response){
    const dados = await controllerRespiracao.getAll()
    response.status(dados.status_code)
    response.json(dados)
})
servidor.get('/respiracao/:id',cors(), async function(request,response){
    const dados = await controllerRespiracao.getId(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.post('/respiracao',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await  controllerRespiracao.setInserir(dadosBody)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.put('/respiracao/:id',cors(), bodyParserJSON, async function(request,response){
    const dadosBody = request.body
    const dados = await  controllerRespiracao.setAtualizar(dadosBody,request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})
servidor.delete('/respiracao/:id', cors(), async function(request,response){
    let dados = await  controllerRespiracao.setExcluir(request.params.id)
    response.status(dados.status_code)
    response.json(dados)
})

const porta = 8080
servidor.listen(porta,function(){
    console.log('O servidor está ligado na porta '+porta);
})