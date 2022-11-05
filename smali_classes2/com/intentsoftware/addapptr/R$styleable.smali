.class public final Lcom/intentsoftware/addapptr/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentsoftware/addapptr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AdView:[I

.field public static final AdView_isNativeBrowser:I = 0x4

.field public static final AdView_p:I = 0x3

.field public static final AdView_publication:I = 0x0

.field public static final AdView_srh:I = 0x2

.field public static final AdView_srw:I = 0x1

.field public static final AdsAttrs:[I

.field public static final AdsAttrs_adSize:I = 0x0

.field public static final AdsAttrs_adSizes:I = 0x1

.field public static final AdsAttrs_adUnitId:I = 0x2

.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 307
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/intentsoftware/addapptr/R$styleable;->AdView:[I

    .line 313
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/intentsoftware/addapptr/R$styleable;->AdsAttrs:[I

    .line 317
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/intentsoftware/addapptr/R$styleable;->LoadingImageView:[I

    .line 321
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/intentsoftware/addapptr/R$styleable;->RecyclerView:[I

    .line 327
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/intentsoftware/addapptr/R$styleable;->SignInButton:[I

    return-void

    .line 307
    nop

    :array_0
    .array-data 4
        0x7f010068
        0x7f010069
        0x7f01006a
        0x7f01006b
        0x7f01006c
    .end array-data

    .line 313
    :array_1
    .array-data 4
        0x7f01006d
        0x7f01006e
        0x7f01006f
    .end array-data

    .line 317
    :array_2
    .array-data 4
        0x7f0101a4
        0x7f0101a5
        0x7f0101a6
    .end array-data

    .line 321
    :array_3
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f0101db
        0x7f0101dc
        0x7f0101dd
        0x7f0101de
    .end array-data

    .line 327
    :array_4
    .array-data 4
        0x7f0101f6
        0x7f0101f7
        0x7f0101f8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
