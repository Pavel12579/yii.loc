<?php
namespace app\models\entity;
use yii\db\ActiveRecord;

/**
 * @author Gutsulyak Vadim <guts.vadim@gmail.com>
 */
class Person extends ActiveRecord {
    public static function tableName() {
        return 'persons';
    }
}