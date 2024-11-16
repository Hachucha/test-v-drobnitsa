<?php

use yii\helpers\Html;
use common\widgets\ActiveForm;
use common\widgets\Card;

/* @var $this yii\web\View */
/* @var $model common\models\User */

$action = 'Смена пароля';
$this->title = Html::encode(Yii::$app->urlManager->getLastTitle() . ' - ' . $action .
    ($model->isNewRecord ? '' : ' «' . (string)$model . '»' ));

if (!$model->isNewRecord) $this->params['breadcrumbs'][] = (string)$model;
$this->params['breadcrumbs'][] = $action;

?>

<?php Card::begin([]); ?>

<div class="edit-form">

    <?php $form = ActiveForm::begin(['options' => ['autocomplete' => 'off', 'enctype' => 'multipart/form-data']]); ?>

    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <?= $form->field($model, 'password_new')->passwordInput(['maxlength' => true, 'autocomplete' => 'off']) ?>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <?= $form->field($model, 'password_repeat')->passwordInput(['maxlength' => true, 'autocomplete' => 'off']) ?>
        </div>
    </div>

    <div>
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-primary']) ?>
        <?php echo Html::a('Отмена', $this->context->getReferrer(), ['class' => 'btn btn-soft-dark']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php Card::end() ?>
