#ifndef PRIORITY_HH
#define PRIORITY_HH

#include <string>

namespace log4cpp {

  /// This class provides importance levels for categorizing log messages
  class Priority {
  public:
    typedef enum {
      EMERG  = 0,
      FATAL  = 0,
      ALERT  = 100,
      CRIT   = 200,
      ERROR  = 300,
      WARN   = 400,
      NOTICE = 500,
      INFO   = 600,
      DEBUG  = 700,
      NOTSET = 800
    } PriorityLevel;

    typedef int Value;

    static Value getPriorityValue (const std::string& priorityName);
  };
}

#endif // PRIORITY_HH
