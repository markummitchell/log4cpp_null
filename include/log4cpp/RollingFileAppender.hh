#ifndef ROLLING_FILE_APPENDER_H
#define ROLLING_FILE_APPENDER_H

#include "log4cpp/FileAppender.hh"
#include <string>
#include <stdarg.h>

namespace log4cpp {

  class RollingFileAppender : public FileAppender
  {
  public:
    RollingFileAppender (const std::string &name,
                         const std::string &fileName,
                         size_t maxFileSize = 10*1024*1024,
                         unsigned int maxBackupIndex = 1,
                         bool append = true,
                         mode_t mode = 00644);

    virtual void setMaxBackupIndex(unsigned int maxBackups);
    virtual unsigned int getMaxBackupIndex() const;
    virtual void setMaximumFileSize(size_t maxFileSize);
    virtual size_t getMaxFileSize() const;

  };
}

#endif // ROLLING_FILE_APPENDER_H
