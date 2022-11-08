using my.timesheet as timesheet from '../db/data-model';
using ECTimeOff as timeoff from './external/ECTimeOff.csn';

service TimesheetService {
  entity Appointment            as projection on timesheet.Appointment;
  entity Person @readonly       as projection on timesheet.Person;
  entity TeamCalendar @readonly as projection on timesheet.TeamCalendar;
  entity TimeOFF @readonly      as projection on timeoff.WorkSchedule;

  entity Sanity {
    key ID : String;
  }
}
