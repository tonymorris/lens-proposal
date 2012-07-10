module Integrated.Id where

import Data.Iso
import Data.LabelledIso
import Data.Id
import Data.Text

runId ::
  LabelledIso (Id a) a
runId =
  LabelledIsoP (pack "Id") (pack "runId") (IsoP (\(Id x) -> x) Id)
