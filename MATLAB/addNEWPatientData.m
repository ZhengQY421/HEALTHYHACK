function addNEWPatientData( patientfileNEW, id, gender, dob, race, married, language )
%Adds a new patient with general information and creates a password. To add addional data
%pretaining to administrative items, call function patientVistits

% id: 
% 
fh = fopen(patientfileNEW);
fh_new = fopen(patientfileNEW, 'w');

line = fgets(fh);
while ischar(line)
    fprintf(fh_new, line);
    line = fgets(fh);
end
password = createPassword();
fprintf(fh_new, [id ' ' gender ' ' dob ' ' race ' ' married ' ' language ' ' password '\n']);
fclose(fh);
% struct = patientData( patientfileNEW );
% struct.(id).General.Gender = gender;
% struct.(id).General.DOB = dob;
% struct.(id).General.Race = race;
% struct.(id).General.MaritalStatus = married;
% struct.(id).General.Language = language;
% struct.(id).General.Password = createPassword();%make new password
% 
% test = jsonencode(struct);
% table = struct2table(struct);

end

