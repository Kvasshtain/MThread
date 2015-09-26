
../file/bin/test_stm32f051r8.elf:     file format elf32-littlearm


Disassembly of section .isr_vector:

08000000 <ArrayInterrapt>:
 8000000:	20001fff 	strdcs	r1, [r0], -pc	; <UNPREDICTABLE>
 8000004:	08000149 	stmdaeq	r0, {r0, r3, r6, r8}
 8000008:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 800000c:	080000d1 	stmdaeq	r0, {r0, r4, r6, r7}
	...
 800002c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
	...
 8000038:	0800037d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r6, r8, r9}
 800003c:	080006ad 	stmdaeq	r0, {r0, r2, r3, r5, r7, r9, sl}
 8000040:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000044:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000048:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 800004c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000050:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000054:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000058:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 800005c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000060:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000064:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000068:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 800006c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000070:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000074:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000078:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 800007c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000080:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000084:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000088:	00000000 	andeq	r0, r0, r0
 800008c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000090:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000094:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 8000098:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 800009c:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000a0:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000a4:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000a8:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000ac:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000b0:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000b4:	00000000 	andeq	r0, r0, r0
 80000b8:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}
 80000bc:	00000000 	andeq	r0, r0, r0
 80000c0:	080000c9 	stmdaeq	r0, {r0, r3, r6, r7}

080000c4 <_end_isr_vector>:
 80000c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

080000c8 <loop>:
 80000c8:	b580      	push	{r7, lr}
 80000ca:	af00      	add	r7, sp, #0
 80000cc:	46c0      	nop			; (mov r8, r8)
 80000ce:	e7fd      	b.n	80000cc <loop+0x4>

Disassembly of section .text:

