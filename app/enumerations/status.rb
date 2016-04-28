class Status < EnumerateIt::Base
  associate_values(
    active:   [1, 'Ativo'],
    inactive:  [0, 'Inativo']
  )
end