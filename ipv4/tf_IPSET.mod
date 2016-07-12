# ----------------------------------------------------------------------------
# TuxFrw 4.0
# Copyright (C) 2001-2016 Marcelo Gondim (http://tuxfrw.linuxinfo.com.br/)
# ----------------------------------------------------------------------------
#
# tf_IPSET.mod - TuxFrw IPSET rules module
#
# ----------------------------------------------------------------------------
#
# This file is part of TuxFrw
#
# TuxFrw is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# ----------------------------------------------------------------------------

if ipset list bogons_v4 &>/dev/null; then
   ipset flush bogons_v4
   ipset destroy bogons_v4
fi
ipset create bogons_v4 hash:net family inet comment

ipset add bogons_v4 0.0.0.0/8 comment "BOGONS"
ipset add bogons_v4 10.0.0.0/8 comment "BOGONS"
ipset add bogons_v4 100.64.0.0/10 comment "BOGONS"
ipset add bogons_v4 127.0.0.0/8 comment "BOGONS"
ipset add bogons_v4 169.254.0.0/16 comment "BOGONS"
ipset add bogons_v4 172.16.0.0/12 comment "BOGONS"
ipset add bogons_v4 192.0.0.0/24 comment "BOGONS"
ipset add bogons_v4 192.0.2.0/24 comment "BOGONS"
ipset add bogons_v4 192.168.0.0/24 comment "BOGONS"
ipset add bogons_v4 198.18.0.0/15 comment "BOGONS"
ipset add bogons_v4 198.51.100.0/24 comment "BOGONS"
ipset add bogons_v4 203.0.113.0/24 comment "BOGONS"
ipset add bogons_v4 224.0.0.0/3 comment "BOGONS"