<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Spatie\Permission\Models\Role;


class TransactionController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * List Transaction
     * @param Nill
     * @return Array $user
     * @author Shani Singh
     */
    public function index()
    {
        $transactions = Transaction::paginate(10);
        return view('transactions.index', ['transactions' => $transactions]);
    }

    /**
     * Create Transaction
     * @param Nill
     * @return Array $user
     * @author Shani Singh
     */
    public function create()
    {
        $roles = Role::all();

        return view('transactions.add', ['roles' => $roles]);
    }

    /**
     * Edit Transaction
     * @param Integer $transaction
     * @return Collection $transaction
     * @author Shani Singh
     */
    public function detail(Transaction $transaction)
    {
        return view('transactions.detail')->with([
            'transaction'  => $transaction
        ]);
    }
}
