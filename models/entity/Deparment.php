<?php
namespace app\model\entity;
use yii\db\ActiveRecord;
/**
 * Created by PhpStorm.
 */
class Deparment extends ActiveRecord {

    public static function tableName() {
        return 'districts';
    }

    public function getDeparment () {
        return $this->hasOne(Department::className(), ['id' => 'district_id']);
    }

    public function getaAddress () {
        return $this->hasOne(Address::className(), ['id' => 'address_id']);
    }
}