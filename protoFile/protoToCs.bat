
 @rem �Ը�Ŀ¼��ÿ��*.prot�ļ� ������Ӧ��cs�ļ���ָ��Ŀ¼����Ҫָ���Լ���Ŀ¼�� 
 for %%j in (*.proto) do ( 
  echo %%j
 

protogen -i:"%%j" -o:E:\LeVRSVN\Levr_code\Unity_New\LEVRPro_Develop\Assets\Scripts\Data\ProtocolData\%%~nj.cs 

)


@echo off
del UnPackTool.cs
protoEnumParse
@rem ��Ҫָ���Լ���Ŀ¼
copy /y  UnPackTool.cs "E:\LeVRSVN\Levr_code\Unity_New\LEVRPro_Develop\Assets\Scripts\Core\NetWork\UnPackTool.cs"