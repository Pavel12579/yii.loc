<?php
namespace app\models;
use app\models\entity\Employee;
use app\models\entity\EmployeePositions;
use app\models\entity\Person;
use app\models\entity\Position;
use yii\base\Model;


class EmployeeModel extends Model {
    public $firstName;
    public $lastName;
    public $secondName;
    public $positions;
    public $salary;


    public function rules() {
        return [
            [
                ['firstName', 'lastName', 'secondName', 'salary', 'positions'],
                'required'
            ]
        ];
    }
    public function add() {
        $person = new Person();
        $person->first_name = $this->firstName;
        $person->last_name = $this->lastName;
        $person->second_name = $this->secondName;
        $person->save();
        $employee = new Employee();
        $employee->person_id = $person->id;
        $employee->salary = $this->salary;
        $employee->save();

        foreach($this->positions as $posName) {
            $position = Position::find()->where(['name' => $posName])->one();
            if($position == NULL) {
                $position = new Position();
                $position->name = $posName;
                $position->save();
            }
            $employeePositions = new EmployeePositions();
            $employeePositions->employee_id = $employee->id;
            $employeePositions->position_id = $position->id;
            $employeePositions->save();
        }
    }
    public function getAll() {
        return Employee::find()
            ->with('person', 'positions')
            ->all();
    }
    public function getAllPositions() {
        return Position::find()->all();
    }
}