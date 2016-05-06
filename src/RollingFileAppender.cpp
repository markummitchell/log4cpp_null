#include "log4cpp/RollingFileAppender.hh"

namespace log4cpp {

  RollingFileAppender::RollingFileAppender (const std::string &name,
                                            const std::string &,
                                            size_t,
                                            unsigned int,
                                            bool,
                                            mode_t) :
     FileAppender (name)
  {
  }

  void RollingFileAppender::setMaxBackupIndex(unsigned int)
  {
  }

  unsigned int RollingFileAppender::getMaxBackupIndex() const
  {
    return 1;
  }

  void RollingFileAppender::setMaximumFileSize(size_t)
  {
  }

  size_t RollingFileAppender::getMaxFileSize() const
  {
    return 1;
  }
}

