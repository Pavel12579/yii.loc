<?php
namespace app\models\entity;

use yii\db\ActiveRecord;

/**
 * @author Gutsulyak Vadim <guts.vadim@gmail.com>
 */
class Department extends ActiveRecord {

    public static function tableName() {
        return 'departments';
    }

    public function getDistrict() {
        return $this->hasOne(District::className(), ['id' => 'district_id']);
    }

    public function getAddress() {
        return $this->hasOne(Address::className(), ['id' => 'address_id']);
    }

}