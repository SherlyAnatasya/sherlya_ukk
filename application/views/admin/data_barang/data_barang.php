<div class="container">

	<div class="row">
		<div class="col-md-12">
					<?= $this->session->flashdata('message')?>
			

			<div class="card border-dark">
            <div class="card-header bg-danger text-white">
              

			<a href="<?php echo base_url('admin/data_barang/tambah_barang') ?>" class="btn btn-sm btn-warning float-right">Tambah</a>
			</div>
			
			<div class="card-body">
			<div class="table-responsive">
				<table class="table table-hover table-bordered">
					<tr>
						<th>NO.</th>
						<th>GAMBAR</th>
						<th>Nama Barang</th>
						<th>Deskripsi Barang</th>
						<th>Harga</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
					<?php $i = 1;
					foreach ($tb_barang as $brg) : ?>
						<tr>
							<td><?php echo $i; ?></td>
							<td>
								<img src="<?= base_url() . '/assets/images/barang/' . $brg->gambar ?>"
								width="100">
							<td><?php echo $brg->nama_barang; ?></td>
							<td><?php echo $brg->deskripsi_barang; ?></td>
							<td>Rp. <?php echo number_format($brg->harga_awal, 2, ',', '.'); ?></td>
							<th>
								<?php if ($brg->status_barang):?>
									<div class="label text-success">Sudah Terjual</div>
									<?php else:?>
										<div class="label text-danger">Belum terjual</div>
								<?php endif;?>
							</th>
							<td>
								<a href="<?php echo base_url('admin/data_barang/edit/' . $brg->id_barang) ?>" class="btn btn-sm mb-1 btn-primary"><i class="fas fa-edit"></i></a>
								<a href="<?php echo base_url('admin/data_barang/delete/' . $brg->id_barang) ?>" class="btn btn-sm mb-1 btn-danger"><i class="fas fa-trash"></i></a>


							</td>
						</tr>
					<?php $i++;
					endforeach; ?>
				</table>
				</div></div>
			</div>
		</div>
	</div>

</div>
