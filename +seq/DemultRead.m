%{
# 
->seq.Read
->seq.LibrarySample
->seq.DemultInfo
---
%}

classdef DemultRead < dj.Imported
       
    methods(Access=protected)
        
        function makeTuples(self, key)
            error 'this table is populated in python'
            self.insert(key)
        end
    end
    
end