module Integrated.Id where

import Data.Iso
import Data.LabelledIso
import Data.Id
import Data.Text

runId ::
  LabelledIso (Id a) a
runId =
  LabelledIsoP (pack "Identity") (pack "runId") (IsoP Id (\(Id x) -> x))
