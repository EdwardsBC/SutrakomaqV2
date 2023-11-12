from datetime import datetime
import mysql.connector
import configparser
import json
import os

def get_config():
    with open('config.json') as file:
        config = json.load(file)
    return config

def connection():
    config = get_config()
    db_host = config['host']
    db_port = config['port']
    db_name = config['db']
    db_user = config["usuario"]
    db_password = config['password']
    try:
        conn = mysql.connector.connect(
            host=db_host, 
            port=db_port, 
            database=db_name, 
            user=db_user, 
            password=db_password)
        return conn
    except mysql.connector.Error as error:
        print("Error al conectar a MySQL: {}".format(error))
    return None

def Listar(sp):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL "+ sp)
            if cursor.with_rows:
                cuotas = cursor.fetchall()
                conn.close()
                return cuotas
            else:
                print("No se encontraron resultados.")
                conn.close()
                return None
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None
    
def Eliminar(sp, id):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc(sp, (id,))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")


def obtener_ListadoRecibos(fecha_inicio, fecha_fin):
    fecha_inicio_str = datetime.strptime(fecha_inicio, "%Y-%m-%d").strftime("%Y-%m-%d")
    fecha_fin_str = datetime.strptime(fecha_fin, "%Y-%m-%d").strftime("%Y-%m-%d")

    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_listarRecibos(%s, %s)", (fecha_inicio_str, fecha_fin_str))
            recibos = cursor.fetchall()
            conn.close()
            return recibos
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None
    

def guardar_afiliado(nombre, apellido, lugar_vivienda, dni, fecha_nacimiento, celular, nombre_entidad_bancaria, numero_cuenta_bancaria, numero_cci_bancario, puesto_trabajo, zona_laboral, fecha_ingreso_kmmp, fecha_ingreso_sindical, estado):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarAfiliado", (nombre, apellido, lugar_vivienda, dni, fecha_nacimiento, celular, nombre_entidad_bancaria, numero_cuenta_bancaria, numero_cci_bancario, puesto_trabajo, zona_laboral, fecha_ingreso_kmmp, fecha_ingreso_sindical, estado))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")


def editar_afiliado(id_afiliados, nombre, apellido, lugar_vivienda, dni, fecha_nacimiento, celular, nombre_entidad_bancaria, numero_cuenta_bancaria, numero_cci_bancario, puesto_trabajo, zona_laboral, fecha_ingreso_kmmp, fecha_ingreso_sindical, estado):
    conn = connection()

    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarAfiliado", (id_afiliados, nombre, apellido, lugar_vivienda, dni, fecha_nacimiento, celular, nombre_entidad_bancaria, numero_cuenta_bancaria, numero_cci_bancario, puesto_trabajo, zona_laboral, fecha_ingreso_kmmp, fecha_ingreso_sindical, estado))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def guardar_escolaridad(id_afiliado,nacido,inicial,primaria,secundaria,superior):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarEscolaridad",(id_afiliado,nacido,inicial,primaria,secundaria,superior))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_escolaridad(id, id_afiliado, nacido, inicial, primaria, secundaria, superior):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarEscolaridad", (id, id_afiliado, nacido, inicial, primaria, secundaria, superior))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")
    

def guardar_asistencia(id_afiliado, asmblea,fecha, multa):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarAsistencias", (id_afiliado, asmblea,fecha, multa))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")


def editar_asistencia(id,id_afiliado, asmblea,fecha, multa):
    conn = connection()

    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarAsistencias", (id,id_afiliado, asmblea,fecha, multa))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")
    
