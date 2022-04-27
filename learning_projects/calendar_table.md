# Calendar Table

- [Calendar Table](#calendar-table)
  - [Table migration](#table-migration)

## Table migration

```rb
# Ruby 3.1.1
# Rails 7.0.2.3
# Version 1.0

class CreateCalendars < ActiveRecord::Migration[7.0]
  def up
    #noinspection RubyArgumentParentheses
    execute ("CREATE TABLE public.calendars (
              id character varying NOT NULL,
              date date NOT NULL,
              day integer NOT NULL,
              weekday character varying NOT NULL,
              month character varying NOT NULL,
              quarter integer NOT NULL,
              year integer NOT NULL,
              day_of_week integer NOT NULL,
              day_of_month integer NOT NULL,
              day_of_quarter integer NOT NULL,
              day_of_year integer NOT NULL,
              days_in_week integer NOT NULL,
              days_in_month integer NOT NULL,
              days_in_quarter integer NOT NULL,
              days_in_year integer NOT NULL,
              weekday_in_month integer NOT NULL,
              weekday_in_quarter integer NOT NULL,
              weekday_in_year integer NOT NULL,
              week_of_month integer NOT NULL,
              week_of_quarter integer NOT NULL,
              week_of_year integer NOT NULL,
              weeks_in_month integer NOT NULL,
              weeks_in_quarter integer NOT NULL,
              weeks_in_year integer NOT NULL,
              month_of_quarter integer NOT NULL,
              month_of_year integer NOT NULL,
              beginning_of_week date NOT NULL,
              beginning_of_month date NOT NULL,
              beginning_of_quarter date NOT NULL,
              beginning_of_year date NOT NULL,
              end_of_week date NOT NULL,
              end_of_month date NOT NULL,
              end_of_quarter date NOT NULL,
              end_of_year date NOT NULL,
              weekend boolean,
              business_day boolean,
              leap_year boolean,
              CONSTRAINT calendars_pkey PRIMARY KEY (id));")

    execute("CREATE UNIQUE INDEX index_dates_on_calendars ON public.calendars USING btree (date);")

    puts "=" * 80

    puts "Table Date installation...."

    install_calendar_table_data

    puts "Installation Finished\n\n Table BLOCK, effect immediately!!"

    execute("CREATE FUNCTION readonly_trigger_function() RETURNS trigger AS $calendars_readonly_trigger$
              BEGIN
                RAISE exception 'Calendar table is read only!';
                RETURN null;
              END;
             $calendars_readonly_trigger$ LANGUAGE plpgsql;")

    execute("CREATE TRIGGER calendars_readonly_trigger BEFORE INSERT OR UPDATE ON calendars FOR EACH ROW EXECUTE FUNCTION readonly_trigger_function();")
    puts "=" * 80
  end

  def down
    execute("DROP TABLE calendars;")
  end

  private

  def install_calendar_table_data
    start_date = Date.parse('2022-01-01')
    end_date = Date.parse('2022-12-31')
    dates = []

    puts "=" * 80

    (start_date..end_date).each do |date|
      puts "== Populating Dates --> Current Date: #{date} =============================="
      dates << populate_date_columns(date)
    end

    puts "=" * 80
    puts "Inserting Dates into Calendar Table"
    puts "Dates data from 2001-01-01 up to 2100-12-31"
    Calendar.insert_all dates
  end

  def populate_date_columns(date)
    { id: date.to_s,
      date: date,
      day: date.mday,
      weekday: Date::DAYNAMES[date.wday],
      month: Date::MONTHNAMES[date.month],
      quarter: quarter(date),
      year: date.year,
      day_of_week: date.cwday,
      day_of_month: date.mday,
      day_of_quarter: (date.beginning_of_quarter..date).count,
      day_of_year: date.yday,
      days_in_week: date.end_of_week.cwday,
      days_in_month: date.end_of_month.mday,
      days_in_quarter: date.all_quarter.count,
      days_in_year: date.end_of_year.yday,
      weekday_in_month: weekday_in(:month, date),
      weekday_in_quarter: weekday_in(:quarter, date),
      weekday_in_year: weekday_in(:year, date),
      week_of_month: week_of(:month, date),
      week_of_quarter: week_of(:quarter, date),
      week_of_year: date.cweek,
      weeks_in_month: (date.beginning_of_month..date.end_of_month).collect { _1.cwday }.tally.first[1],
      weeks_in_quarter: (date.beginning_of_quarter..date.end_of_quarter).collect { _1.cwday }.tally.first[1],
      weeks_in_year: date.cweek,
      month_of_quarter: (date.beginning_of_quarter..date.end_of_quarter).collect { _1.month }.uniq.prepend(nil).index(date.month),
      month_of_year: date.month,
      beginning_of_week: date.beginning_of_week,
      beginning_of_month: date.beginning_of_month,
      beginning_of_quarter: date.beginning_of_year,
      beginning_of_year: date.beginning_of_year,
      end_of_week: date.end_of_week,
      end_of_month: date.end_of_month,
      end_of_quarter: date.end_of_quarter,
      end_of_year: date.end_of_year,
      weekend: date.on_weekend?,
      business_day: date.on_weekday?,
      leap_year: date.leap?
    }
  end

  def quarter(date)
    if date.month < 4
      1
    elsif date.month < 8
      2
    else
      3
    end
  end

  def weekday_in(variant, date)
    weekday = Date::DAYNAMES[date.wday].downcase
    (date.send("beginning_of_#{variant}".to_sym)..date).select { _1.send("#{weekday}?".to_sym) }.count
  end

  def week_of(variant, date)
    weekday = Date::DAYNAMES[date.wday].downcase
    (date.send("beginning_of_#{variant}".to_sym)..date).select { _1.send("#{weekday}?".to_sym) }.prepend(nil).index(date)
  end
end
```