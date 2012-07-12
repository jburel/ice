# **********************************************************************
#
# Copyright (c) 2003-2012 ZeroC, Inc. All rights reserved.
#
# This copy of Ice is licensed to you under the terms described in the
# ICE_LICENSE file included in this distribution.
#
# **********************************************************************

top_srcdir	= ..\..
INCLUDE_DIR	= IceSSL

!include $(top_srcdir)/config/Make.rules.mak

!if "$(WINRT)" != "yes"

install::
	@if not exist "$(install_includedir)\IceSSL" \
	    @echo "Creating $(install_includedir)\IceSSL..." && \
	    mkdir "$(install_includedir)\IceSSL"

	@for %i in ( *.h ) do \
	    @echo Installing %i && \
	    copy %i "$(install_includedir)\IceSSL"

!else

SDK_HEADERS =	$(SDK_INCLUDE_PATH)\$(INCLUDE_DIR)\IceSSL.h \
	$(SDK_INCLUDE_PATH)\$(INCLUDE_DIR)\EndpointInfo.h \
	$(SDK_INCLUDE_PATH)\$(INCLUDE_DIR)\ConnectionInfo.h

all::	$(SDK_HEADERS)

!endif
