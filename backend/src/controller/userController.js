import user from '../model/userModel.js'

class Ranking {
    static async Ranking(req,res){
        try{
            const ranked = await user.find().sort({ pontuacao: -1 })
            res.status(200).send(ranked)
        }catch(Err){
            res.status(400).send(Err)
        }
    }
    static async createUser(req,res){
        try{

            const newUser = new user({
                nomeCompleto: req.body.nomeCompleto,
                curso: req.body.curso,
                instituicao: req.body.instituicao,
                pontuacao: 0,
                checkIn: false,
              });
            const saveUser = await newUser.save();
            res.status(200).send(saveUser)

        }catch(Err){
            res.status(400).send(Err)
        }
    }
    static async pontuacao(req,res){
        try {
            const id = req.params.id;
            const { checkIn } = req.body;
      
            
            if (checkIn === true) {
              const updatedUser = await user.findByIdAndUpdate(
                id,
                { $set: { checkIn: true, pontuacao:  100 } },
                { new: true }
              );
              res.status(200).send(updatedUser);
            } else {
              
              const updatedUser = await user.findByIdAndUpdate(
                id,
                { $set: { checkIn: false } },
                { new: true }
              );
              res.status(200).send(updatedUser);
            }
          } catch (Err) {
            res.status(400).send(Err);
          }
    }

}

export default Ranking