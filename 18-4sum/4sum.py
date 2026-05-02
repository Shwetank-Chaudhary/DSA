class Solution:
    def fourSum(self, num: List[int], target: int) -> List[List[int]]:
        s = set()
        ans = []
        num.sort()
        for a in range(len(num)):
            for b in range(a+1,len(num)):
                c = b+1
                d = len(num)-1
                while c<d:
                    sums = num[a] + num[b] + num[c] + num[d]
                    if sums == target:
                        if (num[a],num[b],num[c],num[d]) not in s:
                            ans.append([num[a],num[b],num[c],num[d]])
                            s.add((num[a],num[b],num[c],num[d]))
                        d-=1
                        c+=1
                    elif sums < target:
                        c+=1
                    elif sums> target:
                        d-=1
        return ans
                            