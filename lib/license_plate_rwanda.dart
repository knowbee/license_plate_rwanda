library license_plate_rwanda;

// Special plate numbers include National Police, Military Force, Government Projects
bool isSpecial(String plateNumber) {
  RegExp regExp = new RegExp(r'^(GP|RNP|GR|RDF)[\s]*[0-9]{3}[\s]*[A-Z]{1}$');

  return regExp.hasMatch(plateNumber);
}

// Validates plate numbers of motorcyles
bool isMoto(String plateNumber) {
  RegExp regExp = new RegExp(r'^[\s]*(R[A-Z])[\s]*[0-9]{3}[\s]*[A-Z]{1}$');

  return regExp.hasMatch(plateNumber);
}

// Validates plate numbers of foreigners that are currently residing in Rwanda
bool isForeign(String plateNumber) {
  RegExp regExp = new RegExp(r'^[\s]*(IT)[\s]*[0-9]{3}[\s]*[A-Z]{2}$');

  return regExp.hasMatch(plateNumber);
}

// Validates plate numbers of diplomatic honorables
bool isDiplomatic(String plateNumber) {
  RegExp regExp = new RegExp(r'^[0-9]{1}(CD|CMD)[\s]*[0-9]{2}[\s]*[A-Z]{1}$');

  return regExp.hasMatch(plateNumber);
}

// Validates plate numbers of normal citizens of Rwanda
bool isNormal(String plateNumber) {
  RegExp regExp = new RegExp(r'^(R[A-Z]{2})[\s]*[0-9]{3}[\s]*[A-Z]{1}$');

  return regExp.hasMatch(plateNumber);
}

bool isValid(String plateNumber) {
  if (isSpecial(plateNumber)) {
    return true;
  }
  if (isMoto(plateNumber)) {
    return true;
  }
  if (isForeign(plateNumber)) {
    return true;
  }
  if (isDiplomatic(plateNumber)) {
    return true;
  }
  if (isNormal(plateNumber)) {
    return true;
  }
  return false;
}
