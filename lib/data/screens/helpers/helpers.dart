
import 'package:intl/intl.dart';

String? getDateFromUnit(int date){
  if (date == 0) {
    return null;
  }
  try {
    return DateFormat("dd/MM/yyyy hh:mm a").format(DateTime.fromMillisecondsSinceEpoch((date) * 1000));
  } catch (e) {
    return null;
  }
}

String getDate(String date, {bool hour = true}){

  DateTime? fecha = DateTime.tryParse(date);

  if (fecha == null) {
    return '';
  }else{
    if (hour) {
      return DateFormat('dd/MM/yyyy hh:mm a').format(fecha); 
    }else{
      return DateFormat('dd/MM/yyyy').format(fecha);
    }
  }
}