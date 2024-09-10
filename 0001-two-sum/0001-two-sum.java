class Solution {
    public int[] twoSum(int[] nums, int target) {
      
        HashMap<Integer, Integer> map = new HashMap<>();
        
        // Traverse through the array of numbers
        for (int i = 0; i < nums.length; i++) {
            // Calculate the complement we need to find
            int complement = target - nums[i];
            
            // If the complement is already in the map, return the indices
            if (map.containsKey(complement)) {
                return new int[] { map.get(complement), i };
            }
            
            // Store the current number and its index in the map
            map.put(nums[i], i);
        }
        
        // Return an empty array if no solution is found (though it's guaranteed to have a solution)
        return new int[] {};
    }
    }
