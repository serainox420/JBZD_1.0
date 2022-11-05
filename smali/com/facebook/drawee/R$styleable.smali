.class public final Lcom/facebook/drawee/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/drawee/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GenericDraweeHierarchy:[I

.field public static final GenericDraweeHierarchy_actualImageScaleType:I = 0xb

.field public static final GenericDraweeHierarchy_backgroundImage:I = 0xc

.field public static final GenericDraweeHierarchy_fadeDuration:I = 0x0

.field public static final GenericDraweeHierarchy_failureImage:I = 0x6

.field public static final GenericDraweeHierarchy_failureImageScaleType:I = 0x7

.field public static final GenericDraweeHierarchy_overlayImage:I = 0xd

.field public static final GenericDraweeHierarchy_placeholderImage:I = 0x2

.field public static final GenericDraweeHierarchy_placeholderImageScaleType:I = 0x3

.field public static final GenericDraweeHierarchy_pressedStateOverlayImage:I = 0xe

.field public static final GenericDraweeHierarchy_progressBarAutoRotateInterval:I = 0xa

.field public static final GenericDraweeHierarchy_progressBarImage:I = 0x8

.field public static final GenericDraweeHierarchy_progressBarImageScaleType:I = 0x9

.field public static final GenericDraweeHierarchy_retryImage:I = 0x4

.field public static final GenericDraweeHierarchy_retryImageScaleType:I = 0x5

.field public static final GenericDraweeHierarchy_roundAsCircle:I = 0xf

.field public static final GenericDraweeHierarchy_roundBottomLeft:I = 0x14

.field public static final GenericDraweeHierarchy_roundBottomRight:I = 0x13

.field public static final GenericDraweeHierarchy_roundTopLeft:I = 0x11

.field public static final GenericDraweeHierarchy_roundTopRight:I = 0x12

.field public static final GenericDraweeHierarchy_roundWithOverlayColor:I = 0x15

.field public static final GenericDraweeHierarchy_roundedCornerRadius:I = 0x10

.field public static final GenericDraweeHierarchy_roundingBorderColor:I = 0x17

.field public static final GenericDraweeHierarchy_roundingBorderPadding:I = 0x18

.field public static final GenericDraweeHierarchy_roundingBorderWidth:I = 0x16

.field public static final GenericDraweeHierarchy_viewAspectRatio:I = 0x1

.field public static final SimpleDraweeView:[I

.field public static final SimpleDraweeView_actualImageResource:I = 0x1

.field public static final SimpleDraweeView_actualImageUri:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/drawee/R$styleable;->GenericDraweeHierarchy:[I

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/drawee/R$styleable;->SimpleDraweeView:[I

    return-void

    .line 51
    :array_0
    .array-data 4
        0x7f010166
        0x7f010167
        0x7f010168
        0x7f010169
        0x7f01016a
        0x7f01016b
        0x7f01016c
        0x7f01016d
        0x7f01016e
        0x7f01016f
        0x7f010170
        0x7f010171
        0x7f010172
        0x7f010173
        0x7f010174
        0x7f010175
        0x7f010176
        0x7f010177
        0x7f010178
        0x7f010179
        0x7f01017a
        0x7f01017b
        0x7f01017c
        0x7f01017d
        0x7f01017e
    .end array-data

    .line 77
    :array_1
    .array-data 4
        0x7f0101f9
        0x7f0101fa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
