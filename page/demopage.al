page 58888 "Demo Series Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Demo Series";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    trigger OnAssistEdit()
                    begin
                        if Rec."No." = '' then begin
                            if numberSeries.SelectSeries('demo', xRec."No.", Rec."No.") then begin
                                numberSeries.SetSeries(Rec."No.");
                            end

                        end
                    end;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        numberSeries: Codeunit NoSeriesManagement;
}