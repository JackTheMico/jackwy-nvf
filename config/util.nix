{
  mkKMexpr = mode: key: action: desc: expr:  {
    inherit
      mode
      key
      action
      desc
      expr
      ;
  };
  mkKeymap = mode: key: action: desc:  {
    inherit
      mode
      key
      action
      desc
      ;
  };
  mkKeymap' = mode: key: action: {
    inherit
      mode
      key
      action
      ;
  };
  mkLuaKeymap = mode: key: action: desc: {
    inherit
      mode
      key
      action
      desc
      ;
    lua = true;
  };
  mkLuaKMexpr = mode: key: action: desc: expr: {
    inherit
      mode
      key
      action
      desc
      expr
      ;
    lua = true;
  };
  mkLuaKeymap' = mode: key: action: {
    inherit
      mode
      key
      action
      ;
    lua = true;
  };
}
