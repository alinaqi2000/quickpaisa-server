<div class="modal fade" id="deleteModal{{ $user->id }}" tabindex="-1" role="dialog"
    aria-labelledby="deleteModal{{ $user->id }}Example" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteModal{{ $user->id }}Example">Are you Sure You wanted to Delete?
                </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Delete" below if you want to delete User!</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-danger" href="{{ route('logout') }}"
                    onclick="event.preventDefault(); document.getElementById('user-delete-form{{ $user->id }}').submit();">
                    Delete
                </a>
                <form id="user-delete-form{{ $user->id }}" method="POST"
                    action="{{ route('users.destroy', ['user' => $user->id]) }}">
                    @csrf
                    @method('DELETE')
                </form>
            </div>
        </div>
    </div>
</div>
