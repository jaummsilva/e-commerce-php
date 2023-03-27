<?php

namespace App\Models;
use MF\Model\Model;
use App\Connection;

class Produto extends Model {

    private $id;
    private $nome;
    private $preco;
    private $descricao;
    private $data_criacao;
    private $data_alteracao;
    private $imagemId;

    public function __get($name) {
        return $this->$name;
    }
    public function __set($name,$value ) {
        $this->$name = $value;
    }

    public function cadastrarUsuario() {
        $query = "insert into produto(nome,preco,senha,data_nascimento,telefone,imagem_Id)
        values (:nome,:email,:senha,:data_nascimento,:telefone,:imagemId)";
        $smtm = $this->db->prepare($query);
        $smtm->bindValue(':nome',$this->__get('nome'));
        $smtm->bindValue(':email',$this->__get('email'));
        $smtm->bindValue(':senha',$this->__get('senha'));
        $smtm->bindValue(':data_nascimento',$this->__get('data_nascimento'));
        $smtm->bindValue(':imagemId',$this->__get('imagemId'));
        $smtm->bindValue(':telefone',$this->__get('telefone'));
        $smtm->execute();
        return $this;
    }
    public function validarCadastro() {
        $valide = true;

        if(strlen($this->__get('nome')) < 3) {
            return false;
        }
        if(strlen($this->__get('email')) < 3) {
            return false;
        }
        if(strlen($this->__get('senha')) < 3) {
            return false;
        }
        return $valide;
    }
    public function autenticar() {
        $query = "select id, nome, email from usuario where email = :email AND senha = :senha";
        $smtm = $this->db->prepare($query);
        $smtm->bindValue(':email',$this->__get('email'));
        $smtm->bindValue(':senha',$this->__get('senha'));
        $smtm->execute();

        $usuario = $smtm->fetch(\PDO::FETCH_ASSOC);
        if($usuario['id'] != '' && $usuario['nome'] != '') {
            $this->__set('id', $usuario['id']);
            $this->__set('nome', $usuario['nome']);
        }
        return $this;
    }
    public function getUsuario() {
        $query = "select * from usuario where id = :id";
        $smtm = $this->db->prepare($query);
        $smtm->bindValue(':id',$this->__get('id'));
        $smtm->execute();
        return $smtm->fetch(\PDO::FETCH_ASSOC);
    }
    public function getTodosUsuarios() {
        $query = "select * from usuario";
        $smtm = $this->db->prepare($query);
        $smtm->execute();
        return $smtm->fetchAll(\PDO::FETCH_ASSOC);
    }
    public function getTodosUsuariosEmail($email) {
        $query = "select email from usuario where email = :email";
        $smtm = $this->db->prepare($query);
        $smtm->bindValue(':email',$email);
        $smtm->execute();
        return $smtm->fetchAll(\PDO::FETCH_ASSOC);
    }
    public function editarUsuario() {
        $query = "update usuario set nome = :nome,
        email = :email,
        senha = :senha,
        telefone = :telefone,
        data_nascimento = :data_nascimento,
        data_alteracao = :data_alteracao,
        imagem_Id = :imagemId
        where id = :id";
        
        $smtm = $this->db->prepare($query);
        $smtm->bindValue(':id',$this->__get('id'));
        $smtm->bindValue(':nome',$this->__get('nome'));
        $smtm->bindValue(':email',$this->__get('email'));
        $smtm->bindValue(':senha',$this->__get('senha'));
        $smtm->bindValue(':data_nascimento',$this->__get('data_nascimento'));
        $smtm->bindValue(':data_alteracao',$this->__get('data_alteracao'));
        $smtm->bindValue(':imagemId',$this->__get('imagemId'));
        $smtm->bindValue(':telefone',$this->__get('telefone'));
        $smtm->execute();
        return $smtm->fetchAll(\PDO::FETCH_ASSOC);
    }
    public function deletarUsuario() {
        $query = "delete from usuario where id = :id ";
        $smtm = $this->db->prepare($query);
        $smtm->bindValue(':id', $this->__get('id'));
        $smtm->execute();
        return $smtm->fetchAll(\PDO::FETCH_ASSOC);
    }

}

?>