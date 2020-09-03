echo "Start" $(date)
echo "Root content"
ls -l
echo "Sat Prod Array content"
ls -l data/satproduct/

cd data/satproduct/$(ls data/satproduct/ | head -n 1)
mv ../../../s1.sh measurement
cd measurement
echo "measurement content"
ls -l
chmod +x ./s1.sh
echo "measurement content (s1 should be executabòe)"
ls -l
echo "Computation start" $(date)
./s1.sh
echo "Computation end" $(date)
echo "measurement content after computation"
ls -l
echo "measurement/test/ content after computation"
ls -l test/
cp test/output.png ../../preview.png

echo "data/ content after output copy"
ls -l ../../
echo "End" $(date)