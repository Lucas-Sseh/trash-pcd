-- Remove upstream French quality profiles from the compiled PCD.
-- The original profiles remain untouched in Base and can continue receiving upstream updates.

DELETE FROM quality_profiles
WHERE name IN (
    '[French MULTi.VF] HD Bluray + WEB',
    '[French MULTi.VF] HD Remux',
    '[French MULTi.VF] UHD Bluray + WEB',
    '[French MULTi.VF] UHD Remux',
    -- Temporarily keep these upstream profiles available as templates.
    -- '[French MULTi.VO] HD Bluray + WEB',
    -- '[French MULTi.VO] HD Remux',
    -- '[French MULTi.VO] UHD Bluray + WEB',
    -- '[French MULTi.VO] UHD Remux',
    '[French VOSTFR] HD Bluray + WEB',
    '[French VOSTFR] HD Remux',
    '[French VOSTFR] UHD Bluray + WEB',
    '[French VOSTFR] UHD Remux'
);
