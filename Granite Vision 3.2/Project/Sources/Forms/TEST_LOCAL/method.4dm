var $event : Object
$event:=FORM Event:C1606

Case of 
	: ($event.code=On Load:K2:1)
		
		If (Not:C34(OB Instance of:C1731(Form:C1466; cs:C1710._Agent)))
			OBJECT SET VISIBLE:C603(*; "@"; False:C215)
			return 
		End if 
		
		//Form.systemPrompt:="You are a helpful assistant."
		Form:C1466.r1:=True:C214
		Form:C1466.r2:=False:C215
		var $image : Picture
		READ PICTURE FILE:C678(File:C1566("/RESOURCES/chart.png").platformPath; $image)
		Form:C1466.userPrompt:="Describe the main trends and key values shown in this chart."
		Form:C1466.image:=$image
		Form:C1466.focusUserPrompt().clearConversation()
		
	: ($event.code=On After Edit:K2:43)
		
		Form:C1466.onAfterEdit()
		
	: ($event.code=On Unload:K2:2)
		
End case 