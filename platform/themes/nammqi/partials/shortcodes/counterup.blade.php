<section class="achievements section-notch">
    <div class="overlay padding-120">
        <div class="container">
            <div class="row">
                @foreach($counters as $counter)
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="achievement-item">
                        <i class="icon {{ $counter->icon }}"></i>
                        <span class="counter">{{ $counter->number }}</span>
                        <p>{{ clean($counter->name) }}</p>
                    </div><!-- achievement item -->
                </div>
                @endforeach
            </div>
        </div>
    </div>
</section>
