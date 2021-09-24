multiset = gets().split().sort_by.map{|s| s.to_i}.sort()
multiset_sum = multiset.inject(0) {|sum,num| sum+num}
if multiset_sum % 2 == 0
    subset = []
    subset_sum = 0
    multiset.each do |i|
        temp = subset_sum + i
        if temp > multiset_sum/2
            next
        end

        subset_sum += i
        subset << i

        if subset_sum == multiset_sum/2
            p(subset)
        end
    end

    p(multiset-subset)
end