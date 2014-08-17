-- | Taken from:
-- | https://github.com/afl-eafit/cb0081-2013-2-lab1/blob/master/src/EAFIT/CB0081/Data/NFA.hs

module NFA where

import Data.Set ( Set )

-- | A non-deterministic finite automaton.
data NFA state symbol =
  MkNFA { states    :: Set state                    --  States
        , symbols   :: Set symbol                   --  Input symbols
        , delta     :: state -> symbol -> Set state --  Transition function
        , start     :: state                        --  Start state
        , accepting :: Set state                    --  Accepting states
        }
