<div class="container">

	<div class="row">
		<div class="col-md-12">
			
			<!-- <?php if ($success) : ?>
				<div class="alert alert-success">
					<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true"><i class="glyphicon glyphicon-remove"></i></span></button>
					<strong>Success!</strong> <?php echo $success; ?>
				</div>
			<?php endif; ?> -->
			<?= $this->session->flashdata('message')?>

			<div class="card border-dark">
            <div class="card-header bg-danger text-white">
                

			<a href="<?php echo base_url('admin/data_admin/tambah_admin') ?>" class="btn btn-sm btn-dark float-right">Tambah</a>
			</div>
			
			<div class="card-body">
			<div class="table-responsive">
				<table class="table table-hover table-bordered">
					<tr>
						<th>NO.</th>
						<th>Nama Petugas</th>
						<th>Username</th>
						<th>Level</th>
						<th>Action</th>
					</tr>
					<?php $i = 1;
					foreach ($tb_petugas as $ptgs) : ?>
						<tr>
							<td><?php echo $i; ?></td>
							<td><?php echo $ptgs->nama_petugas; ?></td>
							<td><?php echo $ptgs->username; ?></td>
							<?php if ($ptgs->id_level == 1) : ?>
							<td>Admin</td>
							<?php else : ?>
							<td>Petugas</td>
							<?php endif; ?>
                            <td>
								<a href="<?php echo base_url('admin/data_admin/edit/' . $ptgs->id_petugas) ?>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i></a>
								<a href="<?php echo base_url('admin/data_admin/delete/' . $ptgs->id_petugas) ?>" class="btn btn-sm btn-danger"><i class="fas fa-trash"></i></a>
<i class="fa-sharp fa-solid fa-pen-to-square"></i>

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
