<h1>Notes list</h1>

<form action="/notes/new" method="POST">
    <input class="form-control" type="text" name="title">
    <br>
    <textarea class="form-control" name="text"></textarea>
    <br>

    <input class="btn btn-success" type="submit" value="Add">
</form>

<br>

<div class="panel panel-default">
    <div class="panel-heading">Notes List</div>
    <table class="table">
        <tr>
            <th>Id</th>
            <th>Title</th>
        </tr>

        <? foreach($notes as $note) { ?>
            <tr>
                <td class="col-md-1"><?=$note->id?></td>
                <td>
                    <a href="/note/<?=$note->id?>">
                        <?=$note->title?>
                    </a>
                </td>
                <td class="col-md-1">
                    <a href="/notes/edit?id=<?=$note->id?>" class="col-md-5 label label-warning">
                        Edit
                    </a>
                    <a href="/notes/del?id=<?=$note->id?>" class="col-md-offset-1 col-md-5 label label-danger">
                        Del
                    </a>
                </td>
            </tr>
        <? } ?>
    </table>
</div>
