/** CUIDADO : LA CREACIN DE TIPOS OBJECT Y TABLE NO SE PUEDE METER EN EL PAQUETE. EJECUTAR MANUALMENTE DE MANERA INDEPENDIENTE **/

/**** TIPOS PARA LA EDICIN   *********************************************************************************/

create or replace type clavevalor as object ( clave nvarchar2(200),valor nvarchar2(200),tipo nvarchar2(100));
create or replace type arrayclavevalor as table of clavevalor;
create or replace type operaciontabla as object ( id nvarchar2(100),fila nvarchar2(2),tabla nvarchar2(100),operacion nvarchar2(100),valores arrayclavevalor);
create or replace TYPE OPERACIONESCRUD AS table OF OPERACIONTABLA;
create or replace type listacruds as object ( listaoperaciones operacionescrud);

/********************************************************************************************************************************************************************************/
/********************************************************************************************************************************************************************************/

create or replace package GARANTIAS_PACKAGE as

  procedure srv_rda_getValFiltros(valoresFiltrosTab out sys_refcursor, campos_select in varchar2, consulta in varchar2);
  procedure getConsulta(salida out sys_refcursor, tipos out sys_refcursor, total out number, valoresFiltros out sys_refcursor, campos_select in varchar2, consulta in varchar2, tabla in varchar2, idScreen in varchar2, idTab in varchar2);
  procedure getConsultaCompleta(salida out sys_refcursor, consulta in varchar2);
  
  procedure rda_srv_Edicion(estado out number, mensaje out varchar2, fila out varchar2,operaciones in listacruds);
end GARANTIAS_PACKAGE;
/

create or replace PACKAGE BODY GARANTIAS_PACKAGE as


procedure srv_rda_getValFiltros(valoresFiltrosTab out sys_refcursor, campos_select in varchar2, consulta in varchar2)
as
TYPE datosCursor  IS REF CURSOR;
c_datos    datosCursor;

separador constant varchar2(1):=';';
consultaSinPag varchar2(4000);
camposStr varchar(1000);
nuevoClob1 varchar2(4000);
nuevoClob2 varchar2(4000);
elem varchar2(50);

nombreTemp varchar(100);
valorTemp varchar(4000);
nombreCampo varchar(100);

