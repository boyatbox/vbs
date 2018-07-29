Set objFeature = New Feature
objFeature.CustomerName="zzz"
msgbox objFeature.CustomerName
msgbox objFeature.Name

Class Feature

	private Name
		
	Public Property Let CustomerName(strName)
		Name = strName
	End Property
		
	Public Property Get CustomerName()
		CustomerName = Name
	End Property
	
	public function hi()
	end function
	
End Class


class scenario

end class