<!DOCTYPE html>
<html>
    <head>
	    <meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<style>
		</style>
		<link href="../css/styles.css" rel="stylesheet" type="text/css" />
        <title>Редактор библиотеки.Удаление</title>
    </head>
    <body>
        <div class="default__container">
            <div class="default__header">
                <h1 class="default__header--1">Библиотека 2.0</h1>
                </div>
            <div class="default__header">
                <h2 class="default__header--2 default--warning">Удалить книгу??</h2>
            </div>
			<form method="post" action="index.php?action=delete&confirm=1&id=<?=$book['ID']?>">
                <div class="book__card--form">
                    <label><h3 class="book__title"><input type="checkbox" name="id" value="<?=$book['ID']?>" required><?=$book['BOOK_NAME']?></h3></label>
                    <h4 class="book__author"><?=show_book_authors($book['ID'])?></h4>
                    <!--p class="default__bookInfo"><php if (!empty($book['date'])) echo 'Книга добавлена: '.$book['date']; if (!empty($book['contributor'])) echo '<br>Добавил: '.$book['contributor'];?></p><br-->
                </div>    
                <div class="default__buttonContainer">
                    <a class="default__link--nodecoration" href="index.php"><button type="button" class="default__button default__button--recomended">Не удалять</button></a>
				    <button class="default__button default__button--warning" type="submit">Да, удалить</button>
                </div>
			</form>
        </div>
    </body>
</html>