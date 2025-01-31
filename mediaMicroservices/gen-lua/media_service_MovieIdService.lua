--
-- Autogenerated by Thrift
--
-- DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
-- @generated
--

local Thrift = require 'Thrift'
local posix = require 'posix'
local TType = Thrift.TType
local TMessageType = Thrift.TMessageType
local __TObject = Thrift.__TObject
local TApplicationException = Thrift.TApplicationException
local __TClient = Thrift.__TClient
local __TProcessor = Thrift.__TProcessor
local ttype = Thrift.ttype
local ttable_size = Thrift.ttable_size
local media_service_ttypes = require 'media_service_ttypes'
local ServiceException = media_service_ttypes.ServiceException

-- HELPER FUNCTIONS AND STRUCTURES

local UploadMovieId_args = __TObject:new{
  req_id,
  title,
  rating,
  carrier
}

function UploadMovieId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.title = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.I32 then
        self.rating = iprot:readI32()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype45, _vtype46, _size44 = iprot:readMapBegin()
        for _i=1,_size44 do
          local _key48 = iprot:readString()
          local _val49 = iprot:readString()
          self.carrier[_key48] = _val49
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UploadMovieId_args:write(oprot)
  oprot:writeStructBegin('UploadMovieId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.title ~= nil then
    oprot:writeFieldBegin('title', TType.STRING, 2)
    oprot:writeString(self.title)
    oprot:writeFieldEnd()
  end
  if self.rating ~= nil then
    oprot:writeFieldBegin('rating', TType.I32, 3)
    oprot:writeI32(self.rating)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 4)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter50,viter51 in pairs(self.carrier) do
      oprot:writeString(kiter50)
      oprot:writeString(viter51)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local UploadMovieId_result = __TObject:new{
  se
}

function UploadMovieId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function UploadMovieId_result:write(oprot)
  oprot:writeStructBegin('UploadMovieId_result')
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local RegisterMovieId_args = __TObject:new{
  req_id,
  title,
  movie_id,
  carrier
}

function RegisterMovieId_args:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.I64 then
        self.req_id = iprot:readI64()
      else
        iprot:skip(ftype)
      end
    elseif fid == 2 then
      if ftype == TType.STRING then
        self.title = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 3 then
      if ftype == TType.STRING then
        self.movie_id = iprot:readString()
      else
        iprot:skip(ftype)
      end
    elseif fid == 4 then
      if ftype == TType.MAP then
        self.carrier = {}
        local _ktype53, _vtype54, _size52 = iprot:readMapBegin()
        for _i=1,_size52 do
          local _key56 = iprot:readString()
          local _val57 = iprot:readString()
          self.carrier[_key56] = _val57
        end
        iprot:readMapEnd()
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RegisterMovieId_args:write(oprot)
  oprot:writeStructBegin('RegisterMovieId_args')
  if self.req_id ~= nil then
    oprot:writeFieldBegin('req_id', TType.I64, 1)
    oprot:writeI64(self.req_id)
    oprot:writeFieldEnd()
  end
  if self.title ~= nil then
    oprot:writeFieldBegin('title', TType.STRING, 2)
    oprot:writeString(self.title)
    oprot:writeFieldEnd()
  end
  if self.movie_id ~= nil then
    oprot:writeFieldBegin('movie_id', TType.STRING, 3)
    oprot:writeString(self.movie_id)
    oprot:writeFieldEnd()
  end
  if self.carrier ~= nil then
    oprot:writeFieldBegin('carrier', TType.MAP, 4)
    oprot:writeMapBegin(TType.STRING, TType.STRING, ttable_size(self.carrier))
    for kiter58,viter59 in pairs(self.carrier) do
      oprot:writeString(kiter58)
      oprot:writeString(viter59)
    end
    oprot:writeMapEnd()
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local RegisterMovieId_result = __TObject:new{
  se
}

function RegisterMovieId_result:read(iprot)
  iprot:readStructBegin()
  while true do
    local fname, ftype, fid = iprot:readFieldBegin()
    if ftype == TType.STOP then
      break
    elseif fid == 1 then
      if ftype == TType.STRUCT then
        self.se = ServiceException:new{}
        self.se:read(iprot)
      else
        iprot:skip(ftype)
      end
    else
      iprot:skip(ftype)
    end
    iprot:readFieldEnd()
  end
  iprot:readStructEnd()
end

function RegisterMovieId_result:write(oprot)
  oprot:writeStructBegin('RegisterMovieId_result')
  if self.se ~= nil then
    oprot:writeFieldBegin('se', TType.STRUCT, 1)
    self.se:write(oprot)
    oprot:writeFieldEnd()
  end
  oprot:writeFieldStop()
  oprot:writeStructEnd()
end

local MovieIdServiceClient = __TObject.new(__TClient, {
  __type = 'MovieIdServiceClient'
})

