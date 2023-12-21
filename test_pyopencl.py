import pyopencl as cl

pli = cl.get_platforms()
p = pli[0]

print(p.name)
print(p.vendor)
print(p.version)

dli = p.get_devices()

d1 = dli[0]
print(d1.available)
print(d1.host_unified_memory)
print(d1.local_mem_size)
