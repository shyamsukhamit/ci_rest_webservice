



<?php
if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}
class Api_model extends CI_Model {
     public function __construct()
    {
        parent::__construct();
    }
    public function get($id){
        $this->db->select("username,register_date");
        $query = $this->db->get_where("users_api", array("id" => $id));
        if($query->num_rows() == 1){
            return $query->row();
        }
    }
    public function create_user($username,$password){
        $data = array(
            "username" => $username,
            "password" => $password
        );
        return $this->db->insert("users_api", $data);
    }
    public function update_user($id,$data){
       
        $this->db->where('id', $id);
       return $this->db->update("users_api", $data); 
        
    }
      public function posts($id){
        $this->db->where("user_id", $id);
        $query = $this->db->get("messages_api");
        if($query->num_rows() > 0){
            return $query->result();
        }
    }
  public function get_all(){
        $query = $this->db->get("users_api");
        if($query->num_rows() > 0){
            return $query->result();
        }
    }
}
