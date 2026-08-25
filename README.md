# "onde" la yoly — versión final preservando diseño

Esta versión parte del diseño HTML original y agrega:
- calendario de mes actual + siguiente
- selección de entrada/salida
- huéspedes
- tinaja
- WhatsApp con fechas, huéspedes y tinaja
- reseñas con 1–5 estrellas y moderación
- panel de administración
- estadísticas e historial
- precios configurables
- opción Otro monto
- carga/eliminación de fotos desde el panel

## Acceso demo
Panel: `/admin.html` o `/admin/`
Correo: cualquier correo válido
Contraseña demo: `1234`

## Importante
Esta versión usa localStorage para reservas, reseñas, precios y fotos. Es una versión de transición para validar diseño y flujo. Para la versión pública oficial, estos datos deben pasar a Supabase/Storage y la contraseña demo debe eliminarse.
