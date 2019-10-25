-- Reconfigure the segment configuration manually to reflect the new
-- cluster we have created from essentially detaching the gpdemo
-- mirrors.

SET allow_system_table_mods=true;
DELETE FROM gp_segment_configuration WHERE preferred_role='p';
UPDATE gp_segment_configuration SET role='p', preferred_role='p', mode='n', status='u' WHERE preferred_role='m';
