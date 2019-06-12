predfile = './2019.05.11/pred_multiscale_1_best.h5';

pred = hdf5read(predfile,'preds');

    
    pred(:,7:8,:)=[];
    
    pred1= pred(:,7:8,:);
    
    pred(:,7:8,:)=[];
    pred = [pred pred1];
    save('pred_lsp_test.mat','pred');
    
%save('pred_lsp_test.mat','pred');

evaluatePCK_test(1,'PC',false);