def guardar_Cuotas(id_afiliado, cuota_ordinaria, cuota_anual):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarCuotas", (id_afiliado, cuota_ordinaria, cuota_anual))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_Cuotas(id, id_afiliado, cuota_ordinaria, cuota_anual):
    print(id,id_afiliado,cuota_ordinaria,cuota_anual)
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarCuotas", (id,id_afiliado, cuota_ordinaria, cuota_anual))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def guardar_Dirigente(nombre, apellido, dni, inicio_periodo, termino_periodo, dias_periodo, vigencia,secretaria):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarDirigente", (nombre, apellido, dni, inicio_periodo, termino_periodo, dias_periodo, vigencia,secretaria))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_Dirigente(id_dirigente, nombre, apellido, dni, inicio_periodo, termino_periodo, dias_periodo, vigencia,secretaria):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarDirigentes", (id_dirigente,nombre, apellido, dni, inicio_periodo, termino_periodo, dias_periodo, vigencia,secretaria))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def obtener_ultimo_id():
    try:
        conn=connection()
        cursor = conn.cursor()
    
        args = [0]
        result_args = cursor.callproc('sp_obtenerUltimoID', args)
        
        ultimo_id = result_args[0]
        
        cursor.close()
        conn.close()
        
        return ultimo_id

    except mysql.connector.Error as e:
        print(f"Error al recuperar el último ID: {e}")
        return None

            

def guardar_IngresoEgreso(fecha,concepto,tipo_movimiento,cantidad,saldo):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarIngresosEgresos", (fecha,concepto,tipo_movimiento,cantidad,saldo))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_IngresoEgreso(id,fecha,concepto,tipo_movimiento,cantidad,saldo):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarIngresosEgresos", (id,fecha,concepto,tipo_movimiento,cantidad,saldo))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def guardar_Inventario(articulo,fecha,cantidad,tipo):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarInventarios", (articulo,fecha,cantidad,tipo))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_Inventario(id,articulo,fecha,cantidad,tipo):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarInventarios", (id,articulo,fecha,cantidad,tipo))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")




def guardar_Recibo(fecha, id_dirigente, valor, concepto):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarRecibos", (fecha, id_dirigente, valor, concepto))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_Recibo(id_recibo, fecha, id_dirigente, valor, concepto):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarRecibos",(fecha, id_dirigente, valor, concepto, id_recibo))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def guardar_Licencias(fecha,id_dirigente,tipo_lic,motivo,estado_lic,registro,estado,tardanza,monto_pago,movilidad):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_guardarLicencias", (fecha,id_dirigente,tipo_lic,motivo,estado_lic,registro,estado,tardanza,monto_pago,movilidad))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def editar_Licencias(id,fecha,id_dirigente,tipo_lic,motivo,estado_lic,registro,estado,tardanza,monto_pago,movilidad):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc("sp_editarLicencias",(id,fecha,id_dirigente,tipo_lic,motivo,estado_lic,registro,estado,tardanza,monto_pago,movilidad))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def buscar_Afiliados():
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_buscarAfiliados()")
            if cursor.with_rows:
                afiliados = cursor.fetchall()

                conn.close()

                return afiliados
            else:
                print("No se encontraron resultados.")
                conn.close()
                return None
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None
    
def buscar_Dirigente():
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_buscarDirigente()")
            if cursor.with_rows:
                afiliados = cursor.fetchall()

                conn.close()

                return afiliados
            else:
                print("No se encontraron resultados.")
                conn.close()
                return None
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None
    

def login(username, password):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            
            cursor.callproc('sp_login', (username, password))

            result = None
            for res in cursor.stored_results():
                result = res.fetchall()

            conn.commit()

            return result

        except mysql.connector.Error as error:
            print("Error:", error)
            
        finally:
            if conn.is_connected():
                cursor.close()
                conn.close()

def obtener_afiliado_por_dni(dni):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_obtener_afiliado_por_dni(%s)", (dni,))
            afiliado = cursor.fetchall()
            conn.close()
            return afiliado
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None

def obtener_Escolaridad(id_afiliado):
    conn = connection()
    results = None
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_obtenerEscolaridad(%s)", (id_afiliado,))
            
            # Comprobar si hay resultados disponibles antes de intentar recuperarlos
            if cursor.with_rows:
                results = cursor.fetchall()
            
            conn.close()
            return results
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        print("No se pudo conectar a la base de datos")
        return None


def obtener_afiliados():
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_obtenerAfiliados()")
            afiliado = cursor.fetchall()
            conn.close()
            return afiliado
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None

