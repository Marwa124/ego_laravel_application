

<div class="search-group resultSearchBrands" id="scrollbar-style">
    @foreach ($brands as $key => $items)
        <div class="letter-search mb-3">
            @if ($sort)
                <h6 class="text-capitalize">{{$key}}</h6>
            @endif
            <div class="checkboxes ml-3">
                @if ($sort)
                @foreach ($items as $item)
                        <?php $count = App\Models\Brand::find($item['id'])->products()->count();  ?> 
                        <div class="form-check mb-1">
                            <input type="checkbox" name="brands" class="form-check-input brands" id="{{$item['id']}}" value="{{$item['id']}}">
                            <label class="form-check-label" for="{{$item['id']}}">{{$item['name']}} <small
                                    class="text-muted">({{$count}})</small></label>
                        </div>
                        @endforeach
                @else
                    <?php $count = App\Models\Brand::find($items->id)->products()->count();  ?> 
                        <div class="form-check mb-1">
                            <input type="checkbox" name="brands" class="form-check-input brands" id="{{$items->id}}" value="{{$items->id}}">
                            <label class="form-check-label" for="{{$items->id}}">{{$items->name}} <small
                                    class="text-muted">({{$count}})</small></label>
                        </div>
                @endif
            </div>
        </div>
    @endforeach
</div>