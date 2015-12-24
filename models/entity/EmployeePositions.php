<?php
/**
 * Created by PhpStorm.
 * User: STUDENT
 * Date: 15.12.2015
 * Time: 21:19
 */

namespace app\models\entity;


use yii\db\ActiveRecord;

class EmployeePositions extends ActiveRecord {
    public static function tableName() {
        return 'employee_positions';
    }

}