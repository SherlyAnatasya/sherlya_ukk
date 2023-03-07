
<div class="container logo-wrap">
                <div class="row pt-2">
                    <div class="col-12 text-center">
                        <h1 style="color:dark;">Selamat Datang <?= ucwords($this->session->userdata('username')) ?></h1>
                        <a class="absolute-toggle d-block d-md-none" data-toggle="collapse" href="#navbarMenu" role="button" aria-expanded="false" aria-controls="navbarMenu"><span class="burger-lines"></span></a>
                       <img src="<?= base_url('assets/images/lelanggue.jpg'); ?>" height="350" width="800">
                    </div>
                </div>
            </div>
            
            
    </nav>

</div>
        </header>
        <!-- END header -->

<div class="container-fluid">

    <div class="row text-center mt-5">
        <!-- begin Page Content -->

		
        <?php foreach ($tb_lelang as $le) : ?> 
            <?php if($le->status == 'dibuka'): ?>

            <div class="card ml-5 mb-5" style="width: 30rem;">
                <div class="card-body">
                <img src="<?= base_url() . 'assets/images/barang/' . $le->gambar ?>" class="card-img-top" alt="...">
                <div class="card-body"><section></seection>
                        <h5 class="card-title"><?= $le->nama_barang; ?></h5>
                    </a>
                </div>
                <strong>Rp.<?= $le->harga_awal?></strong>
                <br><br>
                    <a href="<?= base_url('petugas/auction/detail_barang/') . $le->id_lelang; ?>" 
                    class="btn btn-primary"> Lihat <details></details>
                    </a>
            </div>
		</div>
        <?php endif; ?>
			 <?php endforeach; ?> 

    </div>

</div>
