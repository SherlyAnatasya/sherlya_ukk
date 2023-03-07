
<section class="konten mt-2">
    <div class="container-fluid">

        <div class="card border-dark">
            <div class="card-header bg-danger text-white">
               
                <a href="<?= base_url('admin/data_barang') ?>" class="btn btn-sm btn-light float-right"> Kembali</a>
            </div>
            <div class="card-body">
			<form action="<?= base_url('admin/data_barang/update/'); ?>" method="post" enctype="multipart/form-data">
			<input type="hidden" readonly value="<?= $tb_barang['id_barang']; ?>" class="form-control" name="id_barang" id="id_barang">
				<div class="form-group">
					<label for="name">Nama barang</label>
					<input type="text" name="nama_barang" id="nama_barang" value="<?= $tb_barang['nama_barang'] ?>" class="form-control" placeholder="Enter the product name" />
				</div>
				<div class="form-group">
					<label for="desc">Deskripsi barang</label>
					<textarea name="deskripsi_barang" id="deskripsi_barang" rows="10" class="form-control"><?= htmlspecialchars($tb_barang['deskripsi_barang']) ?></textarea>
				</div>
				<div class="form-group">
					<label for="price">Harga barang</label>
					<input type="text" name="harga_awal" id="harga_awal" value="<?= $tb_barang['harga_awal'] ?>" class="form-control" placeholder="Enter the product price" />
				</div>
				<div class="form-group">
					<label>Gambar :</label>
					<img src="<?= base_url() . 'assets/images/barang/' . $tb_barang['gambar'] ?>"
					width="100">
					<input type="file" name="gambar" id="gambar" class="form-control" value="<?= base_url('assets/images/barang/') . $tb_barang['gambar'] ?>">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary" name="save" value="true">Simpan</button>
				</div>
			</form>
		
                 
                
            </div>
        </div>
    </div>
    </div>
</section>
