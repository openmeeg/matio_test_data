% Generate test datasets for matio library
%
% Copyright (C) 2010   Christopher C. Hulbert
%
% This library is free software; you can redistribute it and/or
% modify it under the terms of the GNU Lesser General Public
% License as published by the Free Software Foundation; either
% version 2.1 of the License, or (at your option) any later version.
%
% This library is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
% Lesser General Public License for more details.
%
% You should have received a copy of the GNU Lesser General Public
% License along with this library; if not, write to the Free Software
% Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

[c,m,e]=computer;

var1 = reshape(1:20,4,5);
var2 = reshape(single(1:20),4,5);
var3 = reshape(int64(1:20),4,5);
var4 = reshape(uint64(1:20),4,5);
var5 = reshape(int32(1:20),4,5);
var6 = reshape(uint32(1:20),4,5);
var7 = reshape(int16(1:20),4,5);
var8 = reshape(uint16(1:20),4,5);
var9 = reshape(int8(1:20),4,5);
var10 = reshape(uint8(1:20),4,5);
var11 = reshape(complex(1:20,21:40),4,5);
var12 = reshape(single(complex(1:20,21:40)),4,5);
var13 = reshape(int64(complex(1:20,21:40)),4,5);
var14 = reshape(uint64(complex(1:20,21:40)),4,5);
var15 = reshape(int32(complex(1:20,21:40)),4,5);
var16 = reshape(uint32(complex(1:20,21:40)),4,5);
var17 = reshape(int16(complex(1:20,21:40)),4,5);
var18 = reshape(uint16(complex(1:20,21:40)),4,5);
var19 = reshape(int8(complex(1:20,21:40)),4,5);
var20 = reshape(uint8(complex(1:20,21:40)),4,5);
var21 = sparse(diag(1:5));
var22 = sparse(diag(complex(1:5,6:10)));
var23 = [];

if e == 'B'
    % Change test set from 2 to 4
%    for k=1:23
%        eval(['matio_tc_4_' int2str(k) '_input1 = matio_tc_2_' int2str(k) '_input1;']);
%        eval(['matio_tc_5_' int2str(k) '_input1 = matio_tc_2_' int2str(k) '_input1;']);
%        eval(['matio_tc_7_' int2str(k) '_input1 = matio_tc_2_' int2str(k) '_input1;']);
%        clear(sprintf('matio_tc_2_%d_input1',k));
%    end
    save('-v6',['matio_test_cases_uncompressed_be.mat'],'var*');%,'matio_tc_4_*');
    save(['matio_test_cases_compressed_be.mat'],'var*');%,'matio_tc_5_*');
    save('-v7.3',['matio_test_cases_hdf_be.mat'],'var*');%,'matio_tc_7_*');
else
%    for k=1:23
%        eval(['matio_tc_3_' int2str(k) '_input1 = matio_tc_2_' int2str(k) '_input1;']);
%        eval(['matio_tc_6_' int2str(k) '_input1 = matio_tc_2_' int2str(k) '_input1;']);
%    end
    save('-v6',['matio_test_cases_uncompressed_le.mat'],'var*');%,'matio_tc_2_*');
    save(['matio_test_cases_compressed_le.mat'],'var*');%,'matio_tc_3_*');
    save('-v7.3',['matio_test_cases_hdf_le.mat'],'var*');%,'matio_tc_6_*');

    %matio_tc_1_1_input1 = matio_tc_2_1_input1;
    %matio_tc_1_2_input1 = matio_tc_2_11_input1;
    %matio_tc_1_3_input1 = matio_tc_2_21_input1;
    %save('-v4','matio_test_cases_v4_le.mat','matio_tc_1_1_input1','matio_tc_1_2_input1','matio_tc_1_3_input1');
    save('-v4','matio_test_cases_v4_le.mat','var1','var11','var21');
end
