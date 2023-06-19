@extends('layouts.app')

@section('title', 'Transaction Detail')

@section('content')


    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Transactions Detail</h1>
            <a href="{{ route('transactions.index') }}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-arrow-left fa-sm text-white-50"></i> Back</a>
        </div>

        {{-- Alert Messages --}}
        @include('common.alert')

        <div class="container mt-6 mb-7">
            <div class="row justify-content-center">
                <div class="col-lg-12 col-xl-9">
                    <div class="card">
                        <div class="card-body p-5">
                            <div class="ribbon ribbon-top-right">
                                @if ($transaction->transactionType == 'credit')
                                    <span>credit</span>
                                @else
                                    <span class="danger">debit</span>
                                @endif
                            </div>
                            <h2>
                                {{ $transaction->transactionInitiatorName }}
                            </h2>
                            <p class="fs-sm">
                                This is detail for the transaction of
                                <strong>Rs.{{ number_format($transaction->transactionAmount) }}</strong> (PKR) made to
                                {{ $transaction->transactionMemberName }}.
                            </p>

                            <div class="border-top border-gray-200 pt-4 mt-4">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-muted mb-2">Transaction ID</div>
                                        <strong> {{ $transaction->transactionID }}</strong>
                                    </div>
                                    <div class="col-md-6 text-md-end">
                                        <div class="text-muted mb-2">Transaction Date</div>
                                        <strong>{{ date('Y-m-d h:i:s', strtotime($transaction->created_at)) }}</strong>
                                    </div>
                                </div>
                            </div>

                            <div class="border-top border-gray-200 mt-4 py-4">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="text-muted mb-2">From</div>
                                        <strong>
                                            {{ $transaction->transactionInitiatorName }}
                                        </strong>
                                        <p class="fs-sm">
                                            <span style="font-size: 11px">
                                                <strong>Wallet Address:</strong><br>
                                                {{ $transaction->transactionInitiatorWalletAddress }}
                                            </span>
                                            <br>
                                            <a href="#!"
                                                class="text-purple">{{ $transaction->transactionInitiatorPhoneNumber }}
                                            </a>
                                        </p>
                                    </div>
                                    <div class="col-md-6 text-md-end">
                                        <div class="text-muted mb-2">To</div>
                                        <strong>
                                            {{ $transaction->transactionMemberName }}
                                        </strong>
                                        <p class="fs-sm">
                                            <span style="font-size: 11px">
                                                <strong>Wallet Address:</strong><br>
                                                {{ $transaction->transactionMemberWalletAddress }}
                                            </span>
                                            <br>
                                            <a href="#!"
                                                class="text-purple">{{ $transaction->transactionMemberPhoneNumber }}
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <table class="table border-bottom border-gray-200 mt-3">
                                <thead>
                                    <tr>
                                        <th scope="col" class="fs-sm text-dark text-uppercase-bold-sm px-0">
                                            Description</th>
                                        <th scope="col"
                                            class="fs-sm text-dark text-uppercase-bold-sm text-end px-0 text-right">
                                            Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="px-0">
                                            {{ $transaction->transactionInitiatorName }} <i
                                                class="fa fa-chevron-right text-xs px-2"></i>
                                            {{ $transaction->transactionMemberName }}

                                        </td>
                                        <td class="text-end px-0 text-right">
                                            Rs.{{ number_format($transaction->transactionAmount) }}
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="mt-5">

                                <div class="d-flex justify-content-end mt-3">
                                    <h5 class="me-3">Total:</h5>
                                    <h5 class="text-success">Rs.{{ number_format($transaction->transactionAmount) }} (PKR)
                                    </h5>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>


@endsection
