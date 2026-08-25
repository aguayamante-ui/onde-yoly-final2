# "onde" la yoly — versión con login real

El panel de administración ya no usa la contraseña demo 1234. El acceso se valida con Supabase Auth.

Usa el correo y contraseña del usuario creado en Supabase > Authentication > Users.

La clave incluida en el frontend es la publishable/anon key, diseñada para uso público con las políticas RLS correspondientes. Nunca coloques una service_role/secret key en este archivo.
