object DmVendas: TDmVendas
  OldCreateOrder = False
  Left = 1542
  Top = 172
  Height = 346
  Width = 341
  object con: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Password=passcode;Data Source=PostgreSQL35W;Initial Catalog=vend' +
      'as'
    LoginPrompt = False
    Left = 32
    Top = 96
  end
  object dsClientes: TDataSource
    Left = 672
    Top = 24
  end
  object dsCliente: TDataSource
    DataSet = tblCliente
    Left = 96
    Top = 128
  end
  object tblCliente: TADOQuery
    Connection = con
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM cliente')
    Left = 96
    Top = 48
    object atncfldClienteid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object wdstrngfldClientenome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object tblClientecodigo: TWideStringField
      FieldName = 'codigo'
      Size = 15
    end
  end
  object tblNotas: TADOQuery
    Connection = con
    Parameters = <>
    SQL.Strings = (
      
        'SELECT p.descricao as Descricao, p.valor, nF.dataNota as Data, i' +
        'Nota.quantidade as Quantidade, (iNota.quantidade * p.valor) as T' +
        'otal'
      'FROM cliente as c'
      #9'inner join notaFiscal as nF'
      #9#9'on nF.idCliente = c.id'
      #9'inner join itemNota as inota'
      #9#9'on inota.idNotaFiscal = nF.id'
      #9'inner join produto as p'
      #9#9'on p.id = inota.idProduto')
    Left = 168
    Top = 48
    object Descricao: TWideStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 30
    end
    object valor: TBCDField
      FieldName = 'valor'
      ReadOnly = True
      Precision = 28
      Size = 6
    end
    object data: TDateField
      FieldName = 'data'
      ReadOnly = True
    end
    object quantidade: TIntegerField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object total: TBCDField
      FieldName = 'total'
      ReadOnly = True
      Precision = 28
      Size = 2
    end
  end
  object dsNotas: TDataSource
    DataSet = tblNotas
    Left = 168
    Top = 128
  end
end
