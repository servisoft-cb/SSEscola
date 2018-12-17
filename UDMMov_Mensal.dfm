object DMMov_Mensal: TDMMov_Mensal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 272
  Top = 178
  Height = 415
  Width = 599
  object sdsMov_Mensal: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.*, A.NOME NOME_ALUNO, A.ENDERECO, A.CODCIDADE, A.CIDADE' +
      ', A.UF, A.CEP, A.BAIRRO, A.DDD, A.FONE, A.NOME_RESPONSAVEL, A.CP' +
      'F_REPONSAVEL, A.CODTURMA, A.DTNASCIMENTO, A.CODIGO CODALUNO'#13#10'FRO' +
      'M MOV_MENSAL M'#13#10'INNER JOIN ALUNO A'#13#10'ON M.ID_ALUNO = A.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 136
    Top = 40
    object sdsMov_MensalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMov_MensalDTGERACAO: TDateField
      FieldName = 'DTGERACAO'
    end
    object sdsMov_MensalOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMov_MensalID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object sdsMov_MensalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object sdsMov_MensalVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object sdsMov_MensalVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '0.00'
    end
    object sdsMov_MensalPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object sdsMov_MensalDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsMov_MensalVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      DisplayFormat = '0.00'
    end
    object sdsMov_MensalDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object sdsMov_MensalVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '0.00'
    end
    object sdsMov_MensalANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object sdsMov_MensalMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object sdsMov_MensalRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsMov_MensalNOME_ALUNO: TStringField
      FieldName = 'NOME_ALUNO'
      ProviderFlags = []
      Size = 50
    end
    object sdsMov_MensalENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object sdsMov_MensalCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      ProviderFlags = []
    end
    object sdsMov_MensalCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object sdsMov_MensalUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object sdsMov_MensalCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 8
    end
    object sdsMov_MensalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object sdsMov_MensalDDD: TIntegerField
      FieldName = 'DDD'
      ProviderFlags = []
    end
    object sdsMov_MensalFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 10
    end
    object sdsMov_MensalNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
    object sdsMov_MensalCPF_REPONSAVEL: TStringField
      FieldName = 'CPF_REPONSAVEL'
      ProviderFlags = []
      Size = 14
    end
    object sdsMov_MensalCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      ProviderFlags = []
    end
    object sdsMov_MensalDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = []
    end
    object sdsMov_MensalNOMEBANCO_PAG: TStringField
      FieldName = 'NOMEBANCO_PAG'
      Size = 10
    end
    object sdsMov_MensalNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsMov_MensalCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
      ProviderFlags = []
    end
  end
  object dspMov_Mensal: TDataSetProvider
    DataSet = sdsMov_Mensal
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 40
  end
  object cdsMov_Mensal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov_Mensal'
    Left = 304
    Top = 40
    object cdsMov_MensalID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMov_MensalDTGERACAO: TDateField
      FieldName = 'DTGERACAO'
    end
    object cdsMov_MensalOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMov_MensalID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object cdsMov_MensalVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsMov_MensalVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsMov_MensalVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '0.00'
    end
    object cdsMov_MensalPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object cdsMov_MensalDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsMov_MensalVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
      DisplayFormat = '0.00'
    end
    object cdsMov_MensalDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object cdsMov_MensalVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsMov_MensalANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object cdsMov_MensalMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object cdsMov_MensalNOME_ALUNO: TStringField
      FieldName = 'NOME_ALUNO'
      ProviderFlags = []
      Size = 50
    end
    object cdsMov_MensalENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsMov_MensalCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      ProviderFlags = []
    end
    object cdsMov_MensalCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object cdsMov_MensalUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsMov_MensalCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 8
    end
    object cdsMov_MensalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 30
    end
    object cdsMov_MensalDDD: TIntegerField
      FieldName = 'DDD'
      ProviderFlags = []
    end
    object cdsMov_MensalFONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = []
      Size = 10
    end
    object cdsMov_MensalNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
    object cdsMov_MensalCPF_REPONSAVEL: TStringField
      FieldName = 'CPF_REPONSAVEL'
      ProviderFlags = []
      Size = 14
    end
    object cdsMov_MensalCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
      ProviderFlags = []
    end
    object cdsMov_MensalDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      ProviderFlags = []
    end
    object cdsMov_MensalNOMEBANCO_PAG: TStringField
      FieldName = 'NOMEBANCO_PAG'
      Size = 10
    end
    object cdsMov_MensalNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsMov_MensalCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
      ProviderFlags = []
    end
    object cdsMov_MensalRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsMov_MensalsdsMov_Mensal_Eventos: TDataSetField
      FieldName = 'sdsMov_Mensal_Eventos'
    end
  end
  object dsMov_Mensal: TDataSource
    DataSet = cdsMov_Mensal
    Left = 376
    Top = 40
  end
  object dsMov_Mensal_Mestre: TDataSource
    DataSet = sdsMov_Mensal
    Left = 64
    Top = 88
  end
  object sdsMov_Mensal_Eventos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT M.*'#13#10'FROM MOV_MENSAL_EVENTOS M'#13#10'WHERE M.ID = :ID'
    DataSource = dsMov_Mensal_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 128
    Top = 160
    object sdsMov_Mensal_EventosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMov_Mensal_EventosITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsMov_Mensal_EventosID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object sdsMov_Mensal_EventosVLREVENTO: TFloatField
      FieldName = 'VLREVENTO'
    end
    object sdsMov_Mensal_EventosQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsMov_Mensal_EventosVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsMov_Mensal_EventosVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsMov_Mensal_EventosPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object sdsMov_Mensal_EventosANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object sdsMov_Mensal_EventosMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object sdsMov_Mensal_EventosTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
  end
  object cdsMov_Mensal_Eventos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMov_MensalsdsMov_Mensal_Eventos
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsMov_Mensal_EventosCalcFields
    Left = 256
    Top = 160
    object cdsMov_Mensal_EventosID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMov_Mensal_EventosITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsMov_Mensal_EventosID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object cdsMov_Mensal_EventosVLREVENTO: TFloatField
      FieldName = 'VLREVENTO'
      DisplayFormat = '0.00'
    end
    object cdsMov_Mensal_EventosQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsMov_Mensal_EventosVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsMov_Mensal_EventosVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsMov_Mensal_EventosPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
      DisplayFormat = '0.00'
    end
    object cdsMov_Mensal_EventosANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object cdsMov_Mensal_EventosMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object cdsMov_Mensal_EventosTESTE: TStringField
      FieldName = 'TESTE'
      Size = 10
    end
    object cdsMov_Mensal_EventosDESCONTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCONTO'
      Size = 1
      Calculated = True
    end
    object cdsMov_Mensal_EventosNOMEVENTO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOMEVENTO'
      Size = 30
      Calculated = True
    end
  end
  object dsMov_Mensal_Eventos: TDataSource
    DataSet = cdsMov_Mensal_Eventos
    Left = 360
    Top = 160
  end
  object qProximo_Item: TSQLDataSet
    CommandText = 
      'SELECT MAX(M.ITEM) ITEM'#13#10'FROM MOV_MENSAL_EVENTOS M'#13#10'WHERE M.ID =' +
      ' :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 240
    object qProximo_ItemITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object qEvento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM EVENTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 240
    Top = 240
    object qEventoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qEventoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object qEventoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qEventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object qEventoDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
  end
end
