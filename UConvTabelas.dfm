object fConvTabelas: TfConvTabelas
  Left = 124
  Top = 187
  Width = 696
  Height = 480
  Caption = 'fConvTabelas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 80
    Top = 104
    Width = 211
    Height = 25
    Caption = 'Converter Alunos'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 80
    Top = 143
    Width = 211
    Height = 28
    Caption = 'Converter Atividades'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object ProgressBar1: TProgressBar
    Left = 112
    Top = 288
    Width = 353
    Height = 17
    TabOrder = 2
  end
  object BitBtn3: TBitBtn
    Left = 80
    Top = 64
    Width = 211
    Height = 25
    Caption = 'Converter Cidade'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 80
    Top = 191
    Width = 211
    Height = 28
    Caption = 'Gerar a Trigger'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 80
    Top = 239
    Width = 211
    Height = 28
    Caption = 'Gravar Item na tabela de mov. eventos'
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object tAlunos: TTable
    DatabaseName = 'GenteMoleque'
    TableName = 'Alunos.DB'
    Left = 296
    Top = 112
    object tAlunosMatricula: TAutoIncField
      FieldName = 'Matricula'
      ReadOnly = True
    end
    object tAlunosNome_Aluno: TStringField
      FieldName = 'Nome_Aluno'
      Size = 40
    end
    object tAlunosNome_Responsa: TStringField
      FieldName = 'Nome_Responsa'
      Size = 40
    end
    object tAlunosCPF_Responsa: TStringField
      FieldName = 'CPF_Responsa'
      Size = 14
    end
    object tAlunosEnder_Aluno: TStringField
      FieldName = 'Ender_Aluno'
      Size = 40
    end
    object tAlunosBairro: TStringField
      FieldName = 'Bairro'
      Size = 25
    end
    object tAlunosCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object tAlunosCidade: TStringField
      FieldName = 'Cidade'
    end
    object tAlunosTelefones: TStringField
      FieldName = 'Telefones'
      Size = 40
    end
    object tAlunosNome_Pediatra: TStringField
      FieldName = 'Nome_Pediatra'
      Size = 40
    end
    object tAlunosTel_Pediatra: TStringField
      FieldName = 'Tel_Pediatra'
    end
    object tAlunosFrequencia: TMemoField
      FieldName = 'Frequencia'
      BlobType = ftMemo
      Size = 1
    end
    object tAlunosCob_Doc: TStringField
      FieldName = 'Cob_Doc'
      Size = 1
    end
    object tAlunosOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object tAtividades: TTable
    DatabaseName = 'GenteMoleque'
    TableName = 'Atividades.DB'
    Left = 296
    Top = 152
    object tAtividadesCod_Atividade: TAutoIncField
      FieldName = 'Cod_Atividade'
      ReadOnly = True
    end
    object tAtividadesNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object tAtividadesVl_Unitario: TCurrencyField
      FieldName = 'Vl_Unitario'
    end
  end
  object tCidade: TTable
    DatabaseName = 'SSBasico'
    TableName = 'dbCidade.DB'
    Left = 296
    Top = 64
    object tCidadeCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tCidadeNome: TStringField
      FieldName = 'Nome'
      Size = 26
    end
    object tCidadeEstado: TStringField
      FieldName = 'Estado'
      Size = 2
    end
    object tCidadePrefixo: TStringField
      FieldName = 'Prefixo'
      Size = 3
    end
    object tCidadeCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object tCidadeCodMunicipio: TStringField
      FieldName = 'CodMunicipio'
      Size = 7
    end
  end
end
