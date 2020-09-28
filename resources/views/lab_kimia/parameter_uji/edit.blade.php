@extends('layouts.master')
@section('title', 'Daftar parameter uji')

@section('content')
    <section class="section">
        <div class="section-header">
        
        <h1>Silahkan ubah dan klik simpan atau <a href="{{  route('parameteruji.index')}}" class="btn btn-info">Kembali</a> </h1> 
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
                    @foreach ($parameter_uji  as $no => $item)
                        <form action="{{ route('parameteruji.update',$item->id) }}" method="POST">
                        @method('PUT')
                        <label for="">Nama Parameter Uji</label><br>
                        <input type="text" value="{{$item->name}}" name="name" class="form-control"><br>

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
