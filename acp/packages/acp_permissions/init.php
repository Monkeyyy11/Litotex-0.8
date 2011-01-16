<?php
include_once('classes/permission.class.php');

class package_acp_permissions extends acpPackage{

	protected $_availableActions = array('main', 'save');
	
	public static $dependency = array('acp_config');
	
	protected $_packageName = 'acp_permissions';
	protected $_theme = 'main.tpl';
	
	public function __action_main(){
		
		//Variable over Get or Post(formular)
		$_POST = array_merge($_POST, $_GET);
		if(!isset($_POST['associateType']) || !isset($_POST['associateID']))
                    throw new lttxError('permissions_no_user_or_group');
		$iAssociateType = (int)$_POST['associateType'];
		$iAssociateID 	= (int)$_POST['associateID'];

		if(
			!empty($iAssociateType)&&
			!empty($iAssociateID)
		){
			try  {

				if($iAssociateType == 1){
					$oAssociate = new user($iAssociateID);
				} else {
					$oAssociate = new userGroup($iAssociateID);
				}

			} catch (Exception $e) {
				throw new lttxError('permissions_no_user_or_group');
			}



			self::$tpl->assign('iAssociateType', $iAssociateType);
			self::$tpl->assign('iAssociateID', $iAssociateID);

			$oPermission = new permission($iAssociateType, $iAssociateID);

			self::$tpl->assign('oPermission', $oPermission);

		}



		return true;
	}
	
	public function __action_save(){
	
		$aSavePermissionsData = $_POST['permissions'];
	
		$iAssociateType = (int)$_POST['associateType'];
		$iAssociateID 	= (int)$_POST['associateID'];

		$oPermission 	= new permission($iAssociateType, $iAssociateID);
		
		$oPermission->deleteAllPerissions();
		
		foreach($aSavePermissionsData as $iPermissionID => $iValue){
			$oPermission->insertPermission($iPermissionID, $iValue);
		}
		
		$this->__action_main();
		return true;
	}
	
	public static function registerHooks(){
		return true;
	}
}