<div class="page-content">
        <!-- Page Header-->
        <div class="page-header no-margin-bottom">
          <div class="container-fluid">
            <h2 class="h5 no-margin-bottom form-inline">Data Product
            </h2>
          </div>
        </div>
        <!-- Breadcrumb-->
        <div class="container-fluid">
          <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?php echo base_url('backend/Page/home')?>">Home</a></li>
            <li class="breadcrumb-item active"><?php echo $judul; ?>        </li>
              <div class="no-margin-bottom ml-auto">
                  <a class="mr-3" href="<?php echo base_url('backend/Crud/insert_product')?>"><button type="submit" class="btn btn-sm btn-success"><h6 class="h6 no-margin-bottom">Tambah Produk</h6></button></a>
                  <a class="mr-3" href="<?php echo base_url('backend/Crud/hapus_produk')?>"><button class="btn btn-sm btn-primary text-white" type="submit" ><h6 class="h6 no-margin-bottom">Produk Terhapus</h6></button></a>
              </div>
          </ul>
        </div>
        <section class="no-padding-top">
          <div class="container-fluid">
            <div class="row">
              <div class="col-lg-12">
                <div class="block margin-bottom-sm">
                    <div class="row d-flex justify-content-center">
                      <div class="card card-primary">
                        <!-- /.card-header -->
                        <div class="card-body table-responsive p-0">
                          <!-- Table -->
                          <table id='prodTable' class='table-dataTable-compact table-striped text-nowrap border-primary'>
                            <thead class="text-white" style="font-size: 15px;">
                              <tr>
                                <th>No</th>
                                <th>Gambar</th>
                                <th>Nama Produk</th>
                                <th>Deskripsi</th>
                                <th>Harga</th>
                                <th>Nama Kategori</th>
                                <th>Stok</th>
                                <th>Option</th>
                                <th></th>
                              </tr>
                            </thead>
                            <tbody class="text-white" style="font-size: 14px;">
                              <tr>
                              </tr>
                            </tbody>
                          </table>
                         </div>
                        </div>
                        <!-- /.card-body -->
                      </div>
                      <!-- /.card -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
  <!-- Script -->
  <script type="text/javascript">
  $(document).ready(function(){
      var dt =  $('#prodTable').DataTable({
          'processing': true,
          'serverSide': true,
          'serverMethod': 'post',
          "columnDefs": [
            {
                "targets": [ 7 ],
                "visible": false,
                "searchable": false
                },
            ],
          'ajax': {
            'url':'<?=base_url()?>backend/prodList/prodList'
          },
          'columns': [
            { data: 'id_produk'},
            {
                       "data": "gambar",
                       "aTargets": [1],
                       "render": function (data) {
                           return '<img src="<?php echo base_url('gambar/product/')?>'+data+' "width="64"" />';
                       }
                   },
            { data: 'nama_produk' },
            { data: 'deskripsi' },
            { data: 'harga',
            render: $.fn.dataTable.render.number( ',', '.', 2, 'Rp. ' )
            },
            { data: 'nama_kategori' },
            { data: 'stok' },
            {
              "data": "no",
                       "orderable": false,
                       "aTargets": [6],
                       "render": function (data) {
                           return '<div class="d-inline" <form action="<?php echo base_url('backend/Crud/hapus')?>" enctype="multipart/form-data" method="post" accept-charset="utf-8"><a href="<?php echo site_url('backend/Crud/hapus/')?>'+data+'" ><span class="btn btn-sm btn-danger">Delete <i class="icon-close mb-1"></i></span></a><?php echo form_close(); ?> || <a href="<?php echo site_url('backend/Crud/edit/')?>'+data+'"><span class="btn btn-sm btn-warning">Edit <i class="icon-padnote mb-1"></i></span></a></div>';
                       }
                   },
            { data: 'no'}
          ]
      });
  });
  </script>