080000d0 <HardFault_Handler>:
 80000d0:	b580      	push	{r7, lr}
 80000d2:	af00      	add	r7, sp, #0
 80000d4:	4905      	ldr	r1, [pc, #20]	; (80000ec <HardFault_Handler+0x1c>)
 80000d6:	4b05      	ldr	r3, [pc, #20]	; (80000ec <HardFault_Handler+0x1c>)
 80000d8:	8a9b      	ldrh	r3, [r3, #20]
 80000da:	b29b      	uxth	r3, r3
 80000dc:	2280      	movs	r2, #128	; 0x80
 80000de:	0092      	lsls	r2, r2, #2
 80000e0:	4313      	orrs	r3, r2
 80000e2:	b29b      	uxth	r3, r3
 80000e4:	828b      	strh	r3, [r1, #20]
 80000e6:	46c0      	nop			; (mov r8, r8)
 80000e8:	e7f4      	b.n	80000d4 <HardFault_Handler+0x4>
 80000ea:	46c0      	nop			; (mov r8, r8)
 80000ec:	48000800 	stmdami	r0, {fp}

080000f0 <ro_data_init>:
 80000f0:	b580      	push	{r7, lr}
 80000f2:	b084      	sub	sp, #16
 80000f4:	af00      	add	r7, sp, #0
 80000f6:	60f8      	str	r0, [r7, #12]
 80000f8:	60b9      	str	r1, [r7, #8]
 80000fa:	607a      	str	r2, [r7, #4]
 80000fc:	e007      	b.n	800010e <ro_data_init+0x1e>
 80000fe:	68bb      	ldr	r3, [r7, #8]
 8000100:	1c5a      	adds	r2, r3, #1
 8000102:	60ba      	str	r2, [r7, #8]
 8000104:	68fa      	ldr	r2, [r7, #12]
 8000106:	1c51      	adds	r1, r2, #1
 8000108:	60f9      	str	r1, [r7, #12]
 800010a:	7812      	ldrb	r2, [r2, #0]
 800010c:	701a      	strb	r2, [r3, #0]
 800010e:	68ba      	ldr	r2, [r7, #8]
 8000110:	687b      	ldr	r3, [r7, #4]
 8000112:	429a      	cmp	r2, r3
 8000114:	d1f3      	bne.n	80000fe <ro_data_init+0xe>
 8000116:	46bd      	mov	sp, r7
 8000118:	b004      	add	sp, #16
 800011a:	bd80      	pop	{r7, pc}

0800011c <bss_init>:
 800011c:	b580      	push	{r7, lr}
 800011e:	b084      	sub	sp, #16
 8000120:	af00      	add	r7, sp, #0
 8000122:	6078      	str	r0, [r7, #4]
 8000124:	6039      	str	r1, [r7, #0]
 8000126:	2300      	movs	r3, #0
 8000128:	60fb      	str	r3, [r7, #12]
 800012a:	e004      	b.n	8000136 <bss_init+0x1a>
 800012c:	687b      	ldr	r3, [r7, #4]
 800012e:	1c5a      	adds	r2, r3, #1
 8000130:	607a      	str	r2, [r7, #4]
 8000132:	2200      	movs	r2, #0
 8000134:	701a      	strb	r2, [r3, #0]
 8000136:	68fb      	ldr	r3, [r7, #12]
 8000138:	1c5a      	adds	r2, r3, #1
 800013a:	60fa      	str	r2, [r7, #12]
 800013c:	683a      	ldr	r2, [r7, #0]
 800013e:	4293      	cmp	r3, r2
 8000140:	d1f4      	bne.n	800012c <bss_init+0x10>
 8000142:	46bd      	mov	sp, r7
 8000144:	b004      	add	sp, #16
 8000146:	bd80      	pop	{r7, pc}

08000148 <Reset_Handler>:
 8000148:	b580      	push	{r7, lr}
 800014a:	af00      	add	r7, sp, #0
 800014c:	490c      	ldr	r1, [pc, #48]	; (8000180 <Reset_Handler+0x38>)
 800014e:	4a0d      	ldr	r2, [pc, #52]	; (8000184 <Reset_Handler+0x3c>)
 8000150:	4b0d      	ldr	r3, [pc, #52]	; (8000188 <Reset_Handler+0x40>)
 8000152:	1c08      	adds	r0, r1, #0
 8000154:	1c11      	adds	r1, r2, #0
 8000156:	1c1a      	adds	r2, r3, #0
 8000158:	f7ff ffca 	bl	80000f0 <ro_data_init>
 800015c:	490b      	ldr	r1, [pc, #44]	; (800018c <Reset_Handler+0x44>)
 800015e:	4a0c      	ldr	r2, [pc, #48]	; (8000190 <Reset_Handler+0x48>)
 8000160:	4b0c      	ldr	r3, [pc, #48]	; (8000194 <Reset_Handler+0x4c>)
 8000162:	1c08      	adds	r0, r1, #0
 8000164:	1c11      	adds	r1, r2, #0
 8000166:	1c1a      	adds	r2, r3, #0
 8000168:	f7ff ffc2 	bl	80000f0 <ro_data_init>
 800016c:	4a0a      	ldr	r2, [pc, #40]	; (8000198 <Reset_Handler+0x50>)
 800016e:	4b0b      	ldr	r3, [pc, #44]	; (800019c <Reset_Handler+0x54>)
 8000170:	1c10      	adds	r0, r2, #0
 8000172:	1c19      	adds	r1, r3, #0
 8000174:	f7ff ffd2 	bl	800011c <bss_init>
 8000178:	f000 f8d4 	bl	8000324 <main>
 800017c:	46bd      	mov	sp, r7
 800017e:	bd80      	pop	{r7, pc}
 8000180:	080007b0 	stmdaeq	r0, {r4, r5, r7, r8, r9, sl}
 8000184:	20000000 	andcs	r0, r0, r0
 8000188:	20000000 	andcs	r0, r0, r0
 800018c:	080007b0 	stmdaeq	r0, {r4, r5, r7, r8, r9, sl}
 8000190:	20000000 	andcs	r0, r0, r0
 8000194:	20000008 	andcs	r0, r0, r8
 8000198:	20000008 	andcs	r0, r0, r8
 800019c:	0000024c 	andeq	r0, r0, ip, asr #4

080001a0 <Oscillator_int>:
 80001a0:	b580      	push	{r7, lr}
 80001a2:	af00      	add	r7, sp, #0
 80001a4:	4b07      	ldr	r3, [pc, #28]	; (80001c4 <Oscillator_int+0x24>)
 80001a6:	4a07      	ldr	r2, [pc, #28]	; (80001c4 <Oscillator_int+0x24>)
 80001a8:	6952      	ldr	r2, [r2, #20]
 80001aa:	2180      	movs	r1, #128	; 0x80
 80001ac:	0309      	lsls	r1, r1, #12
 80001ae:	430a      	orrs	r2, r1
 80001b0:	615a      	str	r2, [r3, #20]
 80001b2:	4b05      	ldr	r3, [pc, #20]	; (80001c8 <Oscillator_int+0x28>)
 80001b4:	4a04      	ldr	r2, [pc, #16]	; (80001c8 <Oscillator_int+0x28>)
 80001b6:	6812      	ldr	r2, [r2, #0]
 80001b8:	21aa      	movs	r1, #170	; 0xaa
 80001ba:	02c9      	lsls	r1, r1, #11
 80001bc:	430a      	orrs	r2, r1
 80001be:	601a      	str	r2, [r3, #0]
 80001c0:	46bd      	mov	sp, r7
 80001c2:	bd80      	pop	{r7, pc}
 80001c4:	40021000 	andmi	r1, r2, r0
 80001c8:	48000800 	stmdami	r0, {fp}

080001cc <Init_Hardware>:
 80001cc:	b580      	push	{r7, lr}
 80001ce:	af00      	add	r7, sp, #0
 80001d0:	f7ff ffe6 	bl	80001a0 <Oscillator_int>
 80001d4:	f000 f8ce 	bl	8000374 <Port_Init>
 80001d8:	b662      	cpsie	i
 80001da:	46bd      	mov	sp, r7
 80001dc:	bd80      	pop	{r7, pc}
 80001de:	46c0      	nop			; (mov r8, r8)

080001e0 <PendSV_Start>:
 80001e0:	b580      	push	{r7, lr}
 80001e2:	af00      	add	r7, sp, #0
 80001e4:	4b04      	ldr	r3, [pc, #16]	; (80001f8 <PendSV_Start+0x18>)
 80001e6:	4a04      	ldr	r2, [pc, #16]	; (80001f8 <PendSV_Start+0x18>)
 80001e8:	6852      	ldr	r2, [r2, #4]
 80001ea:	2180      	movs	r1, #128	; 0x80
 80001ec:	0549      	lsls	r1, r1, #21
 80001ee:	430a      	orrs	r2, r1
 80001f0:	605a      	str	r2, [r3, #4]
 80001f2:	46bd      	mov	sp, r7
 80001f4:	bd80      	pop	{r7, pc}
 80001f6:	46c0      	nop			; (mov r8, r8)
 80001f8:	e000ed00 	and	lr, r0, r0, lsl #26

080001fc <Thread_A>:
 80001fc:	b580      	push	{r7, lr}
 80001fe:	b082      	sub	sp, #8
 8000200:	af00      	add	r7, sp, #0
 8000202:	6078      	str	r0, [r7, #4]
 8000204:	4b20      	ldr	r3, [pc, #128]	; (8000288 <Thread_A+0x8c>)
 8000206:	1c18      	adds	r0, r3, #0
 8000208:	f000 fa64 	bl	80006d4 <eMutex_lock>
 800020c:	2380      	movs	r3, #128	; 0x80
 800020e:	025b      	lsls	r3, r3, #9
 8000210:	1c18      	adds	r0, r3, #0
 8000212:	f000 fa51 	bl	80006b8 <Delay>
 8000216:	491d      	ldr	r1, [pc, #116]	; (800028c <Thread_A+0x90>)
 8000218:	4b1c      	ldr	r3, [pc, #112]	; (800028c <Thread_A+0x90>)
 800021a:	8a9b      	ldrh	r3, [r3, #20]
 800021c:	b29b      	uxth	r3, r3
 800021e:	2280      	movs	r2, #128	; 0x80
 8000220:	0052      	lsls	r2, r2, #1
 8000222:	4053      	eors	r3, r2
 8000224:	b29b      	uxth	r3, r3
 8000226:	828b      	strh	r3, [r1, #20]
 8000228:	2380      	movs	r3, #128	; 0x80
 800022a:	025b      	lsls	r3, r3, #9
 800022c:	1c18      	adds	r0, r3, #0
 800022e:	f000 fa43 	bl	80006b8 <Delay>
 8000232:	4916      	ldr	r1, [pc, #88]	; (800028c <Thread_A+0x90>)
 8000234:	4b15      	ldr	r3, [pc, #84]	; (800028c <Thread_A+0x90>)
 8000236:	8a9b      	ldrh	r3, [r3, #20]
 8000238:	b29b      	uxth	r3, r3
 800023a:	2280      	movs	r2, #128	; 0x80
 800023c:	0052      	lsls	r2, r2, #1
 800023e:	4053      	eors	r3, r2
 8000240:	b29b      	uxth	r3, r3
 8000242:	828b      	strh	r3, [r1, #20]
 8000244:	2380      	movs	r3, #128	; 0x80
 8000246:	025b      	lsls	r3, r3, #9
 8000248:	1c18      	adds	r0, r3, #0
 800024a:	f000 fa35 	bl	80006b8 <Delay>
 800024e:	490f      	ldr	r1, [pc, #60]	; (800028c <Thread_A+0x90>)
 8000250:	4b0e      	ldr	r3, [pc, #56]	; (800028c <Thread_A+0x90>)
 8000252:	8a9b      	ldrh	r3, [r3, #20]
 8000254:	b29b      	uxth	r3, r3
 8000256:	2280      	movs	r2, #128	; 0x80
 8000258:	0052      	lsls	r2, r2, #1
 800025a:	4053      	eors	r3, r2
 800025c:	b29b      	uxth	r3, r3
 800025e:	828b      	strh	r3, [r1, #20]
 8000260:	2380      	movs	r3, #128	; 0x80
 8000262:	025b      	lsls	r3, r3, #9
 8000264:	1c18      	adds	r0, r3, #0
 8000266:	f000 fa27 	bl	80006b8 <Delay>
 800026a:	4908      	ldr	r1, [pc, #32]	; (800028c <Thread_A+0x90>)
 800026c:	4b07      	ldr	r3, [pc, #28]	; (800028c <Thread_A+0x90>)
 800026e:	8a9b      	ldrh	r3, [r3, #20]
 8000270:	b29b      	uxth	r3, r3
 8000272:	2280      	movs	r2, #128	; 0x80
 8000274:	0052      	lsls	r2, r2, #1
 8000276:	4053      	eors	r3, r2
 8000278:	b29b      	uxth	r3, r3
 800027a:	828b      	strh	r3, [r1, #20]
 800027c:	4b02      	ldr	r3, [pc, #8]	; (8000288 <Thread_A+0x8c>)
 800027e:	1c18      	adds	r0, r3, #0
 8000280:	f000 fa84 	bl	800078c <eMutex_unlock>
 8000284:	e7be      	b.n	8000204 <Thread_A+0x8>
 8000286:	46c0      	nop			; (mov r8, r8)
 8000288:	20000008 	andcs	r0, r0, r8
 800028c:	48000800 	stmdami	r0, {fp}

08000290 <Thread_B>:
 8000290:	b580      	push	{r7, lr}
 8000292:	b082      	sub	sp, #8
 8000294:	af00      	add	r7, sp, #0
 8000296:	6078      	str	r0, [r7, #4]
 8000298:	4b20      	ldr	r3, [pc, #128]	; (800031c <Thread_B+0x8c>)
 800029a:	1c18      	adds	r0, r3, #0
 800029c:	f000 fa1a 	bl	80006d4 <eMutex_lock>
 80002a0:	2380      	movs	r3, #128	; 0x80
 80002a2:	025b      	lsls	r3, r3, #9
 80002a4:	1c18      	adds	r0, r3, #0
 80002a6:	f000 fa07 	bl	80006b8 <Delay>
 80002aa:	491d      	ldr	r1, [pc, #116]	; (8000320 <Thread_B+0x90>)
 80002ac:	4b1c      	ldr	r3, [pc, #112]	; (8000320 <Thread_B+0x90>)
 80002ae:	8a9b      	ldrh	r3, [r3, #20]
 80002b0:	b29b      	uxth	r3, r3
 80002b2:	2280      	movs	r2, #128	; 0x80
 80002b4:	0092      	lsls	r2, r2, #2
 80002b6:	4053      	eors	r3, r2
 80002b8:	b29b      	uxth	r3, r3
 80002ba:	828b      	strh	r3, [r1, #20]
 80002bc:	2380      	movs	r3, #128	; 0x80
 80002be:	025b      	lsls	r3, r3, #9
 80002c0:	1c18      	adds	r0, r3, #0
 80002c2:	f000 f9f9 	bl	80006b8 <Delay>
 80002c6:	4916      	ldr	r1, [pc, #88]	; (8000320 <Thread_B+0x90>)
 80002c8:	4b15      	ldr	r3, [pc, #84]	; (8000320 <Thread_B+0x90>)
 80002ca:	8a9b      	ldrh	r3, [r3, #20]
 80002cc:	b29b      	uxth	r3, r3
 80002ce:	2280      	movs	r2, #128	; 0x80
 80002d0:	0092      	lsls	r2, r2, #2
 80002d2:	4053      	eors	r3, r2
 80002d4:	b29b      	uxth	r3, r3
 80002d6:	828b      	strh	r3, [r1, #20]
 80002d8:	2380      	movs	r3, #128	; 0x80
 80002da:	025b      	lsls	r3, r3, #9
 80002dc:	1c18      	adds	r0, r3, #0
 80002de:	f000 f9eb 	bl	80006b8 <Delay>
 80002e2:	490f      	ldr	r1, [pc, #60]	; (8000320 <Thread_B+0x90>)
 80002e4:	4b0e      	ldr	r3, [pc, #56]	; (8000320 <Thread_B+0x90>)
 80002e6:	8a9b      	ldrh	r3, [r3, #20]
 80002e8:	b29b      	uxth	r3, r3
 80002ea:	2280      	movs	r2, #128	; 0x80
 80002ec:	0092      	lsls	r2, r2, #2
 80002ee:	4053      	eors	r3, r2
 80002f0:	b29b      	uxth	r3, r3
 80002f2:	828b      	strh	r3, [r1, #20]
 80002f4:	2380      	movs	r3, #128	; 0x80
 80002f6:	025b      	lsls	r3, r3, #9
 80002f8:	1c18      	adds	r0, r3, #0
 80002fa:	f000 f9dd 	bl	80006b8 <Delay>
 80002fe:	4908      	ldr	r1, [pc, #32]	; (8000320 <Thread_B+0x90>)
 8000300:	4b07      	ldr	r3, [pc, #28]	; (8000320 <Thread_B+0x90>)
 8000302:	8a9b      	ldrh	r3, [r3, #20]
 8000304:	b29b      	uxth	r3, r3
 8000306:	2280      	movs	r2, #128	; 0x80
 8000308:	0092      	lsls	r2, r2, #2
 800030a:	4053      	eors	r3, r2
 800030c:	b29b      	uxth	r3, r3
 800030e:	828b      	strh	r3, [r1, #20]
 8000310:	4b02      	ldr	r3, [pc, #8]	; (800031c <Thread_B+0x8c>)
 8000312:	1c18      	adds	r0, r3, #0
 8000314:	f000 fa3a 	bl	800078c <eMutex_unlock>
 8000318:	e7be      	b.n	8000298 <Thread_B+0x8>
 800031a:	46c0      	nop			; (mov r8, r8)
 800031c:	20000008 	andcs	r0, r0, r8
 8000320:	48000800 	stmdami	r0, {fp}

08000324 <main>:
 8000324:	b580      	push	{r7, lr}
 8000326:	b082      	sub	sp, #8
 8000328:	af02      	add	r7, sp, #8
 800032a:	f7ff ff4f 	bl	80001cc <Init_Hardware>
 800032e:	4809      	ldr	r0, [pc, #36]	; (8000354 <main+0x30>)
 8000330:	4909      	ldr	r1, [pc, #36]	; (8000358 <main+0x34>)
 8000332:	4a0a      	ldr	r2, [pc, #40]	; (800035c <main+0x38>)
 8000334:	4b0a      	ldr	r3, [pc, #40]	; (8000360 <main+0x3c>)
 8000336:	9300      	str	r3, [sp, #0]
 8000338:	2340      	movs	r3, #64	; 0x40
 800033a:	f000 f8cf 	bl	80004dc <eTask_Create>
 800033e:	4809      	ldr	r0, [pc, #36]	; (8000364 <main+0x40>)
 8000340:	4909      	ldr	r1, [pc, #36]	; (8000368 <main+0x44>)
 8000342:	4a0a      	ldr	r2, [pc, #40]	; (800036c <main+0x48>)
 8000344:	4b0a      	ldr	r3, [pc, #40]	; (8000370 <main+0x4c>)
 8000346:	9300      	str	r3, [sp, #0]
 8000348:	2340      	movs	r3, #64	; 0x40
 800034a:	f000 f8c7 	bl	80004dc <eTask_Create>
 800034e:	f000 f951 	bl	80005f4 <eStart_Schedule>
 8000352:	e7fe      	b.n	8000352 <main+0x2e>
 8000354:	20000228 	andcs	r0, r0, r8, lsr #4
 8000358:	080001fd 	stmdaeq	r0, {r0, r2, r3, r4, r5, r6, r7, r8}
 800035c:	20000210 	andcs	r0, r0, r0, lsl r2
 8000360:	20000004 	andcs	r0, r0, r4
 8000364:	2000023c 	andcs	r0, r0, ip, lsr r2
 8000368:	08000291 	stmdaeq	r0, {r0, r4, r7, r9}
 800036c:	20000110 	andcs	r0, r0, r0, lsl r1
 8000370:	20000214 	andcs	r0, r0, r4, lsl r2

08000374 <Port_Init>:
 8000374:	b580      	push	{r7, lr}
 8000376:	af00      	add	r7, sp, #0
 8000378:	46bd      	mov	sp, r7
 800037a:	bd80      	pop	{r7, pc}

0800037c <PendSV_Handler>:
 800037c:	490d      	ldr	r1, [pc, #52]	; (80003b4 <PendSV_Handler+0x38>)
 800037e:	6808      	ldr	r0, [r1, #0]
 8000380:	f3ef 8109 	mrs	r1, PSP
 8000384:	3920      	subs	r1, #32
 8000386:	6001      	str	r1, [r0, #0]
 8000388:	c1f0      	stmia	r1!, {r4, r5, r6, r7}
 800038a:	4644      	mov	r4, r8
 800038c:	464d      	mov	r5, r9
 800038e:	4656      	mov	r6, sl
 8000390:	465f      	mov	r7, fp
 8000392:	c1f0      	stmia	r1!, {r4, r5, r6, r7}
 8000394:	4808      	ldr	r0, [pc, #32]	; (80003b8 <PendSV_Handler+0x3c>)
 8000396:	6801      	ldr	r1, [r0, #0]
 8000398:	6808      	ldr	r0, [r1, #0]
 800039a:	3010      	adds	r0, #16
 800039c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
 800039e:	46a0      	mov	r8, r4
 80003a0:	46a9      	mov	r9, r5
 80003a2:	46b2      	mov	sl, r6
 80003a4:	46bb      	mov	fp, r7
 80003a6:	f380 8809 	msr	PSP, r0
 80003aa:	3820      	subs	r0, #32
 80003ac:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
 80003ae:	4803      	ldr	r0, [pc, #12]	; (80003bc <PendSV_Handler+0x40>)
 80003b0:	4700      	bx	r0
 80003b2:	02240000 	eoreq	r0, r4, #0
 80003b6:	02502000 	subseq	r2, r0, #0
 80003ba:	fffd2000 			; <UNDEFINED> instruction: 0xfffd2000
 80003be:	b5b0ffff 	ldrlt	pc, [r0, #4095]!	; 0xfff

080003c0 <NVIC_SetPriority>:
 80003c0:	b5b0      	push	{r4, r5, r7, lr}
 80003c2:	b082      	sub	sp, #8
 80003c4:	af00      	add	r7, sp, #0
 80003c6:	1c02      	adds	r2, r0, #0
 80003c8:	6039      	str	r1, [r7, #0]
 80003ca:	1dfb      	adds	r3, r7, #7
 80003cc:	701a      	strb	r2, [r3, #0]
 80003ce:	1dfb      	adds	r3, r7, #7
 80003d0:	781b      	ldrb	r3, [r3, #0]
 80003d2:	2b7f      	cmp	r3, #127	; 0x7f
 80003d4:	d92f      	bls.n	8000436 <NVIC_SetPriority+0x76>
 80003d6:	4c2d      	ldr	r4, [pc, #180]	; (800048c <NVIC_SetPriority+0xcc>)
 80003d8:	1dfb      	adds	r3, r7, #7
 80003da:	781b      	ldrb	r3, [r3, #0]
 80003dc:	1c1a      	adds	r2, r3, #0
 80003de:	230f      	movs	r3, #15
 80003e0:	4013      	ands	r3, r2
 80003e2:	3b08      	subs	r3, #8
 80003e4:	0899      	lsrs	r1, r3, #2
 80003e6:	4a29      	ldr	r2, [pc, #164]	; (800048c <NVIC_SetPriority+0xcc>)
 80003e8:	1dfb      	adds	r3, r7, #7
 80003ea:	781b      	ldrb	r3, [r3, #0]
 80003ec:	1c18      	adds	r0, r3, #0
 80003ee:	230f      	movs	r3, #15
 80003f0:	4003      	ands	r3, r0
 80003f2:	3b08      	subs	r3, #8
 80003f4:	089b      	lsrs	r3, r3, #2
 80003f6:	3306      	adds	r3, #6
 80003f8:	009b      	lsls	r3, r3, #2
 80003fa:	18d3      	adds	r3, r2, r3
 80003fc:	685b      	ldr	r3, [r3, #4]
 80003fe:	1dfa      	adds	r2, r7, #7
 8000400:	7812      	ldrb	r2, [r2, #0]
 8000402:	1c10      	adds	r0, r2, #0
 8000404:	2203      	movs	r2, #3
 8000406:	4002      	ands	r2, r0
 8000408:	00d2      	lsls	r2, r2, #3
 800040a:	1c10      	adds	r0, r2, #0
 800040c:	22ff      	movs	r2, #255	; 0xff
 800040e:	4082      	lsls	r2, r0
 8000410:	43d2      	mvns	r2, r2
 8000412:	401a      	ands	r2, r3
 8000414:	683b      	ldr	r3, [r7, #0]
 8000416:	019b      	lsls	r3, r3, #6
 8000418:	20ff      	movs	r0, #255	; 0xff
 800041a:	4003      	ands	r3, r0
 800041c:	1df8      	adds	r0, r7, #7
 800041e:	7800      	ldrb	r0, [r0, #0]
 8000420:	1c05      	adds	r5, r0, #0
 8000422:	2003      	movs	r0, #3
 8000424:	4028      	ands	r0, r5
 8000426:	00c0      	lsls	r0, r0, #3
 8000428:	4083      	lsls	r3, r0
 800042a:	431a      	orrs	r2, r3
 800042c:	1d8b      	adds	r3, r1, #6
 800042e:	009b      	lsls	r3, r3, #2
 8000430:	18e3      	adds	r3, r4, r3
 8000432:	605a      	str	r2, [r3, #4]
 8000434:	e026      	b.n	8000484 <NVIC_SetPriority+0xc4>
 8000436:	4c16      	ldr	r4, [pc, #88]	; (8000490 <NVIC_SetPriority+0xd0>)
 8000438:	1dfb      	adds	r3, r7, #7
 800043a:	781b      	ldrb	r3, [r3, #0]
 800043c:	b25b      	sxtb	r3, r3
 800043e:	089b      	lsrs	r3, r3, #2
 8000440:	4913      	ldr	r1, [pc, #76]	; (8000490 <NVIC_SetPriority+0xd0>)
 8000442:	1dfa      	adds	r2, r7, #7
 8000444:	7812      	ldrb	r2, [r2, #0]
 8000446:	b252      	sxtb	r2, r2
 8000448:	0892      	lsrs	r2, r2, #2
 800044a:	32c0      	adds	r2, #192	; 0xc0
 800044c:	0092      	lsls	r2, r2, #2
 800044e:	5852      	ldr	r2, [r2, r1]
 8000450:	1df9      	adds	r1, r7, #7
 8000452:	7809      	ldrb	r1, [r1, #0]
 8000454:	1c08      	adds	r0, r1, #0
 8000456:	2103      	movs	r1, #3
 8000458:	4001      	ands	r1, r0
 800045a:	00c9      	lsls	r1, r1, #3
 800045c:	1c08      	adds	r0, r1, #0
 800045e:	21ff      	movs	r1, #255	; 0xff
 8000460:	4081      	lsls	r1, r0
 8000462:	43c9      	mvns	r1, r1
 8000464:	4011      	ands	r1, r2
 8000466:	683a      	ldr	r2, [r7, #0]
 8000468:	0192      	lsls	r2, r2, #6
 800046a:	20ff      	movs	r0, #255	; 0xff
 800046c:	4002      	ands	r2, r0
 800046e:	1df8      	adds	r0, r7, #7
 8000470:	7800      	ldrb	r0, [r0, #0]
 8000472:	1c05      	adds	r5, r0, #0
 8000474:	2003      	movs	r0, #3
 8000476:	4028      	ands	r0, r5
 8000478:	00c0      	lsls	r0, r0, #3
 800047a:	4082      	lsls	r2, r0
 800047c:	430a      	orrs	r2, r1
 800047e:	33c0      	adds	r3, #192	; 0xc0
 8000480:	009b      	lsls	r3, r3, #2
 8000482:	511a      	str	r2, [r3, r4]
 8000484:	46bd      	mov	sp, r7
 8000486:	b002      	add	sp, #8
 8000488:	bdb0      	pop	{r4, r5, r7, pc}
 800048a:	46c0      	nop			; (mov r8, r8)
 800048c:	e000ed00 	and	lr, r0, r0, lsl #26
 8000490:	e000e100 	and	lr, r0, r0, lsl #2

08000494 <SysTick_Config>:
 8000494:	b580      	push	{r7, lr}
 8000496:	b082      	sub	sp, #8
 8000498:	af00      	add	r7, sp, #0
 800049a:	6078      	str	r0, [r7, #4]
 800049c:	687b      	ldr	r3, [r7, #4]
 800049e:	3b01      	subs	r3, #1
 80004a0:	4a0c      	ldr	r2, [pc, #48]	; (80004d4 <SysTick_Config+0x40>)
 80004a2:	4293      	cmp	r3, r2
 80004a4:	d901      	bls.n	80004aa <SysTick_Config+0x16>
 80004a6:	2301      	movs	r3, #1
 80004a8:	e010      	b.n	80004cc <SysTick_Config+0x38>
 80004aa:	4b0b      	ldr	r3, [pc, #44]	; (80004d8 <SysTick_Config+0x44>)
 80004ac:	687a      	ldr	r2, [r7, #4]
 80004ae:	3a01      	subs	r2, #1
 80004b0:	605a      	str	r2, [r3, #4]
 80004b2:	2301      	movs	r3, #1
 80004b4:	425b      	negs	r3, r3
 80004b6:	1c18      	adds	r0, r3, #0
 80004b8:	2103      	movs	r1, #3
 80004ba:	f7ff ff81 	bl	80003c0 <NVIC_SetPriority>
 80004be:	4b06      	ldr	r3, [pc, #24]	; (80004d8 <SysTick_Config+0x44>)
 80004c0:	2200      	movs	r2, #0
 80004c2:	609a      	str	r2, [r3, #8]
 80004c4:	4b04      	ldr	r3, [pc, #16]	; (80004d8 <SysTick_Config+0x44>)
 80004c6:	2207      	movs	r2, #7
 80004c8:	601a      	str	r2, [r3, #0]
 80004ca:	2300      	movs	r3, #0
 80004cc:	1c18      	adds	r0, r3, #0
 80004ce:	46bd      	mov	sp, r7
 80004d0:	b002      	add	sp, #8
 80004d2:	bd80      	pop	{r7, pc}
 80004d4:	00ffffff 	ldrshteq	pc, [pc], #255	; <UNPREDICTABLE>
 80004d8:	e000e010 	and	lr, r0, r0, lsl r0

080004dc <eTask_Create>:
 80004dc:	b580      	push	{r7, lr}
 80004de:	b084      	sub	sp, #16
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	60f8      	str	r0, [r7, #12]
 80004e4:	60b9      	str	r1, [r7, #8]
 80004e6:	607a      	str	r2, [r7, #4]
 80004e8:	603b      	str	r3, [r7, #0]
 80004ea:	68fb      	ldr	r3, [r7, #12]
 80004ec:	2b00      	cmp	r3, #0
 80004ee:	d109      	bne.n	8000504 <eTask_Create+0x28>
 80004f0:	68bb      	ldr	r3, [r7, #8]
 80004f2:	2b00      	cmp	r3, #0
 80004f4:	d106      	bne.n	8000504 <eTask_Create+0x28>
 80004f6:	687b      	ldr	r3, [r7, #4]
 80004f8:	2b00      	cmp	r3, #0
 80004fa:	d103      	bne.n	8000504 <eTask_Create+0x28>
 80004fc:	683b      	ldr	r3, [r7, #0]
 80004fe:	2b0f      	cmp	r3, #15
 8000500:	d900      	bls.n	8000504 <eTask_Create+0x28>
 8000502:	e01d      	b.n	8000540 <eTask_Create+0x64>
 8000504:	68fb      	ldr	r3, [r7, #12]
 8000506:	683a      	ldr	r2, [r7, #0]
 8000508:	601a      	str	r2, [r3, #0]
 800050a:	68fb      	ldr	r3, [r7, #12]
 800050c:	69ba      	ldr	r2, [r7, #24]
 800050e:	611a      	str	r2, [r3, #16]
 8000510:	68fb      	ldr	r3, [r7, #12]
 8000512:	68ba      	ldr	r2, [r7, #8]
 8000514:	60da      	str	r2, [r3, #12]
 8000516:	687b      	ldr	r3, [r7, #4]
 8000518:	3b1c      	subs	r3, #28
 800051a:	69ba      	ldr	r2, [r7, #24]
 800051c:	601a      	str	r2, [r3, #0]
 800051e:	687b      	ldr	r3, [r7, #4]
 8000520:	3b08      	subs	r3, #8
 8000522:	68ba      	ldr	r2, [r7, #8]
 8000524:	601a      	str	r2, [r3, #0]
 8000526:	687b      	ldr	r3, [r7, #4]
 8000528:	3b04      	subs	r3, #4
 800052a:	68ba      	ldr	r2, [r7, #8]
 800052c:	601a      	str	r2, [r3, #0]
 800052e:	687b      	ldr	r3, [r7, #4]
 8000530:	2280      	movs	r2, #128	; 0x80
 8000532:	0452      	lsls	r2, r2, #17
 8000534:	601a      	str	r2, [r3, #0]
 8000536:	687b      	ldr	r3, [r7, #4]
 8000538:	3b3c      	subs	r3, #60	; 0x3c
 800053a:	1c1a      	adds	r2, r3, #0
 800053c:	68fb      	ldr	r3, [r7, #12]
 800053e:	605a      	str	r2, [r3, #4]
 8000540:	46bd      	mov	sp, r7
 8000542:	b004      	add	sp, #16
 8000544:	bd80      	pop	{r7, pc}
 8000546:	46c0      	nop			; (mov r8, r8)

08000548 <sTask_Switch>:
 8000548:	b580      	push	{r7, lr}
 800054a:	af00      	add	r7, sp, #0
 800054c:	4b05      	ldr	r3, [pc, #20]	; (8000564 <sTask_Switch+0x1c>)
 800054e:	781b      	ldrb	r3, [r3, #0]
 8000550:	2201      	movs	r2, #1
 8000552:	4053      	eors	r3, r2
 8000554:	b2da      	uxtb	r2, r3
 8000556:	4b03      	ldr	r3, [pc, #12]	; (8000564 <sTask_Switch+0x1c>)
 8000558:	701a      	strb	r2, [r3, #0]
 800055a:	4b02      	ldr	r3, [pc, #8]	; (8000564 <sTask_Switch+0x1c>)
 800055c:	781b      	ldrb	r3, [r3, #0]
 800055e:	1c18      	adds	r0, r3, #0
 8000560:	46bd      	mov	sp, r7
 8000562:	bd80      	pop	{r7, pc}
 8000564:	20000010 	andcs	r0, r0, r0, lsl r0

08000568 <sTask_Schedule>:
 8000568:	b580      	push	{r7, lr}
 800056a:	af00      	add	r7, sp, #0
 800056c:	4b1b      	ldr	r3, [pc, #108]	; (80005dc <sTask_Schedule+0x74>)
 800056e:	2200      	movs	r2, #0
 8000570:	609a      	str	r2, [r3, #8]
 8000572:	4b1b      	ldr	r3, [pc, #108]	; (80005e0 <sTask_Schedule+0x78>)
 8000574:	685a      	ldr	r2, [r3, #4]
 8000576:	4b1a      	ldr	r3, [pc, #104]	; (80005e0 <sTask_Schedule+0x78>)
 8000578:	601a      	str	r2, [r3, #0]
 800057a:	f7ff ffe5 	bl	8000548 <sTask_Switch>
 800057e:	1c03      	adds	r3, r0, #0
 8000580:	1c1a      	adds	r2, r3, #0
 8000582:	4b17      	ldr	r3, [pc, #92]	; (80005e0 <sTask_Schedule+0x78>)
 8000584:	605a      	str	r2, [r3, #4]
 8000586:	4b16      	ldr	r3, [pc, #88]	; (80005e0 <sTask_Schedule+0x78>)
 8000588:	681a      	ldr	r2, [r3, #0]
 800058a:	1c13      	adds	r3, r2, #0
 800058c:	009b      	lsls	r3, r3, #2
 800058e:	189b      	adds	r3, r3, r2
 8000590:	009b      	lsls	r3, r3, #2
 8000592:	4a14      	ldr	r2, [pc, #80]	; (80005e4 <sTask_Schedule+0x7c>)
 8000594:	189b      	adds	r3, r3, r2
 8000596:	1d1a      	adds	r2, r3, #4
 8000598:	4b13      	ldr	r3, [pc, #76]	; (80005e8 <sTask_Schedule+0x80>)
 800059a:	601a      	str	r2, [r3, #0]
 800059c:	4b10      	ldr	r3, [pc, #64]	; (80005e0 <sTask_Schedule+0x78>)
 800059e:	685a      	ldr	r2, [r3, #4]
 80005a0:	1c13      	adds	r3, r2, #0
 80005a2:	009b      	lsls	r3, r3, #2
 80005a4:	189b      	adds	r3, r3, r2
 80005a6:	009b      	lsls	r3, r3, #2
 80005a8:	4a0e      	ldr	r2, [pc, #56]	; (80005e4 <sTask_Schedule+0x7c>)
 80005aa:	189b      	adds	r3, r3, r2
 80005ac:	1d1a      	adds	r2, r3, #4
 80005ae:	4b0f      	ldr	r3, [pc, #60]	; (80005ec <sTask_Schedule+0x84>)
 80005b0:	601a      	str	r2, [r3, #0]
 80005b2:	4b0b      	ldr	r3, [pc, #44]	; (80005e0 <sTask_Schedule+0x78>)
 80005b4:	685a      	ldr	r2, [r3, #4]
 80005b6:	490b      	ldr	r1, [pc, #44]	; (80005e4 <sTask_Schedule+0x7c>)
 80005b8:	1c13      	adds	r3, r2, #0
 80005ba:	009b      	lsls	r3, r3, #2
 80005bc:	189b      	adds	r3, r3, r2
 80005be:	009b      	lsls	r3, r3, #2
 80005c0:	18cb      	adds	r3, r1, r3
 80005c2:	3308      	adds	r3, #8
 80005c4:	685a      	ldr	r2, [r3, #4]
 80005c6:	4b06      	ldr	r3, [pc, #24]	; (80005e0 <sTask_Schedule+0x78>)
 80005c8:	609a      	str	r2, [r3, #8]
 80005ca:	4b09      	ldr	r3, [pc, #36]	; (80005f0 <sTask_Schedule+0x88>)
 80005cc:	4a08      	ldr	r2, [pc, #32]	; (80005f0 <sTask_Schedule+0x88>)
 80005ce:	6852      	ldr	r2, [r2, #4]
 80005d0:	2180      	movs	r1, #128	; 0x80
 80005d2:	0549      	lsls	r1, r1, #21
 80005d4:	430a      	orrs	r2, r1
 80005d6:	605a      	str	r2, [r3, #4]
 80005d8:	46bd      	mov	sp, r7
 80005da:	bd80      	pop	{r7, pc}
 80005dc:	e000e010 	and	lr, r0, r0, lsl r0
 80005e0:	20000218 	andcs	r0, r0, r8, lsl r2
 80005e4:	20000228 	andcs	r0, r0, r8, lsr #4
 80005e8:	20000224 	andcs	r0, r0, r4, lsr #4
 80005ec:	20000250 	andcs	r0, r0, r0, asr r2
 80005f0:	e000ed00 	and	lr, r0, r0, lsl #26

080005f4 <eStart_Schedule>:
 80005f4:	b580      	push	{r7, lr}
 80005f6:	b082      	sub	sp, #8
 80005f8:	af00      	add	r7, sp, #0
 80005fa:	4b28      	ldr	r3, [pc, #160]	; (800069c <eStart_Schedule+0xa8>)
 80005fc:	2200      	movs	r2, #0
 80005fe:	601a      	str	r2, [r3, #0]
 8000600:	4b26      	ldr	r3, [pc, #152]	; (800069c <eStart_Schedule+0xa8>)
 8000602:	2200      	movs	r2, #0
 8000604:	605a      	str	r2, [r3, #4]
 8000606:	f7ff ff9f 	bl	8000548 <sTask_Switch>
 800060a:	4b24      	ldr	r3, [pc, #144]	; (800069c <eStart_Schedule+0xa8>)
 800060c:	685a      	ldr	r2, [r3, #4]
 800060e:	4b23      	ldr	r3, [pc, #140]	; (800069c <eStart_Schedule+0xa8>)
 8000610:	601a      	str	r2, [r3, #0]
 8000612:	4b22      	ldr	r3, [pc, #136]	; (800069c <eStart_Schedule+0xa8>)
 8000614:	681a      	ldr	r2, [r3, #0]
 8000616:	1c13      	adds	r3, r2, #0
 8000618:	009b      	lsls	r3, r3, #2
 800061a:	189b      	adds	r3, r3, r2
 800061c:	009b      	lsls	r3, r3, #2
 800061e:	4a20      	ldr	r2, [pc, #128]	; (80006a0 <eStart_Schedule+0xac>)
 8000620:	189b      	adds	r3, r3, r2
 8000622:	1d1a      	adds	r2, r3, #4
 8000624:	4b1f      	ldr	r3, [pc, #124]	; (80006a4 <eStart_Schedule+0xb0>)
 8000626:	601a      	str	r2, [r3, #0]
 8000628:	4b1c      	ldr	r3, [pc, #112]	; (800069c <eStart_Schedule+0xa8>)
 800062a:	685a      	ldr	r2, [r3, #4]
 800062c:	1c13      	adds	r3, r2, #0
 800062e:	009b      	lsls	r3, r3, #2
 8000630:	189b      	adds	r3, r3, r2
 8000632:	009b      	lsls	r3, r3, #2
 8000634:	4a1a      	ldr	r2, [pc, #104]	; (80006a0 <eStart_Schedule+0xac>)
 8000636:	189b      	adds	r3, r3, r2
 8000638:	1d1a      	adds	r2, r3, #4
 800063a:	4b1b      	ldr	r3, [pc, #108]	; (80006a8 <eStart_Schedule+0xb4>)
 800063c:	601a      	str	r2, [r3, #0]
 800063e:	4b17      	ldr	r3, [pc, #92]	; (800069c <eStart_Schedule+0xa8>)
 8000640:	681a      	ldr	r2, [r3, #0]
 8000642:	4917      	ldr	r1, [pc, #92]	; (80006a0 <eStart_Schedule+0xac>)
 8000644:	1c13      	adds	r3, r2, #0
 8000646:	009b      	lsls	r3, r3, #2
 8000648:	189b      	adds	r3, r3, r2
 800064a:	009b      	lsls	r3, r3, #2
 800064c:	18cb      	adds	r3, r1, r3
 800064e:	685b      	ldr	r3, [r3, #4]
 8000650:	3320      	adds	r3, #32
 8000652:	607b      	str	r3, [r7, #4]
 8000654:	687b      	ldr	r3, [r7, #4]
 8000656:	f383 8809 	msr	PSP, r3
 800065a:	4b10      	ldr	r3, [pc, #64]	; (800069c <eStart_Schedule+0xa8>)
 800065c:	685a      	ldr	r2, [r3, #4]
 800065e:	4910      	ldr	r1, [pc, #64]	; (80006a0 <eStart_Schedule+0xac>)
 8000660:	1c13      	adds	r3, r2, #0
 8000662:	009b      	lsls	r3, r3, #2
 8000664:	189b      	adds	r3, r3, r2
 8000666:	009b      	lsls	r3, r3, #2
 8000668:	18cb      	adds	r3, r1, r3
 800066a:	3308      	adds	r3, #8
 800066c:	685a      	ldr	r2, [r3, #4]
 800066e:	4b0b      	ldr	r3, [pc, #44]	; (800069c <eStart_Schedule+0xa8>)
 8000670:	609a      	str	r2, [r3, #8]
 8000672:	23fa      	movs	r3, #250	; 0xfa
 8000674:	015b      	lsls	r3, r3, #5
 8000676:	1c18      	adds	r0, r3, #0
 8000678:	f7ff ff0c 	bl	8000494 <SysTick_Config>
 800067c:	2302      	movs	r3, #2
 800067e:	425b      	negs	r3, r3
 8000680:	1c18      	adds	r0, r3, #0
 8000682:	21ff      	movs	r1, #255	; 0xff
 8000684:	f7ff fe9c 	bl	80003c0 <NVIC_SetPriority>
 8000688:	2301      	movs	r3, #1
 800068a:	425b      	negs	r3, r3
 800068c:	1c18      	adds	r0, r3, #0
 800068e:	21ff      	movs	r1, #255	; 0xff
 8000690:	f7ff fe96 	bl	80003c0 <NVIC_SetPriority>
 8000694:	46bd      	mov	sp, r7
 8000696:	b002      	add	sp, #8
 8000698:	bd80      	pop	{r7, pc}
 800069a:	46c0      	nop			; (mov r8, r8)
 800069c:	20000218 	andcs	r0, r0, r8, lsl r2
 80006a0:	20000228 	andcs	r0, r0, r8, lsr #4
 80006a4:	20000224 	andcs	r0, r0, r4, lsr #4
 80006a8:	20000250 	andcs	r0, r0, r0, asr r2

080006ac <SysTick_Handler>:
 80006ac:	b580      	push	{r7, lr}
 80006ae:	af00      	add	r7, sp, #0
 80006b0:	f7ff ff5a 	bl	8000568 <sTask_Schedule>
 80006b4:	46bd      	mov	sp, r7
 80006b6:	bd80      	pop	{r7, pc}

080006b8 <Delay>:
 80006b8:	b580      	push	{r7, lr}
 80006ba:	b082      	sub	sp, #8
 80006bc:	af00      	add	r7, sp, #0
 80006be:	6078      	str	r0, [r7, #4]
 80006c0:	46c0      	nop			; (mov r8, r8)
 80006c2:	687b      	ldr	r3, [r7, #4]
 80006c4:	1e5a      	subs	r2, r3, #1
 80006c6:	607a      	str	r2, [r7, #4]
 80006c8:	2b00      	cmp	r3, #0
 80006ca:	d1fa      	bne.n	80006c2 <Delay+0xa>
 80006cc:	46bd      	mov	sp, r7
 80006ce:	b002      	add	sp, #8
 80006d0:	bd80      	pop	{r7, pc}
 80006d2:	46c0      	nop			; (mov r8, r8)

080006d4 <eMutex_lock>:
 80006d4:	b580      	push	{r7, lr}
 80006d6:	b082      	sub	sp, #8
 80006d8:	af00      	add	r7, sp, #0
 80006da:	6078      	str	r0, [r7, #4]
 80006dc:	b672      	cpsid	i
 80006de:	687b      	ldr	r3, [r7, #4]
 80006e0:	681b      	ldr	r3, [r3, #0]
 80006e2:	2b00      	cmp	r3, #0
 80006e4:	d110      	bne.n	8000708 <eMutex_lock+0x34>
 80006e6:	687b      	ldr	r3, [r7, #4]
 80006e8:	791b      	ldrb	r3, [r3, #4]
 80006ea:	2b00      	cmp	r3, #0
 80006ec:	d105      	bne.n	80006fa <eMutex_lock+0x26>
 80006ee:	4b0f      	ldr	r3, [pc, #60]	; (800072c <eMutex_lock+0x58>)
 80006f0:	689a      	ldr	r2, [r3, #8]
 80006f2:	687b      	ldr	r3, [r7, #4]
 80006f4:	601a      	str	r2, [r3, #0]
 80006f6:	b662      	cpsie	i
 80006f8:	e015      	b.n	8000726 <eMutex_lock+0x52>
 80006fa:	687b      	ldr	r3, [r7, #4]
 80006fc:	2200      	movs	r2, #0
 80006fe:	711a      	strb	r2, [r3, #4]
 8000700:	b662      	cpsie	i
 8000702:	f7ff ff31 	bl	8000568 <sTask_Schedule>
 8000706:	e00d      	b.n	8000724 <eMutex_lock+0x50>
 8000708:	687b      	ldr	r3, [r7, #4]
 800070a:	681a      	ldr	r2, [r3, #0]
 800070c:	4b07      	ldr	r3, [pc, #28]	; (800072c <eMutex_lock+0x58>)
 800070e:	689b      	ldr	r3, [r3, #8]
 8000710:	429a      	cmp	r2, r3
 8000712:	d101      	bne.n	8000718 <eMutex_lock+0x44>
 8000714:	b662      	cpsie	i
 8000716:	e006      	b.n	8000726 <eMutex_lock+0x52>
 8000718:	687b      	ldr	r3, [r7, #4]
 800071a:	2201      	movs	r2, #1
 800071c:	711a      	strb	r2, [r3, #4]
 800071e:	b662      	cpsie	i
 8000720:	f7ff ff22 	bl	8000568 <sTask_Schedule>
 8000724:	e7da      	b.n	80006dc <eMutex_lock+0x8>
 8000726:	46bd      	mov	sp, r7
 8000728:	b002      	add	sp, #8
 800072a:	bd80      	pop	{r7, pc}
 800072c:	20000218 	andcs	r0, r0, r8, lsl r2

08000730 <eMutex_try_lock>:
 8000730:	b580      	push	{r7, lr}
 8000732:	b082      	sub	sp, #8
 8000734:	af00      	add	r7, sp, #0
 8000736:	6078      	str	r0, [r7, #4]
 8000738:	b672      	cpsid	i
 800073a:	687b      	ldr	r3, [r7, #4]
 800073c:	681b      	ldr	r3, [r3, #0]
 800073e:	2b00      	cmp	r3, #0
 8000740:	d112      	bne.n	8000768 <eMutex_try_lock+0x38>
 8000742:	687b      	ldr	r3, [r7, #4]
 8000744:	791b      	ldrb	r3, [r3, #4]
 8000746:	2b00      	cmp	r3, #0
 8000748:	d106      	bne.n	8000758 <eMutex_try_lock+0x28>
 800074a:	4b0f      	ldr	r3, [pc, #60]	; (8000788 <eMutex_try_lock+0x58>)
 800074c:	689a      	ldr	r2, [r3, #8]
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	601a      	str	r2, [r3, #0]
 8000752:	b662      	cpsie	i
 8000754:	2300      	movs	r3, #0
 8000756:	e012      	b.n	800077e <eMutex_try_lock+0x4e>
 8000758:	687b      	ldr	r3, [r7, #4]
 800075a:	2200      	movs	r2, #0
 800075c:	711a      	strb	r2, [r3, #4]
 800075e:	b662      	cpsie	i
 8000760:	f7ff ff02 	bl	8000568 <sTask_Schedule>
 8000764:	23ff      	movs	r3, #255	; 0xff
 8000766:	e00a      	b.n	800077e <eMutex_try_lock+0x4e>
 8000768:	687b      	ldr	r3, [r7, #4]
 800076a:	681a      	ldr	r2, [r3, #0]
 800076c:	4b06      	ldr	r3, [pc, #24]	; (8000788 <eMutex_try_lock+0x58>)
 800076e:	689b      	ldr	r3, [r3, #8]
 8000770:	429a      	cmp	r2, r3
 8000772:	d102      	bne.n	800077a <eMutex_try_lock+0x4a>
 8000774:	b662      	cpsie	i
 8000776:	2300      	movs	r3, #0
 8000778:	e001      	b.n	800077e <eMutex_try_lock+0x4e>
 800077a:	b662      	cpsie	i
 800077c:	23ff      	movs	r3, #255	; 0xff
 800077e:	1c18      	adds	r0, r3, #0
 8000780:	46bd      	mov	sp, r7
 8000782:	b002      	add	sp, #8
 8000784:	bd80      	pop	{r7, pc}
 8000786:	46c0      	nop			; (mov r8, r8)
 8000788:	20000218 	andcs	r0, r0, r8, lsl r2

0800078c <eMutex_unlock>:
 800078c:	b580      	push	{r7, lr}
 800078e:	b082      	sub	sp, #8
 8000790:	af00      	add	r7, sp, #0
 8000792:	6078      	str	r0, [r7, #4]
 8000794:	687b      	ldr	r3, [r7, #4]
 8000796:	681a      	ldr	r2, [r3, #0]
 8000798:	4b04      	ldr	r3, [pc, #16]	; (80007ac <eMutex_unlock+0x20>)
 800079a:	689b      	ldr	r3, [r3, #8]
 800079c:	429a      	cmp	r2, r3
 800079e:	d102      	bne.n	80007a6 <eMutex_unlock+0x1a>
 80007a0:	687b      	ldr	r3, [r7, #4]
 80007a2:	2200      	movs	r2, #0
 80007a4:	601a      	str	r2, [r3, #0]
 80007a6:	46bd      	mov	sp, r7
 80007a8:	b002      	add	sp, #8
 80007aa:	bd80      	pop	{r7, pc}
 80007ac:	20000218 	andcs	r0, r0, r8, lsl r2

Disassembly of section .data:

20000000 <OS_PSPs>:
20000000:	00000002 	andeq	r0, r0, r2

20000004 <vA>:
20000004:	00000005 	andeq	r0, r0, r5

Disassembly of section .bss:

20000008 <MutexA>:
	...

20000010 <c.4356>:
	...

20000011 <_end_bss>:
20000011:	00000000 	andeq	r0, r0, r0

20000014 <stack_b>:
	...

20000114 <stack_a>:
	...

20000214 <vB>:
20000214:	00000000 	andeq	r0, r0, r0

20000218 <sTask_Status>:
	...

20000224 <pPointer_Save_Context_Stask>:
20000224:	00000000 	andeq	r0, r0, r0

20000228 <eTask_Element>:
	...

20000250 <pPointer_Load_Context_Stask>:
20000250:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00002c41 	andeq	r2, r0, r1, asr #24
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000022 	andeq	r0, r0, r2, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600304d 	streq	r3, [r0], -sp, asr #32
  1c:	094d070c 	stmdbeq	sp, {r2, r3, r8, r9, sl}^
  20:	14041201 	strne	r1, [r4], #-513	; 0x201
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	1a011803 	bne	4603c <_size_bss+0x45df0>
  2c:	Address 0x0000002c is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_size_bss+0x10d0ad8>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	204d5241 	subcs	r5, sp, r1, asr #4
  18:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xd45
  1c:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
  20:	6f725020 	svcvs	0x00725020
  24:	73736563 	cmnvc	r3, #415236096	; 0x18c00000
  28:	2973726f 	ldmdbcs	r3!, {r0, r1, r2, r3, r5, r6, r9, ip, sp, lr}^
  2c:	392e3420 	stmdbcc	lr!, {r5, sl, ip, sp}
  30:	3220332e 	eorcc	r3, r0, #-1207959552	; 0xb8000000
  34:	30353130 	eorscc	r3, r5, r0, lsr r1
  38:	20333033 	eorscs	r3, r3, r3, lsr r0
  3c:	6c657228 	sfmvs	f7, 2, [r5], #-160	; 0xffffff60
  40:	65736165 	ldrbvs	r6, [r3, #-357]!	; 0x165
  44:	415b2029 	cmpmi	fp, r9, lsr #32
  48:	652f4d52 	strvs	r4, [pc, #-3410]!	; fffff2fe <pPointer_Load_Context_Stask+0xdffff0ae>
  4c:	6465626d 	strbtvs	r6, [r5], #-621	; 0x26d
  50:	2d646564 	cfstr64cs	mvdx6, [r4, #-400]!	; 0xfffffe70
  54:	2d395f34 	ldccs	15, cr5, [r9, #-208]!	; 0xffffff30
  58:	6e617262 	cdpvs	2, 6, cr7, cr1, cr2, {3}
  5c:	72206863 	eorvc	r6, r0, #6488064	; 0x630000
  60:	73697665 	cmnvc	r9, #105906176	; 0x6500000
  64:	206e6f69 	rsbcs	r6, lr, r9, ror #30
  68:	32313232 	eorscc	r3, r1, #536870915	; 0x20000003
  6c:	005d3032 	subseq	r3, sp, r2, lsr r0

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	000002be 			; <UNDEFINED> instruction: 0x000002be
       4:	00000004 	andeq	r0, r0, r4
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	0000018e 	andeq	r0, r0, lr, lsl #3
      10:	00012201 	andeq	r2, r1, r1, lsl #4
      14:	00022100 	andeq	r2, r2, r0, lsl #2
	...
      24:	06010200 	streq	r0, [r1], -r0, lsl #4
      28:	000000ac 	andeq	r0, r0, ip, lsr #1
      2c:	17050202 	strne	r0, [r5, -r2, lsl #4]
      30:	02000002 	andeq	r0, r0, #2
      34:	01560504 	cmpeq	r6, r4, lsl #10
      38:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
      3c:	00015105 	andeq	r5, r1, r5, lsl #2
      40:	01000300 	mrseq	r0, LR_irq
      44:	2e020000 	cdpcs	0, 0, cr0, cr2, cr0, {0}
      48:	0000004c 	andeq	r0, r0, ip, asr #32
      4c:	aa080102 	bge	20045c <_size_bss+0x200210>
      50:	03000000 	movweq	r0, #0
      54:	0000020e 	andeq	r0, r0, lr, lsl #4
      58:	005e3102 	subseq	r3, lr, r2, lsl #2
      5c:	02020000 	andeq	r0, r2, #0
      60:	00008507 	andeq	r8, r0, r7, lsl #10
      64:	00980300 	addseq	r0, r8, r0, lsl #6
      68:	34020000 	strcc	r0, [r2], #-0
      6c:	00000070 	andeq	r0, r0, r0, ror r0
      70:	ee070402 	cdp	4, 0, cr0, cr7, cr2, {0}
      74:	02000000 	andeq	r0, r0, #0
      78:	00e90708 	rsceq	r0, r9, r8, lsl #14
      7c:	04040000 	streq	r0, [r4], #-0
      80:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
      84:	07040200 	streq	r0, [r4, -r0, lsl #4]
      88:	000000f3 	strdeq	r0, [r0], -r3
      8c:	48070402 	stmdami	r7, {r1, sl}
      90:	05000001 	streq	r0, [r0, #-1]
      94:	00000065 	andeq	r0, r0, r5, rrx
      98:	00006506 	andeq	r6, r0, r6, lsl #10
      9c:	0000a800 	andeq	sl, r0, r0, lsl #16
      a0:	008c0700 	addeq	r0, ip, r0, lsl #14
      a4:	00010000 	andeq	r0, r1, r0
      a8:	00005305 	andeq	r5, r0, r5, lsl #6
      ac:	032c0800 	teqeq	ip, #0, 16
      b0:	016d0268 	cmneq	sp, r8, ror #4
      b4:	0f090000 	svceq	0x00090000
      b8:	03000000 	movweq	r0, #0
      bc:	0093026a 	addseq	r0, r3, sl, ror #4
      c0:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
      c4:	00000079 	andeq	r0, r0, r9, ror r0
      c8:	a8026b03 	stmdage	r2, {r0, r1, r8, r9, fp, sp, lr}
      cc:	04000000 	streq	r0, [r0], #-0
      d0:	00004509 	andeq	r4, r0, r9, lsl #10
      d4:	026c0300 	rsbeq	r0, ip, #0, 6
      d8:	00000053 	andeq	r0, r0, r3, asr r0
      dc:	00d40906 	sbcseq	r0, r4, r6, lsl #18
      e0:	6d030000 	stcvs	0, cr0, [r3, #-0]
      e4:	00009302 	andeq	r9, r0, r2, lsl #6
      e8:	42090800 	andmi	r0, r9, #0, 16
      ec:	03000001 	movweq	r0, #1
      f0:	0093026e 	addseq	r0, r3, lr, ror #4
      f4:	0a0c0000 	beq	3000fc <_size_bss+0x2ffeb0>
      f8:	00524449 	subseq	r4, r2, r9, asr #8
      fc:	a8026f03 	stmdage	r2, {r0, r1, r8, r9, sl, fp, sp, lr}
     100:	10000000 	andne	r0, r0, r0
     104:	00004f09 	andeq	r4, r0, r9, lsl #30
     108:	02700300 	rsbseq	r0, r0, #0, 6
     10c:	00000053 	andeq	r0, r0, r3, asr r0
     110:	444f0a12 	strbmi	r0, [pc], #-2578	; 118 <_size_data+0x110>
     114:	71030052 	qaddvc	r0, r2, r3
     118:	0000a802 	andeq	sl, r0, r2, lsl #16
     11c:	59091400 	stmdbpl	r9, {sl, ip}
     120:	03000000 	movweq	r0, #0
     124:	00530272 	subseq	r0, r3, r2, ror r2
     128:	09160000 	ldmdbeq	r6, {}	; <UNPREDICTABLE>
     12c:	00000023 	andeq	r0, r0, r3, lsr #32
     130:	93027303 	movwls	r7, #8963	; 0x2303
     134:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     138:	00000a09 	andeq	r0, r0, r9, lsl #20
     13c:	02740300 	rsbseq	r0, r4, #0, 6
     140:	00000093 	muleq	r0, r3, r0
     144:	46410a1c 			; <UNDEFINED> instruction: 0x46410a1c
     148:	75030052 	strvc	r0, [r3, #-82]	; 0x52
     14c:	00016d02 	andeq	r6, r1, r2, lsl #26
     150:	420a2000 	andmi	r2, sl, #0
     154:	03005252 	movweq	r5, #594	; 0x252
     158:	00a80276 	adceq	r0, r8, r6, ror r2
     15c:	09280000 	stmdbeq	r8!, {}	; <UNPREDICTABLE>
     160:	00000063 	andeq	r0, r0, r3, rrx
     164:	53027703 	movwpl	r7, #9987	; 0x2703
     168:	2a000000 	bcs	170 <_size_data+0x168>
     16c:	00980500 	addseq	r0, r8, r0, lsl #10
     170:	dc0b0000 	stcle	0, cr0, [fp], {-0}
     174:	03000000 	movweq	r0, #0
     178:	00ad0278 	adceq	r0, sp, r8, ror r2
     17c:	11030000 	mrsne	r0, (UNDEF: 3)
     180:	04000001 	streq	r0, [r0], #-1
     184:	00018908 	andeq	r8, r1, r8, lsl #18
     188:	8f040c00 	svchi	0x00040c00
     18c:	0d000001 	stceq	0, cr0, [r0, #-4]
     190:	00015f0e 	andeq	r5, r1, lr, lsl #30
     194:	d0050100 	andle	r0, r5, r0, lsl #2
     198:	20080000 	andcs	r0, r8, r0
     19c:	01000000 	mrseq	r0, (UNDEF: 0)
     1a0:	00800e9c 	umulleq	r0, r0, ip, lr	; <UNPREDICTABLE>
     1a4:	41010000 	mrsmi	r0, (UNDEF: 1)
     1a8:	080000c8 	stmdaeq	r0, {r3, r6, r7}
     1ac:	00000008 	andeq	r0, r0, r8
     1b0:	940f9c01 	strls	r9, [pc], #-3073	; 1b8 <_size_data+0x1b0>
     1b4:	01000002 	tsteq	r0, r2
     1b8:	0000f04b 	andeq	pc, r0, fp, asr #32
     1bc:	00002c08 	andeq	r2, r0, r8, lsl #24
     1c0:	f29c0100 	vaddw.s16	q0, q6, d0
     1c4:	10000001 	andne	r0, r0, r1
     1c8:	000000ca 	andeq	r0, r0, sl, asr #1
     1cc:	01f24b01 	mvnseq	r4, r1, lsl #22
     1d0:	91020000 	mrsls	r0, (UNDEF: 2)
     1d4:	01081074 	tsteq	r8, r4, ror r0
     1d8:	4b010000 	blmi	401e0 <_size_bss+0x3ff94>
     1dc:	000001f2 	strdeq	r0, [r0], -r2
     1e0:	10709102 	rsbsne	r9, r0, r2, lsl #2
     1e4:	000000c3 	andeq	r0, r0, r3, asr #1
     1e8:	01f24b01 	mvnseq	r4, r1, lsl #22
     1ec:	91020000 	mrsls	r0, (UNDEF: 2)
     1f0:	0411006c 	ldreq	r0, [r1], #-108	; 0x6c
     1f4:	0000a10f 	andeq	sl, r0, pc, lsl #2
     1f8:	1c500100 	ldfnee	f0, [r0], {-0}
     1fc:	2c080001 	stccs	0, cr0, [r8], {1}
     200:	01000000 	mrseq	r0, (UNDEF: 0)
     204:	0002329c 	muleq	r2, ip, r2
     208:	01081000 	mrseq	r1, (UNDEF: 8)
     20c:	50010000 	andpl	r0, r1, r0
     210:	000001f2 	strdeq	r0, [r0], -r2
     214:	106c9102 	rsbne	r9, ip, r2, lsl #2
     218:	000000c3 	andeq	r0, r0, r3, asr #1
     21c:	01f25001 	mvnseq	r5, r1
     220:	91020000 	mrsls	r0, (UNDEF: 2)
     224:	00701268 	rsbseq	r1, r0, r8, ror #4
     228:	01f25201 	mvnseq	r5, r1, lsl #4
     22c:	91020000 	mrsls	r0, (UNDEF: 2)
     230:	15130074 	ldrne	r0, [r3, #-116]	; 0x74
     234:	01000000 	mrseq	r0, (UNDEF: 0)
     238:	00014857 	andeq	r4, r1, r7, asr r8
     23c:	00005808 	andeq	r5, r0, r8, lsl #16
     240:	069c0100 	ldreq	r0, [ip], r0, lsl #2
     244:	0000017e 	andeq	r0, r0, lr, ror r1
     248:	00000253 	andeq	r0, r0, r3, asr r2
     24c:	00008c07 	andeq	r8, r0, r7, lsl #24
     250:	14003000 	strne	r3, [r0], #-0
     254:	00000028 	andeq	r0, r0, r8, lsr #32
     258:	02640e01 	rsbeq	r0, r4, #1, 28
     25c:	03050000 	movweq	r0, #20480	; 0x5000
     260:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     264:	00024315 	andeq	r4, r2, r5, lsl r3
     268:	01711600 	cmneq	r1, r0, lsl #12
     26c:	35040000 	strcc	r0, [r4, #-0]
     270:	000001f2 	strdeq	r0, [r0], -r2
     274:	00003716 	andeq	r3, r0, r6, lsl r7
     278:	f2350400 	vshl.s64	d0, d0, d5
     27c:	16000001 	strne	r0, [r0], -r1
     280:	00000288 	andeq	r0, r0, r8, lsl #5
     284:	01f23504 	mvnseq	r3, r4, lsl #10
     288:	a1160000 	tstge	r6, r0
     28c:	04000002 	streq	r0, [r0], #-2
     290:	0001f236 	andeq	pc, r1, r6, lsr r2	; <UNPREDICTABLE>
     294:	006d1600 	rsbeq	r1, sp, r0, lsl #12
     298:	36040000 	strcc	r0, [r4], -r0
     29c:	000001f2 	strdeq	r0, [r0], -r2
     2a0:	00018416 	andeq	r8, r1, r6, lsl r4
     2a4:	f2360400 	vshl.s64	d0, d0, d6
     2a8:	16000001 	strne	r0, [r0], -r1
     2ac:	000000b8 	strheq	r0, [r0], -r8
     2b0:	01f23704 	mvnseq	r3, r4, lsl #14
     2b4:	00160000 	andseq	r0, r6, r0
     2b8:	04000000 	streq	r0, [r0], #-0
     2bc:	0001f237 	andeq	pc, r1, r7, lsr r2	; <UNPREDICTABLE>
     2c0:	04b10000 	ldrteq	r0, [r1], #0
     2c4:	00040000 	andeq	r0, r4, r0
     2c8:	00000130 	andeq	r0, r0, r0, lsr r1
     2cc:	018e0104 	orreq	r0, lr, r4, lsl #2
     2d0:	bf010000 	svclt	0x00010000
     2d4:	21000002 	tstcs	r0, r2
     2d8:	a0000002 	andge	r0, r0, r2
     2dc:	d4080001 	strle	r0, [r8], #-1
     2e0:	75000001 	strvc	r0, [r0, #-1]
     2e4:	02000001 	andeq	r0, r0, #1
     2e8:	00ac0601 	adceq	r0, ip, r1, lsl #12
     2ec:	02020000 	andeq	r0, r2, #0
     2f0:	00021705 	andeq	r1, r2, r5, lsl #14
     2f4:	05040200 	streq	r0, [r4, #-512]	; 0x200
     2f8:	00000156 	andeq	r0, r0, r6, asr r1
     2fc:	51050802 	tstpl	r5, r2, lsl #16
     300:	03000001 	movweq	r0, #1
     304:	00000100 	andeq	r0, r0, r0, lsl #2
     308:	004c2e03 	subeq	r2, ip, r3, lsl #28
     30c:	01020000 	mrseq	r0, (UNDEF: 2)
     310:	0000aa08 	andeq	sl, r0, r8, lsl #20
     314:	020e0300 	andeq	r0, lr, #0, 6
     318:	31030000 	mrscc	r0, (UNDEF: 3)
     31c:	0000005e 	andeq	r0, r0, lr, asr r0
     320:	85070202 	strhi	r0, [r7, #-514]	; 0x202
     324:	03000000 	movweq	r0, #0
     328:	00000098 	muleq	r0, r8, r0
     32c:	00703403 	rsbseq	r3, r0, r3, lsl #8
     330:	04020000 	streq	r0, [r2], #-0
     334:	0000ee07 	andeq	lr, r0, r7, lsl #28
     338:	07080200 	streq	r0, [r8, -r0, lsl #4]
     33c:	000000e9 	andeq	r0, r0, r9, ror #1
     340:	69050404 	stmdbvs	r5, {r2, sl}
     344:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     348:	00f30704 	rscseq	r0, r3, r4, lsl #14
     34c:	04020000 	streq	r0, [r2], #-0
     350:	00014807 	andeq	r4, r1, r7, lsl #16
     354:	00650500 	rsbeq	r0, r5, r0, lsl #10
     358:	00a30000 	adceq	r0, r3, r0
     35c:	8c060000 	stchi	0, cr0, [r6], {-0}
     360:	3f000000 	svccc	0x00000000
     364:	04280700 	strteq	r0, [r8], #-1792	; 0x700
     368:	01220131 	teqeq	r2, r1, lsr r1
     36c:	e0080000 	and	r0, r8, r0
     370:	04000002 	streq	r0, [r0], #-2
     374:	01220133 	teqeq	r2, r3, lsr r1
     378:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     37c:	00000356 	andeq	r0, r0, r6, asr r3
     380:	27013404 	strcs	r3, [r1, -r4, lsl #8]
     384:	04000001 	streq	r0, [r0], #-1
     388:	00004508 	andeq	r4, r0, r8, lsl #10
     38c:	01350400 	teqeq	r5, r0, lsl #8
     390:	00000065 	andeq	r0, r0, r5, rrx
     394:	035b0808 	cmpeq	fp, #8, 16	; 0x80000
     398:	36040000 	strcc	r0, [r4], -r0
     39c:	00012701 	andeq	r2, r1, r1, lsl #14
     3a0:	53090c00 	movwpl	r0, #39936	; 0x9c00
     3a4:	04005243 	streq	r5, [r0], #-579	; 0x243
     3a8:	01270137 	teqeq	r7, r7, lsr r1
     3ac:	09100000 	ldmdbeq	r0, {}	; <UNPREDICTABLE>
     3b0:	00524343 	subseq	r4, r2, r3, asr #6
     3b4:	27013804 	strcs	r3, [r1, -r4, lsl #16]
     3b8:	14000001 	strne	r0, [r0], #-1
     3bc:	00004f08 	andeq	r4, r0, r8, lsl #30
     3c0:	01390400 	teqeq	r9, r0, lsl #8
     3c4:	00000065 	andeq	r0, r0, r5, rrx
     3c8:	48530918 	ldmdami	r3, {r3, r4, r8, fp}^
     3cc:	3a040050 	bcc	100514 <_size_bss+0x1002c8>
     3d0:	00013c01 	andeq	r3, r1, r1, lsl #24
     3d4:	cc081c00 	stcgt	12, cr1, [r8], {-0}
     3d8:	04000003 	streq	r0, [r0], #-3
     3dc:	0127013b 	teqeq	r7, fp, lsr r1
     3e0:	00240000 	eoreq	r0, r4, r0
     3e4:	0001270a 	andeq	r2, r1, sl, lsl #14
     3e8:	00650b00 	rsbeq	r0, r5, r0, lsl #22
     3ec:	65050000 	strvs	r0, [r5, #-0]
     3f0:	3c000000 	stccc	0, cr0, [r0], {-0}
     3f4:	06000001 	streq	r0, [r0], -r1
     3f8:	0000008c 	andeq	r0, r0, ip, lsl #1
     3fc:	2c0b0001 	stccs	0, cr0, [fp], {1}
     400:	0c000001 	stceq	0, cr0, [r0], {1}
     404:	00000324 	andeq	r0, r0, r4, lsr #6
     408:	a3013c04 	movwge	r3, #7172	; 0x1c04
     40c:	0b000000 	bleq	414 <_size_bss+0x1c8>
     410:	00000053 	andeq	r0, r0, r3, asr r0
     414:	68052c07 	stmdavs	r5, {r0, r1, r2, sl, fp, sp}
     418:	00021202 	andeq	r1, r2, r2, lsl #4
     41c:	000f0800 	andeq	r0, pc, r0, lsl #16
     420:	6a050000 	bvs	140428 <_size_bss+0x1401dc>
     424:	00012702 	andeq	r2, r1, r2, lsl #14
     428:	79080000 	stmdbvc	r8, {}	; <UNPREDICTABLE>
     42c:	05000000 	streq	r0, [r0, #-0]
     430:	014d026b 	cmpeq	sp, fp, ror #4
     434:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
     438:	00000045 	andeq	r0, r0, r5, asr #32
     43c:	53026c05 	movwpl	r6, #11269	; 0x2c05
     440:	06000000 	streq	r0, [r0], -r0
     444:	0000d408 	andeq	sp, r0, r8, lsl #8
     448:	026d0500 	rsbeq	r0, sp, #0, 10
     44c:	00000127 	andeq	r0, r0, r7, lsr #2
     450:	01420808 	cmpeq	r2, r8, lsl #16
     454:	6e050000 	cdpvs	0, 0, cr0, cr5, cr0, {0}
     458:	00012702 	andeq	r2, r1, r2, lsl #14
     45c:	49090c00 	stmdbmi	r9, {sl, fp}
     460:	05005244 	streq	r5, [r0, #-580]	; 0x244
     464:	014d026f 	cmpeq	sp, pc, ror #4
     468:	08100000 	ldmdaeq	r0, {}	; <UNPREDICTABLE>
     46c:	0000004f 	andeq	r0, r0, pc, asr #32
     470:	53027005 	movwpl	r7, #8197	; 0x2005
     474:	12000000 	andne	r0, r0, #0
     478:	52444f09 	subpl	r4, r4, #9, 30	; 0x24
     47c:	02710500 	rsbseq	r0, r1, #0, 10
     480:	0000014d 	andeq	r0, r0, sp, asr #2
     484:	00590814 	subseq	r0, r9, r4, lsl r8
     488:	72050000 	andvc	r0, r5, #0
     48c:	00005302 	andeq	r5, r0, r2, lsl #6
     490:	23081600 	movwcs	r1, #34304	; 0x8600
     494:	05000000 	streq	r0, [r0, #-0]
     498:	01270273 	teqeq	r7, r3, ror r2
     49c:	08180000 	ldmdaeq	r8, {}	; <UNPREDICTABLE>
     4a0:	0000000a 	andeq	r0, r0, sl
     4a4:	27027405 	strcs	r7, [r2, -r5, lsl #8]
     4a8:	1c000001 	stcne	0, cr0, [r0], {1}
     4ac:	52464109 	subpl	r4, r6, #1073741826	; 0x40000002
     4b0:	02750500 	rsbseq	r0, r5, #0, 10
     4b4:	00000212 	andeq	r0, r0, r2, lsl r2
     4b8:	52420920 	subpl	r0, r2, #32, 18	; 0x80000
     4bc:	76050052 			; <UNDEFINED> instruction: 0x76050052
     4c0:	00014d02 	andeq	r4, r1, r2, lsl #26
     4c4:	63082800 	movwvs	r2, #34816	; 0x8800
     4c8:	05000000 	streq	r0, [r0, #-0]
     4cc:	00530277 	subseq	r0, r3, r7, ror r2
     4d0:	002a0000 	eoreq	r0, sl, r0
     4d4:	00012c0b 	andeq	r2, r1, fp, lsl #24
     4d8:	00dc0c00 	sbcseq	r0, ip, r0, lsl #24
     4dc:	78050000 	stmdavc	r5, {}	; <UNPREDICTABLE>
     4e0:	00015202 	andeq	r5, r1, r2, lsl #4
     4e4:	05380700 	ldreq	r0, [r8, #-1792]!	; 0x700
     4e8:	02e202b4 	rsceq	r0, r2, #180, 4	; 0x4000000b
     4ec:	43090000 	movwmi	r0, #36864	; 0x9000
     4f0:	b6050052 			; <UNDEFINED> instruction: 0xb6050052
     4f4:	00012702 	andeq	r2, r1, r2, lsl #14
     4f8:	0b080000 	bleq	200500 <_size_bss+0x2002b4>
     4fc:	05000004 	streq	r0, [r0, #-4]
     500:	012702b7 			; <UNDEFINED> instruction: 0x012702b7
     504:	09040000 	stmdbeq	r4, {}	; <UNPREDICTABLE>
     508:	00524943 	subseq	r4, r2, r3, asr #18
     50c:	2702b805 	strcs	fp, [r2, -r5, lsl #16]
     510:	08000001 	stmdaeq	r0, {r0}
     514:	00030e08 	andeq	r0, r3, r8, lsl #28
     518:	02b90500 	adcseq	r0, r9, #0, 10
     51c:	00000127 	andeq	r0, r0, r7, lsr #2
     520:	03b6080c 			; <UNDEFINED> instruction: 0x03b6080c
     524:	ba050000 	blt	14052c <_size_bss+0x1402e0>
     528:	00012702 	andeq	r2, r1, r2, lsl #14
     52c:	29081000 	stmdbcs	r8, {ip}
     530:	05000004 	streq	r0, [r0, #-4]
     534:	012702bb 			; <UNDEFINED> instruction: 0x012702bb
     538:	08140000 	ldmdaeq	r4, {}	; <UNPREDICTABLE>
     53c:	000003d2 	ldrdeq	r0, [r0], -r2
     540:	2702bc05 	strcs	fp, [r2, -r5, lsl #24]
     544:	18000001 	stmdane	r0, {r0}
     548:	0003da08 	andeq	sp, r3, r8, lsl #20
     54c:	02bd0500 	adcseq	r0, sp, #0, 10
     550:	00000127 	andeq	r0, r0, r7, lsr #2
     554:	03f8081c 	mvnseq	r0, #28, 16	; 0x1c0000
     558:	be050000 	cdplt	0, 0, cr0, cr5, cr0, {0}
     55c:	00012702 	andeq	r2, r1, r2, lsl #14
     560:	43092000 	movwmi	r2, #36864	; 0x9000
     564:	05005253 	streq	r5, [r0, #-595]	; 0x253
     568:	012702bf 			; <UNDEFINED> instruction: 0x012702bf
     56c:	08240000 	stmdaeq	r4!, {}	; <UNPREDICTABLE>
     570:	000003ae 	andeq	r0, r0, lr, lsr #7
     574:	2702c005 	strcs	ip, [r2, -r5]
     578:	28000001 	stmdacs	r0, {r0}
     57c:	00033308 	andeq	r3, r3, r8, lsl #6
     580:	02c10500 	sbceq	r0, r1, #0, 10
     584:	00000127 	andeq	r0, r0, r7, lsr #2
     588:	03fd082c 	mvnseq	r0, #44, 16	; 0x2c0000
     58c:	c2050000 	andgt	r0, r5, #0
     590:	00012702 	andeq	r2, r1, r2, lsl #14
     594:	43093000 	movwmi	r3, #36864	; 0x9000
     598:	05003252 	streq	r3, [r0, #-594]	; 0x252
     59c:	012702c3 	smlawteq	r7, r3, r2, r0
     5a0:	00340000 	eorseq	r0, r4, r0
     5a4:	0003390c 	andeq	r3, r3, ip, lsl #18
     5a8:	02c40500 	sbceq	r0, r4, #0, 10
     5ac:	00000223 	andeq	r0, r0, r3, lsr #4
     5b0:	00036103 	andeq	r6, r3, r3, lsl #2
     5b4:	f90f0600 			; <UNDEFINED> instruction: 0xf90f0600
     5b8:	0d000002 	stceq	0, cr0, [r0, #-8]
     5bc:	02d30e04 	sbcseq	r0, r3, #4, 28	; 0x40
     5c0:	06140000 	ldreq	r0, [r4], -r0
     5c4:	00035011 	andeq	r5, r3, r1, lsl r0
     5c8:	038d0f00 	orreq	r0, sp, #0, 30
     5cc:	13060000 	movwne	r0, #24576	; 0x6000
     5d0:	00000065 	andeq	r0, r0, r5, rrx
     5d4:	02e60f00 	rsceq	r0, r6, #0, 30
     5d8:	15060000 	strne	r0, [r6, #-0]
     5dc:	00000350 	andeq	r0, r0, r0, asr r3
     5e0:	037c0f04 	cmneq	ip, #4, 30
     5e4:	17060000 	strne	r0, [r6, -r0]
     5e8:	00000041 	andeq	r0, r0, r1, asr #32
     5ec:	04100f08 	ldreq	r0, [r0], #-3848	; 0xf08
     5f0:	19060000 	stmdbne	r6, {}	; <UNPREDICTABLE>
     5f4:	00000041 	andeq	r0, r0, r1, asr #32
     5f8:	03450f09 	movteq	r0, #24329	; 0x5f09
     5fc:	1b060000 	blne	180604 <_size_bss+0x1803b8>
     600:	000002ee 	andeq	r0, r0, lr, ror #5
     604:	03700f0c 	cmneq	r0, #12, 30	; 0x30
     608:	1e060000 	cdpne	0, 0, cr0, cr6, cr0, {0}
     60c:	000002f9 	strdeq	r0, [r0], -r9
     610:	04100010 	ldreq	r0, [r0], #-16
     614:	00000065 	andeq	r0, r0, r5, rrx
     618:	0003e211 	andeq	lr, r3, r1, lsl r2
     61c:	0e050700 	cdpeq	7, 0, cr0, cr5, cr0, {0}
     620:	000007a6 	andeq	r0, r0, r6, lsr #15
     624:	82070708 	andhi	r0, r7, #8, 14	; 0x200000
     628:	0f000003 	svceq	0x00000003
     62c:	000007a0 	andeq	r0, r0, r0, lsr #15
     630:	03820907 	orreq	r0, r2, #114688	; 0x1c000
     634:	0f000000 	svceq	0x00000000
     638:	00000421 	andeq	r0, r0, r1, lsr #8
     63c:	00410b07 	subeq	r0, r1, r7, lsl #22
     640:	00040000 	andeq	r0, r4, r0
     644:	03560410 	cmpeq	r6, #16, 8	; 0x10000000
     648:	bf120000 	svclt	0x00120000
     64c:	02000003 	andeq	r0, r0, #3
     650:	13030149 	movwne	r0, #12617	; 0x3149
     654:	000003e9 	andeq	r0, r0, r9, ror #7
     658:	01a00b01 	lsleq	r0, r1, #22
     65c:	002c0800 	eoreq	r0, ip, r0, lsl #16
     660:	9c010000 	stcls	0, cr0, [r1], {-0}
     664:	00039814 	andeq	r9, r3, r4, lsl r8
     668:	cc150100 	ldfgts	f0, [r5], {-0}
     66c:	12080001 	andne	r0, r8, #1
     670:	01000000 	mrseq	r0, (UNDEF: 0)
     674:	0003c79c 	muleq	r3, ip, r7
     678:	03881500 	orreq	r1, r8, #0, 10
     67c:	01d80000 	bicseq	r0, r8, r0
     680:	00020800 	andeq	r0, r2, r0, lsl #16
     684:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
     688:	02b21300 	adcseq	r1, r2, #0, 6
     68c:	21010000 	mrscs	r0, (UNDEF: 1)
     690:	080001e0 	stmdaeq	r0, {r5, r6, r7, r8}
     694:	0000001c 	andeq	r0, r0, ip, lsl r0
     698:	f5149c01 			; <UNDEFINED> instruction: 0xf5149c01
     69c:	01000002 	tsteq	r0, r2
     6a0:	0001fc31 	andeq	pc, r1, r1, lsr ip	; <UNPREDICTABLE>
     6a4:	00009408 	andeq	r9, r0, r8, lsl #8
     6a8:	fc9c0100 	ldc2	1, cr0, [ip], {0}
     6ac:	16000003 	strne	r0, [r0], -r3
     6b0:	0000032d 	andeq	r0, r0, sp, lsr #6
     6b4:	02f93101 	rscseq	r3, r9, #1073741824	; 0x40000000
     6b8:	91020000 	mrsls	r0, (UNDEF: 2)
     6bc:	fe140074 	mrc2	0, 0, r0, cr4, cr4, {3}
     6c0:	01000002 	tsteq	r0, r2
     6c4:	00029046 	andeq	r9, r2, r6, asr #32
     6c8:	00009408 	andeq	r9, r0, r8, lsl #8
     6cc:	209c0100 	addscs	r0, ip, r0, lsl #2
     6d0:	16000004 	strne	r0, [r0], -r4
     6d4:	0000032d 	andeq	r0, r0, sp, lsr #6
     6d8:	02f94601 	rscseq	r4, r9, #1048576	; 0x100000
     6dc:	91020000 	mrsls	r0, (UNDEF: 2)
     6e0:	1f170074 	svcne	0x00170074
     6e4:	01000003 	tsteq	r0, r3
     6e8:	00007e5c 	andeq	r7, r0, ip, asr lr
     6ec:	00032400 	andeq	r2, r3, r0, lsl #8
     6f0:	00005008 	andeq	r5, r0, r8
     6f4:	059c0100 	ldreq	r0, [ip, #256]	; 0x100
     6f8:	000002fb 	strdeq	r0, [r0], -fp
     6fc:	00000445 	andeq	r0, r0, r5, asr #8
     700:	00008c06 	andeq	r8, r0, r6, lsl #24
     704:	18000100 	stmdane	r0, {r8}
     708:	000002d2 	ldrdeq	r0, [r0], -r2
     70c:	04352b06 	ldrteq	r2, [r5], #-2822	; 0xb06
     710:	03190000 	tsteq	r9, #0
     714:	01000004 	tsteq	r0, r4
     718:	0000651f 	andeq	r6, r0, pc, lsl r5
     71c:	00030500 	andeq	r0, r3, r0, lsl #10
     720:	19200000 	stmdbne	r0!, {}	; <UNPREDICTABLE>
     724:	00000307 	andeq	r0, r0, r7, lsl #6
     728:	035d2701 	cmpeq	sp, #262144	; 0x40000
     72c:	03050000 	movweq	r0, #20480	; 0x5000
     730:	20000008 	andcs	r0, r0, r8
     734:	0003a619 	andeq	sl, r3, r9, lsl r6
     738:	932c0100 	teqls	ip, #0, 2
     73c:	05000000 	streq	r0, [r0, #-0]
     740:	00011403 	andeq	r1, r1, r3, lsl #8
     744:	03171920 	tsteq	r7, #32, 18	; 0x80000
     748:	2d010000 	stccs	0, cr0, [r1, #-0]
     74c:	00000093 	muleq	r0, r3, r0
     750:	00140305 	andseq	r0, r4, r5, lsl #6
     754:	761a2000 	ldrvc	r2, [sl], -r0
     758:	2f010041 	svccs	0x00010041
     75c:	00000065 	andeq	r0, r0, r5, rrx
     760:	00040305 	andeq	r0, r4, r5, lsl #6
     764:	761a2000 	ldrvc	r2, [sl], -r0
     768:	2f010042 	svccs	0x00010042
     76c:	00000065 	andeq	r0, r0, r5, rrx
     770:	02140305 	andseq	r0, r4, #335544320	; 0x14000000
     774:	80002000 	andhi	r2, r0, r0
     778:	04000000 	streq	r0, [r0], #-0
     77c:	0002a400 	andeq	sl, r2, r0, lsl #8
     780:	8e010400 	cfcpyshi	mvf0, mvf1
     784:	01000001 	tsteq	r0, r1
     788:	00000430 	andeq	r0, r0, r0, lsr r4
     78c:	00000221 	andeq	r0, r0, r1, lsr #4
     790:	08000374 	stmdaeq	r0, {r2, r4, r5, r6, r8, r9}
     794:	00000008 	andeq	r0, r0, r8
     798:	0000036e 	andeq	r0, r0, lr, ror #6
     79c:	ac060102 	stfges	f0, [r6], {2}
     7a0:	02000000 	andeq	r0, r0, #0
     7a4:	02170502 	andseq	r0, r7, #8388608	; 0x800000
     7a8:	04020000 	streq	r0, [r2], #-0
     7ac:	00015605 	andeq	r5, r1, r5, lsl #12
     7b0:	05080200 	streq	r0, [r8, #-512]	; 0x200
     7b4:	00000151 	andeq	r0, r0, r1, asr r1
     7b8:	aa080102 	bge	200bc8 <_size_bss+0x20097c>
     7bc:	02000000 	andeq	r0, r0, #0
     7c0:	00850702 	addeq	r0, r5, r2, lsl #14
     7c4:	04020000 	streq	r0, [r2], #-0
     7c8:	0000ee07 	andeq	lr, r0, r7, lsl #28
     7cc:	07080200 	streq	r0, [r8, -r0, lsl #4]
     7d0:	000000e9 	andeq	r0, r0, r9, ror #1
     7d4:	69050403 	stmdbvs	r5, {r0, r1, sl}
     7d8:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     7dc:	00f30704 	rscseq	r0, r3, r4, lsl #14
     7e0:	04020000 	streq	r0, [r2], #-0
     7e4:	00014807 	andeq	r4, r1, r7, lsl #16
     7e8:	04450400 	strbeq	r0, [r5], #-1024	; 0x400
     7ec:	17010000 	strne	r0, [r1, -r0]
     7f0:	08000374 	stmdaeq	r0, {r2, r4, r5, r6, r8, r9}
     7f4:	00000008 	andeq	r0, r0, r8
     7f8:	c7009c01 	strgt	r9, [r0, -r1, lsl #24]
     7fc:	02000000 	andeq	r0, r0, #0
     800:	0002e600 	andeq	lr, r2, r0, lsl #12
     804:	b3010400 	movwlt	r0, #5120	; 0x1400
     808:	7c000003 	stcvc	0, cr0, [r0], {3}
     80c:	c0080003 	andgt	r0, r8, r3
     810:	2e080003 	cdpcs	0, 0, cr0, cr8, cr3, {0}
     814:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     818:	2f2e2e2f 	svccs	0x002e2e2f
     81c:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
     820:	6d2f6c65 	stcvs	12, cr6, [pc, #-404]!	; 694 <_size_bss+0x448>
     824:	65726874 	ldrbvs	r6, [r2, #-2164]!	; 0x874
     828:	735f6461 	cmpvc	pc, #1627389952	; 0x61000000
     82c:	702f6372 	eorvc	r6, pc, r2, ror r3	; <UNPREDICTABLE>
     830:	6174726f 	cmnvs	r4, pc, ror #4
     834:	2f656c62 	svccs	0x00656c62
     838:	5f4d5241 	svcpl	0x004d5241
     83c:	2f304d43 	svccs	0x00304d43
     840:	7268746d 	rsbvc	r7, r8, #1828716544	; 0x6d000000
     844:	5f646165 	svcpl	0x00646165
     848:	74726f70 	ldrbtvc	r6, [r2], #-3952	; 0xf70
     84c:	2f00732e 	svccs	0x0000732e
     850:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
     854:	72616d2f 	rsbvc	r6, r1, #3008	; 0xbc0
     858:	72702f6b 	rsbsvc	r2, r0, #428	; 0x1ac
     85c:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
     860:	6c702f74 	ldclvs	15, cr2, [r0], #-464	; 0xfffffe30
     864:	6f667461 	svcvs	0x00667461
     868:	735f6d72 	cmpvc	pc, #7296	; 0x1c80
     86c:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
     870:	696d2f65 	stmdbvs	sp!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
     874:	636f7263 	cmnvs	pc, #805306374	; 0x30000006
     878:	72746e6f 	rsbsvc	r6, r4, #1776	; 0x6f0
     87c:	656c6c6f 	strbvs	r6, [ip, #-3183]!	; 0xc6f
     880:	682f7372 	stmdavs	pc!, {r1, r4, r5, r6, r8, r9, ip, sp, lr}	; <UNPREDICTABLE>
     884:	2f656d6f 	svccs	0x00656d6f
     888:	7268544d 	rsbvc	r5, r8, #1291845632	; 0x4d000000
     88c:	2f646165 	svccs	0x00646165
     890:	72756f73 	rsbsvc	r6, r5, #460	; 0x1cc
     894:	2f736563 	svccs	0x00736563
     898:	6d617865 	stclvs	8, cr7, [r1, #-404]!	; 0xfffffe6c
     89c:	2f656c70 	svccs	0x00656c70
     8a0:	74736574 	ldrbtvc	r6, [r3], #-1396	; 0x574
     8a4:	6d74735f 	ldclvs	3, cr7, [r4, #-380]!	; 0xfffffe84
     8a8:	30663233 	rsbcc	r3, r6, r3, lsr r2
     8ac:	38723135 	ldmdacc	r2!, {r0, r2, r4, r5, r8, ip, sp}^
     8b0:	6c69662f 	stclvs	6, cr6, [r9], #-188	; 0xffffff44
     8b4:	4e470065 	cdpmi	0, 4, cr0, cr7, cr5, {3}
     8b8:	53412055 	movtpl	r2, #4181	; 0x1055
     8bc:	322e3220 	eorcc	r3, lr, #32, 4
     8c0:	00302e34 	eorseq	r2, r0, r4, lsr lr
     8c4:	05d18001 	ldrbeq	r8, [r1, #1]
     8c8:	00040000 	andeq	r0, r4, r0
     8cc:	000002fa 	strdeq	r0, [r0], -sl
     8d0:	018e0104 	orreq	r0, lr, r4, lsl #2
     8d4:	f5010000 			; <UNDEFINED> instruction: 0xf5010000
     8d8:	21000004 	tstcs	r0, r4
     8dc:	c0000002 	andgt	r0, r0, r2
     8e0:	12080003 	andne	r0, r8, #3
     8e4:	3f000003 	svccc	0x00000003
     8e8:	02000004 	andeq	r0, r0, #4
     8ec:	00000646 	andeq	r0, r0, r6, asr #12
     8f0:	fec70401 	cdp2	4, 12, cr0, cr7, cr1, {0}
     8f4:	03000000 	movweq	r0, #0
     8f8:	000006c1 	andeq	r0, r0, r1, asr #13
     8fc:	04b20372 	ldrteq	r0, [r2], #882	; 0x372
     900:	03730000 	cmneq	r3, #0
     904:	00000771 	andeq	r0, r0, r1, ror r7
     908:	0675037b 			; <UNDEFINED> instruction: 0x0675037b
     90c:	037e0000 	cmneq	lr, #0
     910:	00000580 	andeq	r0, r0, r0, lsl #11
     914:	047f037f 	ldrbteq	r0, [pc], #-895	; 91c <_size_bss+0x6d0>
     918:	03000000 	movweq	r0, #0
     91c:	0000045d 	andeq	r0, r0, sp, asr r4
     920:	074f0301 	strbeq	r0, [pc, -r1, lsl #6]
     924:	03020000 	movweq	r0, #8192	; 0x2000
     928:	00000660 	andeq	r0, r0, r0, ror #12
     92c:	07360303 	ldreq	r0, [r6, -r3, lsl #6]!
     930:	03040000 	movweq	r0, #16384	; 0x4000
     934:	000006e9 	andeq	r0, r0, r9, ror #13
     938:	06b40305 	ldrteq	r0, [r4], r5, lsl #6
     93c:	03060000 	movweq	r0, #24576	; 0x6000
     940:	00000628 	andeq	r0, r0, r8, lsr #12
     944:	04aa0307 	strteq	r0, [sl], #775	; 0x307
     948:	03080000 	movweq	r0, #32768	; 0x8000
     94c:	000005ee 	andeq	r0, r0, lr, ror #11
     950:	06910309 	ldreq	r0, [r1], r9, lsl #6
     954:	030a0000 	movweq	r0, #40960	; 0xa000
     958:	0000064b 	andeq	r0, r0, fp, asr #12
     95c:	04e6030b 	strbteq	r0, [r6], #779	; 0x30b
     960:	030c0000 	movweq	r0, #49152	; 0xc000
     964:	000004c1 	andeq	r0, r0, r1, asr #9
     968:	058d030d 	streq	r0, [sp, #781]	; 0x30d
     96c:	030e0000 	movweq	r0, #57344	; 0xe000
     970:	00000701 	andeq	r0, r0, r1, lsl #14
     974:	0767030f 	strbeq	r0, [r7, -pc, lsl #6]!
     978:	03100000 	tsteq	r0, #0
     97c:	0000049c 	muleq	r0, ip, r4
     980:	052a0311 	streq	r0, [sl, #-785]!	; 0x311
     984:	03130000 	tsteq	r3, #0
     988:	00000575 	andeq	r0, r0, r5, ror r5
     98c:	05e30314 	strbeq	r0, [r3, #788]!	; 0x314
     990:	03150000 	tsteq	r5, #0
     994:	00000636 	andeq	r0, r0, r6, lsr r6
     998:	06410316 			; <UNDEFINED> instruction: 0x06410316
     99c:	03170000 	tsteq	r7, #0
     9a0:	000006d5 	ldrdeq	r0, [r0], -r5
     9a4:	05420318 	strbeq	r0, [r2, #-792]	; 0x318
     9a8:	03190000 	tsteq	r9, #0
     9ac:	000005b8 			; <UNDEFINED> instruction: 0x000005b8
     9b0:	0601031a 			; <UNDEFINED> instruction: 0x0601031a
     9b4:	031b0000 	tsteq	fp, #0
     9b8:	0000060d 	andeq	r0, r0, sp, lsl #12
     9bc:	0489031c 	streq	r0, [r9], #796	; 0x31c
     9c0:	001e0000 	andseq	r0, lr, r0
     9c4:	00066b04 	andeq	r6, r6, r4, lsl #22
     9c8:	015f0400 	cmpeq	pc, r0, lsl #8
     9cc:	00000025 	andeq	r0, r0, r5, lsr #32
     9d0:	ac060105 	stfges	f0, [r6], {5}
     9d4:	05000000 	streq	r0, [r0, #-0]
     9d8:	02170502 	andseq	r0, r7, #8388608	; 0x800000
     9dc:	04050000 	streq	r0, [r5], #-0
     9e0:	00015605 	andeq	r5, r1, r5, lsl #12
     9e4:	05080500 	streq	r0, [r8, #-1280]	; 0x500
     9e8:	00000151 	andeq	r0, r0, r1, asr r1
     9ec:	00010006 	andeq	r0, r1, r6
     9f0:	312e0500 	teqcc	lr, r0, lsl #10
     9f4:	05000001 	streq	r0, [r0, #-1]
     9f8:	00aa0801 	adceq	r0, sl, r1, lsl #16
     9fc:	02050000 	andeq	r0, r5, #0
     a00:	00008507 	andeq	r8, r0, r7, lsl #10
     a04:	00980600 	addseq	r0, r8, r0, lsl #12
     a08:	34050000 	strcc	r0, [r5], #-0
     a0c:	0000014a 	andeq	r0, r0, sl, asr #2
     a10:	ee070405 	cdp	4, 0, cr0, cr7, cr5, {0}
     a14:	05000000 	streq	r0, [r0, #-0]
     a18:	00e90708 	rsceq	r0, r9, r8, lsl #14
     a1c:	04070000 	streq	r0, [r7], #-0
     a20:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
     a24:	07040500 	streq	r0, [r4, -r0, lsl #10]
     a28:	000000f3 	strdeq	r0, [r0], -r3
     a2c:	01032008 	tsteq	r3, r8
     a30:	01f80118 	mvnseq	r0, r8, lsl r1
     a34:	19090000 	stmdbne	r9, {}	; <UNPREDICTABLE>
     a38:	01000006 	tsteq	r0, r6
     a3c:	020f011a 	andeq	r0, pc, #-2147483642	; 0x80000006
     a40:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     a44:	00000045 	andeq	r0, r0, r5, asr #32
     a48:	14011b01 	strne	r1, [r1], #-2817	; 0xb01
     a4c:	04000002 	streq	r0, [r0], #-2
     a50:	0005de09 	andeq	sp, r5, r9, lsl #28
     a54:	011c0100 	tsteq	ip, r0, lsl #2
     a58:	00000224 	andeq	r0, r0, r4, lsr #4
     a5c:	04540980 	ldrbeq	r0, [r4], #-2432	; 0x980
     a60:	1d010000 	stcne	0, cr0, [r1, #-0]
     a64:	00021401 	andeq	r1, r2, r1, lsl #8
     a68:	730a8400 	movwvc	r8, #41984	; 0xa400
     a6c:	01000004 	tsteq	r0, r4
     a70:	0229011e 	eoreq	r0, r9, #-2147483641	; 0x80000007
     a74:	01000000 	mrseq	r0, (UNDEF: 0)
     a78:	0000590a 	andeq	r5, r0, sl, lsl #18
     a7c:	011f0100 	tsteq	pc, r0, lsl #2
     a80:	00000214 	andeq	r0, r0, r4, lsl r2
     a84:	4f0a0104 	svcmi	0x000a0104
     a88:	01000004 	tsteq	r0, r4
     a8c:	022e0120 	eoreq	r0, lr, #32, 2
     a90:	01800000 	orreq	r0, r0, r0
     a94:	0000630a 	andeq	r6, r0, sl, lsl #6
     a98:	01210100 	teqeq	r1, r0, lsl #2
     a9c:	00000214 	andeq	r0, r0, r4, lsl r2
     aa0:	df0a0184 	svcle	0x000a0184
     aa4:	01000006 	tsteq	r0, r6
     aa8:	02330122 	eorseq	r0, r3, #-2147483640	; 0x80000008
     aac:	02000000 	andeq	r0, r0, #0
     ab0:	0050490b 	subseq	r4, r0, fp, lsl #18
     ab4:	53012301 	movwpl	r2, #4865	; 0x1301
     ab8:	00000002 	andeq	r0, r0, r2
     abc:	3f0c0003 	svccc	0x000c0003
     ac0:	08000001 	stmdaeq	r0, {r0}
     ac4:	0d000002 	stceq	0, cr0, [r0, #-8]
     ac8:	00000208 	andeq	r0, r0, r8, lsl #4
     acc:	04050000 	streq	r0, [r5], #-0
     ad0:	00014807 	andeq	r4, r1, r7, lsl #16
     ad4:	01f80e00 	mvnseq	r0, r0, lsl #28
     ad8:	3f0c0000 	svccc	0x000c0000
     adc:	24000001 	strcs	r0, [r0], #-1
     ae0:	0d000002 	stceq	0, cr0, [r0, #-8]
     ae4:	00000208 	andeq	r0, r0, r8, lsl #4
     ae8:	f80e001e 			; <UNDEFINED> instruction: 0xf80e001e
     aec:	0e000001 	cdpeq	0, 0, cr0, cr0, cr1, {0}
     af0:	000001f8 	strdeq	r0, [r0], -r8
     af4:	0001f80e 	andeq	pc, r1, lr, lsl #16
     af8:	013f0c00 	teqeq	pc, r0, lsl #24
     afc:	02430000 	subeq	r0, r3, #0
     b00:	080d0000 	stmdaeq	sp, {}	; <UNPREDICTABLE>
     b04:	3f000002 	svccc	0x00000002
     b08:	013f0c00 	teqeq	pc, r0, lsl #24
     b0c:	02530000 	subseq	r0, r3, #0
     b10:	080d0000 	stmdaeq	sp, {}	; <UNPREDICTABLE>
     b14:	07000002 	streq	r0, [r0, -r2]
     b18:	02430e00 	subeq	r0, r3, #0, 28
     b1c:	1e040000 	cdpne	0, 0, cr0, cr4, cr0, {0}
     b20:	01000006 	tsteq	r0, r6
     b24:	01660124 	cmneq	r6, r4, lsr #2
     b28:	280f0000 	stmdacs	pc, {}	; <UNPREDICTABLE>
     b2c:	e3013101 	movw	r3, #4353	; 0x1101
     b30:	09000002 	stmdbeq	r0, {r1}
     b34:	000002e0 	andeq	r0, r0, r0, ror #5
     b38:	e3013301 	movw	r3, #4865	; 0x1301
     b3c:	00000002 	andeq	r0, r0, r2
     b40:	00035609 	andeq	r5, r3, r9, lsl #12
     b44:	01340100 	teqeq	r4, r0, lsl #2
     b48:	000002e8 	andeq	r0, r0, r8, ror #5
     b4c:	00450904 	subeq	r0, r5, r4, lsl #18
     b50:	35010000 	strcc	r0, [r1, #-0]
     b54:	00013f01 	andeq	r3, r1, r1, lsl #30
     b58:	5b090800 	blpl	242b60 <_size_bss+0x242914>
     b5c:	01000003 	tsteq	r0, r3
     b60:	02e80136 	rsceq	r0, r8, #-2147483635	; 0x8000000d
     b64:	100c0000 	andne	r0, ip, r0
     b68:	00524353 	subseq	r4, r2, r3, asr r3
     b6c:	e8013701 	stmda	r1, {r0, r8, r9, sl, ip, sp}
     b70:	10000002 	andne	r0, r0, r2
     b74:	52434310 	subpl	r4, r3, #16, 6	; 0x40000000
     b78:	01380100 	teqeq	r8, r0, lsl #2
     b7c:	000002e8 	andeq	r0, r0, r8, ror #5
     b80:	004f0914 	subeq	r0, pc, r4, lsl r9	; <UNPREDICTABLE>
     b84:	39010000 	stmdbcc	r1, {}	; <UNPREDICTABLE>
     b88:	00013f01 	andeq	r3, r1, r1, lsl #30
     b8c:	53101800 	tstpl	r0, #0, 16
     b90:	01005048 	tsteq	r0, r8, asr #32
     b94:	02fd013a 	rscseq	r0, sp, #-2147483634	; 0x8000000e
     b98:	091c0000 	ldmdbeq	ip, {}	; <UNPREDICTABLE>
     b9c:	000003cc 	andeq	r0, r0, ip, asr #7
     ba0:	e8013b01 	stmda	r1, {r0, r8, r9, fp, ip, sp}
     ba4:	24000002 	strcs	r0, [r0], #-2
     ba8:	02e81100 	rsceq	r1, r8, #0, 2
     bac:	3f0e0000 	svccc	0x000e0000
     bb0:	0c000001 	stceq	0, cr0, [r0], {1}
     bb4:	0000013f 	andeq	r0, r0, pc, lsr r1
     bb8:	000002fd 	strdeq	r0, [r0], -sp
     bbc:	0002080d 	andeq	r0, r2, sp, lsl #16
     bc0:	0e000100 	adfeqs	f0, f0, f0
     bc4:	000002ed 	andeq	r0, r0, sp, ror #5
     bc8:	00032404 	andeq	r2, r3, r4, lsl #8
     bcc:	013c0100 	teqeq	ip, r0, lsl #2
     bd0:	00000264 	andeq	r0, r0, r4, ror #4
     bd4:	9a01100f 	bls	44c18 <_size_bss+0x449cc>
     bd8:	00034c01 	andeq	r4, r3, r1, lsl #24
     bdc:	06f60900 	ldrbteq	r0, [r6], r0, lsl #18
     be0:	9c010000 	stcls	0, cr0, [r1], {-0}
     be4:	0002e801 	andeq	lr, r2, r1, lsl #16
     be8:	9a090000 	bls	240bf0 <_size_bss+0x2409a4>
     bec:	01000005 	tsteq	r0, r5
     bf0:	02e8019d 	rsceq	r0, r8, #1073741863	; 0x40000027
     bf4:	10040000 	andne	r0, r4, r0
     bf8:	004c4156 	subeq	r4, ip, r6, asr r1
     bfc:	e8019e01 	stmda	r1, {r0, r9, sl, fp, ip, pc}
     c00:	08000002 	stmdaeq	r0, {r1}
     c04:	0006fb09 	andeq	pc, r6, r9, lsl #22
     c08:	019f0100 	orrseq	r0, pc, r0, lsl #2
     c0c:	000002e3 	andeq	r0, r0, r3, ror #5
     c10:	4c04000c 	stcmi	0, cr0, [r4], {12}
     c14:	01000005 	tsteq	r0, r5
     c18:	030e01a0 	movweq	r0, #57760	; 0xe1a0
     c1c:	61060000 	mrsvs	r0, (UNDEF: 6)
     c20:	06000003 	streq	r0, [r0], -r3
     c24:	0003630f 	andeq	r6, r3, pc, lsl #6
     c28:	13041200 	movwne	r1, #16896	; 0x4200
     c2c:	000002d3 	ldrdeq	r0, [r0], -r3
     c30:	ba110614 	blt	442488 <_size_bss+0x44223c>
     c34:	14000003 	strne	r0, [r0], #-3
     c38:	0000038d 	andeq	r0, r0, sp, lsl #7
     c3c:	013f1306 	teqeq	pc, r6, lsl #6
     c40:	14000000 	strne	r0, [r0], #-0
     c44:	000002e6 	andeq	r0, r0, r6, ror #5
     c48:	03ba1506 			; <UNDEFINED> instruction: 0x03ba1506
     c4c:	14040000 	strne	r0, [r4], #-0
     c50:	0000037c 	andeq	r0, r0, ip, ror r3
     c54:	01261706 	teqeq	r6, r6, lsl #14
     c58:	14080000 	strne	r0, [r8], #-0
     c5c:	00000410 	andeq	r0, r0, r0, lsl r4
     c60:	01261906 	teqeq	r6, r6, lsl #18
     c64:	14090000 	strne	r0, [r9], #-0
     c68:	00000345 	andeq	r0, r0, r5, asr #6
     c6c:	03581b06 	cmpeq	r8, #6144	; 0x1800
     c70:	140c0000 	strne	r0, [ip], #-0
     c74:	00000370 	andeq	r0, r0, r0, ror r3
     c78:	03631e06 	cmneq	r3, #6, 28	; 0x60
     c7c:	00100000 	andseq	r0, r0, r0
     c80:	013f0415 	teqeq	pc, r5, lsl r4	; <UNPREDICTABLE>
     c84:	69130000 	ldmdbvs	r3, {}	; <UNPREDICTABLE>
     c88:	0c000005 	stceq	0, cr0, [r0], {5}
     c8c:	03f12106 	mvnseq	r2, #-2147483647	; 0x80000001
     c90:	a5140000 	ldrge	r0, [r4, #-0]
     c94:	06000005 	streq	r0, [r0], -r5
     c98:	00013f23 	andeq	r3, r1, r3, lsr #30
     c9c:	92140000 	andsls	r0, r4, #0
     ca0:	06000004 	streq	r0, [r0], -r4
     ca4:	00013f25 	andeq	r3, r1, r5, lsr #30
     ca8:	45140400 	ldrmi	r0, [r4, #-1024]	; 0x400
     cac:	06000003 	streq	r0, [r0], -r3
     cb0:	00035827 	andeq	r5, r3, r7, lsr #16
     cb4:	16000800 	strne	r0, [r0], -r0, lsl #16
     cb8:	00000520 	andeq	r0, r0, r0, lsr #10
     cbc:	0301b703 	movweq	fp, #5891	; 0x1703
     cc0:	0000040b 	andeq	r0, r0, fp, lsl #8
     cc4:	00055917 	andeq	r5, r5, r7, lsl r9
     cc8:	01b70300 			; <UNDEFINED> instruction: 0x01b70300
     ccc:	0000013f 	andeq	r0, r0, pc, lsr r1
     cd0:	077a1800 	ldrbeq	r1, [sl, -r0, lsl #16]!
     cd4:	46010000 	strmi	r0, [r1], -r0
     cd8:	0003c002 	andeq	ip, r3, r2
     cdc:	0000d408 	andeq	sp, r0, r8, lsl #8
     ce0:	409c0100 	addsmi	r0, ip, r0, lsl #2
     ce4:	19000004 	stmdbne	r0, {r2}
     ce8:	00000646 	andeq	r0, r0, r6, asr #12
     cec:	fe024601 	cdp2	6, 0, cr4, cr2, cr1, {0}
     cf0:	02000000 	andeq	r0, r0, #0
     cf4:	84196f91 	ldrhi	r6, [r9], #-3985	; 0xf91
     cf8:	01000003 	tsteq	r0, r3
     cfc:	013f0246 	teqeq	pc, r6, asr #4
     d00:	91020000 	mrsls	r0, (UNDEF: 2)
     d04:	581a0068 	ldmdapl	sl, {r3, r5, r6}
     d08:	01000007 	tsteq	r0, r7
     d0c:	013f0290 			; <UNDEFINED> instruction: 0x013f0290
     d10:	04940000 	ldreq	r0, [r4], #0
     d14:	00480800 	subeq	r0, r8, r0, lsl #16
     d18:	9c010000 	stcls	0, cr0, [r1], {-0}
     d1c:	0000046a 	andeq	r0, r0, sl, ror #8
     d20:	00059f19 	andeq	r9, r5, r9, lsl pc
     d24:	02900100 	addseq	r0, r0, #0, 2
     d28:	0000013f 	andeq	r0, r0, pc, lsr r1
     d2c:	00749102 	rsbseq	r9, r4, r2, lsl #2
     d30:	0005351b 	andeq	r3, r5, fp, lsl r5
     d34:	dc160200 	lfmle	f0, 4, [r6], {-0}
     d38:	6a080004 	bvs	200d50 <_size_bss+0x200b04>
     d3c:	01000000 	mrseq	r0, (UNDEF: 0)
     d40:	0004c69c 	muleq	r4, ip, r6
     d44:	06a61c00 	strteq	r1, [r6], r0, lsl #24
     d48:	16020000 	strne	r0, [r2], -r0
     d4c:	000004c6 	andeq	r0, r0, r6, asr #9
     d50:	1c749102 	ldfnep	f1, [r4], #-8
     d54:	000004da 	ldrdeq	r0, [r0], -sl
     d58:	04d71602 	ldrbeq	r1, [r7], #1538	; 0x602
     d5c:	91020000 	mrsls	r0, (UNDEF: 2)
     d60:	04781c70 	ldrbteq	r1, [r8], #-3184	; 0xc70
     d64:	16020000 	strne	r0, [r2], -r0
     d68:	000003ba 			; <UNDEFINED> instruction: 0x000003ba
     d6c:	1c6c9102 	stfnep	f1, [ip], #-8
     d70:	0000038d 	andeq	r0, r0, sp, lsl #7
     d74:	013f1602 	teqeq	pc, r2, lsl #12
     d78:	91020000 	mrsls	r0, (UNDEF: 2)
     d7c:	03701c68 	cmneq	r0, #104, 24	; 0x6800
     d80:	16020000 	strne	r0, [r2], -r0
     d84:	00000363 	andeq	r0, r0, r3, ror #6
     d88:	00009102 	andeq	r9, r0, r2, lsl #2
     d8c:	03650415 	cmneq	r5, #352321536	; 0x15000000
     d90:	d71d0000 	ldrle	r0, [sp, -r0]
     d94:	1e000004 	cdpne	0, 0, cr0, cr0, cr4, {0}
     d98:	00000363 	andeq	r0, r0, r3, ror #6
     d9c:	cc041500 	cfstr32gt	mvfx1, [r4], {-0}
     da0:	1f000004 	svcne	0x00000004
     da4:	00000466 	andeq	r0, r0, r6, ror #8
     da8:	01263002 	teqeq	r6, r2
     dac:	05480000 	strbeq	r0, [r8, #-0]
     db0:	00200800 	eoreq	r0, r0, r0, lsl #16
     db4:	9c010000 	stcls	0, cr0, [r1], {-0}
     db8:	00000506 	andeq	r0, r0, r6, lsl #10
     dbc:	02006320 	andeq	r6, r0, #32, 6	; 0x80000000
     dc0:	00012632 	andeq	r2, r1, r2, lsr r6
     dc4:	10030500 	andne	r0, r3, r0, lsl #10
     dc8:	00200000 	eoreq	r0, r0, r0
     dcc:	00072721 	andeq	r2, r7, r1, lsr #14
     dd0:	683b0200 	ldmdavs	fp!, {r9}
     dd4:	8c080005 	stchi	0, cr0, [r8], {5}
     dd8:	01000000 	mrseq	r0, (UNDEF: 0)
     ddc:	073f229c 			; <UNDEFINED> instruction: 0x073f229c
     de0:	52020000 	andpl	r0, r2, #0
     de4:	080005f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, sl}
     de8:	000000b8 	strheq	r0, [r0], -r8
     dec:	05459c01 	strbeq	r9, [r5, #-3073]	; 0xc01
     df0:	f1230000 			; <UNDEFINED> instruction: 0xf1230000
     df4:	54000003 	strpl	r0, [r0], #-3
     df8:	06080006 	streq	r0, [r8], -r6
     dfc:	02000000 	andeq	r0, r0, #0
     e00:	03fe245e 	mvnseq	r2, #1577058304	; 0x5e000000
     e04:	91020000 	mrsls	r0, (UNDEF: 2)
     e08:	21000074 	tstcs	r0, r4, ror r0
     e0c:	00000681 	andeq	r0, r0, r1, lsl #13
     e10:	06ac6b02 	strteq	r6, [ip], r2, lsl #22
     e14:	000c0800 	andeq	r0, ip, r0, lsl #16
     e18:	9c010000 	stcls	0, cr0, [r1], {-0}
     e1c:	0005b21b 	andeq	fp, r5, fp, lsl r2
     e20:	b8730200 	ldmdalt	r3!, {r9}^
     e24:	1a080006 	bne	200e44 <_size_bss+0x200bf8>
     e28:	01000000 	mrseq	r0, (UNDEF: 0)
     e2c:	00057a9c 	muleq	r5, ip, sl
     e30:	04e01c00 	strbteq	r1, [r0], #3072	; 0xc00
     e34:	73020000 	movwvc	r0, #8192	; 0x2000
     e38:	0000013f 	andeq	r0, r0, pc, lsr r1
     e3c:	00749102 	rsbseq	r9, r4, r2, lsl #2
     e40:	0005c225 	andeq	ip, r5, r5, lsr #4
     e44:	8b050200 	blhi	14164c <_size_bss+0x141400>
     e48:	05000005 	streq	r0, [r0, #-5]
     e4c:	00022403 	andeq	r2, r2, r3, lsl #8
     e50:	ba041520 	blt	1062d8 <_size_bss+0x10608c>
     e54:	25000003 	strcs	r0, [r0, #-3]
     e58:	0000070b 	andeq	r0, r0, fp, lsl #14
     e5c:	058b0702 	streq	r0, [fp, #1794]	; 0x702
     e60:	03050000 	movweq	r0, #20480	; 0x5000
     e64:	20000250 	andcs	r0, r0, r0, asr r2
     e68:	0003650c 	andeq	r6, r3, ip, lsl #10
     e6c:	0005b200 	andeq	fp, r5, r0, lsl #4
     e70:	02080d00 	andeq	r0, r8, #0, 26
     e74:	00010000 	andeq	r0, r1, r0
     e78:	0002d225 	andeq	sp, r2, r5, lsr #4
     e7c:	a20a0200 	andge	r0, sl, #0, 4
     e80:	05000005 	streq	r0, [r0, #-5]
     e84:	00022803 	andeq	r2, r2, r3, lsl #16
     e88:	05682520 	strbeq	r2, [r8, #-1312]!	; 0x520
     e8c:	0c020000 	stceq	0, cr0, [r2], {-0}
     e90:	000003c0 	andeq	r0, r0, r0, asr #7
     e94:	02180305 	andseq	r0, r8, #335544320	; 0x14000000
     e98:	1e002000 	cdpne	0, 0, cr2, cr0, cr0, {0}
     e9c:	04000002 	streq	r0, [r0], #-2
     ea0:	00051800 	andeq	r1, r5, r0, lsl #16
     ea4:	8e010400 	cfcpyshi	mvf0, mvf1
     ea8:	01000001 	tsteq	r0, r1
     eac:	000007ad 	andeq	r0, r0, sp, lsr #15
     eb0:	00000221 	andeq	r0, r0, r1, lsr #4
     eb4:	080006d4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl}
     eb8:	000000dc 	ldrdeq	r0, [r0], -ip
     ebc:	00000625 	andeq	r0, r0, r5, lsr #12
     ec0:	ac060102 	stfges	f0, [r6], {2}
     ec4:	02000000 	andeq	r0, r0, #0
     ec8:	02170502 	andseq	r0, r7, #8388608	; 0x800000
     ecc:	04020000 	streq	r0, [r2], #-0
     ed0:	00015605 	andeq	r5, r1, r5, lsl #12
     ed4:	05080200 	streq	r0, [r8, #-512]	; 0x200
     ed8:	00000151 	andeq	r0, r0, r1, asr r1
     edc:	00010003 	andeq	r0, r1, r3
     ee0:	4c2e0300 	stcmi	3, cr0, [lr], #-0
     ee4:	02000000 	andeq	r0, r0, #0
     ee8:	00aa0801 	adceq	r0, sl, r1, lsl #16
     eec:	02020000 	andeq	r0, r2, #0
     ef0:	00008507 	andeq	r8, r0, r7, lsl #10
     ef4:	00980300 	addseq	r0, r8, r0, lsl #6
     ef8:	34030000 	strcc	r0, [r3], #-0
     efc:	00000065 	andeq	r0, r0, r5, rrx
     f00:	ee070402 	cdp	4, 0, cr0, cr7, cr2, {0}
     f04:	02000000 	andeq	r0, r0, #0
     f08:	00e90708 	rsceq	r0, r9, r8, lsl #14
     f0c:	04040000 	streq	r0, [r4], #-0
     f10:	746e6905 	strbtvc	r6, [lr], #-2309	; 0x905
     f14:	07040200 	streq	r0, [r4, -r0, lsl #4]
     f18:	000000f3 	strdeq	r0, [r0], -r3
     f1c:	48070402 	stmdami	r7, {r1, sl}
     f20:	03000001 	movweq	r0, #1
     f24:	00000361 	andeq	r0, r0, r1, ror #6
     f28:	00930f04 	addseq	r0, r3, r4, lsl #30
     f2c:	04050000 	streq	r0, [r5], #-0
     f30:	00056906 	andeq	r6, r5, r6, lsl #18
     f34:	21040c00 	tstcs	r4, r0, lsl #24
     f38:	000000c6 	andeq	r0, r0, r6, asr #1
     f3c:	0005a507 	andeq	sl, r5, r7, lsl #10
     f40:	5a230400 	bpl	8c1f48 <_size_bss+0x8c1cfc>
     f44:	00000000 	andeq	r0, r0, r0
     f48:	00049207 	andeq	r9, r4, r7, lsl #4
     f4c:	5a250400 	bpl	941f54 <_size_bss+0x941d08>
     f50:	04000000 	streq	r0, [r0], #-0
     f54:	00034507 	andeq	r4, r3, r7, lsl #10
     f58:	88270400 	stmdahi	r7!, {sl}
     f5c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     f60:	03e20800 	mvneq	r0, #0, 16
     f64:	05050000 	streq	r0, [r5, #-0]
     f68:	0007a606 	andeq	sl, r7, r6, lsl #12
     f6c:	07050800 	streq	r0, [r5, -r0, lsl #16]
     f70:	000000f2 	strdeq	r0, [r0], -r2
     f74:	0007a007 	andeq	sl, r7, r7
     f78:	f2090500 	vrshl.s8	d0, d0, d9
     f7c:	00000000 	andeq	r0, r0, r0
     f80:	00042107 	andeq	r2, r4, r7, lsl #2
     f84:	410b0500 	tstmi	fp, r0, lsl #10
     f88:	04000000 	streq	r0, [r0], #-0
     f8c:	c6040900 	strgt	r0, [r4], -r0, lsl #18
     f90:	0a000000 	beq	f98 <_size_bss+0xd4c>
     f94:	000007d2 	ldrdeq	r0, [r0], -r2
     f98:	03015402 	movweq	r5, #5122	; 0x1402
     f9c:	0003bf0a 	andeq	fp, r3, sl, lsl #30
     fa0:	01490200 	mrseq	r0, (UNDEF: 105)
     fa4:	07990b03 	ldreq	r0, [r9, r3, lsl #22]
     fa8:	0c010000 	stceq	0, cr0, [r1], {-0}
     fac:	080006d4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl}
     fb0:	0000005c 	andeq	r0, r0, ip, asr r0
     fb4:	01799c01 	cmneq	r9, r1, lsl #24
     fb8:	a50c0000 	strge	r0, [ip, #-0]
     fbc:	01000007 	tsteq	r0, r7
     fc0:	0001790c 	andeq	r7, r1, ip, lsl #18
     fc4:	74910200 	ldrvc	r0, [r1], #512	; 0x200
     fc8:	0000f80d 	andeq	pc, r0, sp, lsl #16
     fcc:	0006dc00 	andeq	sp, r6, r0, lsl #24
     fd0:	00000208 	andeq	r0, r0, r8, lsl #4
     fd4:	0d0f0100 	stfeqs	f0, [pc, #-0]	; fdc <_size_bss+0xd90>
     fd8:	00000101 	andeq	r0, r0, r1, lsl #2
     fdc:	080006f6 	stmdaeq	r0, {r1, r2, r4, r5, r6, r7, r9, sl}
     fe0:	00000002 	andeq	r0, r0, r2
     fe4:	010d1701 	tsteq	sp, r1, lsl #14
     fe8:	00000001 	andeq	r0, r0, r1
     fec:	02080007 	andeq	r0, r8, #7
     ff0:	01000000 	mrseq	r0, (UNDEF: 0)
     ff4:	01010d1b 	tsteq	r1, fp, lsl sp
     ff8:	07140000 	ldreq	r0, [r4, -r0]
     ffc:	00020800 	andeq	r0, r2, r0, lsl #16
    1000:	22010000 	andcs	r0, r1, #0
    1004:	0001010d 	andeq	r0, r1, sp, lsl #2
    1008:	00071e00 	andeq	r1, r7, r0, lsl #28
    100c:	00000208 	andeq	r0, r0, r8, lsl #4
    1010:	00270100 	eoreq	r0, r7, r0, lsl #2
    1014:	00cd0409 	sbceq	r0, sp, r9, lsl #8
    1018:	e00e0000 	and	r0, lr, r0
    101c:	01000007 	tsteq	r0, r7
    1020:	00004132 	andeq	r4, r0, r2, lsr r1
    1024:	00073000 	andeq	r3, r7, r0
    1028:	00005c08 	andeq	r5, r0, r8, lsl #24
    102c:	f29c0100 	vaddw.s16	q0, q6, d0
    1030:	0c000001 	stceq	0, cr0, [r0], {1}
    1034:	000007a5 	andeq	r0, r0, r5, lsr #15
    1038:	01793201 	cmneq	r9, r1, lsl #4
    103c:	91020000 	mrsls	r0, (UNDEF: 2)
    1040:	00f80d74 	rscseq	r0, r8, r4, ror sp
    1044:	07380000 	ldreq	r0, [r8, -r0]!
    1048:	00020800 	andeq	r0, r2, r0, lsl #16
    104c:	34010000 	strcc	r0, [r1], #-0
    1050:	0001010d 	andeq	r0, r1, sp, lsl #2
    1054:	00075200 	andeq	r5, r7, r0, lsl #4
    1058:	00000208 	andeq	r0, r0, r8, lsl #4
    105c:	0d3c0100 	ldfeqs	f0, [ip, #-0]
    1060:	00000101 	andeq	r0, r0, r1, lsl #2
    1064:	0800075e 	stmdaeq	r0, {r1, r2, r3, r4, r6, r8, r9, sl}
    1068:	00000002 	andeq	r0, r0, r2
    106c:	010d4001 	tsteq	sp, r1
    1070:	74000001 	strvc	r0, [r0], #-1
    1074:	02080007 	andeq	r0, r8, #7
    1078:	01000000 	mrseq	r0, (UNDEF: 0)
    107c:	01010d47 	tsteq	r1, r7, asr #26
    1080:	077a0000 	ldrbeq	r0, [sl, -r0]!
    1084:	00020800 	andeq	r0, r2, r0, lsl #16
    1088:	4b010000 	blmi	41090 <_size_bss+0x40e44>
    108c:	078b0f00 	streq	r0, [fp, r0, lsl #30]
    1090:	52010000 	andpl	r0, r1, #0
    1094:	0800078c 	stmdaeq	r0, {r2, r3, r7, r8, r9, sl}
    1098:	00000024 	andeq	r0, r0, r4, lsr #32
    109c:	02169c01 	andseq	r9, r6, #256	; 0x100
    10a0:	a50c0000 	strge	r0, [ip, #-0]
    10a4:	01000007 	tsteq	r0, r7
    10a8:	00017952 	andeq	r7, r1, r2, asr r9
    10ac:	74910200 	ldrvc	r0, [r1], #512	; 0x200
    10b0:	05681000 	strbeq	r1, [r8, #-0]!
    10b4:	2d040000 	stccs	0, cr0, [r4, #-0]
    10b8:	00000095 	muleq	r0, r5, r0
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xb0e
   c:	10011117 	andne	r1, r1, r7, lsl r1
  10:	02000017 	andeq	r0, r0, #23
  14:	0b0b0024 	bleq	2c00ac <_size_bss+0x2bfe60>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <_size_bss+0x3809dc>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19
  2c:	0b0b0024 	bleq	2c00c4 <_size_bss+0x2bfe78>
  30:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  34:	35050000 	strcc	r0, [r5, #-0]
  38:	00134900 	andseq	r4, r3, r0, lsl #18
  3c:	01010600 	tsteq	r1, r0, lsl #12
  40:	13011349 	movwne	r1, #4937	; 0x1349
  44:	21070000 	mrscs	r0, (UNDEF: 7)
  48:	2f134900 	svccs	0x00134900
  4c:	0800000b 	stmdaeq	r0, {r0, r1, r3}
  50:	0b0b0113 	bleq	2c04a4 <_size_bss+0x2c0258>
  54:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
  58:	00001301 	andeq	r1, r0, r1, lsl #6
  5c:	03000d09 	movweq	r0, #3337	; 0xd09
  60:	3b0b3a0e 	blcc	2ce8a0 <_size_bss+0x2ce654>
  64:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
  68:	0a00000b 	beq	9c <_size_data+0x94>
  6c:	0803000d 	stmdaeq	r3, {r0, r2, r3}
  70:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
  74:	0b381349 	bleq	e04da0 <_size_bss+0xe04b54>
  78:	160b0000 	strne	r0, [fp], -r0
  7c:	3a0e0300 	bcc	380c84 <_size_bss+0x380a38>
  80:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
  84:	0c000013 	stceq	0, cr0, [r0], {19}
  88:	0b0b000f 	bleq	2c00cc <_size_bss+0x2bfe80>
  8c:	00001349 	andeq	r1, r0, r9, asr #6
  90:	2700150d 	strcs	r1, [r0, -sp, lsl #10]
  94:	0e000019 	mcreq	0, 0, r0, cr0, cr9, {0}
  98:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
  9c:	0b3a0e03 	bleq	e838b0 <_size_bss+0xe83664>
  a0:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
  a4:	06120111 			; <UNDEFINED> instruction: 0x06120111
  a8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  ac:	0f000019 	svceq	0x00000019
  b0:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
  b4:	0b3a0e03 	bleq	e838c8 <_size_bss+0xe8367c>
  b8:	19270b3b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, r9, fp}
  bc:	06120111 			; <UNDEFINED> instruction: 0x06120111
  c0:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
  c4:	00130119 	andseq	r0, r3, r9, lsl r1
  c8:	00051000 	andeq	r1, r5, r0
  cc:	0b3a0e03 	bleq	e838e0 <_size_bss+0xe83694>
  d0:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  d4:	00001802 	andeq	r1, r0, r2, lsl #16
  d8:	0b000f11 	bleq	3d24 <_size_bss+0x3ad8>
  dc:	1200000b 	andne	r0, r0, #11
  e0:	08030034 	stmdaeq	r3, {r2, r4, r5}
  e4:	0b3b0b3a 	bleq	ec2dd4 <_size_bss+0xec2b88>
  e8:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
  ec:	2e130000 	cdpcs	0, 1, cr0, cr3, cr0, {0}
  f0:	03193f00 	tsteq	r9, #0, 30
  f4:	3b0b3a0e 	blcc	2ce934 <_size_bss+0x2ce6e8>
  f8:	1119270b 	tstne	r9, fp, lsl #14
  fc:	40061201 	andmi	r1, r6, r1, lsl #4
 100:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 104:	34140000 	ldrcc	r0, [r4], #-0
 108:	3a0e0300 	bcc	380d10 <_size_bss+0x380ac4>
 10c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 110:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
 114:	15000018 	strne	r0, [r0, #-24]
 118:	13490026 	movtne	r0, #36902	; 0x9026
 11c:	34160000 	ldrcc	r0, [r6], #-0
 120:	3a0e0300 	bcc	380d28 <_size_bss+0x380adc>
 124:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 128:	3c193f13 	ldccc	15, cr3, [r9], {19}
 12c:	00000019 	andeq	r0, r0, r9, lsl r0
 130:	25011101 	strcs	r1, [r1, #-257]	; 0x101
 134:	030b130e 	movweq	r1, #45838	; 0xb30e
 138:	110e1b0e 	tstne	lr, lr, lsl #22
 13c:	10061201 	andne	r1, r6, r1, lsl #4
 140:	02000017 	andeq	r0, r0, #23
 144:	0b0b0024 	bleq	2c01dc <_size_bss+0x2bff90>
 148:	0e030b3e 	vmoveq.16	d3[0], r0
 14c:	16030000 	strne	r0, [r3], -r0
 150:	3a0e0300 	bcc	380d58 <_size_bss+0x380b0c>
 154:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 158:	04000013 	streq	r0, [r0], #-19
 15c:	0b0b0024 	bleq	2c01f4 <_size_bss+0x2bffa8>
 160:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 164:	01050000 	mrseq	r0, (UNDEF: 5)
 168:	01134901 	tsteq	r3, r1, lsl #18
 16c:	06000013 			; <UNDEFINED> instruction: 0x06000013
 170:	13490021 	movtne	r0, #36897	; 0x9021
 174:	00000b2f 	andeq	r0, r0, pc, lsr #22
 178:	0b011307 	bleq	44d9c <_size_bss+0x44b50>
 17c:	3b0b3a0b 	blcc	2ce9b0 <_size_bss+0x2ce764>
 180:	00130105 	andseq	r0, r3, r5, lsl #2
 184:	000d0800 	andeq	r0, sp, r0, lsl #16
 188:	0b3a0e03 	bleq	e8399c <_size_bss+0xe83750>
 18c:	1349053b 	movtne	r0, #38203	; 0x953b
 190:	00000b38 	andeq	r0, r0, r8, lsr fp
 194:	03000d09 	movweq	r0, #3337	; 0xd09
 198:	3b0b3a08 	blcc	2ce9c0 <_size_bss+0x2ce774>
 19c:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 1a0:	0a00000b 	beq	1d4 <_size_data+0x1cc>
 1a4:	13490026 	movtne	r0, #36902	; 0x9026
 1a8:	350b0000 	strcc	r0, [fp, #-0]
 1ac:	00134900 	andseq	r4, r3, r0, lsl #18
 1b0:	00160c00 	andseq	r0, r6, r0, lsl #24
 1b4:	0b3a0e03 	bleq	e839c8 <_size_bss+0xe8377c>
 1b8:	1349053b 	movtne	r0, #38203	; 0x953b
 1bc:	0f0d0000 	svceq	0x000d0000
 1c0:	000b0b00 	andeq	r0, fp, r0, lsl #22
 1c4:	01130e00 	tsteq	r3, r0, lsl #28
 1c8:	0b0b0e03 	bleq	2c39dc <_size_bss+0x2c3790>
 1cc:	0b3b0b3a 	bleq	ec2ebc <_size_bss+0xec2c70>
 1d0:	00001301 	andeq	r1, r0, r1, lsl #6
 1d4:	03000d0f 	movweq	r0, #3343	; 0xd0f
 1d8:	3b0b3a0e 	blcc	2cea18 <_size_bss+0x2ce7cc>
 1dc:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 1e0:	1000000b 	andne	r0, r0, fp
 1e4:	0b0b000f 	bleq	2c0228 <_size_bss+0x2bffdc>
 1e8:	00001349 	andeq	r1, r0, r9, asr #6
 1ec:	03001611 	movweq	r1, #1553	; 0x611
 1f0:	3b0b3a0e 	blcc	2cea30 <_size_bss+0x2ce7e4>
 1f4:	1200000b 	andne	r0, r0, #11
 1f8:	0e03002e 	cdpeq	0, 0, cr0, cr3, cr14, {1}
 1fc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
 200:	0b201927 	bleq	8066a4 <_size_bss+0x806458>
 204:	2e130000 	cdpcs	0, 1, cr0, cr3, cr0, {0}
 208:	03193f00 	tsteq	r9, #0, 30
 20c:	3b0b3a0e 	blcc	2cea4c <_size_bss+0x2ce800>
 210:	1119270b 	tstne	r9, fp, lsl #14
 214:	40061201 	andmi	r1, r6, r1, lsl #4
 218:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 21c:	2e140000 	cdpcs	0, 1, cr0, cr4, cr0, {0}
 220:	03193f01 	tsteq	r9, #1, 30
 224:	3b0b3a0e 	blcc	2cea64 <_size_bss+0x2ce818>
 228:	1119270b 	tstne	r9, fp, lsl #14
 22c:	40061201 	andmi	r1, r6, r1, lsl #4
 230:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 234:	00001301 	andeq	r1, r0, r1, lsl #6
 238:	31001d15 	tstcc	r0, r5, lsl sp
 23c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 240:	590b5806 	stmdbpl	fp, {r1, r2, fp, ip, lr}
 244:	1600000b 	strne	r0, [r0], -fp
 248:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 24c:	0b3b0b3a 	bleq	ec2f3c <_size_bss+0xec2cf0>
 250:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 254:	2e170000 	cdpcs	0, 1, cr0, cr7, cr0, {0}
 258:	03193f00 	tsteq	r9, #0, 30
 25c:	3b0b3a0e 	blcc	2cea9c <_size_bss+0x2ce850>
 260:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 264:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 268:	96184006 	ldrls	r4, [r8], -r6
 26c:	00001942 	andeq	r1, r0, r2, asr #18
 270:	03003418 	movweq	r3, #1048	; 0x418
 274:	3b0b3a0e 	blcc	2ceab4 <_size_bss+0x2ce868>
 278:	3f13490b 	svccc	0x0013490b
 27c:	00193c19 	andseq	r3, r9, r9, lsl ip
 280:	00341900 	eorseq	r1, r4, r0, lsl #18
 284:	0b3a0e03 	bleq	e83a98 <_size_bss+0xe8384c>
 288:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 28c:	1802193f 	stmdane	r2, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
 290:	341a0000 	ldrcc	r0, [sl], #-0
 294:	3a080300 	bcc	200e9c <_size_bss+0x200c50>
 298:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 29c:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
 2a0:	00000018 	andeq	r0, r0, r8, lsl r0
 2a4:	25011101 	strcs	r1, [r1, #-257]	; 0x101
 2a8:	030b130e 	movweq	r1, #45838	; 0xb30e
 2ac:	110e1b0e 	tstne	lr, lr, lsl #22
 2b0:	10061201 	andne	r1, r6, r1, lsl #4
 2b4:	02000017 	andeq	r0, r0, #23
 2b8:	0b0b0024 	bleq	2c0350 <_size_bss+0x2c0104>
 2bc:	0e030b3e 	vmoveq.16	d3[0], r0
 2c0:	24030000 	strcs	r0, [r3], #-0
 2c4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 2c8:	0008030b 	andeq	r0, r8, fp, lsl #6
 2cc:	002e0400 	eoreq	r0, lr, r0, lsl #8
 2d0:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 2d4:	0b3b0b3a 	bleq	ec2fc4 <_size_bss+0xec2d78>
 2d8:	01111927 	tsteq	r1, r7, lsr #18
 2dc:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 2e0:	00194297 	mulseq	r9, r7, r2
 2e4:	11010000 	mrsne	r0, (UNDEF: 1)
 2e8:	11061000 	mrsne	r1, (UNDEF: 6)
 2ec:	03011201 	movweq	r1, #4609	; 0x1201
 2f0:	25081b08 	strcs	r1, [r8, #-2824]	; 0xb08
 2f4:	00051308 	andeq	r1, r5, r8, lsl #6
 2f8:	11010000 	mrsne	r0, (UNDEF: 1)
 2fc:	130e2501 	movwne	r2, #58625	; 0xe501
 300:	1b0e030b 	blne	380f34 <_size_bss+0x380ce8>
 304:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
 308:	00171006 	andseq	r1, r7, r6
 30c:	01040200 	mrseq	r0, R12_usr
 310:	0b0b0e03 	bleq	2c3b24 <_size_bss+0x2c38d8>
 314:	0b3b0b3a 	bleq	ec3004 <_size_bss+0xec2db8>
 318:	00001301 	andeq	r1, r0, r1, lsl #6
 31c:	03002803 	movweq	r2, #2051	; 0x803
 320:	000d1c0e 	andeq	r1, sp, lr, lsl #24
 324:	00160400 	andseq	r0, r6, r0, lsl #8
 328:	0b3a0e03 	bleq	e83b3c <_size_bss+0xe838f0>
 32c:	1349053b 	movtne	r0, #38203	; 0x953b
 330:	24050000 	strcs	r0, [r5], #-0
 334:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 338:	000e030b 	andeq	r0, lr, fp, lsl #6
 33c:	00160600 	andseq	r0, r6, r0, lsl #12
 340:	0b3a0e03 	bleq	e83b54 <_size_bss+0xe83908>
 344:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 348:	24070000 	strcs	r0, [r7], #-0
 34c:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 350:	0008030b 	andeq	r0, r8, fp, lsl #6
 354:	01130800 	tsteq	r3, r0, lsl #16
 358:	0b3a050b 	bleq	e8178c <_size_bss+0xe81540>
 35c:	1301053b 	movwne	r0, #5435	; 0x153b
 360:	0d090000 	stceq	0, cr0, [r9, #-0]
 364:	3a0e0300 	bcc	380f6c <_size_bss+0x380d20>
 368:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 36c:	000b3813 	andeq	r3, fp, r3, lsl r8
 370:	000d0a00 	andeq	r0, sp, r0, lsl #20
 374:	0b3a0e03 	bleq	e83b88 <_size_bss+0xe8393c>
 378:	1349053b 	movtne	r0, #38203	; 0x953b
 37c:	00000538 	andeq	r0, r0, r8, lsr r5
 380:	03000d0b 	movweq	r0, #3339	; 0xd0b
 384:	3b0b3a08 	blcc	2cebac <_size_bss+0x2ce960>
 388:	38134905 	ldmdacc	r3, {r0, r2, r8, fp, lr}
 38c:	0c000005 	stceq	0, cr0, [r0], {5}
 390:	13490101 	movtne	r0, #37121	; 0x9101
 394:	00001301 	andeq	r1, r0, r1, lsl #6
 398:	4900210d 	stmdbmi	r0, {r0, r2, r3, r8, sp}
 39c:	000b2f13 	andeq	r2, fp, r3, lsl pc
 3a0:	00350e00 	eorseq	r0, r5, r0, lsl #28
 3a4:	00001349 	andeq	r1, r0, r9, asr #6
 3a8:	0b01130f 	bleq	44fec <_size_bss+0x44da0>
 3ac:	3b0b3a0b 	blcc	2cebe0 <_size_bss+0x2ce994>
 3b0:	00130105 	andseq	r0, r3, r5, lsl #2
 3b4:	000d1000 	andeq	r1, sp, r0
 3b8:	0b3a0803 	bleq	e823cc <_size_bss+0xe82180>
 3bc:	1349053b 	movtne	r0, #38203	; 0x953b
 3c0:	00000b38 	andeq	r0, r0, r8, lsr fp
 3c4:	49002611 	stmdbmi	r0, {r0, r4, r9, sl, sp}
 3c8:	12000013 	andne	r0, r0, #19
 3cc:	0b0b000f 	bleq	2c0410 <_size_bss+0x2c01c4>
 3d0:	13130000 	tstne	r3, #0
 3d4:	0b0e0301 	bleq	380fe0 <_size_bss+0x380d94>
 3d8:	3b0b3a0b 	blcc	2cec0c <_size_bss+0x2ce9c0>
 3dc:	0013010b 	andseq	r0, r3, fp, lsl #2
 3e0:	000d1400 	andeq	r1, sp, r0, lsl #8
 3e4:	0b3a0e03 	bleq	e83bf8 <_size_bss+0xe839ac>
 3e8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 3ec:	00000b38 	andeq	r0, r0, r8, lsr fp
 3f0:	0b000f15 	bleq	404c <_size_bss+0x3e00>
 3f4:	0013490b 	andseq	r4, r3, fp, lsl #18
 3f8:	012e1600 	teqeq	lr, r0, lsl #12
 3fc:	0b3a0e03 	bleq	e83c10 <_size_bss+0xe839c4>
 400:	1927053b 	stmdbne	r7!, {r0, r1, r3, r4, r5, r8, sl}
 404:	13010b20 	movwne	r0, #6944	; 0x1b20
 408:	05170000 	ldreq	r0, [r7, #-0]
 40c:	3a0e0300 	bcc	381014 <_size_bss+0x380dc8>
 410:	49053b0b 	stmdbmi	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
 414:	18000013 	stmdane	r0, {r0, r1, r4}
 418:	0e03012e 	adfeqsp	f0, f3, #0.5
 41c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
 420:	01111927 	tsteq	r1, r7, lsr #18
 424:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
 428:	01194297 			; <UNDEFINED> instruction: 0x01194297
 42c:	19000013 	stmdbne	r0, {r0, r1, r4}
 430:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
 434:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
 438:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
 43c:	2e1a0000 	cdpcs	0, 1, cr0, cr10, cr0, {0}
 440:	3a0e0301 	bcc	38104c <_size_bss+0x380e00>
 444:	27053b0b 	strcs	r3, [r5, -fp, lsl #22]
 448:	11134919 	tstne	r3, r9, lsl r9
 44c:	40061201 	andmi	r1, r6, r1, lsl #4
 450:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 454:	00001301 	andeq	r1, r0, r1, lsl #6
 458:	3f012e1b 	svccc	0x00012e1b
 45c:	3a0e0319 	bcc	3810c8 <_size_bss+0x380e7c>
 460:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 464:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 468:	97184006 	ldrls	r4, [r8, -r6]
 46c:	13011942 	movwne	r1, #6466	; 0x1942
 470:	051c0000 	ldreq	r0, [ip, #-0]
 474:	3a0e0300 	bcc	38107c <_size_bss+0x380e30>
 478:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 47c:	00180213 	andseq	r0, r8, r3, lsl r2
 480:	01151d00 	tsteq	r5, r0, lsl #26
 484:	13011927 	movwne	r1, #6439	; 0x1927
 488:	051e0000 	ldreq	r0, [lr, #-0]
 48c:	00134900 	andseq	r4, r3, r0, lsl #18
 490:	012e1f00 	teqeq	lr, r0, lsl #30
 494:	0e03193f 	mcreq	9, 0, r1, cr3, cr15, {1}
 498:	0b3b0b3a 	bleq	ec3188 <_size_bss+0xec2f3c>
 49c:	13491927 	movtne	r1, #39207	; 0x9927
 4a0:	06120111 			; <UNDEFINED> instruction: 0x06120111
 4a4:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
 4a8:	00130119 	andseq	r0, r3, r9, lsl r1
 4ac:	00342000 	eorseq	r2, r4, r0
 4b0:	0b3a0803 	bleq	e824c4 <_size_bss+0xe82278>
 4b4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 4b8:	00001802 	andeq	r1, r0, r2, lsl #16
 4bc:	3f002e21 	svccc	0x00002e21
 4c0:	3a0e0319 	bcc	38112c <_size_bss+0x380ee0>
 4c4:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 4c8:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 4cc:	96184006 	ldrls	r4, [r8], -r6
 4d0:	00001942 	andeq	r1, r0, r2, asr #18
 4d4:	3f012e22 	svccc	0x00012e22
 4d8:	3a0e0319 	bcc	381144 <_size_bss+0x380ef8>
 4dc:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 4e0:	12011119 	andne	r1, r1, #1073741830	; 0x40000006
 4e4:	96184006 	ldrls	r4, [r8], -r6
 4e8:	13011942 	movwne	r1, #6466	; 0x1942
 4ec:	1d230000 	stcne	0, cr0, [r3, #-0]
 4f0:	11133101 	tstne	r3, r1, lsl #2
 4f4:	58061201 	stmdapl	r6, {r0, r9, ip}
 4f8:	000b590b 	andeq	r5, fp, fp, lsl #18
 4fc:	00052400 	andeq	r2, r5, r0, lsl #8
 500:	18021331 	stmdane	r2, {r0, r4, r5, r8, r9, ip}
 504:	34250000 	strtcc	r0, [r5], #-0
 508:	3a0e0300 	bcc	381110 <_size_bss+0x380ec4>
 50c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 510:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
 514:	00000018 	andeq	r0, r0, r8, lsl r0
 518:	25011101 	strcs	r1, [r1, #-257]	; 0x101
 51c:	030b130e 	movweq	r1, #45838	; 0xb30e
 520:	110e1b0e 	tstne	lr, lr, lsl #22
 524:	10061201 	andne	r1, r6, r1, lsl #4
 528:	02000017 	andeq	r0, r0, #23
 52c:	0b0b0024 	bleq	2c05c4 <_size_bss+0x2c0378>
 530:	0e030b3e 	vmoveq.16	d3[0], r0
 534:	16030000 	strne	r0, [r3], -r0
 538:	3a0e0300 	bcc	381140 <_size_bss+0x380ef4>
 53c:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 540:	04000013 	streq	r0, [r0], #-19
 544:	0b0b0024 	bleq	2c05dc <_size_bss+0x2c0390>
 548:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 54c:	0f050000 	svceq	0x00050000
 550:	000b0b00 	andeq	r0, fp, r0, lsl #22
 554:	01130600 	tsteq	r3, r0, lsl #12
 558:	0b0b0e03 	bleq	2c3d6c <_size_bss+0x2c3b20>
 55c:	0b3b0b3a 	bleq	ec324c <_size_bss+0xec3000>
 560:	00001301 	andeq	r1, r0, r1, lsl #6
 564:	03000d07 	movweq	r0, #3335	; 0xd07
 568:	3b0b3a0e 	blcc	2ceda8 <_size_bss+0x2ceb5c>
 56c:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
 570:	0800000b 	stmdaeq	r0, {r0, r1, r3}
 574:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
 578:	0b3b0b3a 	bleq	ec3268 <_size_bss+0xec301c>
 57c:	0f090000 	svceq	0x00090000
 580:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 584:	0a000013 	beq	5d8 <_size_bss+0x38c>
 588:	0e03002e 	cdpeq	0, 0, cr0, cr3, cr14, {1}
 58c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xb3a
 590:	0b201927 	bleq	806a34 <_size_bss+0x8067e8>
 594:	2e0b0000 	cdpcs	0, 0, cr0, cr11, cr0, {0}
 598:	03193f01 	tsteq	r9, #1, 30
 59c:	3b0b3a0e 	blcc	2ceddc <_size_bss+0x2ceb90>
 5a0:	1119270b 	tstne	r9, fp, lsl #14
 5a4:	40061201 	andmi	r1, r6, r1, lsl #4
 5a8:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
 5ac:	00001301 	andeq	r1, r0, r1, lsl #6
 5b0:	0300050c 	movweq	r0, #1292	; 0x50c
 5b4:	3b0b3a0e 	blcc	2cedf4 <_size_bss+0x2ceba8>
 5b8:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 5bc:	0d000018 	stceq	0, cr0, [r0, #-96]	; 0xffffffa0
 5c0:	1331001d 	teqne	r1, #29
 5c4:	06120111 			; <UNDEFINED> instruction: 0x06120111
 5c8:	0b590b58 	bleq	1643330 <_size_bss+0x16430e4>
 5cc:	2e0e0000 	cdpcs	0, 0, cr0, cr14, cr0, {0}
 5d0:	03193f01 	tsteq	r9, #1, 30
 5d4:	3b0b3a0e 	blcc	2cee14 <_size_bss+0x2cebc8>
 5d8:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
 5dc:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
 5e0:	96184006 	ldrls	r4, [r8], -r6
 5e4:	13011942 	movwne	r1, #6466	; 0x1942
 5e8:	2e0f0000 	cdpcs	0, 0, cr0, cr15, cr0, {0}
 5ec:	03193f01 	tsteq	r9, #1, 30
 5f0:	3b0b3a0e 	blcc	2cee30 <_size_bss+0x2cebe4>
 5f4:	1119270b 	tstne	r9, fp, lsl #14
 5f8:	40061201 	andmi	r1, r6, r1, lsl #4
 5fc:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
 600:	00001301 	andeq	r1, r0, r1, lsl #6
 604:	03003410 	movweq	r3, #1040	; 0x410
 608:	3b0b3a0e 	blcc	2cee48 <_size_bss+0x2cebfc>
 60c:	3f13490b 	svccc	0x0013490b
 610:	00193c19 	andseq	r3, r9, r9, lsl ip
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	00000024 	andeq	r0, r0, r4, lsr #32
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	080000d0 	stmdaeq	r0, {r4, r6, r7}
  14:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
  18:	080000c8 	stmdaeq	r0, {r3, r6, r7}
  1c:	00000008 	andeq	r0, r0, r8
	...
  28:	0000001c 	andeq	r0, r0, ip, lsl r0
  2c:	02c20002 	sbceq	r0, r2, #2
  30:	00040000 	andeq	r0, r4, r0
  34:	00000000 	andeq	r0, r0, r0
  38:	080001a0 	stmdaeq	r0, {r5, r7, r8}
  3c:	000001d4 	ldrdeq	r0, [r0], -r4
	...
  48:	0000001c 	andeq	r0, r0, ip, lsl r0
  4c:	07770002 	ldrbeq	r0, [r7, -r2]!
  50:	00040000 	andeq	r0, r4, r0
  54:	00000000 	andeq	r0, r0, r0
  58:	08000374 	stmdaeq	r0, {r2, r4, r5, r6, r8, r9}
  5c:	00000008 	andeq	r0, r0, r8
	...
  68:	0000001c 	andeq	r0, r0, ip, lsl r0
  6c:	07fb0002 	ldrbeq	r0, [fp, r2]!
  70:	00040000 	andeq	r0, r4, r0
  74:	00000000 	andeq	r0, r0, r0
  78:	0800037c 	stmdaeq	r0, {r2, r3, r4, r5, r6, r8, r9}
  7c:	00000044 	andeq	r0, r0, r4, asr #32
	...
  88:	0000001c 	andeq	r0, r0, ip, lsl r0
  8c:	08c60002 	stmiaeq	r6, {r1}^
  90:	00040000 	andeq	r0, r4, r0
  94:	00000000 	andeq	r0, r0, r0
  98:	080003c0 	stmdaeq	r0, {r6, r7, r8, r9}
  9c:	00000312 	andeq	r0, r0, r2, lsl r3
	...
  a8:	0000001c 	andeq	r0, r0, ip, lsl r0
  ac:	0e9b0002 	cdpeq	0, 9, cr0, cr11, cr2, {0}
  b0:	00040000 	andeq	r0, r4, r0
  b4:	00000000 	andeq	r0, r0, r0
  b8:	080006d4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl}
  bc:	000000dc 	ldrdeq	r0, [r0], -ip
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	080000d0 	stmdaeq	r0, {r4, r6, r7}
   4:	080001a0 	stmdaeq	r0, {r5, r7, r8}
   8:	080000c8 	stmdaeq	r0, {r3, r6, r7}
   c:	080000d0 	stmdaeq	r0, {r4, r6, r7}
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000171 	andeq	r0, r0, r1, ror r1
   4:	010d0002 	tsteq	sp, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
  1c:	69662f2e 	stmdbvs	r6!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
  20:	732f656c 	teqvc	pc, #108, 10	; 0x1b000000
  24:	2f006372 	svccs	0x00006372
  28:	656d6f68 	strbvs	r6, [sp, #-3944]!	; 0xf68
  2c:	72616d2f 	rsbvc	r6, r1, #3008	; 0xbc0
  30:	72702f6b 	rsbsvc	r2, r0, #428	; 0x1ac
  34:	63656a6f 	cmnvs	r5, #454656	; 0x6f000
  38:	6c702f74 	ldclvs	15, cr2, [r0], #-464	; 0xfffffe30
  3c:	6f667461 	svcvs	0x00667461
  40:	6c5f6d72 	mrrcvs	13, 7, r6, pc, cr2	; <UNPREDICTABLE>
  44:	61726269 	cmnvs	r2, r9, ror #4
  48:	6d2f7972 	stcvs	9, cr7, [pc, #-456]!	; fffffe88 <pPointer_Load_Context_Stask+0xdffffc38>
  4c:	6f726369 	svcvs	0x00726369
  50:	746e6f63 	strbtvc	r6, [lr], #-3939	; 0xf63
  54:	6c6c6f72 	stclvs	15, cr6, [ip], #-456	; 0xfffffe38
  58:	2f737265 	svccs	0x00737265
  5c:	6974706f 	ldmdbvs	r4!, {r0, r1, r2, r3, r5, r6, ip, sp, lr}^
  60:	735f6e6f 	cmpvc	pc, #1776	; 0x6f0
  64:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
  68:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
  6c:	6d72612d 	ldfvse	f6, [r2, #-180]!	; 0xffffff4c
  70:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
  74:	61652d65 	cmnvs	r5, r5, ror #26
  78:	342d6962 	strtcc	r6, [sp], #-2402	; 0x962
  7c:	322d395f 	eorcc	r3, sp, #1556480	; 0x17c000
  80:	71353130 	teqvc	r5, r0, lsr r1
  84:	696c2f31 	stmdbvs	ip!, {r0, r4, r5, r8, r9, sl, fp, sp}^
  88:	63672f62 	cmnvs	r7, #392	; 0x188
  8c:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
  90:	6f6e2d6d 	svcvs	0x006e2d6d
  94:	652d656e 	strvs	r6, [sp, #-1390]!	; 0x56e
  98:	2f696261 	svccs	0x00696261
  9c:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
  a0:	6e692f33 	mcrvs	15, 3, r2, cr9, cr3, {1}
  a4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
  a8:	2e2e0065 	cdpcs	0, 2, cr0, cr14, cr5, {3}
  ac:	6c69662f 	stclvs	6, cr6, [r9], #-188	; 0xffffff44
  b0:	6e692f65 	cdpvs	15, 6, cr2, cr9, cr5, {3}
  b4:	6d632f63 	stclvs	15, cr2, [r3, #-396]!	; 0xfffffe74
  b8:	00736973 	rsbseq	r6, r3, r3, ror r9
  bc:	662f2e2e 	strtvs	r2, [pc], -lr, lsr #28
  c0:	2f656c69 	svccs	0x00656c69
  c4:	00636e69 	rsbeq	r6, r3, r9, ror #28
  c8:	61747300 	cmnvs	r4, r0, lsl #6
  cc:	70757472 	rsbsvc	r7, r5, r2, ror r4
  d0:	6d74735f 	ldclvs	3, cr7, [r4, #-380]!	; 0xfffffe84
  d4:	30663233 	rsbcc	r3, r6, r3, lsr r2
  d8:	632e7878 	teqvs	lr, #120, 16	; 0x780000
  dc:	00000100 	andeq	r0, r0, r0, lsl #2
  e0:	69647473 	stmdbvs	r4!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
  e4:	672d746e 	strvs	r7, [sp, -lr, ror #8]!
  e8:	682e6363 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, sp, lr}
  ec:	00000200 	andeq	r0, r0, r0, lsl #4
  f0:	336d7473 	cmncc	sp, #1929379840	; 0x73000000
  f4:	78306632 	ldmdavc	r0!, {r1, r4, r5, r9, sl, sp, lr}
  f8:	00682e78 	rsbeq	r2, r8, r8, ror lr
  fc:	73000003 	movwvc	r0, #3
 100:	74726174 	ldrbtvc	r6, [r2], #-372	; 0x174
 104:	735f7075 	cmpvc	pc, #117	; 0x75
 108:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
 10c:	78783066 	ldmdavc	r8!, {r1, r2, r5, r6, ip, sp}^
 110:	0400682e 	streq	r6, [r0], #-2094	; 0x82e
 114:	00000000 	andeq	r0, r0, r0
 118:	00d00205 	sbcseq	r0, r0, r5, lsl #4
 11c:	00170800 	andseq	r0, r7, r0, lsl #16
 120:	31010402 	tstcc	r1, r2, lsl #8
 124:	01040200 	mrseq	r0, R12_usr
 128:	04020091 	streq	r0, [r2], #-145	; 0x91
 12c:	c1032101 	tstgt	r3, r1, lsl #2
 130:	00674a00 	rsbeq	r4, r7, r0, lsl #20
 134:	06020402 	streq	r0, [r2], -r2, lsl #8
 138:	04020020 	streq	r0, [r2], #-32
 13c:	4b068201 	blmi	1a0948 <_size_bss+0x1a06fc>
 140:	002f593f 	eoreq	r5, pc, pc, lsr r9	; <UNPREDICTABLE>
 144:	06020402 	streq	r0, [r2], -r2, lsl #8
 148:	04020020 	streq	r0, [r2], #-32
 14c:	67065801 	strvs	r5, [r6, -r1, lsl #16]
 150:	84843040 	strhi	r3, [r4], #64	; 0x40
 154:	12023068 	andne	r3, r2, #104	; 0x68
 158:	00010100 	andeq	r0, r1, r0, lsl #2
 15c:	00c80205 	sbceq	r0, r8, r5, lsl #4
 160:	c1030800 	tstgt	r3, r0, lsl #16
 164:	02000100 	andeq	r0, r0, #0, 2
 168:	00310104 	eorseq	r0, r1, r4, lsl #2
 16c:	21010402 	tstcs	r1, r2, lsl #8
 170:	01000102 	tsteq	r0, r2, lsl #2
 174:	0001f501 	andeq	pc, r1, r1, lsl #10
 178:	50000200 	andpl	r0, r0, r0, lsl #4
 17c:	02000001 	andeq	r0, r0, #1
 180:	0d0efb01 	vstreq	d15, [lr, #-4]
 184:	01010100 	mrseq	r0, (UNDEF: 17)
 188:	00000001 	andeq	r0, r0, r1
 18c:	01000001 	tsteq	r0, r1
 190:	662f2e2e 	strtvs	r2, [pc], -lr, lsr #28
 194:	2f656c69 	svccs	0x00656c69
 198:	00637273 	rsbeq	r7, r3, r3, ror r2
 19c:	662f2e2e 	strtvs	r2, [pc], -lr, lsr #28
 1a0:	2f656c69 	svccs	0x00656c69
 1a4:	2f636e69 	svccs	0x00636e69
 1a8:	69736d63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, sl, fp, sp, lr}^
 1ac:	6e492f73 	mcrvs	15, 2, r2, cr9, cr3, {3}
 1b0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
 1b4:	682f0065 	stmdavs	pc!, {r0, r2, r5, r6}	; <UNPREDICTABLE>
 1b8:	2f656d6f 	svccs	0x00656d6f
 1bc:	6b72616d 	blvs	1c98778 <_size_bss+0x1c9852c>
 1c0:	6f72702f 	svcvs	0x0072702f
 1c4:	7463656a 	strbtvc	r6, [r3], #-1386	; 0x56a
 1c8:	616c702f 	cmnvs	ip, pc, lsr #32
 1cc:	726f6674 	rsbvc	r6, pc, #116, 12	; 0x7400000
 1d0:	696c5f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 1d4:	72617262 	rsbvc	r7, r1, #536870918	; 0x20000006
 1d8:	696d2f79 	stmdbvs	sp!, {r0, r3, r4, r5, r6, r8, r9, sl, fp, sp}^
 1dc:	636f7263 	cmnvs	pc, #805306374	; 0x30000006
 1e0:	72746e6f 	rsbsvc	r6, r4, #1776	; 0x6f0
 1e4:	656c6c6f 	strbvs	r6, [ip, #-3183]!	; 0xc6f
 1e8:	6f2f7372 	svcvs	0x002f7372
 1ec:	6f697470 	svcvs	0x00697470
 1f0:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xf6e
 1f4:	2f32336d 	svccs	0x0032336d
 1f8:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 1fc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 200:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
 204:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 208:	5f342d69 	svcpl	0x00342d69
 20c:	30322d39 	eorscc	r2, r2, r9, lsr sp
 210:	31713531 	cmncc	r1, r1, lsr r5
 214:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 218:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 21c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 220:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 224:	61652d65 	cmnvs	r5, r5, ror #26
 228:	342f6962 	strtcc	r6, [pc], #-2402	; 230 <_size_data+0x228>
 22c:	332e392e 	teqcc	lr, #753664	; 0xb8000
 230:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 234:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 238:	2f2e2e00 	svccs	0x002e2e00
 23c:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0x966
 240:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 244:	736d632f 	cmnvc	sp, #-1140850688	; 0xbc000000
 248:	2e007369 	cdpcs	3, 0, cr7, cr0, cr9, {3}
 24c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 250:	2f2e2e2f 	svccs	0x002e2e2f
 254:	6e72656b 	cdpvs	5, 7, cr6, cr2, cr11, {3}
 258:	6d2f6c65 	stcvs	12, cr6, [pc, #-404]!	; cc <_size_data+0xc4>
 25c:	65726874 	ldrbvs	r6, [r2, #-2164]!	; 0x874
 260:	695f6461 	ldmdbvs	pc, {r0, r5, r6, sl, sp, lr}^	; <UNPREDICTABLE>
 264:	0000636e 	andeq	r6, r0, lr, ror #6
 268:	6e69616d 	powvsez	f6, f1, #5.0
 26c:	0100632e 	tsteq	r0, lr, lsr #6
 270:	6f630000 	svcvs	0x00630000
 274:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
 278:	6e75466d 	cdpvs	6, 7, cr4, cr5, cr13, {3}
 27c:	00682e63 	rsbeq	r2, r8, r3, ror #28
 280:	73000002 	movwvc	r0, #2
 284:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 288:	63672d74 	cmnvs	r7, #116, 26	; 0x1d00
 28c:	00682e63 	rsbeq	r2, r8, r3, ror #28
 290:	63000003 	movwvs	r0, #3
 294:	5f65726f 	svcpl	0x0065726f
 298:	2e306d63 	cdpcs	13, 3, cr6, cr0, cr3, {3}
 29c:	00020068 	andeq	r0, r2, r8, rrx
 2a0:	6d747300 	ldclvs	3, cr7, [r4, #-0]
 2a4:	30663233 	rsbcc	r3, r6, r3, lsr r2
 2a8:	682e7878 	stmdavs	lr!, {r3, r4, r5, r6, fp, ip, sp, lr}
 2ac:	00000400 	andeq	r0, r0, r0, lsl #8
 2b0:	7268746d 	rsbvc	r7, r8, #1828716544	; 0x6d000000
 2b4:	5f646165 	svcpl	0x00646165
 2b8:	6b736174 	blvs	1cd8890 <_size_bss+0x1cd8644>
 2bc:	0500682e 	streq	r6, [r0, #-2094]	; 0x82e
 2c0:	6d6d0000 	stclvs	0, cr0, [sp, #-0]
 2c4:	78657475 	stmdavc	r5!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 2c8:	0500682e 	streq	r6, [r0, #-2094]	; 0x82e
 2cc:	00000000 	andeq	r0, r0, r0
 2d0:	01a00205 	lsleq	r0, r5, #4
 2d4:	0b030800 	bleq	c22dc <_size_bss+0xc2090>
 2d8:	75752f01 	ldrbvc	r2, [r5, #-3841]!	; 0xf01
 2dc:	042f2f6d 	strteq	r2, [pc], #-3949	; 2e4 <_size_bss+0x98>
 2e0:	02b30302 	adcseq	r0, r3, #134217728	; 0x8000000
 2e4:	0301042e 	movweq	r0, #5166	; 0x142e
 2e8:	44207dcf 	strtmi	r7, [r0], #-3535	; 0xdcf
 2ec:	0e03752f 	cfsh32eq	mvfx7, mvfx3, #31
 2f0:	04020058 	streq	r0, [r2], #-88	; 0x58
 2f4:	02004c01 	andeq	r4, r0, #256	; 0x100
 2f8:	004c0104 	subeq	r0, ip, r4, lsl #2
 2fc:	59010402 	stmdbpl	r1, {r1, sl}
 300:	01040200 	mrseq	r0, R12_usr
 304:	04020092 	streq	r0, [r2], #-146	; 0x92
 308:	02005901 	andeq	r5, r0, #16384	; 0x4000
 30c:	00920104 	addseq	r0, r2, r4, lsl #2
 310:	59010402 	stmdbpl	r1, {r1, sl}
 314:	01040200 	mrseq	r0, R12_usr
 318:	04020092 	streq	r0, [r2], #-146	; 0x92
 31c:	02005901 	andeq	r5, r0, #16384	; 0x4000
 320:	00920104 	addseq	r0, r2, r4, lsl #2
 324:	4b010402 	blmi	41334 <_size_bss+0x410e8>
 328:	0402006a 	streq	r0, [r2], #-106	; 0x6a
 32c:	02004c01 	andeq	r4, r0, #256	; 0x100
 330:	004c0104 	subeq	r0, ip, r4, lsl #2
 334:	59010402 	stmdbpl	r1, {r1, sl}
 338:	01040200 	mrseq	r0, R12_usr
 33c:	04020092 	streq	r0, [r2], #-146	; 0x92
 340:	02005901 	andeq	r5, r0, #16384	; 0x4000
 344:	00920104 	addseq	r0, r2, r4, lsl #2
 348:	59010402 	stmdbpl	r1, {r1, sl}
 34c:	01040200 	mrseq	r0, R12_usr
 350:	04020092 	streq	r0, [r2], #-146	; 0x92
 354:	02005901 	andeq	r5, r0, #16384	; 0x4000
 358:	00920104 	addseq	r0, r2, r4, lsl #2
 35c:	4b010402 	blmi	4136c <_size_bss+0x41120>
 360:	83313e6b 	teqhi	r1, #1712	; 0x6b0
 364:	04020084 	streq	r0, [r2], #-132	; 0x84
 368:	00083301 	andeq	r3, r8, r1, lsl #6
 36c:	00410101 	subeq	r0, r1, r1, lsl #2
 370:	00020000 	andeq	r0, r2, r0
 374:	0000002b 	andeq	r0, r0, fp, lsr #32
 378:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
 37c:	0101000d 	tsteq	r1, sp
 380:	00000101 	andeq	r0, r0, r1, lsl #2
 384:	00000100 	andeq	r0, r0, r0, lsl #2
 388:	2f2e2e01 	svccs	0x002e2e01
 38c:	656c6966 	strbvs	r6, [ip, #-2406]!	; 0x966
 390:	6372732f 	cmnvs	r2, #-1140850688	; 0xbc000000
 394:	68700000 	ldmdavs	r0!, {}^	; <UNPREDICTABLE>
 398:	63697369 	cmnvs	r9, #-1543503871	; 0xa4000001
 39c:	0100632e 	tsteq	r0, lr, lsr #6
 3a0:	00000000 	andeq	r0, r0, r0
 3a4:	03740205 	cmneq	r4, #1342177280	; 0x50000000
 3a8:	17030800 	strne	r0, [r3, -r0, lsl #16]
 3ac:	02023001 	andeq	r3, r2, #1
 3b0:	88010100 	stmdahi	r1, {r8}
 3b4:	02000000 	andeq	r0, r0, #0
 3b8:	00005200 	andeq	r5, r0, r0, lsl #4
 3bc:	fb010200 	blx	40bc6 <_size_bss+0x4097a>
 3c0:	01000d0e 	tsteq	r0, lr, lsl #26
 3c4:	00010101 	andeq	r0, r1, r1, lsl #2
 3c8:	00010000 	andeq	r0, r1, r0
 3cc:	2e2e0100 	sufcse	f0, f6, f0
 3d0:	2f2e2e2f 	svccs	0x002e2e2f
 3d4:	6b2f2e2e 	blvs	bcbc94 <_size_bss+0xbcba48>
 3d8:	656e7265 	strbvs	r7, [lr, #-613]!	; 0x265
 3dc:	746d2f6c 	strbtvc	r2, [sp], #-3948	; 0xf6c
 3e0:	61657268 	cmnvs	r5, r8, ror #4
 3e4:	72735f64 	rsbsvc	r5, r3, #100, 30	; 0x190
 3e8:	6f702f63 	svcvs	0x00702f63
 3ec:	62617472 	rsbvs	r7, r1, #1912602624	; 0x72000000
 3f0:	412f656c 	teqmi	pc, ip, ror #10
 3f4:	435f4d52 	cmpmi	pc, #5248	; 0x1480
 3f8:	0000304d 	andeq	r3, r0, sp, asr #32
 3fc:	7268746d 	rsbvc	r7, r8, #1828716544	; 0x6d000000
 400:	5f646165 	svcpl	0x00646165
 404:	74726f70 	ldrbtvc	r6, [r2], #-3952	; 0xf70
 408:	0100732e 	tsteq	r0, lr, lsr #6
 40c:	00000000 	andeq	r0, r0, r0
 410:	037c0205 	cmneq	ip, #1342177280	; 0x50000000
 414:	17030800 	strne	r0, [r3, -r0, lsl #16]
 418:	30222101 	eorcc	r2, r2, r1, lsl #2
 41c:	21222222 	teqcs	r2, r2, lsr #4
 420:	25212121 	strcs	r2, [r1, #-289]!	; 0x121
 424:	22222121 	eorcs	r2, r2, #1073741832	; 0x40000008
 428:	21212122 	teqcs	r1, r2, lsr #2
 42c:	25213022 	strcs	r3, [r1, #-34]!	; 0x22
 430:	2e560321 	cdpcs	3, 5, cr0, cr6, cr1, {1}
 434:	032e1403 	teqeq	lr, #50331648	; 0x3000000
 438:	02022e15 	andeq	r2, r2, #336	; 0x150
 43c:	e2010100 	and	r0, r1, #0, 2
 440:	02000001 	andeq	r0, r0, #1
 444:	00015c00 	andeq	r5, r1, r0, lsl #24
 448:	fb010200 	blx	40c52 <_size_bss+0x40a06>
 44c:	01000d0e 	tsteq	r0, lr, lsl #26
 450:	00010101 	andeq	r0, r1, r1, lsl #2
 454:	00010000 	andeq	r0, r1, r0
 458:	2e2e0100 	sufcse	f0, f6, f0
 45c:	6c69662f 	stclvs	6, cr6, [r9], #-188	; 0xffffff44
 460:	6e692f65 	cdpvs	15, 6, cr2, cr9, cr5, {3}
 464:	6d632f63 	stclvs	15, cr2, [r3, #-396]!	; 0xfffffe74
 468:	2f736973 	svccs	0x00736973
 46c:	6c636e49 	stclvs	14, cr6, [r3], #-292	; 0xfffffedc
 470:	00656475 	rsbeq	r6, r5, r5, ror r4
 474:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 478:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 47c:	72656b2f 	rsbvc	r6, r5, #48128	; 0xbc00
 480:	2f6c656e 	svccs	0x006c656e
 484:	7268746d 	rsbvc	r7, r8, #1828716544	; 0x6d000000
 488:	5f646165 	svcpl	0x00646165
 48c:	00637273 	rsbeq	r7, r3, r3, ror r2
 490:	662f2e2e 	strtvs	r2, [pc], -lr, lsr #28
 494:	2f656c69 	svccs	0x00656c69
 498:	2f636e69 	svccs	0x00636e69
 49c:	69736d63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, sl, fp, sp, lr}^
 4a0:	682f0073 	stmdavs	pc!, {r0, r1, r4, r5, r6}	; <UNPREDICTABLE>
 4a4:	2f656d6f 	svccs	0x00656d6f
 4a8:	6b72616d 	blvs	1c98a64 <_size_bss+0x1c98818>
 4ac:	6f72702f 	svcvs	0x0072702f
 4b0:	7463656a 	strbtvc	r6, [r3], #-1386	; 0x56a
 4b4:	616c702f 	cmnvs	ip, pc, lsr #32
 4b8:	726f6674 	rsbvc	r6, pc, #116, 12	; 0x7400000
 4bc:	696c5f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 4c0:	72617262 	rsbvc	r7, r1, #536870918	; 0x20000006
 4c4:	696d2f79 	stmdbvs	sp!, {r0, r3, r4, r5, r6, r8, r9, sl, fp, sp}^
 4c8:	636f7263 	cmnvs	pc, #805306374	; 0x30000006
 4cc:	72746e6f 	rsbsvc	r6, r4, #1776	; 0x6f0
 4d0:	656c6c6f 	strbvs	r6, [ip, #-3183]!	; 0xc6f
 4d4:	6f2f7372 	svcvs	0x002f7372
 4d8:	6f697470 	svcvs	0x00697470
 4dc:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xf6e
 4e0:	2f32336d 	svccs	0x0032336d
 4e4:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 4e8:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 4ec:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
 4f0:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 4f4:	5f342d69 	svcpl	0x00342d69
 4f8:	30322d39 	eorscc	r2, r2, r9, lsr sp
 4fc:	31713531 	cmncc	r1, r1, lsr r5
 500:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 504:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 508:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 50c:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 510:	61652d65 	cmnvs	r5, r5, ror #26
 514:	342f6962 	strtcc	r6, [pc], #-2402	; 51c <_size_bss+0x2d0>
 518:	332e392e 	teqcc	lr, #753664	; 0xb8000
 51c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 520:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 524:	2f2e2e00 	svccs	0x002e2e00
 528:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 52c:	656b2f2e 	strbvs	r2, [fp, #-3886]!	; 0xf2e
 530:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 534:	68746d2f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 538:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
 53c:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
 540:	6f630000 	svcvs	0x00630000
 544:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
 548:	682e306d 	stmdavs	lr!, {r0, r2, r3, r5, r6, ip, sp}
 54c:	00000100 	andeq	r0, r0, r0, lsl #2
 550:	7268746d 	rsbvc	r7, r8, #1828716544	; 0x6d000000
 554:	5f646165 	svcpl	0x00646165
 558:	6b736174 	blvs	1cd8b30 <_size_bss+0x1cd88e4>
 55c:	0200632e 	andeq	r6, r0, #-1207959552	; 0xb8000000
 560:	6f630000 	svcvs	0x00630000
 564:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
 568:	6e75466d 	cdpvs	6, 7, cr4, cr5, cr13, {3}
 56c:	00682e63 	rsbeq	r2, r8, r3, ror #28
 570:	73000001 	movwvc	r0, #1
 574:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
 578:	78783066 	ldmdavc	r8!, {r1, r2, r5, r6, ip, sp}^
 57c:	0300682e 	movweq	r6, #2094	; 0x82e
 580:	74730000 	ldrbtvc	r0, [r3], #-0
 584:	746e6964 	strbtvc	r6, [lr], #-2404	; 0x964
 588:	6363672d 	cmnvs	r3, #11796480	; 0xb40000
 58c:	0400682e 	streq	r6, [r0], #-2094	; 0x82e
 590:	746d0000 	strbtvc	r0, [sp], #-0
 594:	61657268 	cmnvs	r5, r8, ror #4
 598:	61745f64 	cmnvs	r4, r4, ror #30
 59c:	682e6b73 	stmdavs	lr!, {r0, r1, r4, r5, r6, r8, r9, fp, sp, lr}
 5a0:	00000500 	andeq	r0, r0, r0, lsl #10
 5a4:	02050000 	andeq	r0, r5, #0
 5a8:	080003c0 	stmdaeq	r0, {r6, r7, r8, r9}
 5ac:	0104c603 	tsteq	r4, r3, lsl #12
 5b0:	d7084b75 	smlsdxle	r8, r5, fp, r4
 5b4:	750869ab 	strvc	r6, [r8, #-2475]	; 0x9ab
 5b8:	c3034cab 	movwgt	r4, #15531	; 0x3cab
 5bc:	004b8200 	subeq	r8, fp, r0, lsl #4
 5c0:	06010402 	streq	r0, [r1], -r2, lsl #8
 5c4:	4b300658 	blmi	c01f2c <_size_bss+0xc01ce0>
 5c8:	213f3d67 	teqcs	pc, r7, ror #26
 5cc:	fc030204 	stc2	2, cr0, [r3], {4}
 5d0:	0076827a 	rsbseq	r8, r6, sl, ror r2
 5d4:	06010402 	streq	r0, [r1], -r2, lsl #8
 5d8:	0402003c 	streq	r0, [r2], #-60	; 0x3c
 5dc:	02003c02 	andeq	r3, r0, #512	; 0x200
 5e0:	3c3c0304 	ldccc	3, cr0, [ip], #-16
 5e4:	3d3d2306 	ldccc	3, cr2, [sp, #-24]!	; 0xffffffe8
 5e8:	4c4c4c3f 	mcrrmi	12, 3, r4, ip, cr15
 5ec:	3050594d 	subscc	r5, r0, sp, asr #18
 5f0:	2f5f2f75 	svccs	0x005f2f75
 5f4:	ae694c3e 	mcrge	12, 3, r4, cr9, cr14, {1}
 5f8:	dc75bdaf 	ldclle	13, cr11, [r5], #-700	; 0xfffffd44
 5fc:	303e3d3d 	eorscc	r3, lr, sp, lsr sp
 600:	04adae4c 	strteq	sl, [sp], #3660	; 0xe4c
 604:	02db0303 	sbcseq	r0, fp, #201326592	; 0xc000000
 608:	030204ac 	movweq	r0, #9388	; 0x24ac
 60c:	bc3c7da8 	ldclt	13, cr7, [ip], #-672	; 0xfffffd60
 610:	c0676759 	rsbgt	r6, r7, r9, asr r7
 614:	4b342f2f 	blmi	d0c2d8 <_size_bss+0xd0c08c>
 618:	01040200 	mrseq	r0, R12_usr
 61c:	59062006 	stmdbpl	r6, {r1, r2, sp}
 620:	01000302 	tsteq	r0, r2, lsl #6
 624:	0001d301 	andeq	sp, r1, r1, lsl #6
 628:	33000200 	movwcc	r0, #512	; 0x200
 62c:	02000001 	andeq	r0, r0, #1
 630:	0d0efb01 	vstreq	d15, [lr, #-4]
 634:	01010100 	mrseq	r0, (UNDEF: 17)
 638:	00000001 	andeq	r0, r0, r1
 63c:	01000001 	tsteq	r0, r1
 640:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 644:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 648:	72656b2f 	rsbvc	r6, r5, #48128	; 0xbc00
 64c:	2f6c656e 	svccs	0x006c656e
 650:	7268746d 	rsbvc	r7, r8, #1828716544	; 0x6d000000
 654:	5f646165 	svcpl	0x00646165
 658:	00637273 	rsbeq	r7, r3, r3, ror r2
 65c:	662f2e2e 	strtvs	r2, [pc], -lr, lsr #28
 660:	2f656c69 	svccs	0x00656c69
 664:	2f636e69 	svccs	0x00636e69
 668:	69736d63 	ldmdbvs	r3!, {r0, r1, r5, r6, r8, sl, fp, sp, lr}^
 66c:	6e492f73 	mcrvs	15, 2, r2, cr9, cr3, {3}
 670:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xc63
 674:	682f0065 	stmdavs	pc!, {r0, r2, r5, r6}	; <UNPREDICTABLE>
 678:	2f656d6f 	svccs	0x00656d6f
 67c:	6b72616d 	blvs	1c98c38 <_size_bss+0x1c989ec>
 680:	6f72702f 	svcvs	0x0072702f
 684:	7463656a 	strbtvc	r6, [r3], #-1386	; 0x56a
 688:	616c702f 	cmnvs	ip, pc, lsr #32
 68c:	726f6674 	rsbvc	r6, pc, #116, 12	; 0x7400000
 690:	696c5f6d 	stmdbvs	ip!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 694:	72617262 	rsbvc	r7, r1, #536870918	; 0x20000006
 698:	696d2f79 	stmdbvs	sp!, {r0, r3, r4, r5, r6, r8, r9, sl, fp, sp}^
 69c:	636f7263 	cmnvs	pc, #805306374	; 0x30000006
 6a0:	72746e6f 	rsbsvc	r6, r4, #1776	; 0x6f0
 6a4:	656c6c6f 	strbvs	r6, [ip, #-3183]!	; 0xc6f
 6a8:	6f2f7372 	svcvs	0x002f7372
 6ac:	6f697470 	svcvs	0x00697470
 6b0:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xf6e
 6b4:	2f32336d 	svccs	0x0032336d
 6b8:	2d636367 	stclcs	3, cr6, [r3, #-412]!	; 0xfffffe64
 6bc:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 6c0:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xf6e
 6c4:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 6c8:	5f342d69 	svcpl	0x00342d69
 6cc:	30322d39 	eorscc	r2, r2, r9, lsr sp
 6d0:	31713531 	cmncc	r1, r1, lsr r5
 6d4:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 6d8:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
 6dc:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
 6e0:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
 6e4:	61652d65 	cmnvs	r5, r5, ror #26
 6e8:	342f6962 	strtcc	r6, [pc], #-2402	; 6f0 <_size_bss+0x4a4>
 6ec:	332e392e 	teqcc	lr, #753664	; 0xb8000
 6f0:	636e692f 	cmnvs	lr, #770048	; 0xbc000
 6f4:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0x56c
 6f8:	2f2e2e00 	svccs	0x002e2e00
 6fc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 700:	656b2f2e 	strbvs	r2, [fp, #-3886]!	; 0xf2e
 704:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 708:	68746d2f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 70c:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
 710:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
 714:	6d6d0000 	stclvs	0, cr0, [sp, #-0]
 718:	78657475 	stmdavc	r5!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 71c:	0100632e 	tsteq	r0, lr, lsr #6
 720:	6f630000 	svcvs	0x00630000
 724:	635f6572 	cmpvs	pc, #478150656	; 0x1c800000
 728:	6e75466d 	cdpvs	6, 7, cr4, cr5, cr13, {3}
 72c:	00682e63 	rsbeq	r2, r8, r3, ror #28
 730:	73000002 	movwvc	r0, #2
 734:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 738:	63672d74 	cmnvs	r7, #116, 26	; 0x1d00
 73c:	00682e63 	rsbeq	r2, r8, r3, ror #28
 740:	6d000003 	stcvs	0, cr0, [r0, #-12]
 744:	65726874 	ldrbvs	r6, [r2, #-2164]!	; 0x874
 748:	745f6461 	ldrbvc	r6, [pc], #-1121	; 750 <_size_bss+0x504>
 74c:	2e6b7361 	cdpcs	3, 6, cr7, cr11, cr1, {3}
 750:	00040068 	andeq	r0, r4, r8, rrx
 754:	756d6d00 	strbvc	r6, [sp, #-3328]!	; 0xd00
 758:	2e786574 	mrccs	5, 3, r6, cr8, cr4, {3}
 75c:	00040068 	andeq	r0, r4, r8, rrx
 760:	05000000 	streq	r0, [r0, #-0]
 764:	0006d402 	andeq	sp, r6, r2, lsl #8
 768:	010c0308 	tsteq	ip, r8, lsl #6
 76c:	c9030204 	stmdbgt	r3, {r2, r9}
 770:	01044a02 	tsteq	r4, r2, lsl #20
 774:	207dbb03 	rsbscs	fp, sp, r3, lsl #22
 778:	02044d4c 	andeq	r4, r4, #76, 26	; 0x1300
 77c:	4a02b503 	bmi	adb90 <_size_bss+0xad944>
 780:	cd030104 	stfgts	f0, [r3, #-16]
 784:	0422207d 	strteq	r2, [r2], #-125	; 0x7d
 788:	02b10302 	adcseq	r0, r1, #134217728	; 0x8000000
 78c:	0301043c 	movweq	r0, #5180	; 0x143c
 790:	2f207dd1 	svccs	0x00207dd1
 794:	03020424 	movweq	r0, #9252	; 0x2424
 798:	046602aa 	strbteq	r0, [r6], #-682	; 0x2aa
 79c:	7dd80301 	ldclvc	3, cr0, [r8, #4]
 7a0:	02042320 	andeq	r2, r4, #32, 6	; 0x80000000
 7a4:	3c02a503 	cfstr32cc	mvfx10, [r2], {3}
 7a8:	de030104 	adfles	f0, f3, f4
 7ac:	212f207d 	teqcs	pc, sp, ror r0	; <UNPREDICTABLE>
 7b0:	03020460 	movweq	r0, #9312	; 0x2460
 7b4:	044a02a3 	strbeq	r0, [sl], #-675	; 0x2a3
 7b8:	7de00301 	stclvc	3, cr0, [r0, #4]!
 7bc:	044d4c20 	strbeq	r4, [sp], #-3104	; 0xc20
 7c0:	02900302 	addseq	r0, r0, #134217728	; 0x8000000
 7c4:	0301044a 	movweq	r0, #5194	; 0x144a
 7c8:	30207df2 	strdcc	r7, [r0], -r2	; <UNPREDICTABLE>
 7cc:	8c030204 	sfmhi	f0, 4, [r3], {4}
 7d0:	01043c02 	tsteq	r4, r2, lsl #24
 7d4:	207df603 	rsbscs	pc, sp, r3, lsl #12
 7d8:	0204322f 	andeq	r3, r4, #-268435454	; 0xf0000002
 7dc:	66028503 	strvs	r8, [r2], -r3, lsl #10
 7e0:	fd030104 	stc2	1, cr0, [r3, #-16]
 7e4:	0204207d 	andeq	r2, r4, #125	; 0x7d
 7e8:	2e028303 	cdpcs	3, 0, cr8, cr2, cr3, {0}
 7ec:	81030104 	tsthi	r3, r4, lsl #2
 7f0:	7a21207e 	bvc	8489f0 <_size_bss+0x8487a4>
 7f4:	023f674c 	eorseq	r6, pc, #76, 14	; 0x1300000
 7f8:	01010005 	tsteq	r1, r5

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	7a69735f 	bvc	1a5cd84 <_size_bss+0x1a5cb38>
   4:	73625f65 	cmnvc	r2, #404	; 0x194
   8:	434c0073 	movtmi	r0, #49267	; 0xc073
   c:	4d00524b 	sfmmi	f5, 4, [r0, #-300]	; 0xfffffed4
  10:	5245444f 	subpl	r4, r5, #1325400064	; 0x4f000000
  14:	73655200 	cmnvc	r5, #0, 4
  18:	485f7465 	ldmdami	pc, {r0, r2, r5, r6, sl, ip, sp, lr}^	; <UNPREDICTABLE>
  1c:	6c646e61 	stclvs	14, cr6, [r4], #-388	; 0xfffffe7c
  20:	42007265 	andmi	r7, r0, #1342177286	; 0x50000006
  24:	00525253 	subseq	r5, r2, r3, asr r2
  28:	61727241 	cmnvs	r2, r1, asr #4
  2c:	746e4979 	strbtvc	r4, [lr], #-2425	; 0x979
  30:	61727265 	cmnvs	r2, r5, ror #4
  34:	5f007470 	svcpl	0x00007470
  38:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
  3c:	6f725f74 	svcvs	0x00725f74
  40:	61746164 	cmnvs	r4, r4, ror #2
  44:	53455200 	movtpl	r5, #20992	; 0x5200
  48:	45565245 	ldrbmi	r5, [r6, #-581]	; 0x245
  4c:	52003044 	andpl	r3, r0, #68	; 0x44
  50:	52455345 	subpl	r5, r5, #335544321	; 0x14000001
  54:	31444556 	cmpcc	r4, r6, asr r5
  58:	53455200 	movtpl	r5, #20992	; 0x5200
  5c:	45565245 	ldrbmi	r5, [r6, #-581]	; 0x245
  60:	52003244 	andpl	r3, r0, #68, 4	; 0x40000004
  64:	52455345 	subpl	r5, r5, #335544321	; 0x14000001
  68:	33444556 	movtcc	r4, #17750	; 0x4556
  6c:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xf00
  70:	5f747261 	svcpl	0x00747261
  74:	61746164 	cmnvs	r4, r4, ror #2
  78:	59544f00 	ldmdbpl	r4, {r8, r9, sl, fp, lr}^
  7c:	00524550 	subseq	r4, r2, r0, asr r5
  80:	706f6f6c 	rsbvc	r6, pc, ip, ror #30
  84:	6f687300 	svcvs	0x00687300
  88:	75207472 	strvc	r7, [r0, #-1138]!	; 0x472
  8c:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  90:	2064656e 	rsbcs	r6, r4, lr, ror #10
  94:	00746e69 	rsbseq	r6, r4, r9, ror #28
  98:	746e6975 	strbtvc	r6, [lr], #-2421	; 0x975
  9c:	745f3233 	ldrbvc	r3, [pc], #-563	; a4 <_size_data+0x9c>
  a0:	73736200 	cmnvc	r3, #0, 4
  a4:	696e695f 	stmdbvs	lr!, {r0, r1, r2, r3, r4, r6, r8, fp, sp, lr}^
  a8:	6e750074 	mrcvs	0, 3, r0, cr5, cr4, {3}
  ac:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  b0:	63206465 	teqvs	r0, #1694498816	; 0x65000000
  b4:	00726168 	rsbseq	r6, r2, r8, ror #2
  b8:	6174735f 	cmnvs	r4, pc, asr r3
  bc:	625f7472 	subsvs	r7, pc, #1912602624	; 0x72000000
  c0:	70007373 	andvc	r7, r0, r3, ror r3
  c4:	49646e45 	stmdbmi	r4!, {r0, r2, r6, r9, sl, fp, sp, lr}^
  c8:	5370004e 	cmnpl	r0, #78	; 0x4e
  cc:	74726174 	ldrbtvc	r6, [r2], #-372	; 0x174
  d0:	0054554f 	subseq	r5, r4, pc, asr #10
  d4:	4550534f 	ldrbmi	r5, [r0, #-847]	; 0x34f
  d8:	00524445 	subseq	r4, r2, r5, asr #8
  dc:	4f495047 	svcmi	0x00495047
  e0:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  e4:	66654465 	strbtvs	r4, [r5], -r5, ror #8
  e8:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
  ec:	6f6c2067 	svcvs	0x006c2067
  f0:	7520676e 	strvc	r6, [r0, #-1902]!	; 0x76e
  f4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  f8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  fc:	00746e69 	rsbseq	r6, r4, r9, ror #28
 100:	746e6975 	strbtvc	r6, [lr], #-2421	; 0x975
 104:	00745f38 	rsbseq	r5, r4, r8, lsr pc
 108:	61745370 	cmnvs	r4, r0, ror r3
 10c:	4e497472 	mcrmi	4, 2, r7, cr9, cr2, {3}
 110:	494f5000 	stmdbmi	pc, {ip, lr}^	; <UNPREDICTABLE>
 114:	5245544e 	subpl	r5, r5, #1308622848	; 0x4e000000
 118:	4554495f 	ldrbmi	r4, [r4, #-2399]	; 0x95f
 11c:	50415252 	subpl	r5, r1, r2, asr r2
 120:	2e2e0054 	mcrcs	0, 1, r0, cr14, cr4, {2}
 124:	6c69662f 	stclvs	6, cr6, [r9], #-188	; 0xffffff44
 128:	72732f65 	rsbsvc	r2, r3, #404	; 0x194
 12c:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xf63
 130:	75747261 	ldrbvc	r7, [r4, #-609]!	; 0x261
 134:	74735f70 	ldrbtvc	r5, [r3], #-3952	; 0xf70
 138:	6632336d 	ldrtvs	r3, [r2], -sp, ror #6
 13c:	2e787830 	mrccs	8, 3, r7, cr8, cr0, {1}
 140:	55500063 	ldrbpl	r0, [r0, #-99]	; 0x63
 144:	00524450 	subseq	r4, r2, r0, asr r4
 148:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0x973
 14c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0x974
 150:	6e6f6c00 	cdpvs	12, 6, cr6, cr15, cr0, {0}
 154:	6f6c2067 	svcvs	0x006c2067
 158:	6920676e 	stmdbvs	r0!, {r1, r2, r3, r5, r6, r8, r9, sl, sp, lr}
 15c:	4800746e 	stmdami	r0, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
 160:	46647261 	strbtmi	r7, [r4], -r1, ror #4
 164:	746c7561 	strbtvc	r7, [ip], #-1377	; 0x561
 168:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
 16c:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
 170:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xf00
 174:	5f747261 	svcpl	0x00747261
 178:	61646f72 	smcvs	18162	; 0x46f2
 17c:	635f6174 	cmpvs	pc, #116, 2
 180:	0069706f 	rsbeq	r7, r9, pc, rrx
 184:	646e655f 	strbtvs	r6, [lr], #-1375	; 0x55f
 188:	7461645f 	strbtvc	r6, [r1], #-1119	; 0x45f
 18c:	4e470061 	cdpmi	0, 4, cr0, cr7, cr1, {3}
 190:	20432055 	subcs	r2, r3, r5, asr r0
 194:	2e392e34 	mrccs	14, 1, r2, cr9, cr4, {1}
 198:	30322033 	eorscc	r2, r2, r3, lsr r0
 19c:	33303531 	teqcc	r0, #205520896	; 0xc400000
 1a0:	28203330 	stmdacs	r0!, {r4, r5, r8, r9, ip, sp}
 1a4:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0x572
 1a8:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
 1ac:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
 1b0:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
 1b4:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
 1b8:	342d6465 	strtcc	r6, [sp], #-1125	; 0x465
 1bc:	622d395f 	eorvs	r3, sp, #1556480	; 0x17c000
 1c0:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
 1c4:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0x68
 1c8:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
 1cc:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
 1d0:	32323132 	eorscc	r3, r2, #-2147483636	; 0x8000000c
 1d4:	2d205d30 	stccs	13, cr5, [r0, #-192]!	; 0xffffff40
 1d8:	7568746d 	strbvc	r7, [r8, #-1133]!	; 0x46d
 1dc:	2d20626d 	sfmcs	f6, 4, [r0, #-436]!	; 0xfffffe4c
 1e0:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0x36d
 1e4:	726f633d 	rsbvc	r6, pc, #-201326592	; 0xf4000000
 1e8:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
 1ec:	2d20306d 	stccs	0, cr3, [r0, #-436]!	; 0xfffffe4c
 1f0:	4f2d2067 	svcmi	0x002d2067
 1f4:	732d2030 	teqvc	sp, #48	; 0x30
 1f8:	633d6474 	teqvs	sp, #116, 8	; 0x74000000
 1fc:	2d203939 	stccs	9, cr3, [r0, #-228]!	; 0xffffff1c
 200:	65726666 	ldrbvs	r6, [r2, #-1638]!	; 0x666
 204:	61747365 	cmnvs	r4, r5, ror #6
 208:	6e69646e 	cdpvs	4, 6, cr6, cr9, cr14, {3}
 20c:	69750067 	ldmdbvs	r5!, {r0, r1, r2, r5, r6}^
 210:	3631746e 	ldrtcc	r7, [r1], -lr, ror #8
 214:	7300745f 	movwvc	r7, #1119	; 0x45f
 218:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xf68
 21c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
 220:	6f682f00 	svcvs	0x00682f00
 224:	6d2f656d 	cfstr32vs	mvfx6, [pc, #-436]!	; 78 <_size_data+0x70>
 228:	2f6b7261 	svccs	0x006b7261
 22c:	6a6f7270 	bvs	1bdcbf4 <_size_bss+0x1bdc9a8>
 230:	2f746365 	svccs	0x00746365
 234:	74616c70 	strbtvc	r6, [r1], #-3184	; 0xc70
 238:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
 23c:	756f735f 	strbvc	r7, [pc, #-863]!	; fffffee5 <pPointer_Load_Context_Stask+0xdffffc95>
 240:	2f656372 	svccs	0x00656372
 244:	7263696d 	rsbvc	r6, r3, #1785856	; 0x1b4000
 248:	6e6f636f 	cdpvs	3, 6, cr6, cr15, cr15, {3}
 24c:	6c6f7274 	sfmvs	f7, 2, [pc], #-464	; 84 <_size_data+0x7c>
 250:	7372656c 	cmnvc	r2, #108, 10	; 0x1b000000
 254:	6d6f682f 	stclvs	8, cr6, [pc, #-188]!	; 1a0 <_size_data+0x198>
 258:	544d2f65 	strbpl	r2, [sp], #-3941	; 0xf65
 25c:	61657268 	cmnvs	r5, r8, ror #4
 260:	6f732f64 	svcvs	0x00732f64
 264:	65637275 	strbvs	r7, [r3, #-629]!	; 0x275
 268:	78652f73 	stmdavc	r5!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, sp}^
 26c:	6c706d61 	ldclvs	13, cr6, [r0], #-388	; 0xfffffe7c
 270:	65742f65 	ldrbvs	r2, [r4, #-3941]!	; 0xf65
 274:	735f7473 	cmpvc	pc, #1929379840	; 0x73000000
 278:	32336d74 	eorscc	r6, r3, #116, 26	; 0x1d00
 27c:	31353066 	teqcc	r5, r6, rrx
 280:	662f3872 			; <UNDEFINED> instruction: 0x662f3872
 284:	00656c69 	rsbeq	r6, r5, r9, ror #24
 288:	646e655f 	strbtvs	r6, [lr], #-1375	; 0x55f
 28c:	646f725f 	strbtvs	r7, [pc], #-607	; 294 <_size_bss+0x48>
 290:	00617461 	rsbeq	r7, r1, r1, ror #8
 294:	645f6f72 	ldrbvs	r6, [pc], #-3954	; 29c <_size_bss+0x50>
 298:	5f617461 	svcpl	0x00617461
 29c:	74696e69 	strbtvc	r6, [r9], #-3689	; 0xe69
 2a0:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xf00
 2a4:	5f747261 	svcpl	0x00747261
 2a8:	61746164 	cmnvs	r4, r4, ror #2
 2ac:	706f635f 	rsbvc	r6, pc, pc, asr r3	; <UNPREDICTABLE>
 2b0:	65500069 	ldrbvs	r0, [r0, #-105]	; 0x69
 2b4:	5653646e 	ldrbpl	r6, [r3], -lr, ror #8
 2b8:	6174535f 	cmnvs	r4, pc, asr r3
 2bc:	2e007472 	mcrcs	4, 0, r7, cr0, cr2, {3}
 2c0:	69662f2e 	stmdbvs	r6!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
 2c4:	732f656c 	teqvc	pc, #108, 10	; 0x1b000000
 2c8:	6d2f6372 	stcvs	3, cr6, [pc, #-456]!	; 108 <_size_data+0x100>
 2cc:	2e6e6961 	cdpcs	9, 6, cr6, cr14, cr1, {3}
 2d0:	54650063 	strbtpl	r0, [r5], #-99	; 0x63
 2d4:	5f6b7361 	svcpl	0x006b7361
 2d8:	6d656c45 	stclvs	12, cr6, [r5, #-276]!	; 0xfffffeec
 2dc:	00746e65 	rsbseq	r6, r4, r5, ror #28
 2e0:	49555043 	ldmdbmi	r5, {r0, r1, r6, ip, lr}^
 2e4:	53700044 	cmnpl	r0, #68	; 0x44
 2e8:	6b636174 	blvs	18d88c0 <_size_bss+0x18d8674>
 2ec:	696f705f 	stmdbvs	pc!, {r0, r1, r2, r3, r4, r6, ip, sp, lr}^	; <UNPREDICTABLE>
 2f0:	7265746e 	rsbvc	r7, r5, #1845493760	; 0x6e000000
 2f4:	72685400 	rsbvc	r5, r8, #0, 8
 2f8:	5f646165 	svcpl	0x00646165
 2fc:	68540041 	ldmdavs	r4, {r0, r6}^
 300:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
 304:	4d00425f 	sfmmi	f4, 4, [r0, #-380]	; 0xfffffe84
 308:	78657475 	stmdavc	r5!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 30c:	50410041 	subpl	r0, r1, r1, asr #32
 310:	53523242 	cmppl	r2, #536870916	; 0x20000004
 314:	73005254 	movwvc	r5, #596	; 0x254
 318:	6b636174 	blvs	18d88f0 <_size_bss+0x18d86a4>
 31c:	6d00625f 	sfmvs	f6, 4, [r0, #-380]	; 0xfffffe84
 320:	006e6961 	rsbeq	r6, lr, r1, ror #18
 324:	5f424353 	svcpl	0x00424353
 328:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0x954
 32c:	6f567000 	svcvs	0x00567000
 330:	43006469 	movwmi	r6, #1129	; 0x469
 334:	32524746 	subscc	r4, r2, #18350080	; 0x1180000
 338:	43435200 	movtmi	r5, #12800	; 0x3200
 33c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
 340:	66654465 	strbtvs	r4, [r5], -r5, ror #8
 344:	61547000 	cmpvs	r4, r0
 348:	445f6b73 	ldrbmi	r6, [pc], #-2931	; 350 <_size_bss+0x104>
 34c:	72637365 	rsbvc	r7, r3, #-1811939327	; 0x94000001
 350:	6f747069 	svcvs	0x00747069
 354:	43490072 	movtmi	r0, #36978	; 0x9072
 358:	41005253 	tstmi	r0, r3, asr r2
 35c:	52435249 	subpl	r5, r3, #-1879048188	; 0x90000004
 360:	73656400 	cmnvc	r5, #0, 8
 364:	70697263 	rsbvc	r7, r9, r3, ror #4
 368:	54726f74 	ldrbtpl	r6, [r2], #-3956	; 0xf74
 36c:	006b7361 	rsbeq	r7, fp, r1, ror #6
 370:	72615070 	rsbvc	r5, r1, #112	; 0x70
 374:	74656d61 	strbtvc	r6, [r5], #-3425	; 0xd61
 378:	00737265 	rsbseq	r7, r3, r5, ror #4
 37c:	74746553 	ldrbtvc	r6, [r4], #-1363	; 0x553
 380:	5f676e69 	svcpl	0x00676e69
 384:	6f697270 	svcvs	0x00697270
 388:	79746972 	ldmdbvc	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
 38c:	7a695300 	bvc	1a54f94 <_size_bss+0x1a54d48>
 390:	74535f65 	ldrbvc	r5, [r3], #-3941	; 0xf65
 394:	006b6361 	rsbeq	r6, fp, r1, ror #6
 398:	74696e49 	strbtvc	r6, [r9], #-3657	; 0xe49
 39c:	7261485f 	rsbvc	r4, r1, #6225920	; 0x5f0000
 3a0:	72617764 	rsbvc	r7, r1, #100, 14	; 0x1900000
 3a4:	74730065 	ldrbtvc	r0, [r3], #-101	; 0x65
 3a8:	5f6b6361 	svcpl	0x006b6361
 3ac:	48410061 	stmdami	r1, {r0, r5, r6}^
 3b0:	54535242 	ldrbpl	r5, [r3], #-578	; 0x242
 3b4:	50410052 	subpl	r0, r1, r2, asr r0
 3b8:	53523142 	cmppl	r2, #-2147483632	; 0x80000010
 3bc:	5f005254 	svcpl	0x00005254
 3c0:	616e655f 	cmnvs	lr, pc, asr r5
 3c4:	5f656c62 	svcpl	0x00656c62
 3c8:	00717269 	rsbseq	r7, r1, r9, ror #4
 3cc:	53434853 	movtpl	r4, #14419	; 0x3853
 3d0:	50410052 	subpl	r0, r1, r2, asr r0
 3d4:	4e453242 	cdpmi	2, 4, cr3, cr5, cr2, {2}
 3d8:	50410052 	subpl	r0, r1, r2, asr r0
 3dc:	4e453142 	dvfmism	f3, f5, f2
 3e0:	6d6d0052 	stclvs	0, cr0, [sp, #-328]!	; 0xfffffeb8
 3e4:	78657475 	stmdavc	r5!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 3e8:	63734f00 	cmnvs	r3, #0, 30
 3ec:	616c6c69 	cmnvs	ip, r9, ror #24
 3f0:	5f726f74 	svcpl	0x00726f74
 3f4:	00746e69 	rsbseq	r6, r4, r9, ror #28
 3f8:	52434442 	subpl	r4, r3, #1107296256	; 0x42000000
 3fc:	47464300 	strbmi	r4, [r6, -r0, lsl #6]
 400:	4f003352 	svcmi	0x00003352
 404:	53505f53 	cmppl	r0, #332	; 0x14c
 408:	43007350 	movwmi	r7, #848	; 0x350
 40c:	00524746 	subseq	r4, r2, r6, asr #14
 410:	72727543 	rsbsvc	r7, r2, #281018368	; 0x10c00000
 414:	5f746e65 	svcpl	0x00746e65
 418:	6f697270 	svcvs	0x00697270
 41c:	79746972 	ldmdbvc	r4!, {r1, r4, r5, r6, r8, fp, sp, lr}^
 420:	716e4900 	cmnvc	lr, r0, lsl #18
 424:	79726975 	ldmdbvc	r2!, {r0, r2, r4, r5, r6, r8, fp, sp, lr}^
 428:	42484100 	submi	r4, r8, #0, 2
 42c:	00524e45 	subseq	r4, r2, r5, asr #28
 430:	662f2e2e 	strtvs	r2, [pc], -lr, lsr #28
 434:	2f656c69 	svccs	0x00656c69
 438:	2f637273 	svccs	0x00637273
 43c:	73696870 	cmnvc	r9, #112, 16	; 0x700000
 440:	632e6369 	teqvs	lr, #-1543503871	; 0xa4000001
 444:	726f5000 	rsbvc	r5, pc, #0
 448:	6e495f74 	mcrvs	15, 2, r5, cr9, cr4, {3}
 44c:	49007469 	stmdbmi	r0, {r0, r3, r5, r6, sl, ip, sp, lr}
 450:	00525043 	subseq	r5, r2, r3, asr #32
 454:	52455352 	subpl	r5, r5, #1207959553	; 0x48000001
 458:	31444556 	cmpcc	r4, r6, asr r5
 45c:	44565000 	ldrbmi	r5, [r6], #-0
 460:	5152495f 	cmppl	r2, pc, asr r9
 464:	5473006e 	ldrbtpl	r0, [r3], #-110	; 0x6e
 468:	5f6b7361 	svcpl	0x006b7361
 46c:	74697753 	strbtvc	r7, [r9], #-1875	; 0x753
 470:	49006863 	stmdbmi	r0, {r0, r1, r5, r6, fp, sp, lr}
 474:	00525053 	subseq	r5, r2, r3, asr r0
 478:	61745370 	cmnvs	r4, r0, ror r3
 47c:	57006b63 	strpl	r6, [r0, -r3, ror #22]
 480:	5f474457 	svcpl	0x00474457
 484:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 488:	43454300 	movtmi	r4, #21248	; 0x5300
 48c:	5152495f 	cmppl	r2, pc, asr r9
 490:	6154006e 	cmpvs	r4, lr, rrx
 494:	4e5f6b73 	vmovmi.s8	r6, d15[3]
 498:	00747865 	rsbseq	r7, r4, r5, ror #16
 49c:	364d4954 			; <UNDEFINED> instruction: 0x364d4954
 4a0:	4341445f 	movtmi	r4, #5215	; 0x145f
 4a4:	5152495f 	cmppl	r2, pc, asr r9
 4a8:	5354006e 	cmppl	r4, #110	; 0x6e
 4ac:	5152495f 	cmppl	r2, pc, asr r9
 4b0:	6148006e 	cmpvs	r8, lr, rrx
 4b4:	61466472 	hvcvs	26178	; 0x6642
 4b8:	5f746c75 	svcpl	0x00746c75
 4bc:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 4c0:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 4c4:	52425f31 	subpl	r5, r2, #49, 30	; 0xc4
 4c8:	50555f4b 	subspl	r5, r5, fp, asr #30
 4cc:	4752545f 			; <UNDEFINED> instruction: 0x4752545f
 4d0:	4d4f435f 	stclmi	3, cr4, [pc, #-380]	; 35c <_size_bss+0x110>
 4d4:	5152495f 	cmppl	r2, pc, asr r9
 4d8:	5470006e 	ldrbtpl	r0, [r0], #-110	; 0x6e
 4dc:	006b6361 	rsbeq	r6, fp, r1, ror #6
 4e0:	756c6176 	strbvc	r6, [ip, #-374]!	; 0x176
 4e4:	44410065 	strbmi	r0, [r1], #-101	; 0x65
 4e8:	435f3143 	cmpmi	pc, #-1073741808	; 0xc0000010
 4ec:	5f504d4f 	svcpl	0x00504d4f
 4f0:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 4f4:	2f2e2e00 	svccs	0x002e2e00
 4f8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 4fc:	656b2f2e 	strbvs	r2, [fp, #-3886]!	; 0xf2e
 500:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 504:	68746d2f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 508:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
 50c:	6372735f 	cmnvs	r2, #2080374785	; 0x7c000001
 510:	68746d2f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 514:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
 518:	7361745f 	cmnvc	r1, #1593835520	; 0x5f000000
 51c:	00632e6b 	rsbeq	r2, r3, fp, ror #28
 520:	65735f5f 	ldrbvs	r5, [r3, #-3935]!	; 0xf5f
 524:	53505f74 	cmppl	r0, #116, 30	; 0x1d0
 528:	49540050 	ldmdbmi	r4, {r4, r6}^
 52c:	5f34314d 	svcpl	0x0034314d
 530:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 534:	61546500 	cmpvs	r4, r0, lsl #10
 538:	435f6b73 	cmpmi	pc, #117760	; 0x1cc00
 53c:	74616572 	strbtvc	r6, [r1], #-1394	; 0x572
 540:	50530065 	subspl	r0, r3, r5, rrx
 544:	495f3149 	ldmdbmi	pc, {r0, r3, r6, r8, ip, sp}^	; <UNPREDICTABLE>
 548:	006e5152 	rsbeq	r5, lr, r2, asr r1
 54c:	54737953 	ldrbtpl	r7, [r3], #-2387	; 0x953
 550:	5f6b6369 	svcpl	0x006b6369
 554:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0x954
 558:	706f7400 	rsbvc	r7, pc, r0, lsl #8
 55c:	7250664f 	subsvc	r6, r0, #82837504	; 0x4f00000
 560:	7453636f 	ldrbvc	r6, [r3], #-879	; 0x36f
 564:	006b6361 	rsbeq	r6, fp, r1, ror #6
 568:	73615473 	cmnvc	r1, #1929379840	; 0x73000000
 56c:	74535f6b 	ldrbvc	r5, [r3], #-3947	; 0xf6b
 570:	73757461 	cmnvc	r5, #1627389952	; 0x61000000
 574:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 578:	495f3531 	ldmdbmi	pc, {r0, r4, r5, r8, sl, ip, sp}^	; <UNPREDICTABLE>
 57c:	006e5152 	rsbeq	r5, lr, r2, asr r1
 580:	54737953 	ldrbtpl	r7, [r3], #-2387	; 0x953
 584:	5f6b6369 	svcpl	0x006b6369
 588:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 58c:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 590:	43435f31 	movtmi	r5, #16177	; 0x3f31
 594:	5152495f 	cmppl	r2, pc, asr r9
 598:	4f4c006e 	svcmi	0x004c006e
 59c:	74004441 	strvc	r4, [r0], #-1089	; 0x441
 5a0:	736b6369 	cmnvc	fp, #-1543503871	; 0xa4000001
 5a4:	73615400 	cmnvc	r1, #0, 8
 5a8:	75435f6b 	strbvc	r5, [r3, #-3947]	; 0xf6b
 5ac:	6e657272 	mcrvs	2, 3, r7, cr5, cr2, {3}
 5b0:	65440074 	strbvs	r0, [r4, #-116]	; 0x74
 5b4:	0079616c 	rsbseq	r6, r9, ip, ror #2
 5b8:	32495053 	subcc	r5, r9, #83	; 0x53
 5bc:	5152495f 	cmppl	r2, pc, asr r9
 5c0:	5070006e 	rsbspl	r0, r0, lr, rrx
 5c4:	746e696f 	strbtvc	r6, [lr], #-2415	; 0x96f
 5c8:	535f7265 	cmppl	pc, #1342177286	; 0x50000006
 5cc:	5f657661 	svcpl	0x00657661
 5d0:	746e6f43 	strbtvc	r6, [lr], #-3907	; 0xf43
 5d4:	5f747865 	svcpl	0x00747865
 5d8:	73617453 	cmnvc	r1, #1392508928	; 0x53000000
 5dc:	4349006b 	movtmi	r0, #36971	; 0x906b
 5e0:	54005245 	strpl	r5, [r0], #-581	; 0x245
 5e4:	36314d49 	ldrtcc	r4, [r1], -r9, asr #26
 5e8:	5152495f 	cmppl	r2, pc, asr r9
 5ec:	4d44006e 	stclmi	0, cr0, [r4, #-440]	; 0xfffffe48
 5f0:	435f3141 	cmpmi	pc, #1073741840	; 0x40000010
 5f4:	6e6e6168 	powvsez	f6, f6, #0.0
 5f8:	5f316c65 	svcpl	0x00316c65
 5fc:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 600:	41535500 	cmpmi	r3, r0, lsl #10
 604:	5f315452 	svcpl	0x00315452
 608:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 60c:	41535500 	cmpmi	r3, r0, lsl #10
 610:	5f325452 	svcpl	0x00325452
 614:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 618:	45534900 	ldrbmi	r4, [r3, #-2304]	; 0x900
 61c:	564e0052 			; <UNDEFINED> instruction: 0x564e0052
 620:	545f4349 	ldrbpl	r4, [pc], #-841	; 628 <_size_bss+0x3dc>
 624:	00657079 	rsbeq	r7, r5, r9, ror r0
 628:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
 62c:	35315f34 	ldrcc	r5, [r1, #-3892]!	; 0xf34
 630:	5152495f 	cmppl	r2, pc, asr r9
 634:	4954006e 	ldmdbmi	r4, {r1, r2, r3, r5, r6}^
 638:	5f37314d 	svcpl	0x0037314d
 63c:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 640:	43324900 	teqmi	r2, #0, 18
 644:	52495f31 	subpl	r5, r9, #49, 30	; 0xc4
 648:	44006e51 	strmi	r6, [r0], #-3665	; 0xe51
 64c:	5f31414d 	svcpl	0x0031414d
 650:	6e616843 	cdpvs	8, 6, cr6, cr1, cr3, {2}
 654:	346c656e 	strbtcc	r6, [ip], #-1390	; 0x56e
 658:	495f355f 	ldmdbmi	pc, {r0, r1, r2, r3, r4, r6, r8, sl, ip, sp}^	; <UNPREDICTABLE>
 65c:	006e5152 	rsbeq	r5, lr, r2, asr r1
 660:	53414c46 	movtpl	r4, #7238	; 0x1c46
 664:	52495f48 	subpl	r5, r9, #72, 30	; 0x120
 668:	49006e51 	stmdbmi	r0, {r0, r4, r6, r9, sl, fp, sp, lr}
 66c:	5f6e5152 	svcpl	0x006e5152
 670:	65707954 	ldrbvs	r7, [r0, #-2388]!	; 0x954
 674:	6e655000 	cdpvs	0, 6, cr5, cr5, cr0, {0}
 678:	5f565364 	svcpl	0x00565364
 67c:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 680:	73795300 	cmnvc	r9, #0, 6
 684:	6b636954 	blvs	18dabdc <_size_bss+0x18da990>
 688:	6e61485f 	mcrvs	8, 3, r4, cr1, cr15, {2}
 68c:	72656c64 	rsbvc	r6, r5, #100, 24	; 0x6400
 690:	414d4400 	cmpmi	sp, r0, lsl #8
 694:	68435f31 	stmdavs	r3, {r0, r4, r5, r8, r9, sl, fp, ip, lr}^
 698:	656e6e61 	strbvs	r6, [lr, #-3681]!	; 0xe61
 69c:	335f326c 	cmpcc	pc, #108, 4	; 0xc0000006
 6a0:	5152495f 	cmppl	r2, pc, asr r9
 6a4:	5470006e 	ldrbtpl	r0, [r0], #-110	; 0x6e
 6a8:	5f6b7361 	svcpl	0x006b7361
 6ac:	6d656c45 	stclvs	12, cr6, [r5, #-276]!	; 0xfffffeec
 6b0:	00746e65 	rsbseq	r6, r4, r5, ror #28
 6b4:	49545845 	ldmdbmi	r4, {r0, r2, r6, fp, ip, lr}^
 6b8:	5f335f32 	svcpl	0x00335f32
 6bc:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 6c0:	6e6f4e00 	cdpvs	14, 6, cr4, cr15, cr0, {0}
 6c4:	6b73614d 	blvs	1cd8c00 <_size_bss+0x1cd89b4>
 6c8:	656c6261 	strbvs	r6, [ip, #-609]!	; 0x261
 6cc:	5f746e49 	svcpl	0x00746e49
 6d0:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 6d4:	43324900 	teqmi	r2, #0, 18
 6d8:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
 6dc:	52006e51 	andpl	r6, r0, #1296	; 0x510
 6e0:	52455345 	subpl	r5, r5, #335544321	; 0x14000001
 6e4:	34444556 	strbcc	r4, [r4], #-1366	; 0x556
 6e8:	54584500 	ldrbpl	r4, [r8], #-1280	; 0x500
 6ec:	315f3049 	cmpcc	pc, r9, asr #32
 6f0:	5152495f 	cmppl	r2, pc, asr r9
 6f4:	5443006e 	strbpl	r0, [r3], #-110	; 0x6e
 6f8:	43004c52 	movwmi	r4, #3154	; 0xc52
 6fc:	42494c41 	submi	r4, r9, #16640	; 0x4100
 700:	4d495400 	cfstrdmi	mvd5, [r9, #-0]
 704:	52495f32 	subpl	r5, r9, #50, 30	; 0xc8
 708:	70006e51 	andvc	r6, r0, r1, asr lr
 70c:	6e696f50 	mcrvs	15, 3, r6, cr9, cr0, {2}
 710:	5f726574 	svcpl	0x00726574
 714:	64616f4c 	strbtvs	r6, [r1], #-3916	; 0xf4c
 718:	6e6f435f 	mcrvs	3, 3, r4, cr15, cr15, {2}
 71c:	74786574 	ldrbtvc	r6, [r8], #-1396	; 0x574
 720:	6174535f 	cmnvs	r4, pc, asr r3
 724:	73006b73 	movwvc	r6, #2931	; 0xb73
 728:	6b736154 	blvs	1cd8c80 <_size_bss+0x1cd8a34>
 72c:	6863535f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, ip, lr}^
 730:	6c756465 	cfldrdvs	mvd6, [r5], #-404	; 0xfffffe6c
 734:	43520065 	cmpmi	r2, #101	; 0x65
 738:	52495f43 	subpl	r5, r9, #268	; 0x10c
 73c:	65006e51 	strvs	r6, [r0, #-3665]	; 0xe51
 740:	72617453 	rsbvc	r7, r1, #1392508928	; 0x53000000
 744:	63535f74 	cmpvs	r3, #116, 30	; 0x1d0
 748:	75646568 	strbvc	r6, [r4, #-1384]!	; 0x568
 74c:	5200656c 	andpl	r6, r0, #108, 10	; 0x1b000000
 750:	495f4354 	ldmdbmi	pc, {r2, r4, r6, r8, r9, lr}^	; <UNPREDICTABLE>
 754:	006e5152 	rsbeq	r5, lr, r2, asr r1
 758:	54737953 	ldrbtpl	r7, [r3], #-2387	; 0x953
 75c:	5f6b6369 	svcpl	0x006b6369
 760:	666e6f43 	strbtvs	r6, [lr], -r3, asr #30
 764:	54006769 	strpl	r6, [r0], #-1897	; 0x769
 768:	5f334d49 	svcpl	0x00334d49
 76c:	6e515249 	cdpvs	2, 5, cr5, cr1, cr9, {2}
 770:	43565300 	cmpmi	r6, #0, 6
 774:	5152495f 	cmppl	r2, pc, asr r9
 778:	564e006e 	strbpl	r0, [lr], -lr, rrx
 77c:	535f4349 	cmppl	pc, #603979777	; 0x24000001
 780:	72507465 	subsvc	r7, r0, #1694498816	; 0x65000000
 784:	69726f69 	ldmdbvs	r2!, {r0, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
 788:	65007974 	strvs	r7, [r0, #-2420]	; 0x974
 78c:	6574754d 	ldrbvs	r7, [r4, #-1357]!	; 0x54d
 790:	6e755f78 	mrcvs	15, 3, r5, cr5, cr8, {3}
 794:	6b636f6c 	blvs	18dc54c <_size_bss+0x18dc300>
 798:	754d6500 	strbvc	r6, [sp, #-1280]	; 0x500
 79c:	5f786574 	svcpl	0x00786574
 7a0:	6b636f6c 	blvs	18dc558 <_size_bss+0x18dc30c>
 7a4:	6d4d7000 	stclvs	0, cr7, [sp, #-0]
 7a8:	78657475 	stmdavc	r5!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 7ac:	2f2e2e00 	svccs	0x002e2e00
 7b0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 7b4:	656b2f2e 	strbvs	r2, [fp, #-3886]!	; 0xf2e
 7b8:	6c656e72 	stclvs	14, cr6, [r5], #-456	; 0xfffffe38
 7bc:	68746d2f 	ldmdavs	r4!, {r0, r1, r2, r3, r5, r8, sl, fp, sp, lr}^
 7c0:	64616572 	strbtvs	r6, [r1], #-1394	; 0x572
 7c4:	6372735f 	cmnvs	r2, #2080374785	; 0x7c000001
 7c8:	756d6d2f 	strbvc	r6, [sp, #-3375]!	; 0xd2f
 7cc:	2e786574 	mrccs	5, 3, r6, cr8, cr4, {3}
 7d0:	5f5f0063 	svcpl	0x005f0063
 7d4:	61736964 	cmnvs	r3, r4, ror #18
 7d8:	5f656c62 	svcpl	0x00656c62
 7dc:	00717269 	rsbseq	r7, r1, r9, ror #4
 7e0:	74754d65 	ldrbtvc	r4, [r5], #-3429	; 0xd65
 7e4:	745f7865 	ldrbvc	r7, [pc], #-2149	; 7ec <_size_bss+0x5a0>
 7e8:	6c5f7972 	mrrcvs	9, 7, r7, pc, cr2	; <UNPREDICTABLE>
 7ec:	006b636f 	rsbeq	r6, fp, pc, ror #6

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	080000d0 	stmdaeq	r0, {r4, r6, r7}
  1c:	00000020 	andeq	r0, r0, r0, lsr #32
  20:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  24:	41018e02 	tstmi	r1, r2, lsl #28
  28:	0000070d 	andeq	r0, r0, sp, lsl #14
  2c:	00000018 	andeq	r0, r0, r8, lsl r0
  30:	00000000 	andeq	r0, r0, r0
  34:	080000c8 	stmdaeq	r0, {r3, r6, r7}
  38:	00000008 	andeq	r0, r0, r8
  3c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  40:	41018e02 	tstmi	r1, r2, lsl #28
  44:	0000070d 	andeq	r0, r0, sp, lsl #14
  48:	0000001c 	andeq	r0, r0, ip, lsl r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	080000f0 	stmdaeq	r0, {r4, r5, r6, r7}
  54:	0000002c 	andeq	r0, r0, ip, lsr #32
  58:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  5c:	41018e02 	tstmi	r1, r2, lsl #28
  60:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
  64:	00000007 	andeq	r0, r0, r7
  68:	0000001c 	andeq	r0, r0, ip, lsl r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	0800011c 	stmdaeq	r0, {r2, r3, r4, r8}
  74:	0000002c 	andeq	r0, r0, ip, lsr #32
  78:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  7c:	41018e02 	tstmi	r1, r2, lsl #28
  80:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
  84:	00000007 	andeq	r0, r0, r7
  88:	00000018 	andeq	r0, r0, r8, lsl r0
  8c:	00000000 	andeq	r0, r0, r0
  90:	08000148 	stmdaeq	r0, {r3, r6, r8}
  94:	00000058 	andeq	r0, r0, r8, asr r0
  98:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  9c:	41018e02 	tstmi	r1, r2, lsl #28
  a0:	0000070d 	andeq	r0, r0, sp, lsl #14
  a4:	0000000c 	andeq	r0, r0, ip
  a8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  ac:	7c020001 	stcvc	0, cr0, [r2], {1}
  b0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  b4:	00000018 	andeq	r0, r0, r8, lsl r0
  b8:	000000a4 	andeq	r0, r0, r4, lsr #1
  bc:	080001a0 	stmdaeq	r0, {r5, r7, r8}
  c0:	0000002c 	andeq	r0, r0, ip, lsr #32
  c4:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  c8:	41018e02 	tstmi	r1, r2, lsl #28
  cc:	0000070d 	andeq	r0, r0, sp, lsl #14
  d0:	00000018 	andeq	r0, r0, r8, lsl r0
  d4:	000000a4 	andeq	r0, r0, r4, lsr #1
  d8:	080001cc 	stmdaeq	r0, {r2, r3, r6, r7, r8}
  dc:	00000012 	andeq	r0, r0, r2, lsl r0
  e0:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  e4:	41018e02 	tstmi	r1, r2, lsl #28
  e8:	0000070d 	andeq	r0, r0, sp, lsl #14
  ec:	00000018 	andeq	r0, r0, r8, lsl r0
  f0:	000000a4 	andeq	r0, r0, r4, lsr #1
  f4:	080001e0 	stmdaeq	r0, {r5, r6, r7, r8}
  f8:	0000001c 	andeq	r0, r0, ip, lsl r0
  fc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 100:	41018e02 	tstmi	r1, r2, lsl #28
 104:	0000070d 	andeq	r0, r0, sp, lsl #14
 108:	0000001c 	andeq	r0, r0, ip, lsl r0
 10c:	000000a4 	andeq	r0, r0, r4, lsr #1
 110:	080001fc 	stmdaeq	r0, {r2, r3, r4, r5, r6, r7, r8}
 114:	00000094 	muleq	r0, r4, r0
 118:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 11c:	41018e02 	tstmi	r1, r2, lsl #28
 120:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 124:	00000007 	andeq	r0, r0, r7
 128:	0000001c 	andeq	r0, r0, ip, lsl r0
 12c:	000000a4 	andeq	r0, r0, r4, lsr #1
 130:	08000290 	stmdaeq	r0, {r4, r7, r9}
 134:	00000094 	muleq	r0, r4, r0
 138:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 13c:	41018e02 	tstmi	r1, r2, lsl #28
 140:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 144:	00000007 	andeq	r0, r0, r7
 148:	0000001c 	andeq	r0, r0, ip, lsl r0
 14c:	000000a4 	andeq	r0, r0, r4, lsr #1
 150:	08000324 	stmdaeq	r0, {r2, r5, r8, r9}
 154:	00000050 	andeq	r0, r0, r0, asr r0
 158:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 15c:	41018e02 	tstmi	r1, r2, lsl #28
 160:	0c41100e 	mcrreq	0, 0, r1, r1, cr14
 164:	00000807 	andeq	r0, r0, r7, lsl #16
 168:	0000000c 	andeq	r0, r0, ip
 16c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 170:	7c020001 	stcvc	0, cr0, [r2], {1}
 174:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 178:	00000018 	andeq	r0, r0, r8, lsl r0
 17c:	00000168 	andeq	r0, r0, r8, ror #2
 180:	08000374 	stmdaeq	r0, {r2, r4, r5, r6, r8, r9}
 184:	00000008 	andeq	r0, r0, r8
 188:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 18c:	41018e02 	tstmi	r1, r2, lsl #28
 190:	0000070d 	andeq	r0, r0, sp, lsl #14
 194:	0000000c 	andeq	r0, r0, ip
 198:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 19c:	7c020001 	stcvc	0, cr0, [r2], {1}
 1a0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1a4:	00000020 	andeq	r0, r0, r0, lsr #32
 1a8:	00000194 	muleq	r0, r4, r1
 1ac:	080003c0 	stmdaeq	r0, {r6, r7, r8, r9}
 1b0:	000000d4 	ldrdeq	r0, [r0], -r4
 1b4:	84100e41 	ldrhi	r0, [r0], #-3649	; 0xe41
 1b8:	87038504 	strhi	r8, [r3, -r4, lsl #10]
 1bc:	41018e02 	tstmi	r1, r2, lsl #28
 1c0:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 1c4:	00000007 	andeq	r0, r0, r7
 1c8:	0000001c 	andeq	r0, r0, ip, lsl r0
 1cc:	00000194 	muleq	r0, r4, r1
 1d0:	08000494 	stmdaeq	r0, {r2, r4, r7, sl}
 1d4:	00000048 	andeq	r0, r0, r8, asr #32
 1d8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1dc:	41018e02 	tstmi	r1, r2, lsl #28
 1e0:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 1e4:	00000007 	andeq	r0, r0, r7
 1e8:	0000001c 	andeq	r0, r0, ip, lsl r0
 1ec:	00000194 	muleq	r0, r4, r1
 1f0:	080004dc 	stmdaeq	r0, {r2, r3, r4, r6, r7, sl}
 1f4:	0000006a 	andeq	r0, r0, sl, rrx
 1f8:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 1fc:	41018e02 	tstmi	r1, r2, lsl #28
 200:	0d41180e 	stcleq	8, cr1, [r1, #-56]	; 0xffffffc8
 204:	00000007 	andeq	r0, r0, r7
 208:	00000018 	andeq	r0, r0, r8, lsl r0
 20c:	00000194 	muleq	r0, r4, r1
 210:	08000548 	stmdaeq	r0, {r3, r6, r8, sl}
 214:	00000020 	andeq	r0, r0, r0, lsr #32
 218:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 21c:	41018e02 	tstmi	r1, r2, lsl #28
 220:	0000070d 	andeq	r0, r0, sp, lsl #14
 224:	00000018 	andeq	r0, r0, r8, lsl r0
 228:	00000194 	muleq	r0, r4, r1
 22c:	08000568 	stmdaeq	r0, {r3, r5, r6, r8, sl}
 230:	0000008c 	andeq	r0, r0, ip, lsl #1
 234:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 238:	41018e02 	tstmi	r1, r2, lsl #28
 23c:	0000070d 	andeq	r0, r0, sp, lsl #14
 240:	0000001c 	andeq	r0, r0, ip, lsl r0
 244:	00000194 	muleq	r0, r4, r1
 248:	080005f4 	stmdaeq	r0, {r2, r4, r5, r6, r7, r8, sl}
 24c:	000000b8 	strheq	r0, [r0], -r8
 250:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 254:	41018e02 	tstmi	r1, r2, lsl #28
 258:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 25c:	00000007 	andeq	r0, r0, r7
 260:	00000018 	andeq	r0, r0, r8, lsl r0
 264:	00000194 	muleq	r0, r4, r1
 268:	080006ac 	stmdaeq	r0, {r2, r3, r5, r7, r9, sl}
 26c:	0000000c 	andeq	r0, r0, ip
 270:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 274:	41018e02 	tstmi	r1, r2, lsl #28
 278:	0000070d 	andeq	r0, r0, sp, lsl #14
 27c:	0000001c 	andeq	r0, r0, ip, lsl r0
 280:	00000194 	muleq	r0, r4, r1
 284:	080006b8 	stmdaeq	r0, {r3, r4, r5, r7, r9, sl}
 288:	0000001a 	andeq	r0, r0, sl, lsl r0
 28c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 290:	41018e02 	tstmi	r1, r2, lsl #28
 294:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 298:	00000007 	andeq	r0, r0, r7
 29c:	0000000c 	andeq	r0, r0, ip
 2a0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2a4:	7c020001 	stcvc	0, cr0, [r2], {1}
 2a8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2ac:	0000001c 	andeq	r0, r0, ip, lsl r0
 2b0:	0000029c 	muleq	r0, ip, r2
 2b4:	080006d4 	stmdaeq	r0, {r2, r4, r6, r7, r9, sl}
 2b8:	0000005c 	andeq	r0, r0, ip, asr r0
 2bc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 2c0:	41018e02 	tstmi	r1, r2, lsl #28
 2c4:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 2c8:	00000007 	andeq	r0, r0, r7
 2cc:	0000001c 	andeq	r0, r0, ip, lsl r0
 2d0:	0000029c 	muleq	r0, ip, r2
 2d4:	08000730 	stmdaeq	r0, {r4, r5, r8, r9, sl}
 2d8:	0000005c 	andeq	r0, r0, ip, asr r0
 2dc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 2e0:	41018e02 	tstmi	r1, r2, lsl #28
 2e4:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 2e8:	00000007 	andeq	r0, r0, r7
 2ec:	0000001c 	andeq	r0, r0, ip, lsl r0
 2f0:	0000029c 	muleq	r0, ip, r2
 2f4:	0800078c 	stmdaeq	r0, {r2, r3, r7, r8, r9, sl}
 2f8:	00000024 	andeq	r0, r0, r4, lsr #32
 2fc:	87080e41 	strhi	r0, [r8, -r1, asr #28]
 300:	41018e02 	tstmi	r1, r2, lsl #28
 304:	0d41100e 	stcleq	0, cr1, [r1, #-56]	; 0xffffffc8
 308:	00000007 	andeq	r0, r0, r7
