function Sub_SPM_seg2WMmask(path, file)
spm('defaults','PET');
matlabbatch{1}.spm.util.imcalc.input = {
                                        [path filesep 'c2' file]
                                        };
matlabbatch{1}.spm.util.imcalc.output = ['WM_' file];
matlabbatch{1}.spm.util.imcalc.outdir = {path};
matlabbatch{1}.spm.util.imcalc.expression = 'i1>0.7';
matlabbatch{1}.spm.util.imcalc.var = struct('name', {}, 'value', {});
matlabbatch{1}.spm.util.imcalc.options.dmtx = 0;
matlabbatch{1}.spm.util.imcalc.options.mask = 0;
matlabbatch{1}.spm.util.imcalc.options.interp = 1;
matlabbatch{1}.spm.util.imcalc.options.dtype = 4;
spm_jobman('run', matlabbatch);
end