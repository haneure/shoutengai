<div>
    <div class="container">
        <div class="row">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="shop-title" style="display:inline;">Profile</h3>
                </div>
                <div class="panel-body">
                    <div class="col-md-4">
                        @if ($user->profile->image)
                            <img src="{{ asset('assets/images/profile') }}/{{ $user->profile->image }}" width="100%"
                                alt="">
                        @else
                            <img src="{{ asset('assets/images/profile') }}/default.png" width="100%" alt="">
                        @endif
                    </div>
                    <div class="col-md-8">
                        <p><b>Name: </b> {{ $user->name }}</p>
                        <p><b>Email: </b> {{ $user->email }}</p>
                        <p><b>Phone: </b> {{ $user->mobile }}</p>
                        <hr>
                        <p><b>Line1: </b> {{ $user->line1 }}</p>
                        <p><b>Line2: </b> {{ $user->line2 }}</p>
                        <p><b>City: </b> {{ $user->city }}</p>
                        <p><b>Province: </b> {{ $user->province }}</p>
                        <p><b>Country: </b> {{ $user->country }}</p>
                        <p><b>Zip Code: </b> {{ $user->zipcode }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
