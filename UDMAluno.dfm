object DMAluno: TDMAluno
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 287
  Top = 195
  Height = 393
  Width = 510
  object sdsAluno: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ALUNO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 48
    object sdsAlunoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsAlunoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object sdsAlunoCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsAlunoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsAlunoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsAlunoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsAlunoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object sdsAlunoNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object sdsAlunoCPF_PAI: TStringField
      FieldName = 'CPF_PAI'
      Size = 14
    end
    object sdsAlunoFONE_PAI: TStringField
      FieldName = 'FONE_PAI'
      Size = 10
    end
    object sdsAlunoNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object sdsAlunoCPF_MAE: TStringField
      FieldName = 'CPF_MAE'
      Size = 14
    end
    object sdsAlunoFONE_MAE: TStringField
      FieldName = 'FONE_MAE'
      Size = 10
    end
    object sdsAlunoTIPOCPF: TStringField
      FieldName = 'TIPOCPF'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      Size = 50
    end
    object sdsAlunoCPF_REPONSAVEL: TStringField
      FieldName = 'CPF_REPONSAVEL'
      Size = 14
    end
    object sdsAlunoDIACOBRANCA: TIntegerField
      FieldName = 'DIACOBRANCA'
    end
    object sdsAlunoCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object sdsAlunoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAlunoTIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoDTINATIVO: TDateField
      FieldName = 'DTINATIVO'
    end
    object sdsAlunoDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsAlunoPOSSUE_OBSMEDICA: TStringField
      FieldName = 'POSSUE_OBSMEDICA'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoOBS_FREQUENCIA: TMemoField
      FieldName = 'OBS_FREQUENCIA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAlunoMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object sdsAlunoANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object sdsAlunoMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object sdsAlunoANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object sdsAlunoDDD_PAI: TIntegerField
      FieldName = 'DDD_PAI'
    end
    object sdsAlunoDDD_MAE: TIntegerField
      FieldName = 'DDD_MAE'
    end
    object sdsAlunoOBS_MEDICA: TMemoField
      FieldName = 'OBS_MEDICA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAlunoRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object sdsAlunoSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsAlunoPOSSUE_OBSNUTRICIONAIS: TStringField
      FieldName = 'POSSUE_OBSNUTRICIONAIS'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoOBS_NUTRICIONAIS: TMemoField
      FieldName = 'OBS_NUTRICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspAluno: TDataSetProvider
    DataSet = sdsAluno
    Left = 208
    Top = 48
  end
  object cdsAluno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAluno'
    BeforePost = cdsAlunoBeforePost
    OnNewRecord = cdsAlunoNewRecord
    Left = 272
    Top = 48
    object cdsAlunoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAlunoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsAlunoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAlunoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsAlunoCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsAlunoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsAlunoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsAlunoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsAlunoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsAlunoDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsAlunoFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object cdsAlunoNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object cdsAlunoCPF_PAI: TStringField
      FieldName = 'CPF_PAI'
      Size = 14
    end
    object cdsAlunoFONE_PAI: TStringField
      FieldName = 'FONE_PAI'
      Size = 10
    end
    object cdsAlunoNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object cdsAlunoCPF_MAE: TStringField
      FieldName = 'CPF_MAE'
      Size = 14
    end
    object cdsAlunoFONE_MAE: TStringField
      FieldName = 'FONE_MAE'
      Size = 10
    end
    object cdsAlunoTIPOCPF: TStringField
      FieldName = 'TIPOCPF'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      Size = 50
    end
    object cdsAlunoCPF_REPONSAVEL: TStringField
      FieldName = 'CPF_REPONSAVEL'
      Size = 14
    end
    object cdsAlunoDIACOBRANCA: TIntegerField
      FieldName = 'DIACOBRANCA'
    end
    object cdsAlunoCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsAlunoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoTIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoDTINATIVO: TDateField
      FieldName = 'DTINATIVO'
    end
    object cdsAlunoDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsAlunoPOSSUE_OBSMEDICA: TStringField
      FieldName = 'POSSUE_OBSMEDICA'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoOBS_FREQUENCIA: TMemoField
      FieldName = 'OBS_FREQUENCIA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object cdsAlunoANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object cdsAlunoMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object cdsAlunoANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object cdsAlunoDDD_PAI: TIntegerField
      FieldName = 'DDD_PAI'
    end
    object cdsAlunoDDD_MAE: TIntegerField
      FieldName = 'DDD_MAE'
    end
    object cdsAlunoOBS_MEDICA: TMemoField
      FieldName = 'OBS_MEDICA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object cdsAlunoSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsAlunoPOSSUE_OBSNUTRICIONAIS: TStringField
      FieldName = 'POSSUE_OBSNUTRICIONAIS'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoOBS_NUTRICIONAIS: TMemoField
      FieldName = 'OBS_NUTRICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunosdsAluno_Evento: TDataSetField
      FieldName = 'sdsAluno_Evento'
    end
  end
  object dsAluno: TDataSource
    DataSet = cdsAluno
    Left = 360
    Top = 48
  end
  object dsAluno_Mestre: TDataSource
    DataSet = sdsAluno
    Left = 40
    Top = 96
  end
  object sdsAluno_Evento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AE.*, E.NOME NOMEEVENTO, E.VALOR VALOREVENTO'#13#10'FROM ALUNO_' +
      'EVENTO AE'#13#10'INNER JOIN EVENTO E'#13#10'  ON AE.CODEVENTO = E.ID'#13#10'WHERE ' +
      'AE.ID = :ID'#13#10' '
    DataSource = dsAluno_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 112
    Top = 184
    object sdsAluno_EventoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAluno_EventoCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsAluno_EventoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsAluno_EventoDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsAluno_EventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAluno_EventoNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      ProviderFlags = []
      Size = 30
    end
    object sdsAluno_EventoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsAluno_EventoANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object sdsAluno_EventoMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object sdsAluno_EventoANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object sdsAluno_EventoMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object sdsAluno_EventoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsAluno_EventoVALOREVENTO: TFloatField
      FieldName = 'VALOREVENTO'
      ProviderFlags = []
    end
  end
  object cdsAluno_Evento: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAlunosdsAluno_Evento
    Params = <>
    Left = 216
    Top = 184
    object cdsAluno_EventoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAluno_EventoCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
      Required = True
    end
    object cdsAluno_EventoVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsAluno_EventoDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsAluno_EventoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAluno_EventoDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsAluno_EventoANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object cdsAluno_EventoMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object cdsAluno_EventoANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object cdsAluno_EventoMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object cdsAluno_EventoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsAluno_EventoNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      ProviderFlags = []
      Size = 30
    end
    object cdsAluno_EventoVALOREVENTO: TFloatField
      FieldName = 'VALOREVENTO'
      ProviderFlags = []
    end
  end
  object dsAluno_Evento: TDataSource
    DataSet = cdsAluno_Evento
    Left = 328
    Top = 184
  end
end
