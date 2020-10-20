def bubble_sort(bubble)
    min_index = bubble.rindex(bubble.min)
    bubble[0], bubble[min_index] = bubble[min_index], bubble[0]
    max_index = bubble.rindex(bubble.max)
    bubble[bubble.length - 1], bubble[max_index] = bubble[max_index], bubble[bubble.length - 1]

    loop do
        switch = false
        (bubble.length - 1).times do |i|
            if bubble[i] > bubble[i+1]
                bubble[i], bubble[i+1] = bubble[i+1], bubble[i]
                switch = true
            end
        end
        break if switch == false
    end
    bubble
end

p bubble_sort([4,3,78,2,0,1])
p bubble_sort([398,9,348,3,7,1,45])
p bubble_sort([9,9,8,8,7,7,6,6,4])
# [0,2,2,3,4,78]