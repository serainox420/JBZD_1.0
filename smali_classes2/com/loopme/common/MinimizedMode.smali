.class public Lcom/loopme/common/MinimizedMode;
.super Ljava/lang/Object;
.source "MinimizedMode.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mHeight:I

.field private mMarginBottom:I

.field private mMarginRight:I

.field private mRoot:Landroid/view/ViewGroup;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/loopme/common/MinimizedMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/MinimizedMode;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/16 v1, 0x64

    const/16 v0, 0xa

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    .line 11
    iput v1, p0, Lcom/loopme/common/MinimizedMode;->mHeight:I

    .line 12
    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mMarginRight:I

    .line 13
    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mMarginBottom:I

    .line 17
    if-nez p1, :cond_0

    .line 18
    sget-object v0, Lcom/loopme/common/MinimizedMode;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error: Root view should be not null. Minimized mode will not work"

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_0
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/loopme/common/MinimizedMode;->mRoot:Landroid/view/ViewGroup;

    .line 23
    invoke-static {}, Lcom/loopme/common/Utils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 25
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_1

    .line 26
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    .line 30
    :goto_1
    iget v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mHeight:I

    .line 31
    iget v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    goto :goto_0

    .line 28
    :cond_1
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    goto :goto_1
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/loopme/common/MinimizedMode;->mHeight:I

    return v0
.end method

.method public getMarginBottom()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/loopme/common/MinimizedMode;->mMarginBottom:I

    return v0
.end method

.method public getMarginRight()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/loopme/common/MinimizedMode;->mMarginRight:I

    return v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/loopme/common/MinimizedMode;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    return v0
.end method

.method public setMarginBottom(I)V
    .locals 1

    .prologue
    .line 44
    int-to-float v0, p1

    invoke-static {v0}, Lcom/loopme/common/Utils;->convertDpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mMarginBottom:I

    .line 45
    return-void
.end method

.method public setMarginRight(I)V
    .locals 1

    .prologue
    .line 40
    int-to-float v0, p1

    invoke-static {v0}, Lcom/loopme/common/Utils;->convertDpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mMarginRight:I

    .line 41
    return-void
.end method

.method public setViewSize(II)V
    .locals 1

    .prologue
    .line 35
    int-to-float v0, p1

    invoke-static {v0}, Lcom/loopme/common/Utils;->convertDpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mWidth:I

    .line 36
    int-to-float v0, p2

    invoke-static {v0}, Lcom/loopme/common/Utils;->convertDpToPixel(F)I

    move-result v0

    iput v0, p0, Lcom/loopme/common/MinimizedMode;->mHeight:I

    .line 37
    return-void
.end method
