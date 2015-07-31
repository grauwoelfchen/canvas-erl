-module(canvas_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
  Dispatch = cowboy_router:compile([
    {'_', [
      {"/", canvas_handler, []},
      {"/profile", cowboy_static, {priv_file, canvas, "static/profile.html"}},
      {"/assets/[...]", cowboy_static, {priv_dir, canvas, "static/assets"}}
    ]}
  ]),
  {ok, _} = cowboy:start_http(http, 100, [{port, 5000}], [
    {env, [{dispatch, Dispatch}]}
  ]),
  canvas_sup:start_link().

stop(_State) ->
    ok.
