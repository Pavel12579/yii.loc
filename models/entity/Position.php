<?php


namespace app\models\entity;
use yii\db\ActiveRecord;

/**
 * @author Gutsulyak Vadim <guts.vadim@gmail.com>
 */
class Position extends ActiveRecord {
    public static function tableName() {
        return 'positions';
    }
}