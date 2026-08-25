# "onde" la yoly — versión final con Supabase Auth

## Acceso al panel
El panel de administración usa Supabase Authentication mediante `signInWithPassword`.

- URL pública: `/`
- Panel: `/admin` (también `/admin.html`)
- Correo: el correo del usuario creado en Supabase Authentication.
- Contraseña: la contraseña configurada para ese usuario en Supabase.

**La contraseña NO se guarda dentro del ZIP ni en el código.** Es una credencial secreta y debe escribirse en el formulario de inicio de sesión. Esto es lo correcto y seguro para una aplicación web.

## Supabase configurado
- Project URL: `https://qdfvhsfriuwrzuwcriae.supabase.co`
- Publishable key: se usa en el cliente y no es una contraseña.

No se incluye ninguna `service_role` key ni contraseña de usuario.

## Vercel
Si el proyecto se despliega como archivos estáticos, el login del panel usa la configuración de Supabase incluida en el administrador. Las variables de Vercel pueden mantenerse configuradas, pero el HTML estático no las lee directamente.

## Importante
No publiques nunca una contraseña de Supabase, una `service_role` key ni otros secretos en GitHub.
