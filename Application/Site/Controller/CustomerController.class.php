<?php
namespace Site\Controller;

class CustomerController extends BaseController {

    public function setting(){
        $this->checkAuthStatus();
        $loginCst = $this->getLoginInfo();
        $this->assign('loginCst', $loginCst);
        $this->display();
    }
    
}