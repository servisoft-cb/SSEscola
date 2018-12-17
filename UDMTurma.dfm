object DMTurma: TDMTurma
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 393
  Width = 510
  object sdsTurma: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TURMA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsTurmaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsTurmaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsTurmaDADOS_ALIMENTARES: TMemoField
      FieldName = 'DADOS_ALIMENTARES'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTurmaDADOS_ROTINA: TMemoField
      FieldName = 'DADOS_ROTINA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsTurmaCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object sdsTurmaIDADE_INICIAL_ANOS: TIntegerField
      FieldName = 'IDADE_INICIAL_ANOS'
    end
    object sdsTurmaIDADE_INICIAL_MESES: TIntegerField
      FieldName = 'IDADE_INICIAL_MESES'
    end
    object sdsTurmaIDADE_FINAL_ANOS: TIntegerField
      FieldName = 'IDADE_FINAL_ANOS'
    end
    object sdsTurmaIDADE_FINAL_MESES: TIntegerField
      FieldName = 'IDADE_FINAL_MESES'
    end
  end
  object dspTurma: TDataSetProvider
    DataSet = sdsTurma
    Left = 208
    Top = 48
  end
  object cdsTurma: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTurma'
    Left = 272
    Top = 48
    object cdsTurmaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTurmaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsTurmaDADOS_ALIMENTARES: TMemoField
      FieldName = 'DADOS_ALIMENTARES'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTurmaDADOS_ROTINA: TMemoField
      FieldName = 'DADOS_ROTINA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsTurmaCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
    end
    object cdsTurmaIDADE_INICIAL_ANOS: TIntegerField
      FieldName = 'IDADE_INICIAL_ANOS'
    end
    object cdsTurmaIDADE_INICIAL_MESES: TIntegerField
      FieldName = 'IDADE_INICIAL_MESES'
    end
    object cdsTurmaIDADE_FINAL_ANOS: TIntegerField
      FieldName = 'IDADE_FINAL_ANOS'
    end
    object cdsTurmaIDADE_FINAL_MESES: TIntegerField
      FieldName = 'IDADE_FINAL_MESES'
    end
  end
  object dsTurma: TDataSource
    DataSet = cdsTurma
    Left = 360
    Top = 48
  end
end
