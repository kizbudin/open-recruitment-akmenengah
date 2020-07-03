<div class="modal fade" id="modal-default">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Form Input Jenis Soal</h4>
      </div>
      <?php echo form_open('jenis_soal/input'); ?>
        <div class="box-body">
          <div class="form-group">
            <label>Nama Soal</label>
            <input type="text" name="nama_soal" class="form-control" placeholder="Nama Soal" required>
          </div>
          <div class="form-group">
            <label>Jumlah Soal</label>
            <input type="number" name="jumlah_soal" class="form-control"  required>
          </div>
          <div class="form-group">
            <label>Jumlah Soal Minimal Benar</label>
            <input type="number" name="minimal_benar" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Jumlah Soal yang Tampil</label>
            <input type="number" name="limit" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Formasi</label><br>
              <input type="checkbox" name="id_lab[]" class="id_lab" alt="Checkbox" value="8" > Programmer<br>
              <input type="checkbox" name="id_lab[]" class="id_lab" alt="Checkbox" value="9" > Asisten
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