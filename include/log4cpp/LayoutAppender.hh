#ifndef LAYOUT_APPENDER_H
#define LAYOUT_APPENDER_H

#include "log4cpp/Appender.hh"
#include "log4cpp/Layout.hh"
#include <string>

namespace log4cpp {

  class LayoutAppender : public Appender
  {
  public:
    LayoutAppender(const std::string &);
    virtual ~LayoutAppender();

    virtual void setLayout(Layout *layout = 0);
  };
}

#endif // LAYOUT_APPENDER_H
