const tiles = document.querySelectorAll('td');

const moveTile = (tile, emptyTile) => {
  emptyTile.classList.toggle('empty');
  emptyTile.innerText = tile.innerText;

  tile.classList.toggle('empty');
  tile.innerText = "";
}

const shouldMove = (tile, emptyTile) => {
  // cellIndex is the column index
  // parentElement.rowIndex is the row index
  if (emptyTile.cellIndex == tile.cellIndex) {
    if ([1, -1].includes(emptyTile.parentElement.rowIndex - tile.parentElement.rowIndex)) {
      return true;
    }
  } else if (emptyTile.parentElement.rowIndex == tile.parentElement.rowIndex) {
    if ([1, -1].includes(emptyTile.cellIndex - tile.cellIndex)) {
      return true;
    }
  }
  return false;
}

tiles.forEach((tile) => {
  tile.addEventListener('click', (event) => {
    const emptyTile = document.querySelector('.empty');
    if (shouldMove(tile, emptyTile)) {
      moveTile(tile, emptyTile);
    }
  })
})
