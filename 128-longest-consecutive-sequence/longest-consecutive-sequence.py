class Solution:
    def longestConsecutive(self, nums: List[int]) -> int:
        max_count, count = 0, 0
        hash_map = set(nums)

        for i in hash_map:
            #Left node check
            if i-1 not in hash_map:
                count = 1
                while i+1 in hash_map:
                    count+=1
                    i+=1
            max_count = max(count,max_count)
        return max_count