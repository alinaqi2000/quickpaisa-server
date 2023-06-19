@extends('layouts.app')

@section('title', 'Transactions List')

@section('content')
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Transactions</h1>
        </div>

        {{-- Alert Messages --}}
        @include('common.alert')

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">All Transactions</h6>

            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th width="10%">ID</th>
                                <th width="5%">Type</th>
                                <th width="15%">From</th>
                                <th width="15%">To</th>
                                <th width="10%">Amount</th>
                                <th width="15%">Date</th>
                                <th width="10%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($transactions as $transaction)
                                <tr>
                                    <td><span class="badge badge-secondary">#{{ $transaction->transactionID }}</span></td>
                                    <td>
                                        @if ($transaction->transactionType == 'credit')
                                            <span class="badge badge-success">Credit</span>
                                        @else
                                            <span class="badge badge-danger">Debit</span>
                                        @endif

                                    </td>
                                    <td>{{ $transaction->transactionInitiatorName }}</td>
                                    <td>{{ $transaction->transactionMemberName }}</td>
                                    <td>Rs.{{ number_format($transaction->transactionAmount) }}</td>
                                    <td>{{ $transaction->created_at }}</td>
                                    <td style="display: flex">
                                        <a title="Detail"
                                            href="{{ route('transactions.detail', ['transaction' => $transaction->id]) }}"
                                            class="btn btn-sm btn-primary m-2">
                                            <i class="fa fa-eye"></i>
                                        </a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>

                    {{ $transactions->links() }}
                </div>
            </div>
        </div>

    </div>


@endsection

@section('scripts')

@endsection
