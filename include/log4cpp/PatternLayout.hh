#ifndef PATTERN_LAYOUT_HH
#define PATTERN_LAYOUT_HH

#include "log4cpp/Configurator.hh"
#include "log4cpp/Layout.hh"
#include <string>

namespace log4cpp {

  /// Layout class
  class PatternLayout : public Layout
  {
  public:
    PatternLayout ();
    virtual ~PatternLayout ();

    virtual void setConversionPattern (const std::string &conversionPattern) throw (ConfigureFailure);
  };
}

#endif // PATTERN_LAYOUT_HH
