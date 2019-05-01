.PREFIX:
.PREFIX: .mac .rel

SRCS = pilotz.mac

OBJS = $(SRCS:.mac=.rel)

all: pilotz.com

$(OBJS): %.rel: %.mac
	zxcc m80g -"=$<"

pilotz.com: $(OBJS)
	zxcc drlink $<

copy:
	cpmrm -f p112 /dev/fd0 0:pilotz.com
	cpmcp -f p112 /dev/fd0 pilotz.com 0:

xrf: pilotz.mac
	zxcc m80 -"=pilotz.mac/c"
	zxcc cref80 =pilotz.crf

clean:
	rm -f *.rel *.prn *.sym *.bak *.crf *.rel core pilotz.com *~ *.\$$\$$\$$
