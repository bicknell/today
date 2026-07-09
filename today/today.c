#include <time.h>
#include <stdio.h>

struct line {
  char code;
  char month[3];
  char day[3];
  char year[5];
  char special;
  char message[80];
};

char weekdays[7][20] = {
  "Sunday",
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday" };

char months[12][20] = {
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December" };

char birthdaytmp[L_tmpnam];
FILE *birthdayfile;
char eventtmp[L_tmpnam];
FILE *eventfile;
char remindertmp[L_tmpnam];
FILE *reminderfile;

void printevent();
void printbirthday();
void printreminder();
void add(struct line *, FILE *);

int event, birthday, reminder;

int main(void) {
  struct tm *t;
  struct line rec;
  FILE *fp;
  char filename[500];
  char temp[500];
  time_t now;

  event = birthday = reminder = 0;

  tmpnam(birthdaytmp);
  tmpnam(eventtmp);
  tmpnam(remindertmp);
  if ((birthdayfile = fopen(birthdaytmp,"w+")) == NULL) {
    printf("Error opening temporary file.\n");
    exit(10);
  }
  if ((eventfile = fopen(eventtmp,"w+")) == NULL) {
    printf("Error opening temporary file.\n");
    fclose(birthdayfile);
    unlink(birthdaytmp);
    exit(10);
  }
  if ((reminderfile = fopen(remindertmp,"w+")) == NULL) {
    printf("Error opening temporary file.\n");
    fclose(birthdayfile);
    fclose(eventfile);
    unlink(birthdaytmp);
    unlink(eventtmp);
    exit(10);
  }

  now = time(NULL);
  t = localtime(&now);
  
  sprintf(filename, "today.%d", (t->tm_mon + 1));
  if ((fp = fopen(filename,"r")) == NULL) {
    printf("Unable to open file %s.\n", filename);
    exit(1);
  }
  
  while (!feof(fp)) {
    fgets(temp, 500, fp);
    if ( (strlen(temp) > 11) &&
	( (temp[0] == 'B') || (temp[0] == 'S') || (temp[0] == 'R') ) ) {
      sscanf(temp,"%c%c%c%c%c%c%c%c%c%c%60s", &rec.code, &rec.month[0],
	     &rec.month[1], &rec.day[0], &rec.day[1], &rec.year[0],
	     &rec.year[1], &rec.year[2], &rec.year[3], &rec.special, 
	     rec.message);
      rec.month[2] = '\0';
      rec.day[2] = '\0';
      rec.year[4] = '\0';
      strcpy(rec.message,&temp[10]);
      if ( 
          (((atoi(rec.month) - 1) == t->tm_mon) || (atoi(rec.month) == 0)) &&
	  ((atoi(rec.day) == t->tm_mday) || (atoi(rec.day) == 0))
	  ) {
	switch (rec.code) {
	case 'B':
	  add(&rec, birthdayfile);
	  birthday = 1;
	  break;
	case 'S':
	  add(&rec, eventfile);
	  event = 1;
	  break;
	case 'R':
	  add(&rec, reminderfile);
	  reminder = 1;
	  break;
	default:
	  /*	  printf("Bad record in input file.\n"); */
	  break;
	}
      }
    }
  }
  printf("Today is %s %s %d, %d.\n\n", weekdays[t->tm_wday], 
                                       months[t->tm_mon],
                                       t->tm_mday, t->tm_year + 1900);

  if (birthday)
    printbirthday();
  if (event);
    printevent();
  if (reminder)
    printreminder();

  fclose(birthdayfile);
  unlink(birthdaytmp);
  fclose(eventfile);
  unlink(eventtmp);
  fclose(reminderfile);
  unlink(remindertmp);
  return 0;
}

void add(struct line *rec, FILE *fptr) {
  if (rec->special == 'C') {
    fprintf(fptr,"\t\t%s", rec->message);
  } else {
    if (rec->year[0] != ' ') {
      fprintf(fptr, "\tIn %s %s", rec->year, rec->message);
    } else {
      fprintf(fptr, "\t%s", rec->message);
    }
  }
}

void printbirthday() {
  char buffer[150];
  printf("Happy birthday to...\n");
  rewind(birthdayfile);
  while (!feof(birthdayfile)) {
    if (fgets(buffer, 150, birthdayfile) != NULL)
    printf(buffer);
  }
  printf("\n");
}

void printevent() {
  char buffer[150];
  printf("On this day...\n");
  rewind(eventfile);
  while (!feof(eventfile)) {
    if (fgets(buffer, 150, eventfile) != NULL)
    printf(buffer);
  }
  printf("\n");
}

void printreminder() {
  char buffer[150];
  printf("Remember...\n");
  rewind(reminderfile);
  while (!feof(reminderfile)) {
    if (fgets(buffer, 150, reminderfile) != NULL)
    printf(buffer);
  }
  printf("\n");
}
