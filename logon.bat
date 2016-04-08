echo off
net use h: /d
if not exist \\nxs161\infowize\%username% mkdir \\nxs161\infowize\%username%
net use h: \\nxs161\infowize\%username%
cacls h: /e /r everyone
cacls h: /e /g %username%:c
