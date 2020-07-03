
<div class="modal fade" id="myModalEdit<?php echo $id_soal; ?>">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Form Edit Jenis Soal</h4>
      </div>
     <?php echo form_open('jenis_soal/edit/'.$id_soal); ?>
        <div class="box-body">
          <div class="form-group">
            <label>Nama Soal</label>
            <input type="text" name="nama_soal" value="<?php echo $jso->nama_soal; ?>" class="form-control" placeholder="Nama Soal" required>
          </div>
          <div class="form-group">
            <label>Jumlah Soal</label>
            <input type="number" name="jumlah_soal" value="<?php echo $jso->jumlah_soal; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Jumlah Soal Minimal Benar</label>
            <input type="number" name="minimal_benar" value="<?php echo $jso->minimal_benar; ?>" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Jumlah Soal Tampil</label>
            <input type="number" name="limit" value="<?php echo $jso->limit; ?>" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Formasi</label><br>
            <input type="checkbox" name="id_lab[]" class="id_lab" alt="Checkbox" value="8" onclick="nama_lab()" onchange="nama_lab()" id="id_lab1" <?php $id_lab=$jso->id_lab; if ($id_lab=='8' or $id_lab=='8,9'){echo 'checked';}; ?> > Programmer<br>
            <input type="checkbox" name="id_lab[]" class="id_lab" alt="Checkbox" value="9" onclick="nama_lab()" onchange="nama_lab()" id="id_lab2" <?php $id_lab=$jso->id_lab; if ($id_lab=='9' or $id_lab=='8,9'){echo 'checked';}; ?>> Asisten
            
          </div>
        </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary pull-left">Submit</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
      </div>
    </form>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
</div>