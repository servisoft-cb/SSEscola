object DMFuncionario: TDMFuncionario
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 393
  Width = 510
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FUNCIONARIO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsFuncionarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsFuncionarioCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object sdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFuncionarioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFuncionarioDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object sdsFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sdsFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object sdsFuncionarioCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object sdsFuncionarioSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsFuncionarioPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object sdsFuncionarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsFuncionarioHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object sdsFuncionarioTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 1
    end
    object sdsFuncionarioVLRSALARIO: TFloatField
      FieldName = 'VLRSALARIO'
    end
    object sdsFuncionarioDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object sdsFuncionarioHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object sdsFuncionarioHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object sdsFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFuncionarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFuncionarioESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object sdsFuncionarioESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object sdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object sdsFuncionarioNOMECONJUGE: TStringField
      FieldName = 'NOMECONJUGE'
      Size = 40
    end
    object sdsFuncionarioNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
    object sdsFuncionarioNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object sdsFuncionarioNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object sdsFuncionarioENDFOTO: TStringField
      FieldName = 'ENDFOTO'
      Size = 250
    end
    object sdsFuncionarioCODCIDADENASC: TIntegerField
      FieldName = 'CODCIDADENASC'
    end
    object sdsFuncionarioNASCIONALIDADE: TStringField
      FieldName = 'NASCIONALIDADE'
      Size = 25
    end
    object sdsFuncionarioSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object sdsFuncionarioUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsFuncionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object sdsFuncionarioMOTIVOSAIDA: TMemoField
      FieldName = 'MOTIVOSAIDA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFuncionarioCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object sdsFuncionarioDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object sdsFuncionarioNUMPONTO: TIntegerField
      FieldName = 'NUMPONTO'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 208
    Top = 48
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 272
    Top = 48
    object cdsFuncionarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsFuncionarioCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsFuncionarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object cdsFuncionarioCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFuncionarioFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFuncionarioDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object cdsFuncionarioCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsFuncionarioRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object cdsFuncionarioCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object cdsFuncionarioSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsFuncionarioPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object cdsFuncionarioDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsFuncionarioHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object cdsFuncionarioTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 1
    end
    object cdsFuncionarioVLRSALARIO: TFloatField
      FieldName = 'VLRSALARIO'
    end
    object cdsFuncionarioDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object cdsFuncionarioHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object cdsFuncionarioHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object cdsFuncionarioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFuncionarioOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFuncionarioESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object cdsFuncionarioESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object cdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object cdsFuncionarioNOMECONJUGE: TStringField
      FieldName = 'NOMECONJUGE'
      Size = 40
    end
    object cdsFuncionarioNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
    object cdsFuncionarioNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object cdsFuncionarioNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object cdsFuncionarioENDFOTO: TStringField
      FieldName = 'ENDFOTO'
      Size = 250
    end
    object cdsFuncionarioCODCIDADENASC: TIntegerField
      FieldName = 'CODCIDADENASC'
    end
    object cdsFuncionarioNASCIONALIDADE: TStringField
      FieldName = 'NASCIONALIDADE'
      Size = 25
    end
    object cdsFuncionarioSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object cdsFuncionarioUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsFuncionarioCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cdsFuncionarioMOTIVOSAIDA: TMemoField
      FieldName = 'MOTIVOSAIDA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFuncionarioCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsFuncionarioDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsFuncionarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object cdsFuncionarioNUMPONTO: TIntegerField
      FieldName = 'NUMPONTO'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 360
    Top = 48
  end
end
