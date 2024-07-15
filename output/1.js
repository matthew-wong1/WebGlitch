const {
    create,
    globals
} = require('../../dawn_newest/out/Debug/Debug/dawn.node');
const fs = require('fs');
Object.assign(globalThis, globals);
let navigator = {
    gpu: create([]),
};

if (!navigator.gpu) {
    throw new Error("WebGPU not supported on this browser");
}

function loadShader(file) {
    try {
        const data = fs.readFileSync(file, 'utf8');
        return data;
    } catch (err) {
        console.error('Failed to load shader:', err);
    }
}
const SslhjgKiSzTFfctQRn = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const VWeIxcZQqtWDqGNfAWg = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const EZkPZ = new Float32Array([-803, 1970, -4565, 2198, -2849, -966, -7938, -9760, -1634, -4479, 8376, -4627, 6780, -1475, 8744, -2143, 125, -5975, -8854, 5642, 9390, 7623, -4874, -5727, -5663, -8287, -1741, 6320, -7039, 9614, 8714, -6374, 4967, 4494, 6793, -4019, -4955, -8108, -955, -3323, 9596, -346, 1661, 7552, -4630, -3963, 9842, -3367, -6161, -9469, 225, 4655, 8365, -4756, -5482, 7293, 6094, -733, 453, -4270, -9885, -7456, 1645, -6061, 4965, -5325, -1269, -2625, 7712, -3252, -9796, 4455, -1906, -30, 1377, -9166, 2288, 8949, -4095, -4795, -4455, 107, 7993, -6495, 3907, 7962, 2444, 6252, 1091, 9919, -5555, -3790, -5979, -2911, 9387, -6885, -1652, 9894, -7666, 1692, 5853, -8495, 7591, 9946, 5948, -1448, -4271, 33, 1632, -5566, -2095, -8626, -3639, -7242, -2572, 1577, 8500, 5304, 5920, -6744, 4519, -1814, 8692, 6090, -1817, 3989, -4923, -5094])
const ZIYXA = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const TCsUDcIa = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const vzMuXGFMkjFjdUSPT = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const LexlUhtfX = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const JZwBppRHKsik = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const aiwRZYjAPeYeL = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const dYPaMq = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const KPxrIdbvWUxxUNX = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const lIjlxCBu = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const fnGnHQClKzfFJHJSQMy = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const eiUieSCga = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');
const tJAIqMgpqIZNfNB = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const KoVvoGAObEvraC = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const sSbiC = new Int8Array([-5870, -3412, -8233, 575, 9790, -5982, 1539, 3893])
const fzkKGyttcFMjdpWE = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const IvWkORyupeZKxRCRP = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const FqmsyrZn = new Int8Array([-9149, -4543, -2147, -5224, 5517, -3524, -8846, 4806, -3136, 3585, 8706, -1910, 6172, 6182, 2302, -8843])
const LvtWBoy = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const OLyVfEOocAXdM = new Int8Array([-2379, -5479, -1313, -666, 8208, 1364, 1377, 2376, -1352, -9245, -8024, -7952, 4444, 9116, -9243, 7553])
const YqkztG = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const koFVVrMnfrUQe = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const WVbGPI = new Int8Array([9303, -5587, 7325, -9981, 1098, -4011, 5297, 651])
const kJtNiok = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const bYITmkcidpBd = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ynQrkcMSgrLDAzJ = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const kLdNM = new Uint8Array([4899, -5507, 1832, 9379, 697, -642, -4020, 1486, 3869, 8971, -7210, -4426, 4365, 3466, -8699, -3274, 5506, 489, 1185, 5327, -7857, -2269, -3024, 848, 9422, -1364, -1440, 4631])
const tQupNrLeNaQlZxofe = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const HvsunyyXV = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const ZSpQzIZuCqQTXS = new Float32Array([7857, 6116])
const OehLyYlQAcRJPXOJ = new Uint8Array([2349, -2211, -3033, 4097, -3821, -2523, -5153, -8782, -4033, -3056, 2117, -9370])
const XjAaEHSwfhsL = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const ALGsMrHbWdeISdxUdnQJ = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const LSTgcgDunYSYUeWKhKw = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/vertex.wgsl');
const hTYbztEvGbyVpILjTs = loadShader('../WebGlitch/rsrcs/shaders/graphics/helloTriangle/fragment.wgsl');
const NkqFnOOgvRwZJkzni = new Uint8Array([17, 251, 246, 66, 58, 181, 113, 125, 23, 109, 64, 232, 100, 188, 134, 185, 214, 6, 230, 20, 63, 112, 44, 51, 131, 9, 213, 42, 184, 165, 30, 158])
const jlveryCIRp = loadShader('../WebGlitch/rsrcs/shaders/compute/1/compute.wgsl');

