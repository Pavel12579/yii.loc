<?php
namespace app\models;

use yii\db\ActiveRecord;

/**
 * @author Gutsulyak Vadim <guts.vadim@gmail.com>
 */
class Note extends ActiveRecord {

    public static function tableName() {
        return "notes";
    }

}