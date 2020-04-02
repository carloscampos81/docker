module.exports = function(app){
    app.get('/api_comentarios', function(req, res){
        console.log('Comentário recebido.')
        res.send('Comentario enviado. Obrigado.');
    });

    app.post('/api_comentarios/esportes', function(req, res){
     var esportes = req.body;
     console.log('Internauta obrigado pelo seu comentário');
     esportes.status = 'Enviado'
     esportes.data    = new Date;   

     res.send(esportes);   
    });
}
