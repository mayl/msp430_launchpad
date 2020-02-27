project( 'msp430_test', 'c' )

src = files('src/board.c',
            'src/i2c.c',
            'src/main.c',
            'src/menu.c',
            'src/ring_buffer.c',
            'src/timer.c',
            'src/tlv.c',
            'src/uart.c',
            'src/watchdog.c')

inc = include_directories( 'include/', '/home/larry/ti/msp430-gcc/include/' )

c_flags = ['-mmcu=msp430g2553', '-mhwmult=none']
link_flags = ['-L/home/larry/ti/msp430-gcc/include/', '-mmcu=msp430g2553']

executable( 'main',
            sources: src,
            include_directories: inc,
            c_args: c_flags,
            link_args: link_flags)
