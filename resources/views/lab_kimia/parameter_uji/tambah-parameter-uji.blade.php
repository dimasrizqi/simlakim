@extends('layouts.master')
@section('title', 'Tambah parameter uji')

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>Input parameter uji</h1>
        </div>
    </section>
    <div class="section-body">
        <div class="row">
            <div class="col-12 col-md-12 col-lg-12">
                <div class="card">

                    <form action="{{ route('parameteruji.store') }}" method="POST">
                        @csrf
                        
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>* Nama</label>
                                        <input type="text" placeholder="Masukan Nama Parameter Uji" name="name" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card-footer text-right">
                                        <button class="btn btn-primary mr-1" type="submit">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                
                </form>
            </div>

        </div>
    </div>
    </div>
@endsection

@push('page-script')

@endpush
