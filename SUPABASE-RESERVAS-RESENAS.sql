-- SQL DE CONEXION PARA "ONDE" LA YOLY
-- Usa las tablas existentes. No borra reservas ni reseñas.

create or replace view public.reservas_publicas as
select fecha_entrada, fecha_salida, estado
from public.reservas
where estado <> 'cancelada';

-- Reservas: visitantes solo leen la vista; administradores autenticados gestionan la tabla.
drop policy if exists "Authenticated can read reservas" on public.reservas;
drop policy if exists "Authenticated can insert reservas" on public.reservas;
drop policy if exists "Authenticated can update reservas" on public.reservas;
drop policy if exists "Authenticated can delete reservas" on public.reservas;
create policy "Authenticated can read reservas" on public.reservas for select to authenticated using (true);
create policy "Authenticated can insert reservas" on public.reservas for insert to authenticated with check (true);
create policy "Authenticated can update reservas" on public.reservas for update to authenticated using (true) with check (true);
create policy "Authenticated can delete reservas" on public.reservas for delete to authenticated using (true);

drop policy if exists "Public can read reservas view" on public.reservas;
create policy "Public can read reservas view" on public.reservas for select to anon using (estado <> 'cancelada');

-- Reseñas: público puede crear una reseña; público solo puede leer aprobadas; admin autenticado puede moderar.
drop policy if exists "Public can submit resenas" on public.resenas;
drop policy if exists "Public can read approved resenas" on public.resenas;
drop policy if exists "Authenticated can manage resenas" on public.resenas;
create policy "Public can submit resenas" on public.resenas for insert to anon, authenticated with check (estado = 'pendiente');
create policy "Public can read approved resenas" on public.resenas for select to anon using (estado = 'aprobada');
create policy "Authenticated can manage resenas" on public.resenas for all to authenticated using (true) with check (true);

-- Asegura que la tabla resenas tenga valores por defecto útiles para futuras filas.
alter table public.resenas alter column estado set default 'pendiente';
