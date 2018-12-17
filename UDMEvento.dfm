object DMEvento: TDMEvento
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 393
  Width = 510
  object sdsEvento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM EVENTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsEventoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsEventoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsEventoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsEventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsEventoDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
  end
  object dspEvento: TDataSetProvider
    DataSet = sdsEvento
    Left = 208
    Top = 48
  end
  object cdsEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEvento'
    Left = 272
    Top = 48
    object cdsEventoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEventoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsEventoVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsEventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsEventoDESCONTO: TStringField
      FieldName = 'DESCONTO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEvento: TDataSource
    DataSet = cdsEvento
    Left = 360
    Top = 48
  end
end