def guardar_asistencia_cab(asamblea, fecha):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("INSERT INTO asistencias_cab (asamblea, fecha) VALUES (%s, %s)", (asamblea, fecha))
            id_asistencia_cab = cursor.lastrowid
            conn.commit()
            conn.close()
            return id_asistencia_cab
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def obtener_asistencias_cab(id):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_listarAsistencias_cab(%s)", (id,))
            asistencias = cursor.fetchall()
            conn.close()
            return asistencias
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None
    
def actualizar_asistencia_cab(id, asamblea, fecha):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("UPDATE asistencias_cab SET asamblea = %s, fecha = %s WHERE id = %s", (asamblea, fecha, id))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

    
def eliminar_detalle(id):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("DELETE FROM asistencias_det WHERE id_asistencia_cab = %s", (id,))
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")
        

def ExisteRegistroAsambleaFecha(asamblea, fecha):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            
            # Definimos los argumentos que se pasarán al procedimiento almacenado
            args = (asamblea, fecha, 0)
            result_args = cursor.callproc('ExisteRegistroAsambleaFecha', args)
            
            # Commit y cierre
            conn.commit()
            cursor.close()
            
            # Devolvemos el valor de salida del procedimiento almacenado
            return result_args[-1]
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
        finally:
            conn.close()
    else:
        return None
    
def permisos(id_secretaria, id_seccion, id_modulo, nivel):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            args = (id_secretaria, id_seccion, id_modulo, nivel)
            cursor.callproc('sp_permisos', args)

            results = []
            for result in cursor.stored_results():
                results = result.fetchall()

            return results
        
        except mysql.connector.Error as e:
            print(f"Error al ejecutar la consulta: {e}")
        
        finally:
            cursor.close()
            conn.close()

    else:
        print("No se pudo establecer la conexión")
        return None
    
def obtener_secretarias():
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_obtenerSecretarias()")
            secretarias = cursor.fetchall()
            conn.close()
            return secretarias
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
            return None
    else:
        return None
    
def obtenerPermisos(id):
    conn = connection()
    permisos = None
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_obtenerPermisos(%s)", (id,))
            permisos = cursor.fetchall()
            conn.close()
            return permisos
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def limpiarPermisosPorSecretaria(id_secretaria):
    conn = connection()
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.callproc('sp_limpiarPermisosPorSecretaria', [id_secretaria])
            conn.commit()
            conn.close()
        except mysql.connector.Error as e:
            print(f"Error al ejecutar la consulta: {e}")
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def registrarHistorial(id_secretaria, id_seccion, id_modulo, interaccion, fechaHora, detalle):
    conn = connection()
    
    if conn is not None:
        try:
            cursor = conn.cursor()
            cursor.execute("CALL sp_registrarHistorial(%s, %s, %s, %s, %s, %s)", (id_secretaria, id_seccion, id_modulo, interaccion, fechaHora, detalle))
            conn.commit()
            cursor.close()
        except mysql.connector.Error as e:
            print("Error al ejecutar la consulta:", e)
        finally:
            conn.close()
    else:
        print("No se pudo conectar a la base de datos")

def buscarAfiliadoDNI(dni):
    conn = connection()
    cursor = conn.cursor()
    try:
        dni_pattern = f'{dni}%'  # Agregamos '%' antes del DNI
        cursor.callproc("sp_buscarAfiliadoPorDNI", (dni_pattern,))
        for result in cursor.stored_results():
            rows = result.fetchall()
            if rows:
                return rows[0]
            else:
                print("No se encontraron resultados para el DNI:", dni)
                return None
    except mysql.connector.Error as err:
        print(f"Error al llamar al procedimiento almacenado: {err}")
        return None
    finally:
        cursor.close()
        conn.close()

def buscarDirigenteDNI(dni):
    conn = connection()
    cursor = conn.cursor()
    try:
        dni_pattern = f'{dni}%'
        cursor.callproc("sp_buscarDirigentePorDNI", (dni_pattern,))
        for result in cursor.stored_results():
            rows = result.fetchall()
            if rows:
                return rows[0]
            else:
                print("No se encontraron resultados para el DNI:", dni)
                return None
    except mysql.connector.Error as err:
        print(f"Error al llamar al procedimiento almacenado: {err}")
        return None
    finally:
        cursor.close()
        conn.close()