function MovieIdServiceClient:UploadMovieId(req_id, title, rating, carrier)
  io.write(string.format("shiftlog luasend MovieIdServiceClient UploadMovieId %d",req_id))
  io.write(string.format(" %s%s\n",posix.clock_gettime('0')))
  self:send_UploadMovieId(req_id, title, rating, carrier)
  self:recv_UploadMovieId(req_id, title, rating, carrier)
  io.write(string.format("shiftlog luasenddone MovieIdServiceClient UploadMovieId %d",req_id))
  io.write(string.format(" %s%s\n",posix.clock_gettime('0')))
end

function MovieIdServiceClient:send_UploadMovieId(req_id, title, rating, carrier)
  self.oprot:writeMessageBegin('UploadMovieId', TMessageType.CALL, self._seqid)
  local args = UploadMovieId_args:new{}
  args.req_id = req_id
  args.title = title
  args.rating = rating
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function MovieIdServiceClient:recv_UploadMovieId(req_id, title, rating, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = UploadMovieId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.se then
    error(result.se)
  end
end

function MovieIdServiceClient:RegisterMovieId(req_id, title, movie_id, carrier)
  self:send_RegisterMovieId(req_id, title, movie_id, carrier)
  self:recv_RegisterMovieId(req_id, title, movie_id, carrier)
end

function MovieIdServiceClient:send_RegisterMovieId(req_id, title, movie_id, carrier)
  self.oprot:writeMessageBegin('RegisterMovieId', TMessageType.CALL, self._seqid)
  local args = RegisterMovieId_args:new{}
  args.req_id = req_id
  args.title = title
  args.movie_id = movie_id
  args.carrier = carrier
  args:write(self.oprot)
  self.oprot:writeMessageEnd()
  self.oprot.trans:flush()
end

function MovieIdServiceClient:recv_RegisterMovieId(req_id, title, movie_id, carrier)
  local fname, mtype, rseqid = self.iprot:readMessageBegin()
  if mtype == TMessageType.EXCEPTION then
    local x = TApplicationException:new{}
    x:read(self.iprot)
    self.iprot:readMessageEnd()
    error(x)
  end
  local result = RegisterMovieId_result:new{}
  result:read(self.iprot)
  self.iprot:readMessageEnd()
  if result.se then
    error(result.se)
  end
end
local MovieIdServiceIface = __TObject:new{
  __type = 'MovieIdServiceIface'
}


local MovieIdServiceProcessor = __TObject.new(__TProcessor
, {
 __type = 'MovieIdServiceProcessor'
})

function MovieIdServiceProcessor:process(iprot, oprot, server_ctx)
  local name, mtype, seqid = iprot:readMessageBegin()
  local func_name = 'process_' .. name
  if not self[func_name] or ttype(self[func_name]) ~= 'function' then
    iprot:skip(TType.STRUCT)
    iprot:readMessageEnd()
    x = TApplicationException:new{
      errorCode = TApplicationException.UNKNOWN_METHOD
    }
    oprot:writeMessageBegin(name, TMessageType.EXCEPTION, seqid)
    x:write(oprot)
    oprot:writeMessageEnd()
    oprot.trans:flush()
  else
    self[func_name](self, seqid, iprot, oprot, server_ctx)
  end
end

function MovieIdServiceProcessor:process_UploadMovieId(seqid, iprot, oprot, server_ctx)
  local args = UploadMovieId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = UploadMovieId_result:new{}
  io.write(string.format("shiftlog luaprocessstart MovieIdServiceProcessor UploadMovieId %d",req_id))
  io.write(string.format(" %s%s\n",posix.clock_gettime('0')))
  local status, res = pcall(self.handler.UploadMovieId, self.handler, args.req_id, args.title, args.rating, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  io.write(string.format("shiftlog luaprocessend MovieIdServiceProcessor UploadMovieId %d",req_id))
  io.write(string.format(" %s%s\n",posix.clock_gettime('0')))
  oprot:writeMessageBegin('UploadMovieId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

function MovieIdServiceProcessor:process_RegisterMovieId(seqid, iprot, oprot, server_ctx)
  local args = RegisterMovieId_args:new{}
  local reply_type = TMessageType.REPLY
  args:read(iprot)
  iprot:readMessageEnd()
  local result = RegisterMovieId_result:new{}
  io.write(string.format("shiftlog luaprocessstart MovieIdServiceProcessor RegisterMovieId %d",req_id))
  io.write(string.format(" %s%s\n",posix.clock_gettime('0')))
  local status, res = pcall(self.handler.RegisterMovieId, self.handler, args.req_id, args.title, args.movie_id, args.carrier)
  if not status then
    reply_type = TMessageType.EXCEPTION
    result = TApplicationException:new{message = res}
  elseif ttype(res) == 'ServiceException' then
    result.se = res
  else
    result.success = res
  end
  io.write(string.format("shiftlog luaprocessend MovieIdServiceProcessor RegisterMovieId %d",req_id))
  io.write(string.format(" %s%s\n",posix.clock_gettime('0')))
  oprot:writeMessageBegin('RegisterMovieId', reply_type, seqid)
  result:write(oprot)
  oprot:writeMessageEnd()
  oprot.trans:flush()
end

return MovieIdServiceClient
