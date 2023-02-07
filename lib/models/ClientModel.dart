class ClientDataResponse {
  int? numero;
  String? nombre;
  String? apellidoPaterno;
  String? apellidoMaterno;
  int? diaNacimiento;
  int? mesNacimiento;
  int? anioNacimiento;
  String? contrasena;
  Null? fotografia;
  int? status;
  String? miembroDesde;
  bool? esFlotilla;
  Null? giro;
  bool? aceptoTerminosCondiciones;
  Null? observaciones;
  Null? razonSocial;
  Null? rfc;
  int? usoCfdi;
  int? regimenFiscal;
  Null? telefono1;
  Null? telefono2;
  String? correoElectronico1;
  Null? correoElectronico2;
  Null? calle;
  Null? numeroExterior;
  Null? numeroInterior;
  Null? colonia;
  Null? municipio;
  Null? localidad;
  int? estado;
  Null? codigoPostal;
  int? pais;
  Null? referencia;
  List<Tarjetas>? tarjetas;
  String? nombreCompleto;
  double? puntosTotales;
  Nivel? nivel;
  double? litros;
  Null? token;
  String? id;
  String? fechaCreacion;
  String? usuarioCreacionId;
  String? fechaEdicion;
  String? usuarioEdicionId;
  Null? fechaEliminacion;
  Null? usuarioEliminacionId;

  ClientDataResponse(
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

  ClientDataResponse.fromJson(Map<String, dynamic> json) {
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
    if (json['tarjetas'] != null) {
      tarjetas = <Tarjetas>[];
      json['tarjetas'].forEach((v) {
        tarjetas!.add(new Tarjetas.fromJson(v));
      });
    }
    nombreCompleto = json['nombreCompleto'];
    puntosTotales = json['puntosTotales'];
    nivel = json['nivel'] != null ? new Nivel.fromJson(json['nivel']) : null;
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
    if (tarjetas != null) {
      data['tarjetas'] = tarjetas!.map((v) => v.toJson()).toList();
    }
    data['nombreCompleto'] = nombreCompleto;
    data['puntosTotales'] = puntosTotales;
    if (nivel != null) {
      data['nivel'] = nivel!.toJson();
    }
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

class Tarjetas {
  String? numero;
  String? nip;
  String? lote;
  double? puntos;
  int? status;
  String? fechaExpedicion;
  String? fechaActivacion;
  String? fechaCaducidad;
  String? qr;
  String? fechaGeneracion;
  String? fechaVenta;
  String? sucursalId;
  String? clienteId;
  bool? digital;
  double? saldo;
  String? id;
  String? fechaCreacion;
  String? usuarioCreacionId;
  String? fechaEdicion;
  String? usuarioEdicionId;
  String? fechaEliminacion;
  String? usuarioEliminacionId;

  Tarjetas(
      {this.numero,
      this.nip,
      this.lote,
      this.puntos,
      this.status,
      this.fechaExpedicion,
      this.fechaActivacion,
      this.fechaCaducidad,
      this.qr,
      this.fechaGeneracion,
      this.fechaVenta,
      this.sucursalId,
      this.clienteId,
      this.digital,
      this.saldo,
      this.id,
      this.fechaCreacion,
      this.usuarioCreacionId,
      this.fechaEdicion,
      this.usuarioEdicionId,
      this.fechaEliminacion,
      this.usuarioEliminacionId});

  Tarjetas.fromJson(Map<String, dynamic> json) {
    numero = json['numero'];
    nip = json['nip'];
    lote = json['lote'];
    puntos = json['puntos'];
    status = json['status'];
    fechaExpedicion = json['fechaExpedicion'];
    fechaActivacion = json['fechaActivacion'];
    fechaCaducidad = json['fechaCaducidad'];
    qr = json['qr'];
    fechaGeneracion = json['fechaGeneracion'];
    fechaVenta = json['fechaVenta'];
    sucursalId = json['sucursalId'];
    clienteId = json['clienteId'];
    digital = json['digital'];
    saldo = json['saldo'];
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
    data['nip'] = nip;
    data['lote'] = lote;
    data['puntos'] = puntos;
    data['status'] = status;
    data['fechaExpedicion'] = fechaExpedicion;
    data['fechaActivacion'] = fechaActivacion;
    data['fechaCaducidad'] = fechaCaducidad;
    data['qr'] = qr;
    data['fechaGeneracion'] = fechaGeneracion;
    data['fechaVenta'] = fechaVenta;
    data['sucursalId'] = sucursalId;
    data['clienteId'] = clienteId;
    data['digital'] = digital;
    data['saldo'] = saldo;
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

class Nivel {
  String? nombre;
  int? cantidadLitrosMinimos;
  int? cantidadLitrosMaximos;
  int? status;
  Null? promociones;
  String? id;
  String? fechaCreacion;
  Null? usuarioCreacionId;
  String? fechaEdicion;
  String? usuarioEdicionId;
  Null? fechaEliminacion;
  Null? usuarioEliminacionId;

  Nivel(
      {this.nombre,
      this.cantidadLitrosMinimos,
      this.cantidadLitrosMaximos,
      this.status,
      this.promociones,
      this.id,
      this.fechaCreacion,
      this.usuarioCreacionId,
      this.fechaEdicion,
      this.usuarioEdicionId,
      this.fechaEliminacion,
      this.usuarioEliminacionId});

  Nivel.fromJson(Map<String, dynamic> json) {
    nombre = json['nombre'];
    cantidadLitrosMinimos = json['cantidadLitrosMinimos'];
    cantidadLitrosMaximos = json['cantidadLitrosMaximos'];
    status = json['status'];
    promociones = json['promociones'];
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
    data['nombre'] = nombre;
    data['cantidadLitrosMinimos'] = cantidadLitrosMinimos;
    data['cantidadLitrosMaximos'] = cantidadLitrosMaximos;
    data['status'] = status;
    data['promociones'] = promociones;
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
