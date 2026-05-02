class Solution:
    def threeSum(self, nums: list[int]) -> list[list[int]]:
        ans = []
        nums.sort()
        s = set()
        for i in range(len(nums)):
            l = i+1 
            r = len(nums)-1
            while l<r:
                target = nums[i] + nums[l] + nums[r]
                if target < 0:
                    l+=1
                elif target > 0:
                    r-=1
                else:
                    if (nums[i],nums[l],nums[r]) not in s:
                        ans.append([nums[i],nums[l],nums[r]])
                        s.add((nums[i],nums[l],nums[r]))
                    l+=1
                    r-=1
        return ans