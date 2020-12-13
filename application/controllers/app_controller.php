<?php
class AppController extends Controller {
function beforeFilter() {
$this->online();
}
// Đếm số lượng online
function online() {
$online_session_id = $this->Session->id();
if (empty($online_session_id)) return ;
$this->loadModel('UserOnline');
$user_online = $this->UserOnline->findByIpClient($online_session_id);
$time_out = time() + 900 ;
if (empty($user_online) || $user_online == false) {
$user_online_new = $this->UserOnline->create();
$user_online_new['ip_client'] = $online_session_id;
$user_online_new['time_in'] = date('Y-m-d H:i:s',time());
$user_online_new['time_out'] = $time_out;
$this->UserOnline->deleteAll(array('UserOnline.time_out <=' => time()) , false , false);
$this->UserOnline->save($user_online_new);
} else {
$user_online['UserOnline']['time_out'] = $time_out;
$this->UserOnline->save($user_online);
}
}
}
?>