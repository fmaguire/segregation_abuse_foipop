#pdftk raw_data/2023-01465-JUS\ Applicant\ Package.pdf cat 1-95 output split_pdf/cape_breton_correctional_facility.pdf
#pdftk raw_data/2023-01465-JUS\ Applicant\ Package.pdf cat 96-478 output split_pdf/central_ns_correctional_facility.pdf
#pdftk raw_data/2023-01465-JUS\ Applicant\ Package.pdf cat 479-632 output split_pdf/northeast_ns_correctional_facility.pdf
#pdftk raw_data/2023-01465-JUS\ Applicant\ Package.pdf cat 633-641 output split_pdf/southwest_ns_correctional_facility.pdf

mkdir -p cropped_pdfs
for pdf in split_pdf/*.pdf;
do
    pdfjam --keepinfo --trim "95mm 40mm 60mm 40mm" --clip true --outfile cropped_pdfs/$(basename $pdf) $pdf
    #convert cropped_pdfs/$(basename $pdf) cropped_pdfs/$(basename $pdf).png
done

