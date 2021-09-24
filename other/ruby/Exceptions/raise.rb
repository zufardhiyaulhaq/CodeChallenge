# frozen_string_literal: true

def raise_exception
  puts('this is before raise')
  raise 'haha Error occured by'
  puts('never execute')
end

# raise_exception

def odd_check(number)
  raise "#{number} is not odd" unless number.odd?
end

# odd_check(2)

def raise_and_rescue
  begin
    puts('before railse')
    raise 'raise exception'
    puts('after raise')
  rescue 
    puts('exec if raise happen')
  end
  puts('after begin')
end

# raise_and_rescue

def raise_rescue_ensure_odd_check(number)
    begin
        puts('before railse')
        raise 'raise exception' unless number.odd?
        puts('after raise')
    rescue => exception
        puts('exec if raise happen')
    ensure
        puts('ensure always execute')
    end
end

raise_rescue_ensure_odd_check(2)
raise_rescue_ensure_odd_check(3)

