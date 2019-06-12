%14 joints,DLCM

%2018-12-23
%predfile = './pred-lsp2018.12.21/pred_multiscale_1DLCM.h5';
predfile = './pred-lsp2019.01.08/pred_multiscale_1_dlcm_86.h5';

pred = hdf5read(predfile,'preds');

    
%     pred(:,7:8,:)=[];
%     
     pred1= pred(:,7:8,:);
%     
     pred(:,7:8,:)=[];
     pred = [pred pred1];
    save('pred_lsp_test.mat','pred');
    
%save('pred_lsp_test.mat','pred');

evaluatePCK_wxy(1,'PC1',false);