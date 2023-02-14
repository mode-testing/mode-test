import json
import requests

from requests.auth import HTTPBasicAuth

host = 'https://modeanalytics.com'
ws = 'studiosupporttest'
un = '22cb43baa0c7'
pw = '14e1a987c794639a79bf002f'

def create_scheduled_report_run(report_token):
  #create schedule and set up parameters the schedule should be run with
  url = '%s/api/%s/reports/%s/schedules' % (host, ws, report_token)
  headers = {'Content-Type': 'application/json'}
  payload = {'report_schedule': {
              'cron':{
                'freq': 'daily',
                'hour': 14,
                'time_zone': 'UTC',
                'day_of_week': 1,
                'day_of_month': 1,
                'minute': 0
              },
              # params optional
              'params':{
                'foo': 'bar'
               },
              'timeout':900
             },
             'trk_source':'report'
            }
  r = requests.post(url, headers=headers, auth=HTTPBasicAuth(un, pw), json=payload)
  return r.status_code


create_scheduled_report_run('ac1d1d97c2a5')