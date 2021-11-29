
Pod::Spec.new do |s|
  s.name             = 'CPF_CNPJ_Validators'
  s.version          = '0.3.0'
  s.summary          = 'validate and mask cpf and cnpj'


  s.description      = <<-DESC
'This pod is use to validate and put mask in cpfs and cnpjs'
                       DESC

  s.homepage         = 'https://github.com/Roberto890/CPF-CNPJ-Validators'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Roberto890' => 'roberto.jesus.amaral@gmail.com' }
  s.source           = { :git => 'https://github.com/Roberto890/CPF-CNPJ-Validators.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.source_files = 'Source/*.swift'
  
  s.swift_version = '5.0'
  s.platforms = {
      "ios": "13.0"
  }

end
