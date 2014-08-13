module NFA where

import Data.Set ( Set )

-- | A non-deterministic finite automaton.
data NFA state symbol =
  MkNFA { states  :: Set state                    --  States
        , symbols :: Set symbol                   --  Input symbols
        , delta   :: state -> symbol -> Set state --  Transition function
        , start   :: state                        --  Start state
        , finals  :: Set state                    --  Final states
        }
