<h1>Список департаментов</h1>

<form class="form-horizontal" action="/department/add" method="POST">
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">
            Название:
        </label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" id="name" placeholder="Название">
        </div>
    </div>
    <div class="form-group">
        <label for="districtName" class="col-sm-2 control-label">
            Район:
        </label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="districtName" id="districtName" placeholder="Район">
        </div>
    </div>
    <div class="form-group">
        <label for="address" class="col-sm-2 control-label">
            Адресс:
        </label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="address" id="address" placeholder="Адресс">
        </div>
    </div>
    <div class="form-group">
        <label for="postCode" class="col-sm-2 control-label">
            Почтовый индекс:
        </label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="postCode" id="postCode" placeholder="Почтовый индекс">
        </div>
    </div>
    <div class="form-group">
        <label for="description" class="col-sm-2 control-label">
            Описание:
        </label>
        <div class="col-sm-10">
            <textarea class="form-control" name="description" id="description" placeholder="Описание" rows="3"></textarea>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Добавить</button>
        </div>
    </div>
</form>

<br>

<div class="panel panel-default">
    <div class="panel-heading">Notes List</div>
    <table class="table">
        <tr>
            <th>Название</th>
            <th>Район</th>
            <th>Адресс</th>
            <th>Почтовый код</th>
        </tr>

        <? foreach($departments as $department) { ?>
            <tr>
                <td><?=$department->name?></td>
                <td><?=$department->district->name?></td>
                <td><?=$department->address->address?></td>
                <td><?=$department->address->post_code?></td>
            </tr>
        <? } ?>
    </table>
</div>
