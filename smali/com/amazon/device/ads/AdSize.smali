.class public Lcom/amazon/device/ads/AdSize;
.super Ljava/lang/Object;
.source "AdSize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdSize$1;,
        Lcom/amazon/device/ads/AdSize$Scaling;,
        Lcom/amazon/device/ads/AdSize$Modality;,
        Lcom/amazon/device/ads/AdSize$SizeType;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field public static final SIZE_1024x50:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_300x250:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_320x50:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_600x90:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_728x90:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

.field public static final SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

.field static final SIZE_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

.field static final SIZE_MODELESS_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;


# instance fields
.field private gravity:I

.field private height:I

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private maxWidth:I

.field private modality:Lcom/amazon/device/ads/AdSize$Modality;

.field private scaling:Lcom/amazon/device/ads/AdSize$Scaling;

.field private type:Lcom/amazon/device/ads/AdSize$SizeType;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x5a

    const/16 v3, 0x32

    .line 18
    const-class v0, Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x140

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    .line 27
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_300x250:Lcom/amazon/device/ads/AdSize;

    .line 31
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x258

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_600x90:Lcom/amazon/device/ads/AdSize;

    .line 35
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x2d8

    invoke-direct {v0, v1, v4}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_728x90:Lcom/amazon/device/ads/AdSize;

    .line 39
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    const/16 v1, 0x400

    invoke-direct {v0, v1, v3}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_1024x50:Lcom/amazon/device/ads/AdSize;

    .line 43
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->AUTO:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 50
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->AUTO:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v2, Lcom/amazon/device/ads/AdSize$Scaling;->NO_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Scaling;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    .line 54
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->INTERSTITIAL:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v2, Lcom/amazon/device/ads/AdSize$Modality;->MODAL:Lcom/amazon/device/ads/AdSize$Modality;

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Modality;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

    .line 58
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->INTERSTITIAL:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    sput-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_MODELESS_INTERSTITIAL:Lcom/amazon/device/ads/AdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x11

    iput v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 90
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 91
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODELESS:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 92
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 96
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AdSize;->initialize(II)V

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSize$SizeType;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x11

    iput v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 90
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 91
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODELESS:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 92
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 96
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 119
    iput-object p1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 120
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Modality;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    .line 125
    iput-object p2, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdSize$SizeType;Lcom/amazon/device/ads/AdSize$Scaling;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    .line 131
    iput-object p2, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 132
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x11

    iput v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 90
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 91
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODELESS:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 92
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 96
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AdSize;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 112
    invoke-static {p1, v2}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 113
    invoke-static {p2, v2}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 114
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdSize;->initialize(II)V

    .line 115
    return-void
.end method

.method private deepClone()Lcom/amazon/device/ads/AdSize;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdSize;-><init>(Lcom/amazon/device/ads/AdSize$SizeType;)V

    .line 137
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->width:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->width:I

    .line 138
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->height:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->height:I

    .line 139
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 140
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    iput-object v1, v0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    .line 141
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v1, v0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 142
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->maxWidth:I

    iput v1, v0, Lcom/amazon/device/ads/AdSize;->maxWidth:I

    .line 143
    return-object v0
.end method

.method static getAsSizeString(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize(II)V
    .locals 2

    .prologue
    .line 148
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 150
    :cond_0
    const-string v0, "The width and height must be positive integers."

    .line 151
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_1
    iput p1, p0, Lcom/amazon/device/ads/AdSize;->width:I

    .line 156
    iput p2, p0, Lcom/amazon/device/ads/AdSize;->height:I

    .line 157
    sget-object v0, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    iput-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    .line 158
    return-void
.end method


# virtual methods
.method public canUpscale()Z
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/amazon/device/ads/AdSize$Scaling;->CAN_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdSize$Scaling;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public disableScaling()Lcom/amazon/device/ads/AdSize;
    .locals 2

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/amazon/device/ads/AdSize;->deepClone()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 293
    sget-object v1, Lcom/amazon/device/ads/AdSize$Scaling;->NO_UPSCALE:Lcom/amazon/device/ads/AdSize$Scaling;

    iput-object v1, v0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    .line 294
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 218
    instance-of v1, p1, Lcom/amazon/device/ads/AdSize;

    if-eqz v1, :cond_0

    .line 220
    check-cast p1, Lcom/amazon/device/ads/AdSize;

    .line 221
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    iget-object v2, p1, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdSize$SizeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v2, Lcom/amazon/device/ads/AdSize$SizeType;->EXPLICIT:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdSize$SizeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->width:I

    iget v2, p1, Lcom/amazon/device/ads/AdSize;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/amazon/device/ads/AdSize;->height:I

    iget v2, p1, Lcom/amazon/device/ads/AdSize;->height:I

    if-eq v1, v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    iget v1, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    iget v2, p1, Lcom/amazon/device/ads/AdSize;->gravity:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/amazon/device/ads/AdSize;->maxWidth:I

    iget v2, p1, Lcom/amazon/device/ads/AdSize;->maxWidth:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    iget-object v2, p1, Lcom/amazon/device/ads/AdSize;->scaling:Lcom/amazon/device/ads/AdSize$Scaling;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    iget-object v2, p1, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->gravity:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->height:I

    return v0
.end method

.method getMaxWidth()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->maxWidth:I

    return v0
.end method

.method getSizeType()Lcom/amazon/device/ads/AdSize$SizeType;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->width:I

    return v0
.end method

.method public isAuto()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    sget-object v1, Lcom/amazon/device/ads/AdSize$SizeType;->AUTO:Lcom/amazon/device/ads/AdSize$SizeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isModal()Z
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/amazon/device/ads/AdSize$Modality;->MODAL:Lcom/amazon/device/ads/AdSize$Modality;

    iget-object v1, p0, Lcom/amazon/device/ads/AdSize;->modality:Lcom/amazon/device/ads/AdSize$Modality;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdSize$Modality;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newGravity(I)Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/amazon/device/ads/AdSize;->deepClone()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 172
    iput p1, v0, Lcom/amazon/device/ads/AdSize;->gravity:I

    .line 173
    return-object v0
.end method

.method newMaxWidth(I)Lcom/amazon/device/ads/AdSize;
    .locals 1

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/amazon/device/ads/AdSize;->deepClone()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    .line 304
    iput p1, v0, Lcom/amazon/device/ads/AdSize;->maxWidth:I

    .line 305
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    sget-object v1, Lcom/amazon/device/ads/AdSize$1;->$SwitchMap$com$amazon$device$ads$AdSize$SizeType:[I

    iget-object v2, p0, Lcom/amazon/device/ads/AdSize;->type:Lcom/amazon/device/ads/AdSize$SizeType;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSize$SizeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 207
    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    iget v0, p0, Lcom/amazon/device/ads/AdSize;->width:I

    iget v1, p0, Lcom/amazon/device/ads/AdSize;->height:I

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdSize;->getAsSizeString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :pswitch_1
    const-string v0, "auto"

    goto :goto_0

    .line 204
    :pswitch_2
    const-string v0, "interstitial"

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
