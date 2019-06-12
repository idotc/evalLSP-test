%convert_pred_wxy
%2017-12-26
    
    predfile = 'pred_multiscale_1.h5';
    pred = hdf5read(predfile,'preds');
    
    pred(:,7:8,:)=[];
    
    pred1= pred(:,7:8,:);
    
    pred(:,7:8,:)=[];
    pred = [pred pred1];
    save('pred_lsp_test.mat','pred');