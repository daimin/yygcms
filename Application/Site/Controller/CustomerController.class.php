<?php
namespace Site\Controller;

class CustomerController extends BaseController {

    public function setting(){
        $this->checkAuthStatus();
        $this->display();
    }

    public function changePassword(){
        $this->checkAuthStatus();
        $passwordCurrent = trim(I("post.password_current"));
        $passwordNew = trim(I("post.password_new"));
        $passwordAgain = trim(I("post.password_again"));

        if(empty($passwordCurrent)){
            $this->jsonReturn (false, '当前密码不能为空');
        }

        if(empty($passwordNew)){
            $this->jsonReturn (false, '新密码不能为空');
        }

        if(empty($passwordAgain)){
            $this->jsonReturn (false, '再次输入新密码不能为空');
        }

        if(strlen($passwordNew) < 6){
            $this->jsonReturn (false, '新密码不能小于6个字符');
        }

        if($passwordNew != $passwordAgain){
            $this->jsonReturn (false, '再次输入新密码不正确');
        }

        $loginCst = $this->getLoginInfo();
        if($loginCst['password'] != hashPassword($passwordCurrent, true)){
            $this->jsonReturn (false, '当前密码不正确');
        }

        M('Customer')->where(['id' => $loginCst['id']])->data(['password' => hashPassword($passwordNew, true)])->save();

        $this->jsonReturn (true);
    }

    public function uploadAvatar(){
        $this->checkAuthStatus();
        $allowExts = ['png', 'jpg', 'gif'];
        $maxsize = 500 * 1024;
        if(empty($_FILES["file"]['size'])){
            $this->jsonReturn (false, '请选择要上传的文件');
        }

        $filename = $_FILES["file"]['name'];
        $fileext = strtolower(substr($filename, strrpos($filename, '.') + 1));
        if(!in_array($fileext, $allowExts)){
            $this->jsonReturn (false, '仅支持 PNG / JPG / GIF 文件');
        }

        if($_FILES["file"]['size'] > $maxsize){
            $this->jsonReturn (false, '仅支持 500k大小的文件');
        }

        $loginCst = $this->getLoginInfo();
        $relPath = C('__YYG_UPLOAD_DIR__')."/avatars/".$loginCst['id'].'/';
        $uidDir = THINK_PATH."/../".$relPath;
        if(!file_exists($uidDir)){
            @mkdir($uidDir);
        }
        $justfilename = 'headpic.'.$fileext;
        $newfilename = $uidDir . $justfilename;
        if(move_uploaded_file($_FILES["file"]["tmp_name"], $newfilename)){
            genAvatarThumbs($newfilename, ['width' => ['big' => '80', 'middle' => '48', 'small' => '24'], 'height' => ['big' => '80', 'middle' => '48', 'small' => '24']],
                $uidDir, $justfilename);
            M('Customer')->where(['id' => $loginCst['id']])->data(['avatar' => $relPath.$justfilename])->save();

            $this->jsonReturn ([
                'small' => $relPath.'small_'.$justfilename."?t=".time(),
                'middle' => $relPath.'middle_'.$justfilename."?t=".time(),
                'big' => $relPath.'big_'.$justfilename."?t=".time(),
            ]);
        }
        $this->jsonReturn (false, '上传失败');

    }
    
}