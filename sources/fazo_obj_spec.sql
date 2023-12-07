-- Fazo_Schema schema object specifications
type             Arraylist Force under Fazo_Schema.w_Wrapper
(
  Val Fazo_Schema.w_Array_Wrapper,
------------------------------------------------------------------------------------------------------
  constructor Function Arraylist(self in out nocopy Fazo_Schema.Arraylist) return self as result,
------------------------------------------------------------------------------------------------------
  constructor Function Arraylist
  (
    self in out nocopy Fazo_Schema.Arraylist,
    Val  Fazo_Schema.w_Array_Wrapper
  ) return self as result,
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    Fazo_Schema.w_Wrapper
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    date
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    timestamp
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    timestamp with time zone
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    timestamp with local time zone
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    Fazo_Schema.Array_Varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    Fazo_Schema.Array_Number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    Fazo_Schema.Array_Date
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Fazo_Schema.Arraylist,
    v    Fazo_Schema.Array_Timestamp
  ),
------------------------------------------------------------------------------------------------------
  member Function count return pls_integer,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  member Function r_Varchar2
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  member Function r_Number
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  member Function r_Date
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  member Function r_Timestamp
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  member Function r_Array_Varchar2
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  member Function r_Array_Number
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  member Function r_Array_Date
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  member Function r_Array_Timestamp
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
  member Function r_Calc(i pls_integer) return Fazo_Schema.Calc,
  member Function r_Arraylist(i pls_integer) return Fazo_Schema.Arraylist,
  member Function r_Hashmap(i pls_integer) return Fazo_Schema.w_Wrapper,
------------------------------------------------------------------------------------------------------
  member Function o_Varchar2
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  member Function o_Number
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  member Function o_Date
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  member Function o_Timestamp
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  member Function o_Array_Varchar2
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  member Function o_Array_Number
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  member Function o_Array_Date
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  member Function o_Array_Timestamp
  (
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
  member Function o_Calc(i pls_integer) return Fazo_Schema.Calc,
  member Function o_Arraylist(i pls_integer) return Fazo_Schema.Arraylist,
  member Function o_Hashmap(i pls_integer) return Fazo_Schema.w_Wrapper,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Arraylist return boolean,
------------------------------------------------------------------------------------------------------
  member Function Is_Varchar2(i pls_integer) return boolean,
  member Function Is_Number(i pls_integer) return boolean,
  member Function Is_Date(i pls_integer) return boolean,
  member Function Is_Timestamp(i pls_integer) return boolean,
  member Function Is_Array_Varchar2(i pls_integer) return boolean,
  member Function Is_Array_Number(i pls_integer) return boolean,
  member Function Is_Array_Date(i pls_integer) return boolean,
  member Function Is_Array_Timestamp(i pls_integer) return boolean,
  member Function Is_Arraylist(i pls_integer) return boolean,
  member Function Is_Calc(i pls_integer) return boolean,
  member Function Is_Hashmap(i pls_integer) return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Arraylist,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2,
------------------------------------------------------------------------------------------------------
  static Function As_Arraylist(v Fazo_Schema.w_Wrapper) return Arraylist
);
/

type             array_date force is table of date;
/
type             array_number force is table of number;
/
type             array_timestamp force is table of timestamp;
/
type             array_varchar2 force is table of varchar2(32767);
/

type             Calc Force under Fazo_Schema.w_Wrapper
(
  Buckets Fazo_Schema.w_Calc_Bucket_Array,
  Sep     varchar2(1),
------------------------------------------------------------------------------------------------------
  constructor Function Calc(self in out nocopy Fazo_Schema.Calc) return self as result,
------------------------------------------------------------------------------------------------------
  constructor Function Calc
  (
    self      in out nocopy Fazo_Schema.Calc,
    Separator varchar2
  ) return self as result,
------------------------------------------------------------------------------------------------------
  member Procedure Find_Or_Create
  (
    self  in out nocopy Fazo_Schema.Calc,
    i_Key varchar2,
    i     out pls_integer,
    j     out pls_integer
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc,
    Key  varchar2,
    v    number
  ),
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    v    number
  ),
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    v    number
  ),
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2,
    v    number
  ),
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2,
    Key5 varchar2,
    v    number
  ),

------------------------------------------------------------------------------------------------------
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc,
    That in Fazo_Schema.Calc
  ),
------------------------------------------------------------------------------------------------------
  member Function count return binary_integer,
------------------------------------------------------------------------------------------------------
  member Function Get_Value(Key varchar2) return number,
  member Function Get_Value
  (
    Key1 varchar2,
    Key2 varchar2
  ) return number,
  member Function Get_Value
  (
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2
  ) return number,
  member Function Get_Value
  (
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2
  ) return number,
  member Function Get_Value
  (
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2,
    Key5 varchar2
  ) return number,
