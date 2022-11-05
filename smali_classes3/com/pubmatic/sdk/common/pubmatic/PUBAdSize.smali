.class public final Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;
.super Ljava/lang/Object;
.source "PUBAdSize.java"


# static fields
.field public static final PUBBANNER_SIZE_1024x66:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_1024x90:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_120x20:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_120x60:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_160x600:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_168x28:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_185x30:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_200x120:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_210x175:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_216x36:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_250x250:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_300x250:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_300x50:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_320x100:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_320x416:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_320x50:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_320x53:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_38x38:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_480x32:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_500x500:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_555x206:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_728x90:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_768x66:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

.field public static final PUBBANNER_SIZE_768x90:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;


# instance fields
.field private adHeight:I

.field private adWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x26

    const/16 v6, 0xfa

    const/16 v5, 0x78

    const/16 v4, 0x5a

    const/16 v3, 0x140

    .line 44
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x32

    invoke-direct {v0, v3, v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_320x50:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 45
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x12c

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_300x50:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 46
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x12c

    invoke-direct {v0, v1, v6}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_300x250:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 48
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    invoke-direct {v0, v7, v7}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_38x38:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 51
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x1a0

    invoke-direct {v0, v3, v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_320x416:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 53
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x64

    invoke-direct {v0, v3, v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_320x100:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 55
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x35

    invoke-direct {v0, v3, v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_320x53:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 56
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x1e0

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_480x32:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 59
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x300

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_768x66:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 60
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x300

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_768x90:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 61
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x2d8

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_728x90:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 62
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v4}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_1024x90:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 64
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x400

    const/16 v2, 0x42

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_1024x66:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 66
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_160x600:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 68
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x3c

    invoke-direct {v0, v5, v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_120x60:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 69
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x22b

    const/16 v2, 0xce

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_555x206:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 71
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x1f4

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_500x500:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 73
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    invoke-direct {v0, v6, v6}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_250x250:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 75
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0xd8

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_216x36:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 76
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0xd2

    const/16 v2, 0xaf

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_210x175:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 78
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v5}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_200x120:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 80
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0xb9

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_185x30:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 81
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0xa8

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_168x28:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    .line 82
    new-instance v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    const/16 v1, 0x14

    invoke-direct {v0, v5, v1}, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;-><init>(II)V

    sput-object v0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->PUBBANNER_SIZE_120x20:Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->adWidth:I

    .line 96
    iput p2, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->adHeight:I

    .line 97
    return-void
.end method


# virtual methods
.method public getAdHeight()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->adHeight:I

    return v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/pubmatic/sdk/common/pubmatic/PUBAdSize;->adWidth:I

    return v0
.end method
