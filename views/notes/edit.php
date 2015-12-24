<h1>Edit Note</h1>

<form action="/notes/edit" method="post">
    <input class="form-control" type="text" name="title" value="<?=$note->title?>">
    <br>
    <textarea class="form-control" name="text"><?=$note->text?></textarea>
    <br>
    <input type="hidden" name="id" value="<?=$note->id?>">

    <input class="btn btn-success" type="submit" value="Save">
</form>