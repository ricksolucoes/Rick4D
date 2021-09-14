unit RICK4D;

interface
uses
  RICK4D.Interfaces;
type
  TRICK4D = class(TInterfacedObject, iRICK4D)
  private
    FShowForm : iRICK4DShowForm;
    FLoading : iRICK4DLoading;
    FLibrarys : iRICK4DLibrarys;
    FCheckConnection : iRICK4DCheckConnection;
    FFormat: iRICK4DFormat;

    function ShowForm : iRICK4DShowForm;
    function Loading : iRICK4DLoading;
    function Librarys : iRICK4DLibrarys;
    function CheckConnection : iRICK4DCheckConnection;
    function Format : iRICK4DFormat;

    constructor Create;
  public
    class function New: iRICK4D;
    destructor Destroy; override;
  end;

implementation

uses
  RICK4D.Format,
  RICK4D.Loading,
  RICK4D.ShowForm,
  RICK4D.Librarys,
  RICK4D.CheckConnection;


{ TRICK4D }

function TRICK4D.CheckConnection: iRICK4DCheckConnection;
begin
   if not Assigned(FCheckConnection) then
    FCheckConnection := TRICK4DCheckConnection.New(Self);

  Result := FCheckConnection;

end;

constructor TRICK4D.Create;
begin

end;

destructor TRICK4D.Destroy;
begin

  inherited;
end;

function TRICK4D.Format: iRICK4DFormat;
begin
   if not Assigned(FFormat) then
    FFormat := TRICK4DFormat.New(Self);

  Result := FFormat;
end;

function TRICK4D.Librarys: iRICK4DLibrarys;
begin
   if not Assigned(FLibrarys) then
    FLibrarys := TRICK4DLibrarys.New(Self);

  Result := FLibrarys;
end;

function TRICK4D.Loading: iRICK4DLoading;
begin
  if not Assigned(FLoading) then
    FLoading := TRICK4DLoading.New(Self);

  Result := FLoading;

end;

class function TRICK4D.New: iRICK4D;
begin
  Result:= Self.Create;
end;

function TRICK4D.ShowForm: iRICK4DShowForm;
begin
  if not Assigned(FShowForm) then
    FShowForm := TRICK4DShowForm.New(Self);

  Result := FShowForm;
end;

end.
