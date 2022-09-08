unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Colorful,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxPC, cxClasses, dxSkinsForm,dxSkinsLookAndFeelPainter,
  Vcl.Menus, cxButtons;

type
  TForm5 = class(TForm)
    dxSkinController1: TdxSkinController;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxLookAndFeelController1: TcxLookAndFeelController;
    cxComboBox1: TcxComboBox;
    cxButton1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses dxSkinInfo;
{$R *.dfm}

procedure TForm5.cxButton1Click(Sender: TObject);
begin
  cxLookAndFeelController1.NativeStyle := False;
  cxLookAndFeelController1.SkinName := cxComboBox1.Text;
  cxPageControl1.LookAndFeel.SkinName :=  cxComboBox1.Text;;
  cxComboBox1.Style.LookAndFeel.SkinName  := cxComboBox1.Text;
  cxbutton1.LookAndFeel.SkinName := cxComboBox1.Text;



end;

procedure TForm5.FormCreate(Sender: TObject);
var
   ASkinInfo: TdxSkinInfo;
   I : Integer;
begin
      if RootLookAndFeel.Painter.GetPainterData(ASkinInfo) then
      begin
         for I := 0 to  cxLookAndFeelPaintersManager.Count - 1 do
          if cxLookAndFeelPaintersManager.Items[I] is TdxSkinLookAndFeelPainter then
            cxComboBox1.Properties.Items.Add(cxLookAndFeelPaintersManager.Items[I].LookAndFeelName);
      end;
end;

end.
