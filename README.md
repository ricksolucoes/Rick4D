[0]: https://github.com/ricksolucoes/boss "Site do BOOS"
[1]: https://github.com/ricksolucoes/RICK4D "Site do RICK4D"
[2]: https://github.com/ricksolucoes/RICKShowForm "Site do Show Form"
[3]: https://github.com/ricksolucoes/RICKLoading "Site do Loading"

# RICK4D

**RICK4D** is a collection of Delphi libraries, based mainly on those developed at **RICKSolutions** and may contain third-party libraries. Using delphi's Fluent Interface.

##  📘 Library Functions

- **[ShowForm](#sample-show-form)** it was inspired by [RICKShowForm][2] where you can open a form as well as perform procedures before and after the opening.
- **[Loading](#loading)** It was inspired by [RICKLoading][3], which features a loading screen that can be customized.

## ⚙️ Pre-requisites

1. Delphi FMX
2. Install the dependency [BOOS][0] ```https://github.com/ricksolucoes/boss``` manager to facilitate the installation of the library.

## 💻 Installation

- By using BOOS
```shell
$ boss install https://github.com/ricksolucoes/RICK4D
```
- Manual Installation
  - Download the middleware:
    - [RICK4D][1] ``` https://github.com/ricksolucoes/RICK4D ```
    - [RICKShowForm][2] ``` https://github.com/ricksolucoes/RICKShowForm ```
    - [RICKLoading][3] ``` https://github.com/ricksolucoes/RICKLoading ```
  - Add the following folders to your project, in <em>Project &gt; Options &gt; Resource Compiler &gt; Directories and Conditionals &gt; Include file search path
    - ``` ../RICK4D/src ```
    - ``` ../RICKShowForm/src ```
    - ``` ../RICKLoading/src ```

## ⚡️ How to use the project
Example of using the **RICK4D** library

## Sample Show Form

- How to show a form
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .ShowForm //Enable the Middleware
          .Formulary(TPageView2) //Inform the form's class
          .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
          .ExecuteAfter(AfterShowClose) //Procedure to be performed after show form
          .ChangeDefaultMainForm //Set the specified form as the main form
        .Show;  //Open the formulary
  end;
```
- How to show two or more forms
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .ShowForm //Enable the Middleware
          .Formulary(TPageView2) //Inform the form's class
          .ExecuteBefore(BeforeShow) //Procedure to be performed before show form
          .ExecuteAfter(AfterShow) //Procedure to be performed after show form
        .Show //Open the formulary
        .ShowOther //Prepare new form to show
          .Formulary(TPageView3) //Inform the form's class
        .Show;  //Open the formulary}
  end;
```
## Loading

- How to use Loading
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Loading
          .Execute("Create Procedure");
  end;
```
- Another way to perform Loading
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Loading
          .Execute(
            procedure
            begin
              // Delayed Command
              Sleep(500);
              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  // Command to refresh the screen
                  ShowMessage('Command to refresh the screen here...');
                end);
            end);
    end;
```

- Modify the Loading message
```delphi  
  uses
    RICK4D;
  begin
    TRICK4D
      .New
        .Loading
          .Execute(
            procedure
            begin
              // Delayed Command
              Sleep(500);

              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  TRICK4D.New.Loading.ChangeMessage('Changing message');
                  // Change the message to the user
                end);

              // Another command if there is one
              TThread.Sleep(1500);

              TThread.Synchronize(TThread.Current,
                procedure
                begin
                  // Command to refresh the screen
                  ShowMessage('Command to refresh the screen here...');
                end);
            end);
    end;
```
  
- Customize the Loading screen using the interface
```delphi  
  uses
    RICK4D,
    RICK4D.Interfaces;
  begin
    LRICK4D:= TRICK4D.New;
    LRICK4D.Loading.DoMessage('Loading Modified'); //Changes the initial loading message
    LRICK4D.Loading.SourceSize(32); //Change the font size
    LRICK4D.Loading.SourceName('Segoe UI'); //Change the font type
    LRICK4D.Loading.SourceColor($FFF52121); //Change the font color
    LRICK4D.Loading.AnimationColor($FFF52121); //Changes the color of the animation
    LRICK4D.Loading.BackgroundColor($FF24CCC6); //Changes the color of the loading background
    LRICK4D.Loading.OpacityBackground(0.9); //Changes the opacity of the background;
    LRICK4D.Loading.OpacityAnimationText(0.6); //Change the opacity of text

    LRICK4D.Loading.Execute(
    procedure
    begin

      TThread.Sleep(500);

      TThread.Synchronize(TThread.Current,
      procedure
      begin
        LRICK4D.Loading.ChangeMessage('Changing message'); //Change the message to the user
      end);

      TThread.Sleep(1500);


      TThread.Synchronize(TThread.Current,
      procedure
      begin
        ShowMessage('Command to refresh the screen here...');
      end);
    end);
  end;
```
  
