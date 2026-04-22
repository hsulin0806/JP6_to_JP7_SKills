from pathlib import Path
import subprocess, shlex

base = Path('/home/ubuntu/.openclaw/workspace/car-fire-smoke-object-detection')
queries = [
    'car hood smoke no flames',
    'car engine bay smoke',
    'white smoke from car hood',
    'black smoke from car exhaust roadside',
    'vehicle emitting smoke no fire',
    'scooter engine smoke no flames',
    'motorcycle white smoke exhaust',
    'motorbike heavy exhaust smoke',
    'parked car smoking engine bay',
    'roadside broken down car smoke',
]
cmd=['python3', str(base/'scripts/collect_bing.py'), '--out', str(base/'data/raw/images'), '--limit', '60']
for q in queries:
    cmd += ['--query', q]
print('RUN', ' '.join(shlex.quote(x) for x in cmd))
subprocess.run(cmd, check=False)
