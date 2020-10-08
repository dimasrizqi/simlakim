@extends('layouts.master')
@section('title', 'Edit Buku Induk')

@section('content')
    <section class="section">
        <div class="section-header">
        
        <h1>Silahkan ubah dan klik simpan atau <a href="{{  route('bukuinduk.index')}}" class="btn btn-info">Kembali</a> </h1> 
        </div>
    </section>
    <div class="section-body">
        
        <div class="row">
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">
                    @if ($message = Session::get('success'))

                    <div class="alert alert-success">
            
                        <p>{{ $message }}</p>
            
                    </div>
            
                    @endif
                    @foreach ($buku_induk  as $no => $item)
                        <form action="{{ route('bukuinduk.update',$item->id) }}" method="POST">
                        @method('PUT')
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                            <div class="form-group">
                                        <label>* Nama</label>
                                    <input type="text" value="{{$item->pelanggan}}" placeholder="Masukan Nama Lengkap" name="name" class="form-control" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group" id="tambahan">
                                        <label>* Pilih Parameter Uji</label><br>
                                       
                                        @foreach ($parameter_uji as $item)
                                            @if ($item->id==in_array($item->id,$ppu_explode))
                                            <input type='checkbox' name='parameter_uji[]' value='{{$item->id}}'  checked   /> {!!$item->name!!}
                                            @else
                                            <input type='checkbox' name='parameter_uji[]' value='{{$item->id}}'     /> {!!$item->name!!}
                                            @endif
                                            <br>
                                        @endforeach
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card-footer text-right">
                                        <button class="btn btn-primary mr-1" type="submit">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @csrf
                        <button type="submit" class="btn btn-success">Simpan</button>
                        </form>
                    @endforeach
            </div>

        </div>
    </div>
    </div>
@endsection

@push('page-script')

@endpush
