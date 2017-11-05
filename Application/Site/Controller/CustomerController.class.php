<?php
namespace Site\Controller;

class CustomerController extends BaseController {

    public function setting(){
        $this->checkAuthStatus();
        $this->display();
    }
    
}