------------------------------------------------------------------------------------------------------
  member Procedure Set_Value
  (
    self in out nocopy Fazo_Schema.Calc,
    Key  varchar2,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Set_Value
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Set_Value
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Set_Value
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Set_Value
  (
    self in out nocopy Fazo_Schema.Calc,
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2,
    Key5 varchar2,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Function Sum_By_Prefix(Prefix varchar2) return number,
------------------------------------------------------------------------------------------------------
  member Function Sum_By_Like(Expr varchar2) return number,
------------------------------------------------------------------------------------------------------
  member Function Sum_By_Key(Key1 varchar2) return number,
------------------------------------------------------------------------------------------------------
  member Function Sum_By_Key
  (
    Key1 varchar2,
    Key2 varchar2
  ) return number,
------------------------------------------------------------------------------------------------------
  member Function Sum_By_Key
  (
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2
  ) return number,
------------------------------------------------------------------------------------------------------
  member Function Sum_By_Key
  (
    Key1 varchar2,
    Key2 varchar2,
    Key3 varchar2,
    Key4 varchar2
  ) return number,
------------------------------------------------------------------------------------------------------
  member Function Get_Bucket return Fazo_Schema.Calc_Bucket,
------------------------------------------------------------------------------------------------------
  member Function Keyset return Fazo_Schema.Array_Varchar2,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Calc return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Calc,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/
type             Calc_Bucket force is table of Fazo_Schema.Calc_Entry not null;
/
type             Calc_Entry Force as object
(

  Key varchar2(100),
  Val number,

------------------------------------------------------------------------------------------------------
  constructor Function Calc_Entry
  (
    self in out nocopy Fazo_Schema.Calc_Entry,
    Key  varchar2
  ) return self as result,

------------------------------------------------------------------------------------------------------
  member Procedure Plus
  (
    self in out nocopy Fazo_Schema.Calc_Entry,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Subtract
  (
    self in out nocopy Fazo_Schema.Calc_Entry,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Multiply
  (
    self in out nocopy Fazo_Schema.Calc_Entry,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Divide
  (
    self in out nocopy Fazo_Schema.Calc_Entry,
    v    number
  )

);
/
type             Excel_Sheet Force as object
(
  name    varchar2(4000),
  z_Table Fazo_Schema.Matrix_Varchar2,

------------------------------------------------------------------------------------------------------
  constructor Function Excel_Sheet
  (
    self    in out nocopy Fazo_Schema.Excel_Sheet,
    i_Sheet Fazo_Schema.w_Wrapper
  ) return self as result,
------------------------------------------------------------------------------------------------------
  member Function Count_Row return pls_integer,
------------------------------------------------------------------------------------------------------
  member Function Count_Cell(i pls_integer) return pls_integer,
------------------------------------------------------------------------------------------------------
  member Function Is_Empty_Row(i pls_integer) return boolean,
------------------------------------------------------------------------------------------------------
  member Function r_Varchar2
  (
    i pls_integer,
    j pls_integer
  ) return varchar2,
------------------------------------------------------------------------------------------------------
  member Function r_Number
  (
    i pls_integer,
    j pls_integer
  ) return number,
------------------------------------------------------------------------------------------------------
  member Function r_Date
  (
    i pls_integer,
    j pls_integer
  ) return date,
------------------------------------------------------------------------------------------------------
  member Function Has
  (
    i pls_integer,
    j pls_integer
  ) return boolean,
------------------------------------------------------------------------------------------------------
  member Function Get
  (
    i pls_integer,
    j pls_integer
  ) return varchar2,
------------------------------------------------------------------------------------------------------
  member Function o_Varchar2
  (
    i pls_integer,
    j pls_integer
  ) return varchar2,
------------------------------------------------------------------------------------------------------
  member Function o_Number
  (
    i pls_integer,
    j pls_integer
  ) return number,
------------------------------------------------------------------------------------------------------
  member Function o_Date
  (
    i pls_integer,
    j pls_integer
  ) return date
);
/

package             Fazo authid current_user is

  -- json stringify for array_varchar2, matrix_varchar2 and other primitive types

  c_Whitespace constant varchar2(4) := ' ' || Chr(10) || Chr(9) || Chr(13);
  ----------------------------------------------------------------------------------------------------
  type Varchar2_Code_Aat is table of varchar2(4000) index by varchar2(100);
  type Varchar2_Id_Aat is table of varchar2(4000) index by binary_integer;
  type Number_Code_Aat is table of number index by varchar2(100);
  type Number_Id_Aat is table of number index by binary_integer;
  type Date_Code_Aat is table of date index by varchar2(100);
  type Date_Id_Aat is table of date index by binary_integer;
  type Boolean_Code_Aat is table of boolean index by varchar2(100);
  type Boolean_Id_Aat is table of boolean index by binary_integer;
  ----------------------------------------------------------------------------------------------------
  subtype Rowid_t is rowid;
  type Array_Rowid is table of rowid;
  ------------------------------------------------------------------------------------------------------
  Function Version return number;
  ------------------------------------------------------------------------------------------------------
  Function Json_Escape(v varchar2) return varchar2;
  ------------------------------------------------------------------------------------------------------
  Procedure Json_Escape_And_Print
  (
    out in out nocopy Stream,
    v   varchar2
  );
  ----------------------------------------------------------------------------------------------------
  Function Format_Number
  (
    i_Val      number,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Format_Number
  (
    i_Val      varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number;
  ----------------------------------------------------------------------------------------------------
  Function Format_Date
  (
    i_Val      date,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Format_Date
  (
    i_Val      varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date;
  ----------------------------------------------------------------------------------------------------
  Function Format_Timestamp
  (
    i_Val      timestamp,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Format_Timestamp
  (
    i_Val      timestamp with time zone,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Format_Timestamp
  (
    i_Val      timestamp with local time zone,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Format_Timestamp
  (
    i_Val      varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp;
  ----------------------------------------------------------------------------------------------------
  Function Is_Number(i_Val varchar2) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Varchar2
  (
    i_Val      Array_Number,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Varchar2
  (
    i_Val      Array_Date,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Varchar2
  (
    i_Val      Array_Timestamp,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Number
  (
    i_Val      Array_Varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Array_Number;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Date
  (
    i_Val      Array_Varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Array_Date;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Date(i_Val Array_Timestamp) return Array_Date;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Timestamp
  (
    i_Val      Array_Varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Array_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Function To_Array_Timestamp(i_Val Array_Date) return Array_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Varchar2
  (
    i_Val      Matrix_Number,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Matrix_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Varchar2
  (
    i_Val      Matrix_Date,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Matrix_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Varchar2
  (
    i_Val      Matrix_Timestamp,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Matrix_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Number
  (
    i_Val      Matrix_Varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Matrix_Number;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Date
  (
    i_Val      Matrix_Varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Matrix_Date;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Date(i_Val Matrix_Timestamp) return Matrix_Date;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Timestamp
  (
    i_Val      Matrix_Varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Matrix_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Function To_Matrix_Timestamp(i_Val Matrix_Date) return Matrix_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Function Column_Varchar2
  (
    i_Array Array_Varchar2,
    i_Index number
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Column_Number
  (
    i_Array Array_Number,
    i_Index number
  ) return number;
  ----------------------------------------------------------------------------------------------------
  Function Column_Date
  (
    i_Array Array_Date,
    i_Index number
  ) return date;
  ----------------------------------------------------------------------------------------------------
  Function Column_Timestamp
  (
    i_Array Array_Timestamp,
    i_Index number
  ) return timestamp;
  ----------------------------------------------------------------------------------------------------
  Function Column
  (
    i_Val       Matrix_Varchar2,
    i_Col_Index pls_integer
  ) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Column
  (
    i_Val       Matrix_Number,
    i_Col_Index pls_integer
  ) return Array_Number;
  ----------------------------------------------------------------------------------------------------
  Function Column
  (
    i_Val       Matrix_Date,
    i_Col_Index pls_integer
  ) return Array_Date;
  ----------------------------------------------------------------------------------------------------
  Function Column
  (
    i_Val       Matrix_Timestamp,
    i_Col_Index pls_integer
  ) return Array_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Function Transpose(i_Val Matrix_Varchar2) return Matrix_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Transpose(i_Val Matrix_Number) return Matrix_Number;
  ----------------------------------------------------------------------------------------------------
  Function Transpose(i_Val Matrix_Date) return Matrix_Date;
  ----------------------------------------------------------------------------------------------------
  Function Transpose(i_Val Matrix_Timestamp) return Matrix_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Function Is_Empty(i_Val Array_Varchar2) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Is_Empty(i_Val Array_Number) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Is_Empty(i_Val Array_Date) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Is_Empty(i_Val Array_Timestamp) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Sort(i_Val Array_Varchar2) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort(p_Val in out nocopy Array_Varchar2);
  ----------------------------------------------------------------------------------------------------
  Function Sort_Desc(i_Val Array_Varchar2) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort_Desc(p_Val in out nocopy Array_Varchar2);
  ----------------------------------------------------------------------------------------------------
  Function Sort(i_Val Array_Number) return Array_Number;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort(p_Val in out nocopy Array_Number);
  ----------------------------------------------------------------------------------------------------
  Function Sort_Desc(i_Val Array_Number) return Array_Number;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort_Desc(p_Val in out nocopy Array_Number);
  ----------------------------------------------------------------------------------------------------
  Function Sort(i_Val Array_Date) return Array_Date;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort(p_Val in out nocopy Array_Date);
  ----------------------------------------------------------------------------------------------------
  Function Sort_Desc(i_Val Array_Date) return Array_Date;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort_Desc(p_Val in out nocopy Array_Date);
  ----------------------------------------------------------------------------------------------------
  Function Sort(i_Val Array_Timestamp) return Array_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort(p_Val in out nocopy Array_Timestamp);
  ----------------------------------------------------------------------------------------------------
  Function Sort_Desc(i_Val Array_Timestamp) return Array_Timestamp;
  ----------------------------------------------------------------------------------------------------
  Procedure Sort_Desc(p_Val in out nocopy Array_Timestamp);
  ----------------------------------------------------------------------------------------------------
  Function Zip_Map
  (
    i_Name1 varchar2,
    i_Val1  varchar2,
    i_Name2 varchar2 := null,
    i_Val2  varchar2 := null,
    i_Name3 varchar2 := null,
    i_Val3  varchar2 := null,
    i_Name4 varchar2 := null,
    i_Val4  varchar2 := null,
    i_Name5 varchar2 := null,
    i_Val5  varchar2 := null,
    i_Name6 varchar2 := null,
    i_Val6  varchar2 := null
  ) return Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function Zip_Array_Map
  (
    i_Name1 varchar2,
    i_Val1  Array_Varchar2,
    i_Name2 varchar2 := null,
    i_Val2  Array_Varchar2 := null,
    i_Name3 varchar2 := null,
    i_Val3  Array_Varchar2 := null,
    i_Name4 varchar2 := null,
    i_Val4  Array_Varchar2 := null,
    i_Name5 varchar2 := null,
    i_Val5  Array_Varchar2 := null,
    i_Name6 varchar2 := null,
    i_Val6  Array_Varchar2 := null
  ) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Zip_Matrix(i_Val Matrix_Varchar2) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Zip_Matrix
  (
    i_Val1 Array_Varchar2,
    i_Val2 Array_Varchar2 := null,
    i_Val3 Array_Varchar2 := null,
    i_Val4 Array_Varchar2 := null
  ) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Zip_Matrix_Transposed(i_Val Matrix_Varchar2) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Index_Of
  (
    i_Array Array_Varchar2,
    i_Val   varchar2
  ) return pls_integer;
  ----------------------------------------------------------------------------------------------------
  Function Index_Of
  (
    i_Array Array_Number,
    i_Val   number
  ) return pls_integer;
  ----------------------------------------------------------------------------------------------------
  Function Index_Of
  (
    i_Array Array_Date,
    i_Val   date
  ) return pls_integer;
  ----------------------------------------------------------------------------------------------------
  Function Index_Of
  (
    i_Array Array_Timestamp,
    i_Val   timestamp
  ) return pls_integer;
  ----------------------------------------------------------------------------------------------------
  Function Contains
  (
    i_Array Array_Varchar2,
    i_Val   varchar2
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Contains
  (
    i_Array Array_Number,
    i_Val   number
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Contains
  (
    i_Array Array_Date,
    i_Val   date
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Contains
  (
    i_Array Array_Timestamp,
    i_Val   timestamp
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Array in out nocopy Array_Varchar2,
    i_Val   varchar2
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Array in out nocopy Array_Number,
    i_Val   number
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Array in out nocopy Array_Date,
    i_Val   date
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Array in out nocopy Array_Timestamp,
    i_Val   timestamp
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Varchar2,
    i_Val    Array_Varchar2
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Number,
    i_Val    Array_Number
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Date,
    i_Val    Array_Date
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Timestamp,
    i_Val    Array_Timestamp
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Varchar2,
    i_Val1   varchar2,
    i_Val2   varchar2 := null,
    i_Val3   varchar2 := null,
    i_Val4   varchar2 := null,
    i_Val5   varchar2 := null
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Number,
    i_Val1   number,
    i_Val2   number := null,
    i_Val3   number := null,
    i_Val4   number := null,
    i_Val5   number := null
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Date,
    i_Val1   date,
    i_Val2   date := null,
    i_Val3   date := null,
    i_Val4   date := null,
    i_Val5   date := null
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Push
  (
    p_Matrix in out nocopy Matrix_Timestamp,
    i_Val1   timestamp,
    i_Val2   timestamp := null,
    i_Val3   timestamp := null,
    i_Val4   timestamp := null,
    i_Val5   timestamp := null
  );
  ----------------------------------------------------------------------------------------------------
  Function Parse_Json(i_Src varchar2) return w_Wrapper;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Json(i_Src Array_Varchar2) return w_Wrapper;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Json(i_Src clob) return w_Wrapper;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Array(i_Src varchar2) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Array(i_Src Array_Varchar2) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Array(i_Src clob) return Arraylist;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Map(i_Src varchar2) return Fazo_Schema.Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Map(i_Src Array_Varchar2) return Fazo_Schema.Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function Parse_Map(i_Src clob) return Fazo_Schema.Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function To_Json(i_Value Fazo_Schema.w_Wrapper) return Stream;
  ----------------------------------------------------------------------------------------------------
  Function To_Json(i_Value Fazo_Schema.Array_Varchar2) return Stream;
  ----------------------------------------------------------------------------------------------------
  Function To_Json(i_Value Fazo_Schema.Array_Number) return Stream;
  ----------------------------------------------------------------------------------------------------
  Function To_Json(i_Value Fazo_Schema.Array_Date) return Stream;
  ----------------------------------------------------------------------------------------------------
  Function To_Json(i_Value Fazo_Schema.Array_Timestamp) return Stream;
  ----------------------------------------------------------------------------------------------------
  Function Split
  (
    i_Val       varchar2,
    i_Delimiter varchar2
  ) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Split
  (
    i_Val       Array_Varchar2,
    i_Delimiter varchar2
  ) return Matrix_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Gather
  (
    i_Val       Array_Varchar2,
    i_Delimiter varchar2
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Gather
  (
    i_Val       Array_Number,
    i_Delimiter varchar2,
    i_Format    varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Gather
  (
    i_Val       Array_Date,
    i_Delimiter varchar2,
    i_Format    varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Gather
  (
    i_Val       Array_Timestamp,
    i_Delimiter varchar2,
    i_Format    varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Equal
  (
    i_Val1 varchar2,
    i_Val2 varchar2
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Equal
  (
    i_Val1 number,
    i_Val2 number
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Equal
  (
    i_Val1 date,
    i_Val2 date
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Equal
  (
    i_Val1 timestamp,
    i_Val2 timestamp
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Week_Day(i_Date date) return pls_integer;
  ----------------------------------------------------------------------------------------------------
  Function Hash_Sha1(i_Value varchar2) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Hash_Sha1(i_Value Array_Varchar2) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Hash_Sha1(i_Value clob) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Read_Clob(i_Clob clob) return Array_Varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Make_Clob(i_Val Array_Varchar2) return clob;
  ----------------------------------------------------------------------------------------------------
  Function Length_Text(i_Val Array_Varchar2) return number;
  ----------------------------------------------------------------------------------------------------
  Function Lengthb_Text(i_Val Array_Varchar2) return number;
  ----------------------------------------------------------------------------------------------------
  Function Empty_Text(i_Val Array_Varchar2) return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Dump(i_Val varchar2) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Mk_Message
  (
    i_Template varchar2,
    i_Params   Fazo_Schema.Array_Varchar2 := null
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Trim_Ora_Error(i_Error varchar2) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Trimmed_Sqlerrm return varchar2;

end Fazo;
/
package             Fazo_Aes authid current_user is
  ----------------------------------------------------------------------------------------------------
  Function Server_Code return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Decrypt(i_Encrypted_Text varchar2) return varchar2;
end Fazo_Aes;
/

package             Fazo_Env authid current_user is
  ----------------------------------------------------------------------------------------------------
  Procedure Set_User_Id(i_User_Id number);
  ----------------------------------------------------------------------------------------------------
  Function Get_User_Id return number;
end Fazo_Env;
/

type             Fazo_File force as object
(
  l_Command_Type    varchar2(1),
  l_Attachment_Name varchar2(200),
  l_Files           Fazo_Schema.Arraylist,

------------------------------------------------------------------------------------------------------
  constructor Function Fazo_File(self in out nocopy Fazo_Schema.Fazo_File) return self as result,
------------------------------------------------------------------------------------------------------
  constructor Function Fazo_File
  (
    self            in out nocopy Fazo_Schema.Fazo_File,
    i_Sha           varchar2,
    i_Name          varchar2 := null,
    i_Width         number := null,
    i_Height        number := null,
    i_Cache         boolean := null,
    i_Format        varchar2 := null,
    i_Quality       number := null,
    i_Redirect      boolean := false,
    i_Redirect_Kind varchar2 := 'L' -- 'L' load, 'D' download
  ) return self as result,
------------------------------------------------------------------------------------------------------
  member Procedure Add_File
  (
    self            in out nocopy Fazo_Schema.Fazo_File,
    i_Sha           varchar2,
    i_Name          varchar2 := null,
    i_Redirect      boolean := false,
    i_Redirect_Kind varchar2 := 'L'
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Add_Image
  (
    self            in out nocopy Fazo_Schema.Fazo_File,
    i_Sha           varchar2,
    i_Name          varchar2 := null,
    i_Width         number := null,
    i_Height        number := null,
    i_Cache         boolean := null,
    i_Format        varchar2 := null,
    i_Quality       number := null,
    i_Redirect      boolean := false,
    i_Redirect_Kind varchar2 := 'L'
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Forward_Size(self in out nocopy Fazo_Schema.Fazo_File),
------------------------------------------------------------------------------------------------------
  member Procedure Forward_File(self in out nocopy Fazo_Schema.Fazo_File),
------------------------------------------------------------------------------------------------------
  member Procedure Set_Attachment_Name
  (
    self   in out nocopy Fazo_Schema.Fazo_File,
    i_Name varchar2
  )
------------------------------------------------------------------------------------------------------
);
/

package             Fazo_Gen authid current_user is

  ----------------------------------------------------------------------------------------------------
  Function Count_Table_Records(i_Table_Name varchar2) return number;
  ----------------------------------------------------------------------------------------------------
  Procedure Execute_Clob(i_Query clob);
  ----------------------------------------------------------------------------------------------------
  Procedure Execute_Stream(i_Query Stream);
  ----------------------------------------------------------------------------------------------------
  Function Serial_Table(i_Table_Name varchar2) return Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function Serial_All(Request Hashmap := null) return Hashmap;
  ----------------------------------------------------------------------------------------------------
  Procedure Htp_Table(i_Table_Name varchar2);
  ----------------------------------------------------------------------------------------------------
  Function Table_Sha1(i_Table_Name varchar2) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Is_Correct_Table_Checksum
  (
    i_Table_Name varchar2,
    i_Checksum   varchar2
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Procedure Run(i_Table_Prefix varchar2 := null);
  ----------------------------------------------------------------------------------------------------
  Procedure Run2(i_Table_Prefix varchar2 := null);
  ----------------------------------------------------------------------------------------------------
  Procedure Run_Force(i_Table_Prefix varchar2 := null);
  ----------------------------------------------------------------------------------------------------
  Procedure Run_Force2(i_Table_Prefix varchar2 := null);
  ----------------------------------------------------------------------------------------------------
  Procedure Compile_Invalid_Objects;
  ----------------------------------------------------------------------------------------------------
  Procedure Drop_Object_If_Exists(i_Object_Name varchar2);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Array_Varchar2);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Array_Number);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Array_Date);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Array_Timestamp);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Matrix_Varchar2);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Matrix_Number);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Matrix_Date);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val Matrix_Timestamp);
  ----------------------------------------------------------------------------------------------------
  Procedure Htp(i_Val w_Wrapper);

end Fazo_Gen;
/

type             Fazo_Query Force authid current_user as object
(
  Query                varchar2(32767),
  Params               Fazo_Schema.Hashmap,
  Fields               Fazo_Schema.Hashmap,
  Columns_After_Filter Fazo_Schema.Array_Varchar2,
  Metadata             Fazo_Schema.Arraylist,
------------------------------------------------------------------------------------------------------
  constructor Function Fazo_Query
  (
    self  in out nocopy Fazo_Schema.Fazo_Query,
    Query varchar2
  ) return self as result,

------------------------------------------------------------------------------------------------------
  constructor Function Fazo_Query
  (
    self                  in out nocopy Fazo_Schema.Fazo_Query,
    Query                 varchar2,
    Params                Hashmap,
    Generate_Where_Clause boolean := false
  ) return self as result,

------------------------------------------------------------------------------------------------------
  member Function Execute_Page
  (
    i_Column    Array_Varchar2,
    i_Filter    Arraylist := null,
    i_Sort      Array_Varchar2 := null,
    i_Offset    number := null,
    i_Limit     number := null,
    i_Namespace varchar2 := null
  ) return Stream,
------------------------------------------------------------------------------------------------------
  member Procedure Varchar2_Field
  (
    self     in out nocopy Fazo_Schema.Fazo_Query,
    i_Name1  varchar2,
    i_Name2  varchar2 := null,
    i_Name3  varchar2 := null,
    i_Name4  varchar2 := null,
    i_Name5  varchar2 := null,
    i_Name6  varchar2 := null,
    i_Name7  varchar2 := null,
    i_Name8  varchar2 := null,
    i_Name9  varchar2 := null,
    i_Name10 varchar2 := null
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Number_Field
  (
    self     in out nocopy Fazo_Schema.Fazo_Query,
    i_Name1  varchar2,
    i_Name2  varchar2 := null,
    i_Name3  varchar2 := null,
    i_Name4  varchar2 := null,
    i_Name5  varchar2 := null,
    i_Name6  varchar2 := null,
    i_Name7  varchar2 := null,
    i_Name8  varchar2 := null,
    i_Name9  varchar2 := null,
    i_Name10 varchar2 := null
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Date_Field
  (
    self     in out nocopy Fazo_Schema.Fazo_Query,
    i_Name1  varchar2,
    i_Name2  varchar2 := null,
    i_Name3  varchar2 := null,
    i_Name4  varchar2 := null,
    i_Name5  varchar2 := null,
    i_Name6  varchar2 := null,
    i_Name7  varchar2 := null,
    i_Name8  varchar2 := null,
    i_Name9  varchar2 := null,
    i_Name10 varchar2 := null
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Option_Field

  (
    self    in out nocopy Fazo_Query,
    i_Name  varchar2,
    i_For   varchar2,
    i_Codes Array_Varchar2,
    i_Names Array_Varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Option_Field
  (
    self    in out nocopy Fazo_Query,
    i_Name  varchar2,
    i_For   varchar2,
    i_Codes Array_Number,
    i_Names Array_Varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Refer_Field
  (
    self               in out nocopy Fazo_Query,
    i_Name             varchar2,
    i_For              varchar2,
    i_Table_Name       varchar2,
    i_Code_Field       varchar2,
    i_Name_Field       varchar2,
    i_Table_For_Select varchar2 := null,
    i_Field_Type       varchar2 := null,
    i_Manual_Sort      boolean := false
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Map_Field
  (
    self         in out nocopy Fazo_Query,
    i_Name       varchar2,
    i_Map_Fn     varchar2,
    i_Field_Type varchar2 := null
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Multi_Varchar2_Field
  (
    self          in out nocopy Fazo_Query,
    i_Name        varchar2,
    i_Table_Name  varchar2,
    i_Join_Clause varchar2,
    i_For         varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Multi_Number_Field
  (
    self          in out nocopy Fazo_Query,
    i_Name        varchar2,
    i_Table_Name  varchar2,
    i_Join_Clause varchar2,
    i_For         varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Add_Column_After_Filter
  (
    self            in out nocopy Fazo_Query,
    i_Column_Clause varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Grid_Column_Label
  (
    self    in out nocopy Fazo_Query,
    i_Name  varchar2,
    i_Label varchar2
  ),
----------------------------------------------------------------------------------------------------
  member Function Ft_Date return varchar2,
----------------------------------------------------------------------------------------------------
  member Function Ft_Number return varchar2
);
/

package             Fazo_Util authid current_user is

  ----------------------------------------------------------------------------------------------------
  c_f_Varchar2 constant varchar2(1) := 'V';
  c_f_Number   constant varchar2(1) := 'N';
  c_f_Date     constant varchar2(1) := 'D';
  c_f_Option   constant varchar2(1) := 'O';
  c_f_Refer    constant varchar2(1) := 'R';
  c_f_Map      constant varchar2(1) := 'M';
  c_f_Multi    constant varchar2(1) := 'K';
  ----------------------------------------------------------------------------------------------------
  c_Ct_Forward_File constant varchar2(1) := 'F';
  c_Ct_Forward_Size constant varchar2(1) := 'S';
  ----------------------------------------------------------------------------------------------------
  Procedure Prepare_Cursor
  (
    i_Query     varchar2,
    i_Params    Fazo_Schema.Hashmap,
    o_Cursor    out pls_integer,
    o_Count     out pls_integer,
    o_Col_Types out Fazo_Schema.Array_Varchar2
  );
  ----------------------------------------------------------------------------------------------------
  Function Execute_Count
  (
    i_Query  varchar,
    i_Params Fazo_Schema.Hashmap
  ) return number;
  ----------------------------------------------------------------------------------------------------
  Function Execute_Count
  (
    i_Query         varchar2,
    i_Filter_Clause varchar2,
    i_Params        Hashmap
  ) return number;
  ----------------------------------------------------------------------------------------------------
  Procedure Execute_Query
  (
    i_Query  varchar2,
    i_Params Fazo_Schema.Hashmap,
    Writer   in out nocopy Fazo_Schema.Stream
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Build_Query
  (
    i_Query                varchar2,
    i_Params               Fazo_Schema.Hashmap,
    i_Fields               Fazo_Schema.Hashmap,
    i_Columns_After_Filter Fazo_Schema.Array_Varchar2 := null,
    i_Column               Fazo_Schema.Array_Varchar2,
    i_Filter               Fazo_Schema.Arraylist,
    i_Sort                 Fazo_Schema.Array_Varchar2,
    i_Namespace            varchar2,
    o_Query                out varchar2,
    o_Params               out Fazo_Schema.Hashmap
  );
  ----------------------------------------------------------------------------------------------------
  Function Serial_Query
  (
    i_Query  varchar2,
    i_Params Hashmap
  ) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Procedure Build_Query_Page
  (
    i_Query                varchar2,
    i_Params               Fazo_Schema.Hashmap,
    i_Fields               Fazo_Schema.Hashmap,
    i_Columns_After_Filter Fazo_Schema.Array_Varchar2 := null,
    i_Column               Fazo_Schema.Array_Varchar2,
    i_Filter               Fazo_Schema.Arraylist,
    i_Sort                 Fazo_Schema.Array_Varchar2,
    i_Rownum_Start         number,
    i_Rownum_End           number,
    i_Namespace            varchar2,
    o_Query                out varchar2,
    o_Params               out Fazo_Schema.Hashmap
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Execute_Query_Page
  (
    i_Query                varchar2,
    i_Params               Fazo_Schema.Hashmap,
    i_Fields               Fazo_Schema.Hashmap,
    i_Columns_After_Filter Fazo_Schema.Array_Varchar2 := null,
    i_Column               Fazo_Schema.Array_Varchar2,
    i_Filter               Fazo_Schema.Arraylist,
    i_Sort                 Fazo_Schema.Array_Varchar2,
    i_Rownum_Start         number,
    i_Rownum_End           number,
    i_Namespace            varchar2,
    Writer                 in out nocopy Stream,
    i_Metadata             Arraylist := null
  );
  ----------------------------------------------------------------------------------------------------
  -- deprecated
  ----------------------------------------------------------------------------------------------------
  Procedure Fields_Info_Refer
  (
    Writer   in out nocopy Stream,
    i_Search varchar2,
    i_Field  Fazo_Schema.Arraylist
  );
  ----------------------------------------------------------------------------------------------------
  -- deprecated
  ----------------------------------------------------------------------------------------------------
  Procedure Fields_Info
  (
    Writer   in out nocopy Stream,
    i_Fields Fazo_Schema.Hashmap,
    i_Names  Fazo_Schema.Hashmap
  );
  ----------------------------------------------------------------------------------------------------
  -- deprecated
  ----------------------------------------------------------------------------------------------------
  Procedure Fields_Data
  (
    i_Fields Fazo_Schema.Hashmap,
    i_Names  Array_Varchar2,
    Writer   in out nocopy Stream
  );
  ----------------------------------------------------------------------------------------------------
  Function Is_Biruni5 return boolean;
  ----------------------------------------------------------------------------------------------------
  Function Is_Biruni5_1 return boolean;
end Fazo_Util;
/

package             Fazo_z authid current_user is

  ----------------------------------------------------------------------------------------------------
  Function Count_Table_Records(i_Table_Name varchar2) return number;
  ----------------------------------------------------------------------------------------------------
  Procedure Execute_Clob(i_Query clob);
  ----------------------------------------------------------------------------------------------------
  Procedure Execute_Stream(i_Query Fazo_Schema.Stream);
  ----------------------------------------------------------------------------------------------------
  Function Serial_Table(i_Table_Name varchar2) return Fazo_Schema.Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function Serial_All(Request Fazo_Schema.Hashmap := null) return Fazo_Schema.Hashmap;
  ----------------------------------------------------------------------------------------------------
  Function Table_Sha1(i_Table_Name varchar2) return varchar2;
  ----------------------------------------------------------------------------------------------------
  Function Is_Correct_Table_Checksum
  (
    i_Table_Name varchar2,
    i_Checksum   varchar2
  ) return boolean;
  ----------------------------------------------------------------------------------------------------
  Procedure Run
  (
    i_Table_Prefix        varchar2 := null,
    i_With_Wrapper_Column boolean := false
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Run_Force
  (
    i_Table_Prefix        varchar2 := null,
    i_With_Dml            boolean := true,
    i_With_Wrapper_Column boolean := false
  );
  ----------------------------------------------------------------------------------------------------
  Procedure Compile_Invalid_Objects;
  ----------------------------------------------------------------------------------------------------
  Procedure Drop_Object_If_Exists(i_Object_Name varchar2);
  ----------------------------------------------------------------------------------------------------
  Procedure Wrap_Package(i_Package_Name varchar2);

end Fazo_z;
/

type             Glist Force authid current_user as object
(
  Val Json_Array_t,
----------------------------------------------------------------------------------------------------
  constructor Function Glist(self in out nocopy Glist) return self as result,
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    varchar2
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    number
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    date
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    timestamp
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    timestamp with time zone
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    timestamp with local time zone
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    Fazo_Schema.Array_Varchar2
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    Fazo_Schema.Array_Number
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    Fazo_Schema.Array_Date
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    Fazo_Schema.Array_Timestamp
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    Glist
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Push
  (
    self in out nocopy Glist,
    v    Json_Object_t
  ),
------------------------------------------------------------------------------------------------------
  member Function count(self in Glist) return pls_integer,
----------------------------------------------------------------------------------------------------
  member Function r_Varchar2
  (
    self in Glist,
    i    pls_integer
  ) return varchar2,
----------------------------------------------------------------------------------------------------
  member Function r_Number
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
----------------------------------------------------------------------------------------------------
  member Function r_Date
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
----------------------------------------------------------------------------------------------------
  member Function r_Timestamp
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
----------------------------------------------------------------------------------------------------
  member Function r_Array_Varchar2
  (
    self in Glist,
    i    pls_integer
  ) return Fazo_Schema.Array_Varchar2,
----------------------------------------------------------------------------------------------------
  member Function r_Array_Number
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
----------------------------------------------------------------------------------------------------
  member Function r_Array_Date
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
----------------------------------------------------------------------------------------------------
  member Function r_Array_Timestamp
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
----------------------------------------------------------------------------------------------------
  member Function r_Glist
  (
    self in Glist,
    i    pls_integer
  ) return Glist,
----------------------------------------------------------------------------------------------------
  member Function r_Gmap
  (
    self in Glist,
    i    pls_integer
  ) return Json_Object_t,
----------------------------------------------------------------------------------------------------
  member Function o_Varchar2
  (
    self in Glist,
    i    pls_integer
  ) return varchar2,
----------------------------------------------------------------------------------------------------
  member Function o_Number
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
----------------------------------------------------------------------------------------------------
  member Function o_Date
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
----------------------------------------------------------------------------------------------------
  member Function o_Timestamp
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
----------------------------------------------------------------------------------------------------
  member Function o_Array_Varchar2
  (
    self in Glist,
    i    pls_integer
  ) return Fazo_Schema.Array_Varchar2,
----------------------------------------------------------------------------------------------------
  member Function o_Array_Number
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
----------------------------------------------------------------------------------------------------
  member Function o_Array_Date
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
----------------------------------------------------------------------------------------------------
  member Function o_Array_Timestamp
  (
    self       in Glist,
    i          pls_integer,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
----------------------------------------------------------------------------------------------------
  member Function o_Glist
  (
    self in Glist,
    i    pls_integer
  ) return Glist,
----------------------------------------------------------------------------------------------------
  member Function o_Gmap
  (
    self in Glist,
    i    pls_integer
  ) return Json_Object_t,
------------------------------------------------------------------------------------------------------
  member Procedure Print_Json
  (
    self in Glist,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  member Function Json(self in Glist) return varchar2
)
final not Persistable;
/

type             Gmap Force authid current_user as object
(
  Val Json_Object_t,
----------------------------------------------------------------------------------------------------
  constructor Function Gmap(self in out nocopy Gmap) return self as result,
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    varchar2
  ),

----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    number
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    date
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    timestamp
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    timestamp with time zone
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    timestamp with local time zone
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Varchar2
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Number
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Date
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Timestamp
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    Glist
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Gmap,
    Key  varchar2,
    v    Gmap
  ),
----------------------------------------------------------------------------------------------------
  member Procedure Put_All
  (
    self in out nocopy Gmap,
    That Gmap
  ),
----------------------------------------------------------------------------------------------------
  member Function count(self in Gmap) return pls_integer,
----------------------------------------------------------------------------------------------------
  member Function Has
  (
    self in Gmap,
    Key  varchar2
  ) return boolean,
------------------------------------------------------------------------------------------------------
  member Function r_Varchar2
  (
    self in Gmap,
    Key  varchar2
  ) return varchar2,
------------------------------------------------------------------------------------------------------
  member Function r_Number
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
----------------------------------------------------------------------------------------------------
  member Function r_Date
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
----------------------------------------------------------------------------------------------------
  member Function r_Timestamp
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
------------------------------------------------------------------------------------------------------
  member Function r_Array_Varchar2
  (
    self in Gmap,
    Key  varchar2
  ) return Fazo_Schema.Array_Varchar2,
------------------------------------------------------------------------------------------------------
  member Function r_Array_Number
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
------------------------------------------------------------------------------------------------------
  member Function r_Array_Date
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
------------------------------------------------------------------------------------------------------
  member Function r_Array_Timestamp
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
----------------------------------------------------------------------------------------------------
  member Function r_Glist
  (
    self in Gmap,
    Key  varchar2
  ) return Glist,
----------------------------------------------------------------------------------------------------
  member Function r_Gmap
  (
    self in Gmap,
    Key  varchar2
  ) return Gmap,
------------------------------------------------------------------------------------------------------
  member Function o_Varchar2
  (
    self in Gmap,
    Key  varchar2
  ) return varchar2,
------------------------------------------------------------------------------------------------------
  member Function o_Number
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
----------------------------------------------------------------------------------------------------
  member Function o_Date
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
----------------------------------------------------------------------------------------------------
  member Function o_Timestamp
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
------------------------------------------------------------------------------------------------------
  member Function o_Array_Varchar2
  (
    self in Gmap,
    Key  varchar2
  ) return Fazo_Schema.Array_Varchar2,
------------------------------------------------------------------------------------------------------
  member Function o_Array_Number
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
------------------------------------------------------------------------------------------------------
  member Function o_Array_Date
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
------------------------------------------------------------------------------------------------------
  member Function o_Array_Timestamp
  (
    self       in Gmap,
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
----------------------------------------------------------------------------------------------------
  member Function o_Glist
  (
    self in Gmap,
    Key  varchar2
  ) return Glist,
----------------------------------------------------------------------------------------------------
  member Function o_Gmap
  (
    self in Gmap,
    Key  varchar2
  ) return Gmap,
------------------------------------------------------------------------------------------------------
  member Function Keyset(self in Gmap) return Fazo_Schema.Array_Varchar2,
----------------------------------------------------------------------------------------------------
  member Procedure Print_Json
  (
    self in Gmap,
    out  in out nocopy Fazo_Schema.Stream
  ),
----------------------------------------------------------------------------------------------------
  member Function Json(self in Gmap) return varchar2
)
final not Persistable;
/

type             Gws_Json_Value Force under Fazo_Schema.w_Wrapper
(
  Val Fazo_Schema.Array_Varchar2,

------------------------------------------------------------------------------------------------------
  constructor Function Gws_Json_Value
  (
    self in out nocopy Fazo_Schema.Gws_Json_Value,
    Val  Fazo_Schema.Array_Varchar2
  ) return self as result,
------------------------------------------------------------------------------------------------------
  constructor Function Gws_Json_Value
  (
    self in out nocopy Fazo_Schema.Gws_Json_Value,
    Val  Fazo_Schema.w_Wrapper
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Gws_Json_Value,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             Hashmap Force under Fazo_Schema.w_Wrapper
(
  Keys    Fazo_Schema.Calc,
  Buckets Fazo_Schema.Hash_Bucket,

------------------------------------------------------------------------------------------------------
  constructor Function Hashmap(self in out nocopy Fazo_Schema.Hashmap) return self as result,
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    Fazo_Schema.w_Wrapper
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    date
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    timestamp
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    timestamp with time zone
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    timestamp with local time zone
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Number
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Date
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put
  (
    self in out nocopy Fazo_Schema.Hashmap,
    Key  varchar2,
    v    Fazo_Schema.Array_Timestamp
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Put_All
  (
    self in out nocopy Fazo_Schema.Hashmap,
    That Fazo_Schema.Hashmap
  ),
------------------------------------------------------------------------------------------------------
  member Function count return binary_integer,
------------------------------------------------------------------------------------------------------
  member Function Has(Key varchar2) return boolean,
------------------------------------------------------------------------------------------------------
  member Function r_Varchar2
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  member Function r_Number
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  member Function r_Date
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  member Function r_Timestamp
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  member Function r_Array_Varchar2
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  member Function r_Array_Number
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  member Function r_Array_Date
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  member Function r_Array_Timestamp
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
  member Function r_Calc(Key varchar2) return Fazo_Schema.Calc,
  member Function r_Arraylist(Key varchar2) return Fazo_Schema.Arraylist,
  member Function r_Hashmap(Key varchar2) return Fazo_Schema.Hashmap,
------------------------------------------------------------------------------------------------------
  member Function o_Varchar2
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  member Function o_Number
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  member Function o_Date
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  member Function o_Timestamp
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  member Function o_Array_Varchar2
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  member Function o_Array_Number
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  member Function o_Array_Date
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  member Function o_Array_Timestamp
  (
    Key        varchar2,
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
  member Function o_Calc(Key varchar2) return Fazo_Schema.Calc,
  member Function o_Arraylist(Key varchar2) return Fazo_Schema.Arraylist,
  member Function o_Hashmap(Key varchar2) return Fazo_Schema.Hashmap,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Hashmap return boolean,
------------------------------------------------------------------------------------------------------
  member Function Is_Varchar2(Key varchar2) return boolean,
  member Function Is_Number(Key varchar2) return boolean,
  member Function Is_Date(Key varchar2) return boolean,
  member Function Is_Timestamp(Key varchar2) return boolean,
  member Function Is_Array_Varchar2(Key varchar2) return boolean,
  member Function Is_Array_Number(Key varchar2) return boolean,
  member Function Is_Array_Date(Key varchar2) return boolean,
  member Function Is_Array_Timestamp(Key varchar2) return boolean,
  member Function Is_Calc(Key varchar2) return boolean,
  member Function Is_Arraylist(Key varchar2) return boolean,
  member Function Is_Hashmap(Key varchar2) return boolean,
------------------------------------------------------------------------------------------------------
  member Function Keyset return Array_Varchar2,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Hashmap,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             Hash_Bucket force is table of Fazo_Schema.Hash_Entry not null;
/

type             Hash_Entry Force as object
(

  Key varchar2(100),
  Val Fazo_Schema.w_Wrapper,

------------------------------------------------------------------------------------------------------
  constructor Function Hash_Entry
  (
    self in out nocopy Fazo_Schema.Hash_Entry,
    Key  varchar2,
    Val  Fazo_Schema.w_Wrapper
  ) return self as result
);
/

type             matrix_date force is table of fazo_schema.array_date not null;
/

type             matrix_number force is table of fazo_schema.array_number not null;
/

type             matrix_timestamp force is table of fazo_schema.array_timestamp not null;
/

type             matrix_varchar2 force is table of fazo_schema.array_varchar2 not null;
/

type             Option_Date Force under Fazo_Schema.w_Wrapper
(
  Val date,
------------------------------------------------------------------------------------------------------
  constructor Function Option_Date
  (
    self in out nocopy Fazo_Schema.Option_Date,
    Val  date
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Date return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Option_Date,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             Option_Number Force under Fazo_Schema.w_Wrapper
(
  Val number,
------------------------------------------------------------------------------------------------------
  constructor Function Option_Number
  (
    self in out nocopy Fazo_Schema.Option_Number,
    Val  number
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Number return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Option_Number,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             Option_Timestamp Force under Fazo_Schema.w_Wrapper
(
  Val timestamp,
------------------------------------------------------------------------------------------------------
  constructor Function Option_Timestamp
  (
    self in out nocopy Fazo_Schema.Option_Timestamp,
    Val  timestamp
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Timestamp return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Option_Timestamp,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             Option_Varchar2 Force under Fazo_Schema.w_Wrapper
(
  Val varchar2(32767),
------------------------------------------------------------------------------------------------------
  constructor Function Option_Varchar2
  (
    self in out nocopy Fazo_Schema.Option_Varchar2,
    Val  varchar2
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Varchar2 return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.Option_Varchar2,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             Round_Model Force as object
(
  z_Scale number,
  z_Half  number,
  z_Type  varchar2(1),

------------------------------------------------------------------------------------------------------
  constructor Function Round_Model
  (
    self    in out nocopy Fazo_Schema.Round_Model,
    i_Model varchar2
  ) return self as result,
------------------------------------------------------------------------------------------------------
  member Function z_Eval
  (
    i_Val   number,
    i_Scale number
  ) return number,
------------------------------------------------------------------------------------------------------
  member Function Eval(i_Val number) return number

);
/

type             Stream Force as object
(
  Val Fazo_Schema.Array_Varchar2,
------------------------------------------------------------------------------------------------------
  constructor Function Stream(self in out nocopy Fazo_Schema.Stream) return self as result,
  constructor Function Stream
  (
    self in out nocopy Fazo_Schema.Stream,
    v    varchar2
  ) return self as result,

------------------------------------------------------------------------------------------------------
  member Procedure Print
  (
    self in out nocopy Fazo_Schema.Stream,
    v    varchar2
  ),
  member Procedure Println
  (
    self in out nocopy Fazo_Schema.Stream,
    v    varchar2
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Println(self in out nocopy Fazo_Schema.Stream),
------------------------------------------------------------------------------------------------------
  member Procedure Print
  (
    self in out nocopy Fazo_Schema.Stream,
    v    Fazo_Schema.Array_Varchar2
  ),
  member Procedure Print
  (
    self in out nocopy Fazo_Schema.Stream,
    v    Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  member Function Stream_Length return number,
------------------------------------------------------------------------------------------------------
  member Function Is_Empty return boolean,
------------------------------------------------------------------------------------------------------
  member Function Non_Empty return boolean,
------------------------------------------------------------------------------------------------------
  member Function As_Clob return clob,
------------------------------------------------------------------------------------------------------
  member Function As_Blob return blob,
------------------------------------------------------------------------------------------------------
  member Function Get_Clob return clob,
------------------------------------------------------------------------------------------------------
  member Function Get_Blob return blob,
------------------------------------------------------------------------------------------------------
  member Procedure Write_Clob
  (
    self   in Fazo_Schema.Stream,
    Io_Out in out nocopy clob
  ),
------------------------------------------------------------------------------------------------------
  member Procedure Write_Blob
  (
    self   in Fazo_Schema.Stream,
    Io_Out in out nocopy blob
  )
);
/

type             w_Array_Date Force under Fazo_Schema.w_Wrapper
(
  Val Fazo_Schema.Array_Date,
------------------------------------------------------------------------------------------------------
  constructor Function w_Array_Date
  (
    self in out nocopy Fazo_Schema.w_Array_Date,
    Val  Fazo_Schema.Array_Date
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Array_Date return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.w_Array_Date,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             w_Array_Number Force under Fazo_Schema.w_Wrapper
(
  Val Fazo_Schema.Array_Number,
------------------------------------------------------------------------------------------------------
  constructor Function w_Array_Number
  (
    self in out nocopy Fazo_Schema.w_Array_Number,
    Val  Fazo_Schema.Array_Number
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Array_Number return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.w_Array_Number,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             w_Array_Timestamp Force under Fazo_Schema.w_Wrapper
(
  Val Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  constructor Function w_Array_Timestamp
  (
    self in out nocopy Fazo_Schema.w_Array_Timestamp,
    Val  Fazo_Schema.Array_Timestamp
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Array_Timestamp return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.w_Array_Timestamp,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             w_Array_Varchar2 Force under Fazo_Schema.w_Wrapper
(
  Val Array_Varchar2,
------------------------------------------------------------------------------------------------------
  constructor Function w_Array_Varchar2
  (
    self in out nocopy Fazo_Schema.w_Array_Varchar2,
    Val  Fazo_Schema.Array_Varchar2
  ) return self as result,
------------------------------------------------------------------------------------------------------
  overriding member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  overriding member Function As_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  overriding member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  overriding member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  overriding member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  overriding member Function As_Array_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  overriding member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  overriding member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  overriding member Function Is_Array_Varchar2 return boolean,
------------------------------------------------------------------------------------------------------
  overriding member Procedure Print_Json
  (
    self in Fazo_Schema.w_Array_Varchar2,
    out  in out nocopy Fazo_Schema.Stream
  ),
------------------------------------------------------------------------------------------------------
  overriding member Function Json return varchar2
);
/

type             w_Array_Wrapper force is table of Fazo_Schema.w_Wrapper not null;
/

type             w_Calc_Bucket_Array force is varray(64) of Fazo_Schema.Calc_Bucket;
/

type             w_Column_Name as object
(
  name varchar2(128)
);
/

type             w_Table_Name as object
(
  name varchar2(128)
);
/

type             w_Wrapper Force as object
(
  type char(1),
------------------------------------------------------------------------------------------------------
  member Function As_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return varchar2,
  member Function As_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return number,
  member Function As_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return date,
  member Function As_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return timestamp,
  member Function As_Array_Varchar2
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Varchar2,
  member Function As_Array_Number
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Number,
  member Function As_Array_Date
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Date,
  member Function As_Array_Timestamp
  (
    i_Format   varchar2 := null,
    i_Nlsparam varchar2 := null
  ) return Fazo_Schema.Array_Timestamp,
------------------------------------------------------------------------------------------------------
  member Function Is_Varchar2 return boolean,
  member Function Is_Number return boolean,
  member Function Is_Date return boolean,
  member Function Is_Timestamp return boolean,
  member Function Is_Array_Varchar2 return boolean,
  member Function Is_Array_Number return boolean,
  member Function Is_Array_Date return boolean,
  member Function Is_Array_Timestamp return boolean,
  member Function Is_Arraylist return boolean,
  member Function Is_Calc return boolean,
  member Function Is_Hashmap return boolean,
------------------------------------------------------------------------------------------------------
  not instantiable member Procedure Print_Json
  (
    self in Fazo_Schema.w_Wrapper,
    out  in out nocopy Fazo_Schema.Stream
  ),
  not instantiable member Function Json return varchar2
)
not instantiable not final;
/
