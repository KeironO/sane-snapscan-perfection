output_dir="./output/"
mkdir $output_dir

for file in ./data/*.exe
do
    if [[ -f $file ]]; then
        bsdtar xf "${file}" ModUsd.cab
	mv ModUsd.cab "${output_dir}"
	cabextract ${output_dir}ModUsd.cab -F "esfw*.bin" -L
	mv ./*.bin ${output_dir}
    fi
done


