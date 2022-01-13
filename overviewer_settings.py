import os

worlds['world'] = '/opt/mscs/backups/world/world-original' if os.path.exists('/opt/mscs/backups/world/world-original') else '/opt/mscs/backups/world/world'

renders['overworld-render'] = {
  'world': 'world',
  'title': 'Overworld',
  'dimension': 'overworld',
  'rendermode': 'normal'
}

processes = 2
outputdir = '/opt/mscs/maps/world'