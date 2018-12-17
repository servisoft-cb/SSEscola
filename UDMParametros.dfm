object DMParametros: TDMParametros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 393
  Width = 510
  object sdsParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARAMETROS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParametrosANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object sdsParametrosMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object sdsParametrosPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object sdsParametrosPERC_MULTA: TFloatField
      FieldName = 'PERC_MULTA'
    end
    object sdsParametrosDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object sdsParametrosQTDEVENTOSNORECIBO: TIntegerField
      FieldName = 'QTDEVENTOSNORECIBO'
    end
    object sdsParametrosTAMANHODARLBANDA: TIntegerField
      FieldName = 'TAMANHODARLBANDA'
    end
    object sdsParametrosTAMANHOAJUSTERLBANDA: TIntegerField
      FieldName = 'TAMANHOAJUSTERLBANDA'
    end
  end
  object dspParametros: TDataSetProvider
    DataSet = sdsParametros
    Left = 184
    Top = 48
  end
  object cdsParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspParametros'
    Left = 272
    Top = 48
    object cdsParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParametrosANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object cdsParametrosMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object cdsParametrosPERC_JUROS: TFloatField
      FieldName = 'PERC_JUROS'
    end
    object cdsParametrosPERC_MULTA: TFloatField
      FieldName = 'PERC_MULTA'
    end
    object cdsParametrosDIA_VENCIMENTO: TIntegerField
      FieldName = 'DIA_VENCIMENTO'
    end
    object cdsParametrosQTDEVENTOSNORECIBO: TIntegerField
      FieldName = 'QTDEVENTOSNORECIBO'
    end
    object cdsParametrosTAMANHODARLBANDA: TIntegerField
      FieldName = 'TAMANHODARLBANDA'
    end
    object cdsParametrosTAMANHOAJUSTERLBANDA: TIntegerField
      FieldName = 'TAMANHOAJUSTERLBANDA'
    end
  end
  object dsParametros: TDataSource
    DataSet = cdsParametros
    Left = 360
    Top = 48
  end
end
