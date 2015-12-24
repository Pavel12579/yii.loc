<?php


namespace app\models\entity;
use yii\db\ActiveRecord;

/**
 * @author Gutsulyak Vadim <guts.vadim@gmail.com>
 */
class Employee extends ActiveRecord {
    public static function tableName() {
        return 'employees';
    }

    public function getPositions() {
        return $this->hasMany(Position::className(), ['id' => 'position_id'])
            ->viaTable('employee_positions', ['employee_id' => 'id']);
    }

    public function getPerson() {
        return $this->hasOne(Person::className(), ['id' => 'person_id']);
    }
}