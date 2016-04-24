-- intermission exercises
import Data.Time
import Data.Maybe (catMaybes)

data DatabaseItem = DbString String
                    | DbNumber Integer
                    | DbDate UTCTime
                    deriving (Eq, Ord, Show)

theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
            (fromGregorian 1911 5 1)
            (secondsToDiffTime 34123))
  , DbString "Hello, world!"
  , DbDate (UTCTime
            (fromGregorian 1921 5 1)
            (secondsToDiffTime 34123))
  ]

-- filter for dbdate and return list of UTCTime values
-- why does this work w/o any arg to func? does type checking just know that it
-- will be a list?
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate =
  foldr maybeCons []
  where maybeCons a b =
          case a of
            (DbDate date) -> date : b
            _ -> b

getDate :: DatabaseItem -> Maybe UTCTime
getDate (DbDate t) = Just t
getDate _ = Nothing

filterDbDate' :: [DatabaseItem] -> [UTCTime]
filterDbDate' db = catMaybes xs
  where xs = fmap getDate db

-- get most recent date
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent db = (maximum . filterDbDate') db
