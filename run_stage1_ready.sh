python generate_pseudo_label.py --name gta2citylabv2_warmup_soft --soft --resume_path ./pretrained_models/from_gta5_to_cityscapes_on_deeplabv2_best_model.pkl --no_droplast

python calc_prototype.py --resume_path ./pretrained_models/from_gta5_to_cityscapes_on_deeplabv2_best_model.pkl


