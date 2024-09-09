class Solution {
public:
    string mergeAlternately(string word1, string word2) {
        string merged;
    int i = 0, j = 0;
    int n1 = word1.length(), n2 = word2.length();
    
    while (i < n1 || j < n2) {
        if (i < n1) {
            merged += word1[i];
            i++;
        }
        if (j < n2) {
            merged += word2[j];
            j++;
        }
    }
    

    return merged;

    }
};