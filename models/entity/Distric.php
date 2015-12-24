<?php
/**
 * Created by PhpStorm.
 * User: student
 * Date: 08.12.2015
 * Time: 21:06
 */

namespace app\model\entity;


use yii\db\ActiveRecord;

class Distric extends ActiveRecord {
    public static function tableName() {
        return 'districts';
    }

    public function getDeparment () {
        return $this->hasMany(Department::className(), ['id' => 'district_id']);
    }
}
