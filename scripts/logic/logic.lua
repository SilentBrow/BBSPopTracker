-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    amount = tonumber(amount)
    if not amount then
      return count > 0
    else
      return count >= amount
    end
  end

function can_high_jump()
    return has("High Jump")
end

function can_glide()
    return has("Glide")or has("Fire Glide") or has("Superglide")
end

function can_airslide()
    return has("Air Slide") or has("Ice Slide")
end

function can_doubleflight()
    return has("Doubleflight")
end

function wayfinders()
    return has("Wayfinder Terra")and has("Wayfinder Aqua")and has("Wayfinder Ventus")
end
