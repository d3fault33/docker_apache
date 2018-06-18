import hug
import subprocess

@hug.get('/status')
@hug.cli()
def root():
    out= subprocess.getoutput("/etc/init.d/apache2 status")
    return out

@hug.get('/apache_start')
@hug.cli()
def root():
    out= subprocess.getoutput("/etc/init.d/apache2 start")
    return out

@hug.get('/apache_stop')
@hug.cli()
def root():
    out= subprocess.getoutput("/etc/init.d/apache2 stop")
    return out

if __name__ == '__main__':
    add.interface.cli()

