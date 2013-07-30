VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Setting"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Public MaxSensorNum As Integer

Private calI    As Object
Private rL      As Object
Private calH    As Object
Private airD    As Object
Private useS    As Object
Private autoR   As Object
Private s       As Object
Private mD      As Object

Public Function init(oS As Object)
    MaxSensorNum = 20
    
    Set calI = oS.Range("B2")
    
    Set rL = oS.Range("F2")
    Set calH = oS.Range("F3")
    Set airD = oS.Range("F4")
    Set useS = oS.Range("F5")
    Set autoR = oS.Range("F6")
    Set s = oS.Range("F7")
    Set mD = oS.Range("F8")
End Function


'
' CalID
' �ĵ����
Public Property Get CalID() As Integer
    CalID = calI.Value
End Property
Public Property Let CalID(ByVal v As Integer)
    calI.Value = v
End Property

'
' RLostMethod
' �޶�ȱʧ���ݵķ���: avg | random
Public Property Get RLostMethod() As String
    RLostMethod = rL.Value
End Property
Public Property Let RLostMethod(ByVal v As String)
    rL.Value = v
End Property

' CalHeight
' ��챼���߶�
Public Property Get CalHeight() As String
    CalHeight = calH.Value
End Property
Public Property Let CalHeight(ByVal v As String)
    calH.Value = v
End Property

' AirDensity
' �����ܶ�
Public Property Get AirDensity() As String
    AirDensity = airD.Value
End Property
Public Property Let AirDensity(ByVal v As String)
    airD.Value = v
End Property

' UseSetAD
' ǿ��ʹ�ÿ����ܶ��趨ֵ
Public Property Get UseSetAD() As Boolean
    UseSetAD = useS.Value
End Property
Public Property Let UseSetAD(ByVal v As Boolean)
    useS.Value = v
End Property

' AutoRevise
' �Զ��޶�
Public Property Get AutoRevise() As Boolean
    AutoRevise = autoR.Value
End Property
Public Property Let AutoRevise(ByVal v As Boolean)
    autoR.Value = v
End Property

' Separate
' ��վ�����
Public Property Get Separate() As Boolean
    Separate = s.Value
End Property
Public Property Let Separate(ByVal v As Boolean)
    s.Value = v
End Property

' MDH
' ʱ��ڵ�
Public Property Get MDH() As String
    MDH = mD.Value
End Property
Public Property Let MDH(ByVal v As String)
    mD.Value = v
End Property
