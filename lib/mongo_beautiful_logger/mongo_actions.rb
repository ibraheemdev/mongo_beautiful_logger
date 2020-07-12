require "mongo_beautiful_logger/colors"

module MongoActions
  include Colors

  # substring matches and the corresponding colors for mongodb actions
  FIND         = { match: "\"find\"=>",        color: BLUE }
  UPDATE       = { match: "\"update\"=>",      color: YELLOW }
  INSERT       = { match: "\"insert\"=>",      color: GREEN }
  DELETE       = { match: "\"delete\"=>",      color: RED }
  AGGREGATE    = { match: "\"aggregate\"=>",   color: MAGENTA }
  SUCCEEDED    = { match: "succeeded",         color: GREEN }
  FAILED       = { match: "failed",            color: RED }
  ERROR        = { match: "error",             color: RED }
  ENDSESSION   = { match: "\"endsessions\"=>", color: YELLOW }
  ACTIONS      = [ FIND, UPDATE, INSERT, DELETE, AGGREGATE, 
                   SUCCEEDED, FAILED, ERROR, ENDSESSION ]
  
  # substring matches for unnecessary log messages that will be filtered out
  UNNECESSARY  = ["opology", "server description"]

  # regex for for the log prefix that will be filtered out
  # matches: +| localhost:27017 | app_test.update | STARTED |+
  # note: +| STARTED |+ and +| SUCCEEDED |+ will be filtered due to redundancy
  # but +| FAILED |+ and others will not
  PREFIX_REGEX = /\|.*?\|.*?\|( (SUCCEEDED|STARTED) \|)?/
end
