%%% -------------------------------------------------------------------
%%% Author  : uabjle
%%% Description : dbase using dets 
%%% 
%%% Created : 10 dec 2012
%%% -------------------------------------------------------------------
-module(boot_controller).  
   
%% --------------------------------------------------------------------
%% Include files
%% --------------------------------------------------------------------

%%---------------------------------------------------------------------
%% Records for test
%%

%% --------------------------------------------------------------------
%-compile(export_all).
-export([
	 start/0
	]).
	 

%% ====================================================================
%% External functions
%% ====================================================================
%% --------------------------------------------------------------------
%% Function:start/0 
%% Description: Initiate the eunit tests, set upp needed processes etc
%% Returns: non
%% --------------------------------------------------------------------
start()->
	io:format("~p~n",[?LINE]),
%    timer:sleep(10000),
%    io:format("~p~n",[?LINE]),
    os:cmd("rm -rf *.service_dir"),
  %  io:format("git ~p~n",[{os:cmd("git clone https://github.com/joq62/controller_app.git")}]),
     application:start(controller_app),
    %  timer:sleep(10*1000),
    %  init:stop(),
    ok.