BEGIN
      consultaSinPag:=SUBSTR(consulta,1,INSTR(consulta,'where rn')-1);
      if campos_select is not null and LENGTH(campos_select) >0 then
        
        nuevoClob1:='INICIO';
        nuevoClob2:='';
        camposStr:=campos_select;
        loop
          if INSTR(camposStr,separador)=0 then
            elem:=camposStr;
            camposStr:='';
          else
            elem:= SUBSTR(camposStr,1,INSTR(camposStr,separador)-1);
            camposStr:=LTRIM(camposStr,elem);
            camposStr:=LTRIM(camposStr,separador);
          end if;
          begin
            nombreCampo:=elem;  
            --  Buscamos los valores de los campos
            open  c_datos for 'select distinct(NVL(TO_CHAR('||nombreCampo||'), ''SIN DATO'')) valor ,'''||nombreCampo||''' nombre  FROM (SELECT * from ('|| consultaSinPag||'))';
            LOOP 
              FETCH c_datos into valorTemp, nombreTemp; 
              --  Construimos la tabla de objectos dinmicamente para ejecutarla al final
              if nuevoClob1='INICIO' then
                nuevoCLob1:='tablaDatosFiltro(datoFiltro('''||nombreTemp||''','''||valorTemp||''')';
              else 
                if length(nuevoClob1)<3800 then
                  nuevoCLob1:=nuevoClob1||', datoFiltro('''||nombreTemp||''','''||valorTemp||''')';
                else
                  if nuevoClob2='' then
                    nuevoClob2:=', datoFiltro('''||nombreTemp||''','''||valorTemp||''')';
                  else
                    nuevoClob2:=nuevoClob2||', datoFiltro('''||nombreTemp||''','''||valorTemp||''')';
                  end if;
                end if;
              end if;
              EXIT WHEN c_datos%notfound; 
            END LOOP; 
            CLOSE c_datos; 
          end;
          if length(camposStr) is NULL then
            exit;
          end if;
        end loop;
        
        open valoresFiltrosTab for 'select distinct t.nombre,t.valor from table('||nuevoClob1||nuevoClob2||')) t';
      else
        open valoresFiltrosTab for select sysdate from dual where sysdate=sysdate+1;
      end if;
END srv_rda_getValFiltros;

procedure getConsulta(salida out sys_refcursor,tipos out sys_refcursor, total out number, valoresFiltros out sys_refcursor, campos_select in varchar2, consulta in varchar2, tabla in varchar2, idScreen in varchar2, idTab in varchar2)

as
query_str varchar2(4000);
val sys_refcursor;
cont number:=0;
count_datos sys_refcursor;
count_datosPag sys_refcursor;
cantItemsPag number;
queryCountDatosSinPag varchar2(4000);
queryCountDatosConPag varchar2(4000);
valoresFiltrosTab sys_refcursor;

BEGIN
     
      /*calculamos los items de la paginacin*/
      queryCountDatosConPag:='SELECT COUNT(*) FROM ('|| consulta||')';
      begin
        open  count_datosPag for queryCountDatosConPag ;
        FETCH count_datosPag into  cantItemsPag;
        close count_datosPag;
      end;
      
      
     /*query para contar el total de items de la consulta*/
     if INSTR(consulta,'where rn')=0 then
      queryCountDatosSinPag:='SELECT COUNT(*) FROM ('|| consulta||')';
     else
      queryCountDatosSinPag:='SELECT COUNT(*) FROM ('|| SUBSTR(consulta,1,INSTR(consulta,'where rn')-1)||')';
    end if;
      begin
        open  count_datos for queryCountDatosSinPag ;
        FETCH count_datos into  total;
        close count_datos;
      end;
      
      --llamamos al procedure que trae los valores de los filtros select
      srv_rda_getValFiltros(valoresFiltrosTab, campos_select, consulta);
      valoresFiltros:=valoresFiltrosTab;
      open salida for consulta;
      
      if INSTR(tabla,' ')=0 then
        --sacamos los tipos si tenemos el nombre de la tabla, sino es un inner join y no tenemos la tabla
        open tipos for 'SELECT COLUMN_NAME,DATA_TYPE FROM user_tab_cols where table_name='''||tabla||'''';
      else
        open tipos for 'select * from dual where sysdate=sysdate+1';
      end if;
END getConsulta;

procedure getConsultaCompleta(salida out sys_refcursor, consulta in varchar2)
as

BEGIN
      open salida for consulta;

END getConsultaCompleta;

  procedure rda_srv_Edicion(estado out number, mensaje out varchar2, fila out varchar2,operaciones in listacruds)
  as 
  laSql varchar(5000);
  opInsert varchar(5000):='insert into :tabla (:campos) values(:valoresInsert);';
  opUpdate varchar(5000):='update :tabla set :valoresUpdate where :idRow;';
  opDelete varchar(5000):='delete from :tabla where :idRow;';
  opTiposCampos varchar(1000):='select data_type FROM all_tab_columns where table_name = '':tabla'' and column_name = '':column''';
  queryTiposCampos varchar(2000);
  campos varchar(5000);
  valores varchar(10000);
  tipo varchar2(10);

  begin  
  --mensaje:='COMPLETADO';
  --mensaje:=operaciones.listaoperaciones(1).id; 
  begin
 
  for opera in 1 .. operaciones.listaoperaciones.count
  loop
        --fila:=1;
        fila:=operaciones.listaoperaciones(opera).fila;
        -- ES UNA OPERACIN <<INSERT>>     
        if operaciones.listaoperaciones(opera).operacion = 'INSERT' then
          laSql:=opInsert;
          -- ESTABLECEMOS EL NOMBRE DE LA TABLA
          laSql:=replace(laSql,':tabla',operaciones.listaoperaciones(opera).tabla);
          --Indicamos la tabla a la query que obtiene los tipos de campo
          opTiposCampos:=replace(opTiposCampos,':tabla',operaciones.listaoperaciones(opera).tabla);
          -- CONSTRUIMOS NOMBRES DE COLUMNAS Y VALORES
          
          for i in 1 .. operaciones.listaoperaciones(opera).valores.count 
          loop
            -- Construimos los campos y valores del insert
            --Sacamos el tipo del campo del item i
            queryTiposCampos:=replace(opTiposCampos,':column',operaciones.listaoperaciones(opera).valores(i).clave);
            execute immediate queryTiposCampos into tipo;
            if i=1 then
              campos:=operaciones.listaoperaciones(opera).valores(i).clave;
              if tipo='DATE' then
                valores:='TO_DATE('''||operaciones.listaoperaciones(opera).valores(i).valor||''',''DD/MM/YYYY'')';
              else
                if tipo='NUMBER' then
                  valores:= operaciones.listaoperaciones(opera).valores(i).valor;
                else
                  valores:=''''||operaciones.listaoperaciones(opera).valores(i).valor||'''';
                end if;
              end if;
            else
              --caso en el que no es el primero
              campos:=campos||','||operaciones.listaoperaciones(opera).valores(i).clave;
              if tipo='DATE' then
                valores:=valores||',TO_DATE('''||operaciones.listaoperaciones(opera).valores(i).valor||''',''DD/MM/YYYY'')';
              else
                if tipo='NUMBER' then
                  valores:= valores||','|| operaciones.listaoperaciones(opera).valores(i).valor;
                else
                  valores:=valores||','||''''||operaciones.listaoperaciones(opera).valores(i).valor||'''';
                end if;
              end if;
            end if;
         
          end loop; 
          -- ESTABLECEMOS NOMBRES DE COLUMNAS Y VALORES
          laSql:=replace(laSql,':campos',campos);
          laSql:=replace(laSql,':valoresInsert',valores);
          mensaje:=laSql;
        -- ES UNA OPERACIN <<UPDATE>>
        elsif operaciones.listaoperaciones(opera).operacion = 'UPDATE' then
          laSql:=opUpdate;
          -- ESTABLECEMOS EL NOMBRE DE LA TABLA
          laSql:=replace(laSql,':tabla',operaciones.listaoperaciones(opera).tabla);
          --Indicamos la tabla a la query que obtiene los tipos de campo
          opTiposCampos:=replace(opTiposCampos,':tabla',operaciones.listaoperaciones(opera).tabla);

          -- CONSTRUIMOS NOMBRES DE COLUMNAS Y VALORES
          for i in 1 .. operaciones.listaoperaciones(opera).valores.count 
          loop
            -- Construimos los campos y valores del update
            --Sacamos el tipo del campo del item i
            queryTiposCampos:=replace(opTiposCampos,':column',operaciones.listaoperaciones(opera).valores(i).clave);
            execute immediate queryTiposCampos into tipo;
            if i=1 then
              if tipo='DATE' then
                valores:=operaciones.listaoperaciones(opera).valores(i).clave||'=TO_DATE(TRIM('''||operaciones.listaoperaciones(opera).valores(i).valor||'''),''DD/MM/YYYY'')';
              else
                if tipo='NUMBER' then
                  valores:=operaciones.listaoperaciones(opera).valores(i).clave||'='||operaciones.listaoperaciones(opera).valores(i).valor;
                else
                  valores:=operaciones.listaoperaciones(opera).valores(i).clave||'=TRIM('''||operaciones.listaoperaciones(opera).valores(i).valor||''')';
                end if;
              end if;
            else
              if tipo='DATE' then
                valores:=valores||','||operaciones.listaoperaciones(opera).valores(i).clave||'=TO_DATE(TRIM('''||operaciones.listaoperaciones(opera).valores(i).valor||'''),''DD/MM/YYYY'')';
              else
                if tipo='NUMBER' then
                  valores:=valores||','||operaciones.listaoperaciones(opera).valores(i).clave||'='||operaciones.listaoperaciones(opera).valores(i).valor;
                else
                  valores:=valores||','||operaciones.listaoperaciones(opera).valores(i).clave||'=TRIM('''||operaciones.listaoperaciones(opera).valores(i).valor||''')';
                end if;
              end if;
            end if;
          end loop; 
          -- ESTABLECEMOS NOMBRES DE COLUMNAS Y VALORES
          laSql:=replace(laSql,':valoresUpdate',valores);
          laSql:=replace(laSql,':idRow',operaciones.listaoperaciones(opera).id);
          
        elsif operaciones.listaoperaciones(opera).operacion = 'DELETE' then
          laSql:=opDelete;
          -- ESTABLECEMOS NOMBRES DE COLUMNAS Y VALORES
          laSql:=replace(laSql,':tabla',operaciones.listaoperaciones(opera).tabla);
          laSql:=replace(laSql,':idRow',operaciones.listaoperaciones(opera).id);
          
        end if;
        
        mensaje:=laSql;
        execute immediate 'BEGIN '||laSql||' END;';
        mensaje:='Operacin realizada correctamente';
        estado:=200;

    
    end loop;
    end;
     COMMIT;
      estado:=200; 
      mensaje:='Operacin realizada correctamente'; 
      EXCEPTION
              WHEN OTHERS THEN
                  ROLLBACK;
                  estado:=500;
                  mensaje:= mensaje || '<<LASQL>> ' ||'Error: '|| TO_CHAR(SQLCODE)|| SQLERRM ;



end rda_srv_Edicion;
 

END GARANTIAS_PACKAGE;
/
