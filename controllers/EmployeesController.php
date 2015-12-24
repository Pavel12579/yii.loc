<?php
namespace app\controllers;
use app\models\EmployeeModel;
use yii\web\Controller;

class EmployeesController extends Controller {
    public function actionList() {
        $model = new EmployeeModel();
        $employees = $model->getAll();
        $positions = $model->getAllPositions();
        return $this->render('list', [
            'employees' => $employees,
            'positions' => $positions,
        ]);
    }
    public function actionAdd() {
        $model = new EmployeeModel();
        $model->load(\Yii::$app->request->post());
//        $this->renderContent(var_dump($model));
        $model->add();
        $this->redirect('list');
    }
}