const name_events = document.querySelector('#judul').value;
const image = document.querySelector('#gambar').value;
const date = document.querySelector('#tanggal').value;
const stat = document.querySelector('#stat').value;
const desc = document.querySelector('#deskrip').value;
const category = document.querySelector('#kat').value;
const btn = document.querySelector('#buttons')

btn.addEventListener('click', function(e){
    e.preventDefault()
    axios.post('additem.php',{
        'judul' : name_events,
        'gambar' : image,
        'tanggal' : date,
        'status' : stat,
        'deskripsi' : desc,
        'kategori' : category,
        'btnclk' : btn.value
    })
    .then(f => {
        console.log(f)
        window.location.href = "dashboard_events.php"
    })
})