async function main() {
    const CdrlGNhFF = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const lVQHpJMPoKyGSWgEZfg = await CdrlGNhFF.requestDevice();
    const RbyJLYJxZfu = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "PwVjpVcXJ"
    });
    const QqAiUtPRuCiMV = RbyJLYJxZfu.beginComputePass({
        label: "NYdkpIoYGGqcMKi"
    });
    QqAiUtPRuCiMV.end();
    const fIZKyeRdqdKMYJIBz = RbyJLYJxZfu.beginComputePass({
        label: "NBNuVnHWUCjOoVg"
    });
    const uiBwL = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "compute",
        code: jlveryCIRp
    });
    const volfxWeMWYTtw = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "JpOywmP",
        layout: "auto"
    });
    const WscGqxxGCpyL = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "uhZZhqnSjSn",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_SRC | GPUBufferUsage.QUERY_RESOLVE
    });
    const nXJaQ = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "NqhHNufwTugB",
        mappedAtCreation: false,
        size: 32,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.INDEX
    });
    const dRcQpsmrKaVggRQ = lVQHpJMPoKyGSWgEZfg.queue
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, NkqFnOOgvRwZJkzni);
    const byyZqsdfTIb = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "volfxWeMWYTtw.bindGroup",
        layout: volfxWeMWYTtw.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    fIZKyeRdqdKMYJIBz.setBindGroup(0, byyZqsdfTIb);
    const HsppFSTZNVEiEd = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "WLkrGKTjEn",
        mappedAtCreation: true,
        size: 179957508,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.QUERY_RESOLVE
    });
    fIZKyeRdqdKMYJIBz.end();
    const PHJaLkaNpuU = RbyJLYJxZfu.finish();
    const uhasIldJKHKw = CdrlGNhFF.limits
    const gvUMaOzw = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "jNCGvSVNkKoOdfobGQ"
    });
    const HHsObZ = gvUMaOzw.beginComputePass({
        label: "olzERTmnSCLwETLD"
    });
    HHsObZ.setBindGroup(0, byyZqsdfTIb);
    const MUwXydDwQymQ = lVQHpJMPoKyGSWgEZfg.limits
    const gbusveZT = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 3496,
        label: "eTZMZcSAmDyX",
        type: "occlusion"
    });
    const HuMpqlIb = gbusveZT.type
    const JMrDpuchpYlSdO = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "r32float",
        label: "nHiQRtVQxON",
        size: {
            width: 2592,
            height: 1828,
            depthOrArrayLayers: 20
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["r32float"]
    });
    const ETjOrSw = JMrDpuchpYlSdO.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 18,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "r32float",
        label: "lIJcTXQgR"
    });
    const MseCggMwSWPOJFZqIg = ETjOrSw.label
    const LzFdbWawxSkrf = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 3206,
        label: "xrouEDJYhQOKgxRaHAbE",
        type: "occlusion"
    });
    const RkvSUxjzgeprROUvdhB = lVQHpJMPoKyGSWgEZfg.label
    dRcQpsmrKaVggRQ.submit([PHJaLkaNpuU]);
    const KmoLvZYLGUBjfzGEHfK = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "nfdnjZo"
    });
    const WEjfzvnwweJ = KmoLvZYLGUBjfzGEHfK.beginComputePass({
        label: "nPWNrKFXMfQmHrESrXvq"
    });
    WEjfzvnwweJ.setPipeline(volfxWeMWYTtw);
    HHsObZ.setBindGroup(0, byyZqsdfTIb);
    WEjfzvnwweJ.dispatchWorkgroups(32, 173, 62);
    const JJYDO = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "PJYikh",
        layout: "auto"
    });
    const hqrPoNdU = await navigator.gpu.getPreferredCanvasFormat();
    HHsObZ.setBindGroup(0, byyZqsdfTIb);
    WEjfzvnwweJ.setBindGroup(0, byyZqsdfTIb);
    HHsObZ.end();
    const KoQPwAnIXorQouyPd = gvUMaOzw.finish();
    dRcQpsmrKaVggRQ.submit([KoQPwAnIXorQouyPd]);
    const qxvam = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 786,
        label: "mVuBtTJGeVXyQnC",
        type: "occlusion"
    });
    const uwVqF = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 2025,
        label: "brqIOoHwxGkZEYwrs",
        type: "occlusion"
    });
    const YSNDqA = CdrlGNhFF.features
    const IPAnHYfJEXGJOAj = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "ajPMBrNOifuqDHVTq"
    });
    const YnyiUq = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba8unorm",
        label: "EFWlOcvVieGcUDP",
        size: {
            width: 588,
            height: 1521,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgba8unorm-srgb"]
    });
    const hUrmhenS = YnyiUq.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "PUPIBaLXUBpuXo"
    });
    const uURtDk = IPAnHYfJEXGJOAj.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.27695511460535593,
                g: 0.2779511980603717,
                b: 0.2272897478306093,
                a: 1.0267271631686257
            },
            loadOp: "load",
            storeOp: "discard",
            view: hUrmhenS
        }],
        label: "dlALzxxsURqE",
        maxDrawCount: 3532780010,
        occlusionQuerySet: gbusveZT
    });
    uURtDk.setVertexBuffer(0, nXJaQ);
    const kUKhlzbJRLEEePA = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "vztrCFVP"
    });
    const mvCKZOv = LzFdbWawxSkrf.count
    const MvfTVWGzy = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "fragment",
        code: hTYbztEvGbyVpILjTs
    });
    const bUGsCNLbjn = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "vertex",
        code: LSTgcgDunYSYUeWKhKw
    });
    const NEkPhqdfuCuDxkXm = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst",
                        srcFactor: "one-minus-src-alpha"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "xHdqZNjjJzMTPmj",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: bUGsCNLbjn
        }
    });
    uURtDk.setPipeline(NEkPhqdfuCuDxkXm);
    const jTpvvjSqRWKhEI = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 1275,
        label: "wRSalWt",
        type: "occlusion"
    });
    WEjfzvnwweJ.end();
    const OJWiZtgsnzX = kUKhlzbJRLEEePA.beginComputePass({
        label: "OazUTF"
    });
    const MiEbHUKix = lVQHpJMPoKyGSWgEZfg.label
    const wnWZriZSKaZGtY = uURtDk.label
    uURtDk.setPipeline(NEkPhqdfuCuDxkXm);
    const cwfEkzAexKy = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "KDxUi"
    });
    const TmDkXdrrXHpbW = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "vertex",
        code: ALGsMrHbWdeISdxUdnQJ
    });
    uURtDk.end();
    const lHbGzPycCamusUawjF = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "nsYJrkgXPwsQRM",
        layout: "auto"
    });
    const vTvytDzJjy = IPAnHYfJEXGJOAj.beginComputePass({
        label: "kgREjNbifHGWBKqvzv"
    });
    const nLzss = KmoLvZYLGUBjfzGEHfK.finish();
    const DcseMBff = CdrlGNhFF.features
    const XAzpIeb = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 3851,
        label: "RyWpWTeEs",
        type: "occlusion"
    });
    vTvytDzJjy.setBindGroup(0, byyZqsdfTIb);
    const toHpGYmsRXzRX = YnyiUq.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba8unorm-srgb",
        label: "AwNGg"
    });
    const eKynEOZFmXnQC = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "qdUVRyneSn"
    });
    const NIEWmNQ = ETjOrSw.label
    const MrKgzSZ = lVQHpJMPoKyGSWgEZfg.limits
    const wxzOmKgMUQEzmrQgye = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "TYTshNovDneBWlwcB",
        size: {
            width: 1676,
            height: 1619,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const qpQUbfZULlmNGTRCLLCJ = wxzOmKgMUQEzmrQgye.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "BwZqZNP"
    });
    const AnCNLilaWpBumiBVNjq = cwfEkzAexKy.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.4002130364971834,
                g: 1.5190099486673176,
                b: 0.28086117662308285,
                a: 0.3812310509318939
            },
            loadOp: "load",
            storeOp: "store",
            view: qpQUbfZULlmNGTRCLLCJ
        }],
        label: "bQGMyYMynadZlrylkByZ",
        maxDrawCount: 229036058,
        occlusionQuerySet: XAzpIeb
    });
    AnCNLilaWpBumiBVNjq.setVertexBuffer(0, nXJaQ);
    const pLhpWwhfkAEBZ = CdrlGNhFF.limits
    const BLYDGOSgrQVRi = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "rHDwJHP"
    });
    vTvytDzJjy.setBindGroup(0, byyZqsdfTIb);
    const htARmjWkAschjjurW = IPAnHYfJEXGJOAj.label
    const vTaqHWpEQ = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "vertex",
        code: XjAaEHSwfhsL
    });
    const UdpDKtFB = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "xwFgHsM",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: vTaqHWpEQ
        }
    });
    AnCNLilaWpBumiBVNjq.setPipeline(UdpDKtFB);
    const oSAnOaWDltF = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "OVNZosVkREdDm"
    });
    OJWiZtgsnzX.setBindGroup(0, byyZqsdfTIb);
    const KBOGWx = jTpvvjSqRWKhEI.type
    const HNnHAv = lVQHpJMPoKyGSWgEZfg.limits
    const JSFWLghrPDpTPGn = IPAnHYfJEXGJOAj.label
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 12, OehLyYlQAcRJPXOJ);
    AnCNLilaWpBumiBVNjq.setPipeline(UdpDKtFB);
    const CQXICsInrSPEaT = lVQHpJMPoKyGSWgEZfg.limits
    const JpjFRZzJuYbkhR = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "constant"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.RED | GPUColorWrite.ALL
            }]
        },
        label: "olWlMNDVrvqIwOf",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: bUGsCNLbjn
        }
    });
    const YFwqy = eKynEOZFmXnQC.finish();
    const RClcOqdHfBGvBjkiCBcp = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "uWaUFItnwO",
        size: {
            width: 2019,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const XyuGuol = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.RED
            }]
        },
        label: "fBKfNPiDMNkeSm",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: TmDkXdrrXHpbW
        }
    });
    const YZukObrhCIzMDpwJ = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "aTPiAIDabpZpR",
        layout: "auto"
    });
    const jYXZsjesNYWa = volfxWeMWYTtw.getBindGroupLayout(0);
    const ZcvopOJGiDtPLSBl = CdrlGNhFF.isFallbackAdapter
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 20, ZSpQzIZuCqQTXS);
    const vRMWvXqfObKzpJNdjD = lVQHpJMPoKyGSWgEZfg.features
    vTvytDzJjy.setBindGroup(0, byyZqsdfTIb);
    vTvytDzJjy.setPipeline(lHbGzPycCamusUawjF);
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, HvsunyyXV);
    const InzjAI = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "lHbGzPycCamusUawjF.bindGroup",
        layout: lHbGzPycCamusUawjF.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    vTvytDzJjy.setBindGroup(0, InzjAI);
    vTvytDzJjy.dispatchWorkgroups(93, 22, 26);
    AnCNLilaWpBumiBVNjq.draw(4);
    AnCNLilaWpBumiBVNjq.setVertexBuffer(0, nXJaQ);
    const aczraBhKUpy = CdrlGNhFF.limits
    const QsAFH = lHbGzPycCamusUawjF.getBindGroupLayout(0);
    const sWgpRrMaGDVyLQGiOwpr = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba32uint",
        label: "GgvJFRqdZMUPN",
        size: {
            width: 1618,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba32uint"]
    });
    const peQUzUxKldMXFPdnZ = uwVqF.count
    OJWiZtgsnzX.setBindGroup(0, InzjAI);
    OJWiZtgsnzX.setPipeline(JJYDO);
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, tQupNrLeNaQlZxofe);
    const xrmSsOcZCIR = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "JJYDO.bindGroup",
        layout: JJYDO.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    OJWiZtgsnzX.setBindGroup(0, xrmSsOcZCIR);
    OJWiZtgsnzX.dispatchWorkgroups(35, 60, 12);
    const AUBpdMEfmGxRdxxPss = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8uint",
        label: "SeaBUSMLEuqXy",
        size: {
            width: 1695,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r8uint"]
    });
    const niXsZSSAtZT = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16float",
        label: "LyhaaGOFJCwk",
        size: {
            width: 814,
            height: 19,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const WWphr = niXsZSSAtZT.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgba16float",
        label: "AtfHGEAtyNbhL"
    });
    const dPiSOTXaY = BLYDGOSgrQVRi.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.9755888328815132,
                g: 1.1710877986013701,
                b: 0.4927692885186925,
                a: 0.8167946149944585
            },
            loadOp: "load",
            storeOp: "store",
            view: WWphr,
            depthSlice: 0
        }],
        label: "COPVUZtuCCm",
        maxDrawCount: 1417471619,
        occlusionQuerySet: qxvam
    });
    dPiSOTXaY.setVertexBuffer(0, nXJaQ);
    const JrdZtvhBGulPMhRu = YZukObrhCIzMDpwJ.label
    OJWiZtgsnzX.setBindGroup(0, xrmSsOcZCIR);
    OJWiZtgsnzX.setPipeline(JJYDO);
    const BVrvR = lVQHpJMPoKyGSWgEZfg.features
    const QvApysq = uwVqF.count
    const jCaaHAqoELgiFcw = CdrlGNhFF.limits
    OJWiZtgsnzX.end();
    const kxjyRTWkFMSYqTB = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const DNEEMFTKrDVplcq = lVQHpJMPoKyGSWgEZfg.limits
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 20, kLdNM);
    const tbFelNQrFnhVTGbrVpt = lVQHpJMPoKyGSWgEZfg.limits
    dPiSOTXaY.setVertexBuffer(0, nXJaQ);
    AnCNLilaWpBumiBVNjq.setPipeline(UdpDKtFB);
    const lEnQdlYWwgWH = CdrlGNhFF.info
    AnCNLilaWpBumiBVNjq.end();
    const kTxoaP = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "PoFhUVSCYUhdfdgDJWtK",
        mappedAtCreation: true,
        size: 168200096,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.COPY_SRC | GPUBufferUsage.INDEX | GPUBufferUsage.QUERY_RESOLVE
    });
    const TUWzcAshM = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "fragment",
        code: ynQrkcMSgrLDAzJ
    });
    const JHGarHqpasJXSmZT = kxjyRTWkFMSYqTB.features
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, bYITmkcidpBd);
    const kevznkZhU = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "JJYDO.bindGroup",
        layout: JJYDO.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const jFGuyNvoX = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "urAuFuSYknHeFfgP",
        layout: "auto"
    });
    const VKMkssmOvcDgcQnSgKd = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "hVkrILXTCFDMibK",
        layout: "auto"
    });
    const tKXxNCMSdFdqoVVEpBo = kxjyRTWkFMSYqTB.limits
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, kJtNiok);
    const aiWPxYlSedxRBepLf = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "jFGuyNvoX.bindGroup",
        layout: jFGuyNvoX.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const WNVedTSXQqT = await navigator.gpu.getPreferredCanvasFormat();
    const sgBiML = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 1509,
        label: "WEijAYEYzaeUJxmgGIn",
        type: "occlusion"
    });
    const GpHczGXMQKpLYTUNpU = kxjyRTWkFMSYqTB.isFallbackAdapter
    const MJcNhJnYnw = lHbGzPycCamusUawjF.getBindGroupLayout(0);
    const cZtTAWKaXHxPxuOKdIDS = dPiSOTXaY.label
    const UhhOuwPINfkKI = CdrlGNhFF.isFallbackAdapter
    const hGyKihDB = jFGuyNvoX.getBindGroupLayout(0);
    const jJWjhqgHPerusLtWdPhz = lVQHpJMPoKyGSWgEZfg.label
    const drCwanEOpTXOyHri = lVQHpJMPoKyGSWgEZfg.features
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 12, WVbGPI);
    const dDVRaeSpJcxNwICKkJ = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "bSPnYovUVVeHrDrkfWe",
        size: {
            width: 870,
            height: 364,
            depthOrArrayLayers: 45
        },
        mipLevelCount: 4,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const FFjNxReAtkujRQXjJ = dDVRaeSpJcxNwICKkJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "rg8unorm",
        label: "OZLeCyOAawYUUMbCIilL"
    });
    const POUQJjVmcIcKPbdXrcUy = kUKhlzbJRLEEePA.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.873023526026764,
                g: 0.44026790313470054,
                b: 1.8948931755487635,
                a: 0.24801784039793895
            },
            loadOp: "clear",
            storeOp: "discard",
            view: FFjNxReAtkujRQXjJ,
            depthSlice: 1
        }],
        label: "xMOqkjveiYYU",
        maxDrawCount: 2721955106,
        occlusionQuerySet: jTpvvjSqRWKhEI
    });
    const srMugqdT = JJYDO.getBindGroupLayout(0);
    const faKaDtUtsDfF = lVQHpJMPoKyGSWgEZfg.label
    const hhoFgoQVB = NEkPhqdfuCuDxkXm.label
    dPiSOTXaY.end();
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, koFVVrMnfrUQe);
    const MgQZNlwb = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "VKMkssmOvcDgcQnSgKd.bindGroup",
        layout: VKMkssmOvcDgcQnSgKd.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const iQTyNGVhIg = lVQHpJMPoKyGSWgEZfg.features
    const yMJZIv = lVQHpJMPoKyGSWgEZfg.features
    const yRLiLbJj = await navigator.gpu.getPreferredCanvasFormat();
    const DDTGdGIIcE = navigator.gpu.wgslLanguageFeatures
    const XCyTHiTcnOYhcRvOE = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 3937,
        label: "JPonNQTLjwOyR",
        type: "occlusion"
    });
    const pJJGFex = POUQJjVmcIcKPbdXrcUy.label
    vTvytDzJjy.setBindGroup(0, InzjAI);
    const YvCzcFWgIFmMgyOstfFB = POUQJjVmcIcKPbdXrcUy.label
    const WpsNkexI = kUKhlzbJRLEEePA.label
    vTvytDzJjy.setBindGroup(0, InzjAI);
    vTvytDzJjy.setPipeline(VKMkssmOvcDgcQnSgKd);
    const cEveGHtIgJKn = lVQHpJMPoKyGSWgEZfg.queue
    const IKXehgrbaGXWo = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "fragment",
        code: YqkztG
    });
    vTvytDzJjy.end();
    const CnUtIPRRBUJEFbtN = BLYDGOSgrQVRi.beginComputePass({
        label: "uzAiArEDkFMROZqPCZAz"
    });
    CnUtIPRRBUJEFbtN.end();
    const JOBNJOBLJ = await navigator.gpu.getPreferredCanvasFormat();
    const cArrLloIZ = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "depth24plus",
        label: "XIxIrseHhNx",
        size: {
            width: 1679,
            height: 1319,
            depthOrArrayLayers: 42
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["depth24plus"]
    });
    cEveGHtIgJKn.writeBuffer(WscGqxxGCpyL, 28, OLyVfEOocAXdM);
    const fqdDk = navigator.gpu.wgslLanguageFeatures
    const yABRfjIsPBVWU = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "dst-alpha",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rg8unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.RED
            }]
        },
        label: "AqSOMvKci",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: TmDkXdrrXHpbW
        }
    });
    POUQJjVmcIcKPbdXrcUy.setPipeline(yABRfjIsPBVWU);
    const PguYrGonrCgOMnnDBz = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "PTVcdIhQPwbgICZqvqOF",
        mappedAtCreation: false,
        size: 255569804,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const TTHWuhKNP = BLYDGOSgrQVRi.finish();
    const pvGGUwkA = oSAnOaWDltF.beginComputePass({
        label: "MvQRlVSSTsSfJvMV"
    });
    pvGGUwkA.setPipeline(lHbGzPycCamusUawjF);
    const PPOolqQRGkEPYYOlxjW = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8unorm",
        label: "TuJgaLYNYhJDgirDy",
        size: {
            width: 23,
            height: 2988,
            depthOrArrayLayers: 10
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba8unorm"]
    });
    const gAPEHRgQomqoRhmxzs = PPOolqQRGkEPYYOlxjW.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rgba8unorm",
        label: "piCAhPAHICBjMErip"
    });
    const VtjxzdUUOIETA = cwfEkzAexKy.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.7058532255163992,
                g: 1.1334744468084532,
                b: 1.8656863097942686,
                a: 0.724961157129338
            },
            loadOp: "clear",
            storeOp: "store",
            view: gAPEHRgQomqoRhmxzs
        }],
        label: "RhUOUhaJspPOxlvcwKV",
        maxDrawCount: 1475368383,
        occlusionQuerySet: jTpvvjSqRWKhEI
    });
    const GfZJItvztWZpAdAXyJcd = await navigator.gpu.getPreferredCanvasFormat();
    VtjxzdUUOIETA.setVertexBuffer(0, nXJaQ);
    const CmTviNIumgXvJQkcaMBO = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const kwgZESgStKAotsyiyipC = XyuGuol.label
    const OAbrwIDXibOJGFv = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: TUWzcAshM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "one-minus-constant",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "zero"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "pBklceOMHNwhjJV",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: vTaqHWpEQ
        }
    });
    pvGGUwkA.setPipeline(JJYDO);
    pvGGUwkA.setBindGroup(0, kevznkZhU);
    pvGGUwkA.dispatchWorkgroups(129, 249, 25);
    const jPSlDU = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "LkvjRYyYFSZ",
        layout: "auto"
    });
    POUQJjVmcIcKPbdXrcUy.setVertexBuffer(0, nXJaQ);
    const QktoqWjFVBYpP = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "vertex",
        code: LvtWBoy
    });
    const jAUYOfduhoBz = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r8unorm",
        label: "MFbdxzPjgLuKdXPo",
        size: {
            width: 355,
            height: 436,
            depthOrArrayLayers: 9
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8unorm"]
    });
    const bNItYNLkaUnjfcIadFy = jAUYOfduhoBz.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "r8unorm",
        label: "SqgmxBXZMKXG"
    });
    const TLJMkuVlHQIbMUBCng = IPAnHYfJEXGJOAj.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.8281388929899334,
                g: 1.0337358198372522,
                b: 0.06187353243122784,
                a: 1.1050004053030613
            },
            loadOp: "load",
            storeOp: "store",
            view: bNItYNLkaUnjfcIadFy,
            depthSlice: 1
        }],
        label: "QQCJbuZFZXMSegwuHK",
        maxDrawCount: 2566305370,
        occlusionQuerySet: uwVqF
    });
    pvGGUwkA.setBindGroup(0, kevznkZhU);
    pvGGUwkA.setPipeline(VKMkssmOvcDgcQnSgKd);
    const pMhlP = sgBiML.label
    POUQJjVmcIcKPbdXrcUy.end();
    const kABKNHKRfCygtonkRdnf = lVQHpJMPoKyGSWgEZfg.limits
    const BcjxJpOmJEBSnQWsUcsB = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "IdMXaaDXbtDdy",
        size: {
            width: 304,
            height: 291,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgb10a2unorm"]
    });
    const rTuCZloobyoRExNKpy = BcjxJpOmJEBSnQWsUcsB.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 4,
        format: "rgb10a2unorm",
        label: "bNDyUdLINKZniLdaXnRX"
    });
    const PpxyCFuDJAkVggwteXo = kUKhlzbJRLEEePA.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2719586459677616,
                g: 1.3050780137435642,
                b: 1.0298670681042819,
                a: 0.26371713398575647
            },
            loadOp: "clear",
            storeOp: "discard",
            view: rTuCZloobyoRExNKpy,
            depthSlice: 0
        }],
        label: "kwODoCpwKdpbJJIFuDr",
        maxDrawCount: 288139592,
        occlusionQuerySet: XAzpIeb
    });
    const NsuoKxCd = lVQHpJMPoKyGSWgEZfg.label
    const nMoncMulpkBiZbjQX = lHbGzPycCamusUawjF.getBindGroupLayout(0);
    const zhzVKodTUE = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const CYfNRtiUInRLL = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "lEwTBEoSOd"
    });
    const hwfqvtvQSBajr = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16float",
        label: "yTwALrHQearaWjrDPA",
        size: {
            width: 1415,
            height: 2752,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg16float"]
    });
    const Bogqi = hwfqvtvQSBajr.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "LpnHingRUJP"
    });
    const EFbLpirmbxlUjfl = CYfNRtiUInRLL.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.970253610829564,
                g: 0.2708740169179702,
                b: 0.42477304489651013,
                a: 1.2525044024656578
            },
            loadOp: "load",
            storeOp: "discard",
            view: Bogqi
        }],
        label: "OQeqsPdv",
        maxDrawCount: 2169045950,
        occlusionQuerySet: LzFdbWawxSkrf
    });
    const zhbbs = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "jDdTC"
    });
    const FtTQflKoXLpO = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "ZWdCh",
        size: {
            width: 831,
            height: 188,
            depthOrArrayLayers: 22
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16float"]
    });
    const HsshYQeCaTqMAfczA = FtTQflKoXLpO.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "rg16float",
        label: "LidDrSUsGplGkEDWbKgQ"
    });
    const edrCFWsTQWpyVwDNM = zhbbs.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.90390610581292,
                g: 0.08108699674948538,
                b: 0.6268331135613641,
                a: 0.5487531541833857
            },
            loadOp: "load",
            storeOp: "store",
            view: HsshYQeCaTqMAfczA,
            depthSlice: 0
        }],
        label: "rZiPqCDzOhEMmQURWk",
        maxDrawCount: 2780162684,
        occlusionQuerySet: sgBiML
    });
    const AkwumtewCUDAgepN = navigator.gpu.wgslLanguageFeatures
    const cZTiAZlxz = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "esTJesCbPduxrINi"
    });
    const iVqtZTsb = cZTiAZlxz.beginComputePass({
        label: "IhGFWcG"
    });
    const ZotUXIpBnjtqnzwNpF = navigator.gpu.wgslLanguageFeatures
    VtjxzdUUOIETA.setPipeline(XyuGuol);
    VtjxzdUUOIETA.draw(6);
    const BAQKrleahfF = cEveGHtIgJKn.label
    const ZzueeACWMuo = bNItYNLkaUnjfcIadFy.label
    const ZJdvTj = YZukObrhCIzMDpwJ.getBindGroupLayout(0);
    const AAKyPQ = CmTviNIumgXvJQkcaMBO.isFallbackAdapter
    const ZbZeYDOjZngcDtuUoav = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "KbsBLaqdfzxIZAH",
        layout: "auto"
    });
    const FKkNgoLeynttWcw = await navigator.gpu.getPreferredCanvasFormat();
    const GVBrV = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "CzHwZvNQGbJM",
        mappedAtCreation: true,
        size: 9211148,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX | GPUBufferUsage.INDIRECT
    });
    iVqtZTsb.setPipeline(lHbGzPycCamusUawjF);
    iVqtZTsb.setBindGroup(0, InzjAI);
    pvGGUwkA.dispatchWorkgroups(57, 43, 42);
    dRcQpsmrKaVggRQ.submit([TTHWuhKNP]);
    const cOeQRdAL = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "rqJRLPQGnLvvlvTY"
    });
    const UAMeuiqBmeiLLfiMJ = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "bgra8unorm",
        label: "McOTXPjzisZDRqlLBn",
        size: {
            width: 885,
            height: 672,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["bgra8unorm-srgb"]
    });
    const ZUGlGLSzUcwrPW = UAMeuiqBmeiLLfiMJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 3,
        format: "bgra8unorm",
        label: "DXBnDiVN"
    });
    const xhOqymslSXl = cOeQRdAL.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.3123440983764594,
                g: 1.3027783427030786,
                b: 0.38946846230461785,
                a: 1.6752978465127926
            },
            loadOp: "load",
            storeOp: "discard",
            view: ZUGlGLSzUcwrPW,
            depthSlice: 0
        }],
        label: "yEGvgSjohDD",
        maxDrawCount: 1288914110,
        occlusionQuerySet: XCyTHiTcnOYhcRvOE
    });
    const tfZikiCsukCHnH = XCyTHiTcnOYhcRvOE.label
    const MLSpA = lVQHpJMPoKyGSWgEZfg.features
    const aMnsvMVkWwD = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: TUWzcAshM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm-srgb",
                writeMask: GPUColorWrite.ALPHA | GPUColorWrite.ALL | GPUColorWrite.BLUE | GPUColorWrite.GREEN
            }]
        },
        label: "deuxFC",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "line-list"
        },
        vertex: {
            entryPoint: "main",
            module: TmDkXdrrXHpbW
        }
    });
    const wzOLaWJwQdvG = CdrlGNhFF.info
    const sZFWSOOIDzr = CdrlGNhFF.features
    const PIGxNbExeoKurulu = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "lQsiEKjDKwEkS"
    });
    const KLslKxrevA = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "IdFGIh",
        size: {
            width: 455,
            height: 577,
            depthOrArrayLayers: 62
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgb10a2unorm"]
    });
    const OkepY = KLslKxrevA.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "jGLlCWmHeEwmEDzGYspA"
    });
    const CkZWlTcopZbwB = PIGxNbExeoKurulu.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.2266632262606476,
                g: 0.9538012964249301,
                b: 0.7986389066146735,
                a: 0.8878487382153664
            },
            loadOp: "load",
            storeOp: "discard",
            view: OkepY,
            depthSlice: 48
        }],
        label: "CpJQKJcyeHnERteb",
        maxDrawCount: 2446180978,
        occlusionQuerySet: uwVqF
    });
    cEveGHtIgJKn.writeBuffer(WscGqxxGCpyL, 24, FqmsyrZn);
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, IvWkORyupeZKxRCRP);
    const wrnoQUDcaMgzEIRPiX = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "jPSlDU.bindGroup",
        layout: jPSlDU.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const waZCtiYwO = OAbrwIDXibOJGFv.label
    const oSiKQsiYwRPvcaGzjL = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "CXfnzHaY"
    });
    const ETUgqgCOvNTl = oSiKQsiYwRPvcaGzjL.beginComputePass({
        label: "WzUqoOneY"
    });
    const eUgwTcaIPXYMGtSHU = lVQHpJMPoKyGSWgEZfg.features
    const OIymxnqVJBV = CYfNRtiUInRLL.label
    const jeZkIiPW = zhzVKodTUE.isFallbackAdapter
    const kaEpmBJktgPYW = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "fragment",
        code: fzkKGyttcFMjdpWE
    });
    const IYGoNCXYgUlRWdvEbRA = lVQHpJMPoKyGSWgEZfg.label
    CkZWlTcopZbwB.end();
    const WKFaHreYyrs = PIGxNbExeoKurulu.finish();
    const jFIzzzo = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "cayzyd"
    });
    const ONJLpvkyuSaGhgq = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "PYGXgg",
        size: {
            width: 1793,
            height: 3372,
            depthOrArrayLayers: 51
        },
        mipLevelCount: 11,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2unorm"]
    });
    const UozeK = ONJLpvkyuSaGhgq.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "UuCylZbCtqjykPCk"
    });
    const vcobjtECbBPV = jFIzzzo.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.33699476421869257,
                g: 1.473807272664492,
                b: 0.729253274089054,
                a: 0.3281336994206594
            },
            loadOp: "clear",
            storeOp: "discard",
            view: UozeK
        }],
        label: "XhtTXNcEnnvSteXP",
        maxDrawCount: 3777508141,
        occlusionQuerySet: sgBiML
    });
    const BYBvtfENeLy = XAzpIeb.label
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 32, sSbiC);
    const GWowvjEUFdk = zhbbs.label
    const dunLAbuajQvNivVt = qpQUbfZULlmNGTRCLLCJ.label
    const IvisAifj = navigator.gpu.wgslLanguageFeatures
    const RzFavIRyqPQysw = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: kaEpmBJktgPYW,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "constant"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALL | GPUColorWrite.RED
            }]
        },
        label: "aYqZMfvrcNdavLFFfl",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: vTaqHWpEQ
        }
    });
    edrCFWsTQWpyVwDNM.setPipeline(RzFavIRyqPQysw);
    PpxyCFuDJAkVggwteXo.setVertexBuffer(0, nXJaQ);
    const uYbdCI = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 2884,
        label: "zxUicqxdqPji",
        type: "occlusion"
    });
    cEveGHtIgJKn.submit([nLzss]);
    const SEMnBgCmZJrXrfomkq = lVQHpJMPoKyGSWgEZfg.queue
    const jspkXRSRDvt = sWgpRrMaGDVyLQGiOwpr.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba32uint",
        label: "vnhRSsK"
    });
    vcobjtECbBPV.setVertexBuffer(0, nXJaQ);
    const cNsZYPYVYpQrIRQ = lVQHpJMPoKyGSWgEZfg.createQuerySet({
        count: 3134,
        label: "jcJpsKQTmDZFSil",
        type: "occlusion"
    });
    const YeAcRJVLlB = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const Pguwf = VKMkssmOvcDgcQnSgKd.getBindGroupLayout(0);
    const vtlwlaxxL = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2uint",
        label: "FWCKKoy",
        size: {
            width: 87,
            height: 57,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_DST,
        viewFormats: ["rgb10a2uint"]
    });
    const fvMBK = cEveGHtIgJKn.label
    const ULxREFNTgdKaOw = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "ePBwchxMQdKLs",
        layout: "auto"
    });
    const fwywF = ZbZeYDOjZngcDtuUoav.getBindGroupLayout(0);
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, KoVvoGAObEvraC);
    const gRnAz = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "ZbZeYDOjZngcDtuUoav.bindGroup",
        layout: ZbZeYDOjZngcDtuUoav.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    pvGGUwkA.end();
    const QzZlKQEMJU = CmTviNIumgXvJQkcaMBO.features
    const YCXNynzsSqaCE = qxvam.type
    edrCFWsTQWpyVwDNM.draw(1);
    const OUcqxUPbcgbei = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "avwnJgBy",
        size: {
            width: 428,
            height: 384,
            depthOrArrayLayers: 11
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg8unorm"]
    });
    const KhnluHzhbBxqfrOX = OUcqxUPbcgbei.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg8unorm",
        label: "FfkpVpcsvDHmYHlWZ"
    });
    const rGIddVqKij = oSAnOaWDltF.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.4393814814475121,
                g: 1.3279457342994898,
                b: 1.6567993341216423,
                a: 0.782723218815526
            },
            loadOp: "load",
            storeOp: "discard",
            view: KhnluHzhbBxqfrOX,
            depthSlice: 8
        }],
        label: "chNGewhqfzhJBD",
        maxDrawCount: 2367572971,
        occlusionQuerySet: jTpvvjSqRWKhEI
    });
    ETUgqgCOvNTl.setPipeline(VKMkssmOvcDgcQnSgKd);
    ETUgqgCOvNTl.setBindGroup(0, MgQZNlwb);
    iVqtZTsb.dispatchWorkgroups(71, 157, 47);
    TLJMkuVlHQIbMUBCng.end();
    const uWIeLVDU = IPAnHYfJEXGJOAj.finish();
    cEveGHtIgJKn.writeBuffer(WscGqxxGCpyL, 0, tJAIqMgpqIZNfNB);
    const GUtINOoyY = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "ZbZeYDOjZngcDtuUoav.bindGroup",
        layout: ZbZeYDOjZngcDtuUoav.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const tJwvusyxBjzoVkuM = uYbdCI.count
    dRcQpsmrKaVggRQ.submit([uWIeLVDU]);
    const FLaIOXNsUUOqCBvpKt = navigator.gpu.wgslLanguageFeatures
    const EwoXotE = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: IKXehgrbaGXWo,
            targets: [{
                blend: {
                    alpha: {
                        operation: "add",
                        dstFactor: "zero",
                        srcFactor: "one-minus-constant"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "src-alpha-saturated"
                    }
                },
                format: "rgb10a2unorm",
                writeMask: GPUColorWrite.BLUE | GPUColorWrite.GREEN | GPUColorWrite.ALPHA
            }]
        },
        label: "IXdVXZyeRGWwTceNB",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: QktoqWjFVBYpP
        }
    });
    vcobjtECbBPV.setPipeline(EwoXotE);
    vcobjtECbBPV.draw(7);
    const CDyEozWXiSsKpeR = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "Ustrk"
    });
    const LocNNxGfzGVUNdMbgzz = CDyEozWXiSsKpeR.beginComputePass({
        label: "wpkTzhIownCkcEgUH"
    });
    xhOqymslSXl.end();
    const PrkqIW = cOeQRdAL.finish();
    const QVQYXhGsRo = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "uPjJIkOsfJ",
        mappedAtCreation: true,
        size: 10363076,
        usage: GPUBufferUsage.STORAGE | GPUBufferUsage.UNIFORM | GPUBufferUsage.INDEX
    });
    const EVqcrmzyRgjUUQMpF = lHbGzPycCamusUawjF.label
    const FwDJjtOpUNUzZRdSO = lVQHpJMPoKyGSWgEZfg.queue
    const xoNBPzsSwaDSgVeBc = jTpvvjSqRWKhEI.count
    iVqtZTsb.setBindGroup(0, InzjAI);
    iVqtZTsb.setPipeline(jFGuyNvoX);
    LocNNxGfzGVUNdMbgzz.setBindGroup(0, aiWPxYlSedxRBepLf);
    iVqtZTsb.dispatchWorkgroups(205, 218, 51);
    const lxthoycxnLWkMncnsxQm = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg16sint",
        label: "AVsGLklFDuk",
        size: {
            width: 3200,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16sint"]
    });
    const ciLSSqLxyEwPGjdwGki = LzFdbWawxSkrf.label
    const Eauhidc = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "uaCVyL",
        layout: "auto"
    });
    const DGWdIx = OAbrwIDXibOJGFv.label
    const eTtyFoCVuvSLsDc = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "UAiiB",
        layout: "auto"
    });
    LocNNxGfzGVUNdMbgzz.end();
    const FcuPXpDoWLdBZdSicZB = CDyEozWXiSsKpeR.finish();
    cEveGHtIgJKn.submit([WKFaHreYyrs]);
    const vZyILqTSGjbd = lHbGzPycCamusUawjF.getBindGroupLayout(0);
    const PYwkjbDxqsSDVkw = await navigator.gpu.getPreferredCanvasFormat();
    const OJjLCsIghCoVFJ = rGIddVqKij.label
    const SqlUfSVB = hUrmhenS.label
    const eMssmlp = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "gDJhEFY"
    });
    const FyQkOREwWMwgEx = eMssmlp.beginComputePass({
        label: "GchBNomUtM"
    });
    const XAofujbyM = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "one",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "rgba16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "tdPJoda",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: QktoqWjFVBYpP
        }
    });
    const Pkbkp = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "OtynJQfWFDXsIcZ",
        mappedAtCreation: false,
        size: 185410992,
        usage: GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
    });
    rGIddVqKij.setPipeline(yABRfjIsPBVWU);
    rGIddVqKij.draw(4);
    const rMgCDFxqu = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "compute",
        code: eiUieSCga
    });
    const tBejiUbwQgzohlD = lVQHpJMPoKyGSWgEZfg.limits
    const pQtgpsMdKk = lVQHpJMPoKyGSWgEZfg.queue
    const mUFwueFYNH = wxzOmKgMUQEzmrQgye.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "yceWkMNSCEqkSUIaAf"
    });
    FwDJjtOpUNUzZRdSO.writeBuffer(WscGqxxGCpyL, 0, fnGnHQClKzfFJHJSQMy);
    const XpXyf = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "ZbZeYDOjZngcDtuUoav.bindGroup",
        layout: ZbZeYDOjZngcDtuUoav.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const qHDokgknlSIoUS = JpjFRZzJuYbkhR.label
    const YvJIClGeRWWOiBPrPznq = CmTviNIumgXvJQkcaMBO.limits
    ETUgqgCOvNTl.setBindGroup(0, MgQZNlwb);
    iVqtZTsb.setBindGroup(0, aiWPxYlSedxRBepLf);
    const kmYpBDrjUZGOvGnKLEO = await navigator.gpu.getPreferredCanvasFormat();
    const ZyvdZ = cNsZYPYVYpQrIRQ.count
    const LBlAIFSUwMA = lVQHpJMPoKyGSWgEZfg.limits
    const yCvfIZdcjwFcmWxi = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "compute",
        code: lIjlxCBu
    });
    const VrzvnlCzJWN = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: kaEpmBJktgPYW,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-src",
                        srcFactor: "one-minus-src"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.GREEN | GPUColorWrite.RED | GPUColorWrite.ALL | GPUColorWrite.ALPHA
            }]
        },
        label: "SAuAhFYpCucv",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: QktoqWjFVBYpP
        }
    });
    const AkzPuqdUsoIMxDIN = zhzVKodTUE.features
    const vBnExhSYr = zhzVKodTUE.info
    FyQkOREwWMwgEx.setPipeline(jFGuyNvoX);
    FyQkOREwWMwgEx.setBindGroup(0, aiWPxYlSedxRBepLf);
    FyQkOREwWMwgEx.dispatchWorkgroups(195, 2, 40);
    const EBZEQ = uYbdCI.label
    const XwEXSTalZ = lVQHpJMPoKyGSWgEZfg.label
    const bxqLoYqCP = Bogqi.label
    const bczAoOqwB = cNsZYPYVYpQrIRQ.type
    const YImPUoVMG = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "compute",
        code: KPxrIdbvWUxxUNX
    });
    const ofDlX = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: yCvfIZdcjwFcmWxi
        },
        label: "lmSHkJYYetYHB",
        layout: "auto"
    });
    const QhIBPrHBxWfehnzjwJNQ = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "HLfgqVlFmJFZxP"
    });
    const oArjgjCUrnSWNE = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: IKXehgrbaGXWo,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "dst",
                        srcFactor: "one-minus-dst-alpha"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.RED | GPUColorWrite.BLUE | GPUColorWrite.ALL
            }]
        },
        label: "XzraBoAsMHxRKxUtKAGV",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: TmDkXdrrXHpbW
        }
    });
    const HsYlHFtENkK = ZUGlGLSzUcwrPW.label
    const tQVddlQtVTHFsPWAYvY = lVQHpJMPoKyGSWgEZfg.limits
    const MYyZwtYXdCUEC = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: TUWzcAshM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "zero",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rgba8unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "YFNPdpRzrRBOvKhtjnXa",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "point-list"
        },
        vertex: {
            entryPoint: "main",
            module: QktoqWjFVBYpP
        }
    });
    const cgvlmrLwLk = lVQHpJMPoKyGSWgEZfg.label
    const FsIUgkBxeYbHkKrzOA = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgba8snorm",
        label: "EzwxRLfhzePxU",
        size: {
            width: 320,
            height: 2163,
            depthOrArrayLayers: 13
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba8snorm"]
    });
    vcobjtECbBPV.end();
    iVqtZTsb.setBindGroup(0, aiWPxYlSedxRBepLf);
    const qmzSDapaWToZCYo = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "SQdJPuXh",
        size: {
            width: 3564,
            height: 3511,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rgba16float"]
    });
    const KBWGLQggLnMmytY = qmzSDapaWToZCYo.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "hqRgIpvrUQyzETVpN"
    });
    const olLHSdaeNyTyfz = QhIBPrHBxWfehnzjwJNQ.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.32381493058579136,
                g: 0.1572727652688728,
                b: 1.3531283722489005,
                a: 0.6674183238706981
            },
            loadOp: "clear",
            storeOp: "store",
            view: KBWGLQggLnMmytY
        }],
        label: "VNkLmFUCDZRhZuYBCrtB",
        maxDrawCount: 1857243713,
        occlusionQuerySet: LzFdbWawxSkrf
    });
    const qmMmAyaOOv = FyQkOREwWMwgEx.label
    const KyIAvRDhpLEue = lVQHpJMPoKyGSWgEZfg.limits
    const fQYXwGKLrgiJ = iVqtZTsb.label
    iVqtZTsb.setBindGroup(0, aiWPxYlSedxRBepLf);
    iVqtZTsb.setPipeline(volfxWeMWYTtw);
    const NDqejn = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "WiFFAIckTnyTDzp"
    });
    const LGlHqwQHClDUYBjWxr = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba16sint",
        label: "HuxrxMOuJZtme",
        size: {
            width: 333,
            height: 849,
            depthOrArrayLayers: 30
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rgba16sint"]
    });
    EFbLpirmbxlUjfl.setVertexBuffer(0, nXJaQ);
    const xXrddcmdqfEOKykgxm = FyQkOREwWMwgEx.label
    const htiSo = YeAcRJVLlB.isFallbackAdapter
    VtjxzdUUOIETA.setPipeline(VrzvnlCzJWN);
    const SYzjaTEMwCr = sgBiML.type
    const cZytEoFojoDSBLnn = sgBiML.type
    const HWldEeAMXtxtlAsxE = NEkPhqdfuCuDxkXm.label
    const TmXBTWGAWH = await navigator.gpu.getPreferredCanvasFormat();
    const rsyPMZD = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "iocUPrAcRSmEDPZUrWZ",
        size: {
            width: 974,
            height: 1994,
            depthOrArrayLayers: 61
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const rmUvtikaZuZunbbrZ = rsyPMZD.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 5,
        format: "rgb10a2unorm",
        label: "dKGRRqW"
    });
    const GReTunbShTo = NDqejn.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.5842649661708519,
                g: 1.3089769870110735,
                b: 1.2087712903616645,
                a: 0.08998858444489177
            },
            loadOp: "load",
            storeOp: "discard",
            view: rmUvtikaZuZunbbrZ
        }],
        label: "uUXfjOIABoWOjMui",
        maxDrawCount: 1922360935,
        occlusionQuerySet: jTpvvjSqRWKhEI
    });
    const OgdqxTqAPX = qmzSDapaWToZCYo.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "yVpidkCT"
    });
    const rblFZP = uYbdCI.type
    const YFbfFcHEwOsokZdWxe = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rgba16float",
        label: "NBBSLkkaRXXtQOzY",
        size: {
            width: 2426,
            height: 3427,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba16float"]
    });
    const CJGwvaDJWIFMtsk = YFbfFcHEwOsokZdWxe.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "bEpgOzWYQIGo"
    });
    const vLDzokegRFNVjacAeO = jFIzzzo.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.7466729739610574,
                g: 1.1247003085160403,
                b: 1.5134739498251761,
                a: 0.261514019011289
            },
            loadOp: "clear",
            storeOp: "store",
            view: CJGwvaDJWIFMtsk
        }],
        label: "rWITgfVUoGWJ",
        maxDrawCount: 881205205,
        occlusionQuerySet: gbusveZT
    });
    const lbJGewjWQgseJpwpSfDz = lVQHpJMPoKyGSWgEZfg.label
    const oWSWLXYoV = jFGuyNvoX.getBindGroupLayout(0);
    const LMdICVKVRsksvHtmF = kxjyRTWkFMSYqTB.features
    const QJlpPTjCItcZl = ONJLpvkyuSaGhgq.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 6,
        baseMipLevel: 3,
        format: "rgb10a2unorm",
        label: "mNXgLZPdaAJK"
    });
    const UKygmeS = EFbLpirmbxlUjfl.label
    const fvOEVHVONuDmetnk = UAMeuiqBmeiLLfiMJ.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 5,
        baseMipLevel: 0,
        format: "bgra8unorm-srgb",
        label: "BaHGnq"
    });
    const uynWrSBvmZQiXhNLhBNU = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const LeibkQgfaIeuIb = ETUgqgCOvNTl.label
    iVqtZTsb.setBindGroup(0, byyZqsdfTIb);
    iVqtZTsb.setPipeline(jPSlDU);
    iVqtZTsb.setBindGroup(0, wrnoQUDcaMgzEIRPiX);
    iVqtZTsb.dispatchWorkgroups(138, 64, 64);
    const PMnOOvOOpihKUtTnHH = lVQHpJMPoKyGSWgEZfg.queue
    const IPXJUgNLZCcPJgcSqwZy = kxjyRTWkFMSYqTB.features
    iVqtZTsb.setBindGroup(0, wrnoQUDcaMgzEIRPiX);
    iVqtZTsb.setPipeline(volfxWeMWYTtw);
    const QYisQsPhajVsQQ = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "LQlorszIEsNjXSBaAe"
    });
    const qOsHtHnYBzkqaxbCZWU = QYisQsPhajVsQQ.beginComputePass({
        label: "WOEYJZ"
    });
    const yUytXklebXHpUYvvaO = YeAcRJVLlB.isFallbackAdapter
    PpxyCFuDJAkVggwteXo.setPipeline(EwoXotE);
    iVqtZTsb.setBindGroup(0, byyZqsdfTIb);
    const xIcytGV = kxjyRTWkFMSYqTB.limits
    const PqlTQfSagf = vLDzokegRFNVjacAeO.label
    const jPSvoDWhNdbvc = await navigator.gpu.getPreferredCanvasFormat();
    const sLFKrGmAzlDQ = XAzpIeb.count
    const yZNfibbp = JJYDO.getBindGroupLayout(0);
    rGIddVqKij.draw(8);
    const bTsmXXFqi = CmTviNIumgXvJQkcaMBO.limits
    const rgDfE = lVQHpJMPoKyGSWgEZfg.limits
    const XSKmPXX = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "depth24plus-stencil8",
        label: "vrQizypkVvLQCcadES",
        size: {
            width: 3460,
            height: 3445,
            depthOrArrayLayers: 57
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC,
        viewFormats: ["depth24plus-stencil8"]
    });
    const eiMURiEgwe = NEkPhqdfuCuDxkXm.label
    const cWlDNpbffiaQy = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "nzKspXMbNbWepg"
    });
    const iXfZHL = cWlDNpbffiaQy.beginComputePass({
        label: "ZxPgbXfZFdSm"
    });
    qOsHtHnYBzkqaxbCZWU.setBindGroup(0, GUtINOoyY);
    const KluvOMcNII = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "ztYVYYxakoQd"
    });
    const KtpOyPHVo = qxvam.type
    const KmgitnNoOovAoGa = yABRfjIsPBVWU.label
    const ASBAsgh = jTpvvjSqRWKhEI.label
    const TzUxCVqgIFHcxcaB = XAzpIeb.label
    const zQdRvutRM = SEMnBgCmZJrXrfomkq.label
    const zqxLNnnElnNnYpxSKNbe = sgBiML.count
    const AIVreFrDokVzyoTOtCg = rsyPMZD.createView({
        aspect: "all",
        dimension: "2d-array",
        arrayLayerCount: 39,
        baseArrayLayer: 10,
        mipLevelCount: 9,
        baseMipLevel: 0,
        format: "rgb10a2unorm",
        label: "AhGFPs"
    });
    const rUcnCLrP = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "mHsXne"
    });
    const NtKDLCYvYPqSBqsB = GReTunbShTo.label
    const mXyNnq = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: yCvfIZdcjwFcmWxi
        },
        label: "nrnWxWhjdePKFmNuXn",
        layout: "auto"
    });
    const EGTrMvpCByhzUW = olLHSdaeNyTyfz.label
    const FKkYULH = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg8unorm",
        label: "UHaRjxeXyHsVd",
        size: {
            width: 846,
            height: 829,
            depthOrArrayLayers: 5
        },
        mipLevelCount: 10,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg8unorm"]
    });
    const eVClvJjldbkoTtVYn = FKkYULH.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rg8unorm",
        label: "WQeIpKezBLXbR"
    });
    const lLdkIFdFYnaClrePMmQH = KluvOMcNII.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5622055064336466,
                g: 1.5505739793043882,
                b: 0.880156756636187,
                a: 1.5904208054334807
            },
            loadOp: "clear",
            storeOp: "discard",
            view: eVClvJjldbkoTtVYn,
            depthSlice: 0
        }],
        label: "SmLZCiyR",
        maxDrawCount: 41430104,
        occlusionQuerySet: jTpvvjSqRWKhEI
    });
    const eacaItySSmcrAwG = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "lKfttQZYILVdWJ",
        mappedAtCreation: false,
        size: 28276868,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const ddHnI = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: TUWzcAshM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "max",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "add",
                        dstFactor: "src-alpha",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "bgra8unorm-srgb",
                writeMask: GPUColorWrite.GREEN
            }]
        },
        label: "fjgXawUeRIzAuIXoNb",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "back",
            frontFace: "ccw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: TmDkXdrrXHpbW
        }
    });
    olLHSdaeNyTyfz.end();
    const KJPMFriX = QhIBPrHBxWfehnzjwJNQ.finish();
    const rvxSPpjLDO = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rgba8uint",
        label: "ObiTUNdyGXz",
        size: {
            width: 2823,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rgba8uint"]
    });
    ETUgqgCOvNTl.setBindGroup(0, MgQZNlwb);
    const XkBwmfqI = lxthoycxnLWkMncnsxQm.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16sint",
        label: "VrOVvpwMhjS"
    });
    const ojUHUyTkjobzPMnfKp = lLdkIFdFYnaClrePMmQH.label
    const CsvIeBEfuIeIpuZ = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: rMgCDFxqu
        },
        label: "uRvntOfxxbZrGmEzdw",
        layout: "auto"
    });
    const oPhCyAPi = sgBiML.count
    const aSlcDCRMSlGofaVK = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const TOVxwFtax = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "subtract",
                        dstFactor: "src-alpha",
                        srcFactor: "src"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "rg16float",
                writeMask: GPUColorWrite.BLUE
            }]
        },
        label: "HFOuNdIpBTWbdpxKVJiP",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "triangle-list"
        },
        vertex: {
            entryPoint: "main",
            module: vTaqHWpEQ
        }
    });
    EFbLpirmbxlUjfl.setPipeline(TOVxwFtax);
    const csqkUCpt = kxjyRTWkFMSYqTB.info
    const UpQreFArbGwYbD = await navigator.gpu.getPreferredCanvasFormat();
    const tOSZl = lVQHpJMPoKyGSWgEZfg.limits
    const UYTmoYDr = zhbbs.label
    edrCFWsTQWpyVwDNM.draw(7);
    rGIddVqKij.end();
    FwDJjtOpUNUzZRdSO.submit([PrkqIW]);
    const wLxYJASkVbzI = lVQHpJMPoKyGSWgEZfg.limits
    const SrTURNHlTf = aSlcDCRMSlGofaVK.isFallbackAdapter
    const WliiccvXRgCCpNAYl = jFGuyNvoX.getBindGroupLayout(0);
    lLdkIFdFYnaClrePMmQH.setPipeline(yABRfjIsPBVWU);
    const giVteLuPZoLwImrD = dRcQpsmrKaVggRQ.label
    const QVCBRA = iVqtZTsb.label
    const gcEmu = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "rg8sint",
        label: "lgOezKzDwgNkmbYvKJm",
        size: {
            width: 1251,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg8sint"]
    });
    const OPRVtDl = CdrlGNhFF.isFallbackAdapter
    const cHrJI = lVQHpJMPoKyGSWgEZfg.label
    const CSFWBOmCKeAXSETSqR = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "jgWerxSuxOtsnxeImDy",
        mappedAtCreation: true,
        size: 15008924,
        usage: GPUBufferUsage.INDEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.COPY_DST | GPUBufferUsage.STORAGE
    });
    const yvkJngKUkyg = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgba32sint",
        label: "hqrgsxtejZUGVo",
        size: {
            width: 466,
            height: 871,
            depthOrArrayLayers: 58
        },
        mipLevelCount: 6,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST | GPUTextureUsage.STORAGE_BINDING,
        viewFormats: ["rgba32sint"]
    });
    const pppyzDmbzQwbEIvZn = VKMkssmOvcDgcQnSgKd.label
    const mbTJyNvEbnnyWF = navigator.gpu.wgslLanguageFeatures
    const ZDsFqlS = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "gEZshNjNndRkopBMf"
    });
    const dFqNS = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "NeWyzaJM"
    });
    const XTkdCVORGya = FyQkOREwWMwgEx.label
    const LcaEupKkJbfMs = sgBiML.count
    pQtgpsMdKk.writeBuffer(WscGqxxGCpyL, 0, dYPaMq);
    const ieUHSIpBTkGQuGJZvi = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "ULxREFNTgdKaOw.bindGroup",
        layout: ULxREFNTgdKaOw.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const RjHzQSAcS = RzFavIRyqPQysw.label
    const AGkDvkKeUsWhaHoWUWi = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg32float",
        label: "rQLqBHTWjwcIwhlJ",
        size: {
            width: 471,
            height: 399,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 5,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.STORAGE_BINDING | GPUTextureUsage.RENDER_ATTACHMENT,
        viewFormats: ["rg32float"]
    });
    const cqoTQBZGD = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16float",
        label: "RgDZNHumigzKGkagZA",
        size: {
            width: 788,
            height: 1022,
            depthOrArrayLayers: 28
        },
        mipLevelCount: 9,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["r16float"]
    });
    const OOVOPYE = cqoTQBZGD.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 6,
        format: "r16float",
        label: "yuqDoiz"
    });
    const PVgijASOxEPzya = rUcnCLrP.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 0.10348329184565586,
                g: 1.4073688953030632,
                b: 0.5130122475281553,
                a: 0.662727178577114
            },
            loadOp: "clear",
            storeOp: "store",
            view: OOVOPYE,
            depthSlice: 0
        }],
        label: "wqJFWOxeBYeTdXCyQ",
        maxDrawCount: 3955524713,
        occlusionQuerySet: sgBiML
    });
    const YzVEaVnsJV = jFGuyNvoX.getBindGroupLayout(0);
    pQtgpsMdKk.writeBuffer(WscGqxxGCpyL, 0, aiwRZYjAPeYeL);
    const mqvrlPFYgHiTsif = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "mXyNnq.bindGroup",
        layout: mXyNnq.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const tNvTNhN = oSiKQsiYwRPvcaGzjL.label
    edrCFWsTQWpyVwDNM.setVertexBuffer(0, nXJaQ);
    const qwnPNJ = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 4,
        format: "rg16uint",
        label: "gLsfafJg",
        size: {
            width: 3100,
            height: 804,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["rg16uint"]
    });
    const FbuPPVYhPvoVOOmjap = cwfEkzAexKy.label
    const yFTZQxfOMZ = qmzSDapaWToZCYo.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rgba16float",
        label: "mlFMSPbWRa"
    });
    const aQlkFXIWpbsNcruEHgO = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8uint",
        label: "EwUJLBAxZJSixNouPu",
        size: {
            width: 2826,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.COPY_SRC | GPUTextureUsage.COPY_DST,
        viewFormats: ["r8uint"]
    });
    const qBUXo = lHbGzPycCamusUawjF.getBindGroupLayout(0);
    const FwwOXZjhCNsjjUN = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    vLDzokegRFNVjacAeO.setPipeline(UdpDKtFB);
    vLDzokegRFNVjacAeO.draw(2);
    const yQkhgJSkoEEHdhMnlmT = FwwOXZjhCNsjjUN.isFallbackAdapter
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, JZwBppRHKsik);
    const TGxdYJDBwj = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "mXyNnq.bindGroup",
        layout: mXyNnq.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const PPlBjaZAotKt = MYyZwtYXdCUEC.label
    EFbLpirmbxlUjfl.setPipeline(TOVxwFtax);
    const NqqqFoILsSl = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: MvfTVWGzy,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    }
                },
                format: "r16float",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.ALPHA | GPUColorWrite.BLUE
            }]
        },
        label: "YEhEG",
        layout: "auto",
        multisample: {
            count: 4
        },
        primitive: {
            cullMode: "front",
            frontFace: "ccw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: bUGsCNLbjn
        }
    });
    const DJIiFwv = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "vertex",
        code: LexlUhtfX
    });
    const OYNtgPI = jPSlDU.label
    lLdkIFdFYnaClrePMmQH.setPipeline(yABRfjIsPBVWU);
    lLdkIFdFYnaClrePMmQH.end();
    cEveGHtIgJKn.submit([YFwqy]);
    const CShScImjdWmyxRfWaPYj = zhzVKodTUE.isFallbackAdapter
    edrCFWsTQWpyVwDNM.draw(4);
    const iVcmTzQigVcvl = uYbdCI.label
    const OZPlXudfDelKrSaTpnic = PMnOOvOOpihKUtTnHH.label
    const fLubCktfBdpM = await navigator.gpu.getPreferredCanvasFormat();
    const TmaUGEZFmyr = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "1d",
        sampleCount: 1,
        format: "r8snorm",
        label: "mTlivbzTkJP",
        size: {
            width: 927,
            height: 1,
            depthOrArrayLayers: 1
        },
        mipLevelCount: 1,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r8snorm"]
    });
    iXfZHL.end();
    const VbCnsRhc = PpxyCFuDJAkVggwteXo.label
    const mrOYTbnwuoPPpHU = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const UUzEgKOF = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "jpXouwhWhHpeKaGhbxO"
    });
    const diqQyQIGTeQvTK = uynWrSBvmZQiXhNLhBNU.isFallbackAdapter
    const rYLIDHeAQRhhSj = uYbdCI.count
    const qFGHptLfzzDqm = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "2d",
        sampleCount: 1,
        format: "rg16float",
        label: "JAfHQUlTSTdTcycOhXV",
        size: {
            width: 2887,
            height: 1890,
            depthOrArrayLayers: 16
        },
        mipLevelCount: 7,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST,
        viewFormats: ["rg16float"]
    });
    const eXyIRhKhQGiJUGYqcwX = qFGHptLfzzDqm.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 1,
        format: "rg16float",
        label: "bNyRldUSrCGTsv"
    });
    const BMDEEMCKEuGBbFOc = oSAnOaWDltF.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.670795269961717,
                g: 1.429420490122843,
                b: 0.8135933233708887,
                a: 0.38632579849468396
            },
            loadOp: "clear",
            storeOp: "discard",
            view: eXyIRhKhQGiJUGYqcwX
        }],
        label: "hwSVTwPZbxNoX",
        maxDrawCount: 1196893773,
        occlusionQuerySet: XAzpIeb
    });
    PpxyCFuDJAkVggwteXo.end();
    const VRlncFydTJpCotCvYrK = VKMkssmOvcDgcQnSgKd.label
    FyQkOREwWMwgEx.setBindGroup(0, aiWPxYlSedxRBepLf);
    FyQkOREwWMwgEx.setPipeline(VKMkssmOvcDgcQnSgKd);
    iVqtZTsb.setBindGroup(0, byyZqsdfTIb);
    FyQkOREwWMwgEx.dispatchWorkgroups(83, 11, 23);
    const ObjVTsTXZGABr = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const bgxlmEKjZwMFLdUTbJ = pQtgpsMdKk.label
    iVqtZTsb.setBindGroup(0, byyZqsdfTIb);
    const toEwMyxCiftTstRaxwOv = lVQHpJMPoKyGSWgEZfg.createCommandEncoder({
        label: "LUXsw"
    });
    const ThrTZAoqOzMkmWWhG = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "FgMkDYcCKVwm",
        mappedAtCreation: true,
        size: 50330380,
        usage: GPUBufferUsage.INDIRECT | GPUBufferUsage.COPY_DST
    });
    dRcQpsmrKaVggRQ.writeBuffer(WscGqxxGCpyL, 0, vzMuXGFMkjFjdUSPT);
    const uRbmBmKVHi = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "Eauhidc.bindGroup",
        layout: Eauhidc.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    FyQkOREwWMwgEx.setBindGroup(0, MgQZNlwb);
    const DIkUQsmvEyMssQ = Bogqi.label
    const XPGBXIlHjSduOeHH = hwfqvtvQSBajr.createView({
        aspect: "all",
        dimension: "2d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16float",
        label: "pSoWfF"
    });
    const HAEZCXWzP = lVQHpJMPoKyGSWgEZfg.limits
    const WiUCSUlqxRjkpbkKwr = CsvIeBEfuIeIpuZ.getBindGroupLayout(0);
    SEMnBgCmZJrXrfomkq.writeBuffer(WscGqxxGCpyL, 0, TCsUDcIa);
    const niqwQkfAVPoDJmfp = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "VKMkssmOvcDgcQnSgKd.bindGroup",
        layout: VKMkssmOvcDgcQnSgKd.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const IdMJItUIqiEGpRGcE = lVQHpJMPoKyGSWgEZfg.queue
    const AKNZXlfcZJHajlKmA = FwwOXZjhCNsjjUN.info
    const KptFkbwTIdlfk = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rgb10a2unorm",
        label: "pWswgWvqlZdxqpcokI",
        size: {
            width: 847,
            height: 638,
            depthOrArrayLayers: 8
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.RENDER_ATTACHMENT | GPUTextureUsage.COPY_DST | GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rgb10a2unorm"]
    });
    const TAPGRzIzXbipzurjGbWP = KptFkbwTIdlfk.createView({
        aspect: "all",
        dimension: "3d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 2,
        format: "rgb10a2unorm",
        label: "hNcDEA"
    });
    const ZTyqGUTtbGSCdLXXbD = cWlDNpbffiaQy.beginRenderPass({
        colorAttachments: [{
            clearValue: {
                r: 1.5907639539528164,
                g: 1.1967458049614614,
                b: 0.22169549004116962,
                a: 1.3749665145179342
            },
            loadOp: "clear",
            storeOp: "store",
            view: TAPGRzIzXbipzurjGbWP,
            depthSlice: 0
        }],
        label: "ZxSOvhdePw",
        maxDrawCount: 1193984768,
        occlusionQuerySet: LzFdbWawxSkrf
    });
    const mKCLazgYpNxYw = UdpDKtFB.label
    const ODCpRu = await navigator.gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const rrLmd = await navigator.gpu.getPreferredCanvasFormat();
    const mTDVNrgDTCOdWDSuXBG = lHbGzPycCamusUawjF.label
    const LhxQBkwjwZzx = eTtyFoCVuvSLsDc.getBindGroupLayout(0);
    const WRKpFjDDlVSV = uYbdCI.label
    const SjdMsTsbKgu = lVQHpJMPoKyGSWgEZfg.queue
    const BvgETdxZmKI = uwVqF.count
    const ovpvkbdYT = await navigator.gpu.getPreferredCanvasFormat();
    const yvUMZghWkPsAFYiNeNLa = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: YImPUoVMG
        },
        label: "oUWIbHtXJXMQDA",
        layout: "auto"
    });
    const aajVrqCuBPZgCI = YZukObrhCIzMDpwJ.label
    const bFlAZbenFtYIay = lVQHpJMPoKyGSWgEZfg.queue
    const ufzIJzGzSTUtNnGGPV = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    qOsHtHnYBzkqaxbCZWU.setBindGroup(0, gRnAz);
    const NIyAVWjAhLhelCqWwsM = ObjVTsTXZGABr.isFallbackAdapter
    FyQkOREwWMwgEx.setBindGroup(0, MgQZNlwb);
    const mHcOi = navigator.gpu.wgslLanguageFeatures
    const oAtPD = lVQHpJMPoKyGSWgEZfg.label
    const COVWRDxFRYCyE = lVQHpJMPoKyGSWgEZfg.createComputePipeline({
        compute: {
            entryPoint: "main",
            module: uiBwL
        },
        label: "CtKtBbJDC",
        layout: "auto"
    });
    const tVMshxGwQ = await navigator.gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    GReTunbShTo.setPipeline(EwoXotE);
    const VCOOQRCMeTsOExJEmJw = qOsHtHnYBzkqaxbCZWU.label
    PVgijASOxEPzya.end();
    const iAUUrP = rUcnCLrP.finish();
    const KHshkMFSbslc = zhzVKodTUE.isFallbackAdapter
    const YnnUEFDuQzQ = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "oJuOrJrNurN",
        mappedAtCreation: false,
        size: 205811352,
        usage: GPUBufferUsage.MAP_WRITE
    });
    const mvtcYAKaaSOARNen = LzFdbWawxSkrf.type
    ZTyqGUTtbGSCdLXXbD.setVertexBuffer(0, nXJaQ);
    const XtXEkXJh = await navigator.gpu.getPreferredCanvasFormat();
    const LMZLDXWtyH = ULxREFNTgdKaOw.label
    const kSahUcuKuFyH = jTpvvjSqRWKhEI.label
    const sylbAs = gbusveZT.count
    const eFxNPVvhbiTMJRyL = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: TUWzcAshM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "reverse-subtract",
                        dstFactor: "constant",
                        srcFactor: "dst-alpha"
                    },
                    color: {
                        operation: "reverse-subtract",
                        dstFactor: "src",
                        srcFactor: "one-minus-constant"
                    }
                },
                format: "bgra8unorm",
                writeMask: GPUColorWrite.ALL | GPUColorWrite.BLUE
            }]
        },
        label: "fImkIrEr",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "none",
            frontFace: "cw",
            topology: "line-strip"
        },
        vertex: {
            entryPoint: "main",
            module: QktoqWjFVBYpP
        }
    });
    const ubBmeKqxMqOuUAKEogXD = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "r16uint",
        label: "BcEteaZMmXVuZN",
        size: {
            width: 456,
            height: 55,
            depthOrArrayLayers: 39
        },
        mipLevelCount: 2,
        usage: GPUTextureUsage.TEXTURE_BINDING,
        viewFormats: ["r16uint"]
    });
    const QNziJPDjDINUUTBH = XPGBXIlHjSduOeHH.label
    const rLwJMcePvbMSqqFZHz = MYyZwtYXdCUEC.label
    const zzLCuiorXyc = lVQHpJMPoKyGSWgEZfg.features
    const yGGGKegQmcDEpQF = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "IFmjQ",
        mappedAtCreation: true,
        size: 75951572,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT | GPUBufferUsage.VERTEX | GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.INDEX
    });
    const DphpZfGqAOFqkQtLRai = lVQHpJMPoKyGSWgEZfg.label
    const uUVgOolTaxqmfMMxd = lVQHpJMPoKyGSWgEZfg.createShaderModule({
        label: "vertex",
        code: ZIYXA
    });
    const FdcMHdWYKGMWJk = lVQHpJMPoKyGSWgEZfg.createRenderPipeline({
        fragment: {
            entryPoint: "main",
            module: TUWzcAshM,
            targets: [{
                blend: {
                    alpha: {
                        operation: "min",
                        dstFactor: "one",
                        srcFactor: "one"
                    },
                    color: {
                        operation: "subtract",
                        dstFactor: "one-minus-dst-alpha",
                        srcFactor: "dst-alpha"
                    }
                },
                format: "r8unorm",
                writeMask: GPUColorWrite.ALPHA
            }]
        },
        label: "pxmESRPXyZ",
        layout: "auto",
        multisample: {
            count: 1
        },
        primitive: {
            cullMode: "back",
            frontFace: "cw",
            topology: "triangle-strip"
        },
        vertex: {
            entryPoint: "main",
            module: uUVgOolTaxqmfMMxd
        }
    });
    const hmYrXyo = lxthoycxnLWkMncnsxQm.createView({
        aspect: "all",
        dimension: "1d",
        arrayLayerCount: 1,
        baseArrayLayer: 0,
        mipLevelCount: 1,
        baseMipLevel: 0,
        format: "rg16sint",
        label: "moxbq"
    });
    GReTunbShTo.draw(10);
    const QzqDLdBhJaiUz = aSlcDCRMSlGofaVK.features
    const hGmsMJmMaaLeSrQYvA = mrOYTbnwuoPPpHU.isFallbackAdapter
    const aluStykmXHaTAraFNJU = BMDEEMCKEuGBbFOc.label
    edrCFWsTQWpyVwDNM.setVertexBuffer(0, nXJaQ);
    const eITKzoYMTsCZOk = tVMshxGwQ.limits
    const aOJRQPcyYhEY = lVQHpJMPoKyGSWgEZfg.limits
    const SnUgGJBCeZyqKmNJOug = lVQHpJMPoKyGSWgEZfg.queue
    const pytHLZMUFXHcokM = tVMshxGwQ.features
    const TjaJDsdp = cNsZYPYVYpQrIRQ.count
    const EfAJlj = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "tDWzMqee",
        mappedAtCreation: true,
        size: 98619156,
        usage: GPUBufferUsage.VERTEX | GPUBufferUsage.INDIRECT | GPUBufferUsage.STORAGE
    });
    const rJECTWNSrFfdiRYDVQ = volfxWeMWYTtw.getBindGroupLayout(0);
    const dkTtw = navigator.gpu.wgslLanguageFeatures
    const NqmYEjCbb = dFqNS.finish();
    const qkefNoSrJoLRAoRc = CmTviNIumgXvJQkcaMBO.info
    bFlAZbenFtYIay.submit([iAUUrP]);
    const FDkpNOqGgATPEXZOt = PMnOOvOOpihKUtTnHH.label
    const UhYIfZZdaRx = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "UBoUKWriKeXwHOOYNK",
        mappedAtCreation: false,
        size: 65257516,
        usage: GPUBufferUsage.MAP_READ | GPUBufferUsage.COPY_DST
    });
    edrCFWsTQWpyVwDNM.setVertexBuffer(0, nXJaQ);
    const suZVtCNbM = await navigator.gpu.getPreferredCanvasFormat();
    bFlAZbenFtYIay.writeBuffer(UhYIfZZdaRx, 51686624, EZkPZ);
    const gNQln = lVQHpJMPoKyGSWgEZfg.createTexture({
        dimension: "3d",
        sampleCount: 1,
        format: "rg16float",
        label: "iEFaNUsfNWOAXUBqv",
        size: {
            width: 956,
            height: 448,
            depthOrArrayLayers: 15
        },
        mipLevelCount: 3,
        usage: GPUTextureUsage.TEXTURE_BINDING | GPUTextureUsage.COPY_DST | GPUTextureUsage.COPY_SRC,
        viewFormats: ["rg16float"]
    });
    FwDJjtOpUNUzZRdSO.writeBuffer(WscGqxxGCpyL, 0, VWeIxcZQqtWDqGNfAWg);
    const zsHBQNSCDXrAneNO = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "ZbZeYDOjZngcDtuUoav.bindGroup",
        layout: ZbZeYDOjZngcDtuUoav.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const ptQizfmbjSHKslnXTMRH = navigator.gpu.wgslLanguageFeatures
    const nYaayLyiRI = ULxREFNTgdKaOw.getBindGroupLayout(0);
    const jCrOfXrqUtVsyvZmCajS = ULxREFNTgdKaOw.getBindGroupLayout(0);
    bFlAZbenFtYIay.writeBuffer(WscGqxxGCpyL, 0, SslhjgKiSzTFfctQRn);
    const nhDKxgQOy = lVQHpJMPoKyGSWgEZfg.createBindGroup({
        label: "lHbGzPycCamusUawjF.bindGroup",
        layout: lHbGzPycCamusUawjF.getBindGroupLayout(0),
        entries: [{
            binding: 0,
            resource: {
                buffer: WscGqxxGCpyL
            }
        }, {
            binding: 1,
            resource: {
                buffer: nXJaQ
            }
        }]
    });
    const nMruLOKkMgAGifYztjm = lVQHpJMPoKyGSWgEZfg.createBuffer({
        label: "LnOdTKNRNPTSxD",
        mappedAtCreation: false,
        size: 5730108,
        usage: GPUBufferUsage.QUERY_RESOLVE | GPUBufferUsage.VERTEX | GPUBufferUsage.UNIFORM | GPUBufferUsage.STORAGE | GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT
    });
    const vjLwdXhVWjMNb = iVqtZTsb.label

}
main().catch(console.error);