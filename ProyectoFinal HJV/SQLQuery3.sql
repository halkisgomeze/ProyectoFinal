SELECT	pac.NOMBRE,pac.APELLIDO, med.CODMEDICO,med.NOMBRE, med.APELLIDO, med.ESPECIALIDAD,mex.NOMBRE,mex.CANTIDAD, mex.UTILIDAD
FROM PACIENTES Pac
INNER JOIN	MEDICOS Med ON	pac.CODMEDICO=med.CODMEDICO
INNER JOIN MEDICAMENTOS MeX	ON pac.CODMEDICAMENTO=mex.CODMEDICAMENTO


