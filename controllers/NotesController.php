<?php
namespace app\controllers;

use app\models\Note;
use yii\web\Controller;
use yii\web\Request;

class NotesController extends Controller {

    public function actionIndex() {
        $notes = Note::find()->all();
        return  $this->render('list', ['notes' => $notes]);
    }

    public function actionNew() {
        $note = new Note();
        $note->title = $_POST['title'];
        $note->text = $_POST['text'];
        $note->save();

        $this->redirect(['/notes']);
    }

    public function actionRead() {
        $id = $_GET['id'];
        $note = Note::findOne($id);

        return $this->render('read', [
            'note' => $note
        ]);
    }

    public function actionEdit() {

        if(\Yii::$app->request->getIsPost()) {
            $id = $_POST['id'];

            $note = Note::findOne($id);
            $note->title = $_POST['title'];
            $note->text = $_POST['text'];
            $note->save();
            $this->redirect(['/notes']);
        }
        else {
            $id = $_GET['id'];
            $note = Note::findOne($id);
            return $this->render('edit', [
                'note' => $note
            ]);
        }
    }

    public function actionDel() {
        $id = $_GET['id'];
        Note::deleteAll(['id' => $id]);
        $this->redirect(['/notes']);
    }

}