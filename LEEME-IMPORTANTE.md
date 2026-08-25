# "onde" la yoly — versión final de acceso al administrador

## Corrección incluida
Se corrigió el conflicto JavaScript que impedía iniciar sesión en el panel de administración:

`Uncaught SyntaxError: Identifier 'supabase' has already been declared`

El cliente de Supabase ahora utiliza el identificador `supabaseClient`, evitando el choque con la variable global de la librería de Supabase.

## Acceso
- `/admin`
- `/admin.html`

El acceso utiliza **Supabase Authentication** (correo + contraseña). Ya no existe el acceso de demostración `1234`.

## Variables de Vercel
Para esta versión deben existir en Production:
- `NEXT_PUBLIC_SUPABASE_URL`
- `NEXT_PUBLIC_SUPABASE_ANON_KEY`

La URL y la publishable/anon key utilizadas por el frontend son públicas por diseño. **Nunca** colocar una `service_role` key en el frontend.

## Importante
El diseño y las funciones del sitio se mantienen. Esta corrección se limita al conflicto del cliente Supabase en las dos rutas del administrador.
