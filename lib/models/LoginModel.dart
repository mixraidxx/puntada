class LoginResponse {
  int? numero;
  String? nombre;
  String? apellidoPaterno;
  String? apellidoMaterno;
  int? diaNacimiento;
  int? mesNacimiento;
  int? anioNacimiento;
  String? contrasena;
  String? fotografia;
  int? status;
  String? miembroDesde;
  bool? esFlotilla;
  String? giro;
  bool? aceptoTerminosCondiciones;
  String? observaciones;
  String? razonSocial;
  String? rfc;
  int? usoCfdi;
  int? regimenFiscal;
  String? telefono1;
  String? telefono2;
  String? correoElectronico1;
  String? correoElectronico2;
  String? calle;
  String? numeroExterior;
  String? numeroInterior;
  String? colonia;
  String? municipio;
  String? localidad;
  int? estado;
  String? codigoPostal;
  int? pais;
  String? referencia;
  String? tarjetas;
  String? nombreCompleto;
  double? puntosTotales;
  String? nivel;
  double? litros;
  String? token;
  String? id;
  String? fechaCreacion;
  String? usuarioCreacionId;
  String? fechaEdicion;
  String? usuarioEdicionId;
  String? fechaEliminacion;
  String? usuarioEliminacionId;

  LoginResponse(
      {this.numero,
      this.nombre,
      this.apellidoPaterno,
      this.apellidoMaterno,
      this.diaNacimiento,
      this.mesNacimiento,
      this.anioNacimiento,
      this.contrasena,
      this.fotografia,
      this.status,
      this.miembroDesde,
      this.esFlotilla,
      this.giro,
      this.aceptoTerminosCondiciones,
      this.observaciones,
      this.razonSocial,
      this.rfc,
      this.usoCfdi,
      this.regimenFiscal,
      this.telefono1,
      this.telefono2,
      this.correoElectronico1,
      this.correoElectronico2,
      this.calle,
      this.numeroExterior,
      this.numeroInterior,
      this.colonia,
      this.municipio,
      this.localidad,
      this.estado,
      this.codigoPostal,
      this.pais,
      this.referencia,
      this.tarjetas,
      this.nombreCompleto,
      this.puntosTotales,
      this.nivel,
      this.litros,
      this.token,
      this.id,
      this.fechaCreacion,
      this.usuarioCreacionId,
      this.fechaEdicion,
      this.usuarioEdicionId,
      this.fechaEliminacion,
      this.usuarioEliminacionId});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    numero = json['numero'];
    nombre = json['nombre'];
    apellidoPaterno = json['apellidoPaterno'];
    apellidoMaterno = json['apellidoMaterno'];
    diaNacimiento = json['diaNacimiento'];
    mesNacimiento = json['mesNacimiento'];
    anioNacimiento = json['anioNacimiento'];
    contrasena = json['contrasena'];
    fotografia = json['fotografia'];
    status = json['status'];
    miembroDesde = json['miembroDesde'];
    esFlotilla = json['esFlotilla'];
    giro = json['giro'];
    aceptoTerminosCondiciones = json['aceptoTerminosCondiciones'];
    observaciones = json['observaciones'];
    razonSocial = json['razonSocial'];
    rfc = json['rfc'];
    usoCfdi = json['usoCfdi'];
    regimenFiscal = json['regimenFiscal'];
    telefono1 = json['telefono1'];
    telefono2 = json['telefono2'];
    correoElectronico1 = json['correoElectronico1'];
    correoElectronico2 = json['correoElectronico2'];
    calle = json['calle'];
    numeroExterior = json['numeroExterior'];
    numeroInterior = json['numeroInterior'];
    colonia = json['colonia'];
    municipio = json['municipio'];
    localidad = json['localidad'];
    estado = json['estado'];
    codigoPostal = json['codigoPostal'];
    pais = json['pais'];
    referencia = json['referencia'];
    tarjetas = json['tarjetas'];
    nombreCompleto = json['nombreCompleto'];
    puntosTotales = json['puntosTotales'];
    nivel = json['nivel'];
    litros = json['litros'];
    token = json['token'];
    id = json['id'];
    fechaCreacion = json['fechaCreacion'];
    usuarioCreacionId = json['usuarioCreacionId'];
    fechaEdicion = json['fechaEdicion'];
    usuarioEdicionId = json['usuarioEdicionId'];
    fechaEliminacion = json['fechaEliminacion'];
    usuarioEliminacionId = json['usuarioEliminacionId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['numero'] = numero;
    data['nombre'] = nombre;
    data['apellidoPaterno'] = apellidoPaterno;
    data['apellidoMaterno'] = apellidoMaterno;
    data['diaNacimiento'] = diaNacimiento;
    data['mesNacimiento'] = mesNacimiento;
    data['anioNacimiento'] = anioNacimiento;
    data['contrasena'] = contrasena;
    data['fotografia'] = fotografia;
    data['status'] = status;
    data['miembroDesde'] = miembroDesde;
    data['esFlotilla'] = esFlotilla;
    data['giro'] = giro;
    data['aceptoTerminosCondiciones'] = aceptoTerminosCondiciones;
    data['observaciones'] = observaciones;
    data['razonSocial'] = razonSocial;
    data['rfc'] = rfc;
    data['usoCfdi'] = usoCfdi;
    data['regimenFiscal'] = regimenFiscal;
    data['telefono1'] = telefono1;
    data['telefono2'] = telefono2;
    data['correoElectronico1'] = correoElectronico1;
    data['correoElectronico2'] = correoElectronico2;
    data['calle'] = calle;
    data['numeroExterior'] = numeroExterior;
    data['numeroInterior'] = numeroInterior;
    data['colonia'] = colonia;
    data['municipio'] = municipio;
    data['localidad'] = localidad;
    data['estado'] = estado;
    data['codigoPostal'] = codigoPostal;
    data['pais'] = pais;
    data['referencia'] = referencia;
    data['tarjetas'] = tarjetas;
    data['nombreCompleto'] = nombreCompleto;
    data['puntosTotales'] = puntosTotales;
    data['nivel'] = nivel;
    data['litros'] = litros;
    data['token'] = token;
    data['id'] = id;
    data['fechaCreacion'] = fechaCreacion;
    data['usuarioCreacionId'] = usuarioCreacionId;
    data['fechaEdicion'] = fechaEdicion;
    data['usuarioEdicionId'] = usuarioEdicionId;
    data['fechaEliminacion'] = fechaEliminacion;
    data['usuarioEliminacionId'] = usuarioEliminacionId;
    return data;
  }
}
