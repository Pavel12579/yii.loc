<?php
namespace app\models\entity;

use yii\db\ActiveRecord;

/**
 * @author Gutsulyak Vadim <guts.vadim@gmail.com>
 */
class District extends ActiveRecord {

    public static function tableName() {
        return 'districts';
    }

    public function getDepartments() {
        return $this->hasMany(Department::className(), ['district_id' => 'id']);
    }

}